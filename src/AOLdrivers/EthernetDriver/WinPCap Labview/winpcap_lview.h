#ifndef WINPCAP_LABVIEW_DLL_H
#define WINPCAP_LABVIEW_DLL_H

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
// Refer to LabView and WinPCap websites for information on those products
//
//

#ifdef __cplusplus
extern "C" {
#endif  // end ifdef __cplusplus

#ifdef BUILDING_WINPCAP_LABVIEW_DLL
#define WINPCAP_LABVIEW_DLL __declspec(dllexport)
#else
#define WINPCAP_LABVIEW_DLL __declspec(dllimport)
#endif //end ifdef BUILDING_WINPCAP_LABVIEW_DLL

// TODO: Put any C style functions here
int WINPCAP_LABVIEW_DLL GetInterfaces(
                           char* retA,
                           char* retB,
                           char* retC,
                           char* retD,
                           char* retE ); 
   // queries WinPCAP pcap_findalldevs_ex() and returns 
   //   the list in the provided argument strings.
   // :NOTE: Only handles 5 strings
   // :NOTE: Strings may only be 40 characters long  

int WINPCAP_LABVIEW_DLL Open(int nDev);
   // uses WinPCAP pcap_open() to open a device for
   //   reading and writing.
   

void WINPCAP_LABVIEW_DLL FreeAll(void);
   // uses WinPCAP pcap_freealldevs() to free allocated devices

int WINPCAP_LABVIEW_DLL Read(long *lSec, long *lUSec, long *lLen, char *retA, char *retB);
   // uses WinPCAP pcap_next_ex() to read the device and return
   //   a string containing the read data.

int WINPCAP_LABVIEW_DLL WritePkt(int nSize, char *buffer);

#ifdef __cplusplus
}
#endif // end ifdef __cplusplus

// TODO: Put any C++ style classes or functions here
#endif // end WINPCAP_LABVIEW_DLL_H

