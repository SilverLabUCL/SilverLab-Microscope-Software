
#include <pcap.h>
#include <stdlib.h>
#include <stdio.h>

//////////////////////////////////////////////////
// 
// Software Wrappers for WinPCap using 
//    National Instruments LabView.
//
// LabView:    http://www.ni.com/
// WinPCap:    http://www.winpcap.org/
//
//
// Wrapper software authored and (c) 2006 by James McLellan
//
// Wrapper licensed for any use, provided this authorship information
//   retained.
//
// Refer to LabView and WinPCap websites for information on those products.
//
//

// :NOTE: The line below will compile this file as a DLL if specified in 
//        the compiler arguments
//
#ifdef BUILDING_WINPCAP_LVIEW_DLL
#include "winpcap_lview.h"
#endif


#ifdef __cplusplus
extern "C" {
   int pcap_findalldevs_ex(char *source, struct pcap_rmtauth *auth, pcap_if_t **alldevs, char *errbuf);
   void pcap_freealldevs(pcap_if_t *);
   pcap_t *pcap_open(const char *source, int snaplen, int flags, int read_timeout, struct pcap_rmtauth *auth, char *errbuf);
   int pcap_next_ex(pcap_t *, struct pcap_pkthdr **, const u_char **);
//   int pcap_sendpacket(pcap_t *, u_char *, int);
   char* pcap_geterr(pcap_t *);
}

#endif
#define LINE_LEN 16
#define PCAP_SRC_IF_STRING           "rpcap://"
#define PCAP_OPENFLAG_PROMISCUOUS     1

/////////////////////////////
// global variables 
/////////////////////////////

pcap_if_t *alldevs, *d; // pointer to devices
unsigned int gNumDevs; // number of devices
pcap_t *fp;
struct pcap_pkthdr *header;
unsigned char *pkt_data;
char errbuf[PCAP_ERRBUF_SIZE]; // might not need to be global

/////////////////////////////
// end globals
/////////////////////////////


// :NOTE: The lines below occur if this file is being compiled as a 
//        stand-alone executable
//        
#ifndef BUILDING_WINPCAP_LVIEW_DLL
int GetInterfaces(
       char* retA,
       char* retB,
       char* retC,
       char* retD,
       char* retE);

int Open(int nDev);

void FreeAll(void);

int Read(long *lSec, long *lUSec, long *lLen, char *retA, char *retB)

int main(void) {
    char A[200], B[200], C[200], D[200], E[200];
    int nRet;
    int idx;

    nRet = GetInterfaces(A, B, C, D, E);

    printf("%s\n%s\n%s\n%s\n%s\n", A, B, C, D, E);

    nRet = Open(2);

    printf("Open device #2 returned %d\n", nRet);

    for (idx = 0; idx < 1000; idx++) {
          nRet = Read(A);
          
          if(nRet>0) printf("%s\n", A);
    }

    FreeAll();
   
    return(0);
}
#endif

int GetInterfaces(
       char* retA,
       char* retB,
       char* retC,
       char* retD,
       char* retE)
{
   // queries WinPCAP pcap_findalldevs_ex() and returns the list 
   //   in the provided argument strings
   // :NOTE: Only returns up to 5 strings
   // :NOTE: Strings may only be 40 characters long
//   pcap_if_t *alldevs, *d;
//   pcap_t *fp;
   unsigned int inum, i=0;
   int res;
   char* tmpPtr;

   if( pcap_findalldevs_ex(PCAP_SRC_IF_STRING, NULL, &alldevs, errbuf) == -1) return(-1);

   d=alldevs;
   while (d && (i<5) ) {
       if (i==0) tmpPtr = retA;
       else if(i==1) tmpPtr = retB;
       else if(i==2) tmpPtr = retC;
       else if(i==3) tmpPtr = retD;
       else if(i==4) tmpPtr = retE;

       sprintf(tmpPtr, "%d. %s (%s)\n\0", ++i, d->name, d->description);

//     printf("%d. %s\n", ++i, d->name);
//     if (d->description)
//        printf(" (%s)\n", d->description);
//     else
//        printf(" (No description available)\n" );
    
     d=d->next; // increment to next item
   }
   gNumDevs = i; // set the global variable, number of devices found (0 <= x <= 5)

   return(i);
}

int Open(int nDev) 
{
     unsigned int i = 0;

        if (nDev < 1 || nDev > gNumDevs)
        {
            // Free the device list
            pcap_freealldevs(alldevs);
            return -1;
        }
        
        // Jump to the selected adapter
        for (d=alldevs, i=0; i< nDev-1 ;d=d->next, i++);
        
        // Open the device
        if ( (fp= pcap_open(d->name,
                            100, //snaplen
                            PCAP_OPENFLAG_PROMISCUOUS, //flags
                            20, //read timeout
                            NULL, // remote authentication
                            errbuf)
                            ) == NULL)
        {
            pcap_freealldevs(alldevs);
            return -2;
        }
        return(0); // return success
}

void FreeAll(void)
{
            pcap_freealldevs(alldevs);
}

int Read(long *lSec, long *lUSec, long *lLen, char *retA, char *retB)
{
   int res; // local result variable
   struct pcap_pkthdr *header;
   const unsigned char *pkt_data;
   char errbuf[PCAP_ERRBUF_SIZE];
   int idx; // an index variable
   char tmpStr[3];

    // Read the packets
    //while((res = pcap_next_ex( fp, &header, &pkt_data)) >= 0)
    //{
    res = pcap_next_ex( fp, &header, &pkt_data);

        if(res == 0)
            // Timeout elapsed
            //continue;
            return(0);

        // print pkt timestamp and pkt len
        *lSec = header->ts.tv_sec;
        *lUSec = header->ts.tv_usec;
        *lLen = header->len;

        // Print the packet
        sprintf(retA, ""); // initialize return value
        for (idx=1; (idx < header->caplen + 1 ) ; idx++)
        {
            sprintf(tmpStr, "%.2x", pkt_data[idx-1]);

            strcat(retA, tmpStr);
            // don't send back a string that'll break the bank
            if ( strlen(retA) > 150 ) break;
        }
        
        //printf("\n\n");     
    //}

    if(res == -1)
    {
     //   printf("Error reading the packets: %s\n", pcap_geterr(fp));
        return -1;
    }
    return 1;
}

int WritePkt(int nSize, char *buffer) {
   int retval;

    retval = pcap_sendpacket(fp, (unsigned char *)buffer, nSize);

   return retval;
}
