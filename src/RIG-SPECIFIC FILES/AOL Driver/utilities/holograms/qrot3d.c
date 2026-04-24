////////////////////////////////////////////////////////////
// 
// Name:   qrot3d.c
//
// Author: Steven Michael
//         (smichael@ll.mit.edu)
// 
//
// Date:   3/10/2004
//
// Description:
//
//   The following is a compiled MATLAB function piece to do 
//   quaternion rotation  in 3 dimensions
//   Read the corresponding .m file for usage.
//   Works with both single & double precision
//
////////////////////////////////////////////////////////////

#include <mex.h>
#include <string.h>
#include <math.h>

typedef double DQuat[4];
typedef float  FQuat[4];
typedef double DVec[3];
typedef float  FVec[3];

#ifndef min
#define min(a,b) (a < b ? a : b)
#endif


// Funcitons to do quaternion multiplication 
// for both floating point and double precision data
static void fqmult(FQuat a, FQuat b, FQuat c)
{
  c[0] = a[0]*b[0] - a[1]*b[1] - a[2]*b[2] - a[3]*b[3];
  c[1] = a[0]*b[1] + a[1]*b[0] + a[2]*b[3] - a[3]*b[2];
  c[2] = a[0]*b[2] - a[1]*b[3] + a[2]*b[0] + a[3]*b[1];
  c[3] = a[0]*b[3] + a[1]*b[2] - a[2]*b[1] + a[3]*b[0];
  return;
} // end of fqmult

static void dqmult(DQuat a, DQuat b, DQuat c)
{
  c[0] = a[0]*b[0] - a[1]*b[1] - a[2]*b[2] - a[3]*b[3];
  c[1] = a[0]*b[1] + a[1]*b[0] + a[2]*b[3] - a[3]*b[2];
  c[2] = a[0]*b[2] - a[1]*b[3] + a[2]*b[0] + a[3]*b[1];
  c[3] = a[0]*b[3] + a[1]*b[2] - a[2]*b[1] + a[3]*b[0];
  return;
} // end of dqmult


// A function that rotates a single vector by the desired
// quaternion
static void rotate_double(DVec vout,DVec vin,DQuat q, int n)
{
  // Construct the quaternion conjugate
  DQuat qc;
  int i;
  qc[0] = q[0];
  qc[1] = -q[1];
  qc[2] = -q[2];
  qc[3] = -q[3];

  // Do the quaternion multiplitcation
  // for all the input vectors
  for(i=0;i<n;i++) {
    DQuat qv,qt,qf;
    qv[0] = 0;
    qv[1] = vin[i];
    qv[2] = vin[i+n];
    qv[3] = vin[i+2*n];
    
    dqmult(q,qv,qt);
    dqmult(qt,qc,qf);
    vout[i] = qf[1];
    vout[i+n] = qf[2];
    vout[i+2*n] = qf[3];
  }
  return;
} // end of rotate_double

static void rotate_float(FVec vout,FVec vin, FQuat q, int n)
{
  FQuat qc;
  int i;
  qc[0] = q[0];
  qc[1] = -q[1];
  qc[2] = -q[2];
  qc[3] = -q[3];

  // Do the quaternion multiplitcation
  // for all the input vectors
  for(i=0;i<n;i++) {
    FQuat qv,qt,qf;
    qv[0] = 0;
    qv[1] = vin[i];
    qv[2] = vin[i+n];
    qv[3] = vin[i+2*n];
    
    fqmult(q,qv,qt);
    fqmult(qt,qc,qf);
    vout[i] = qf[1];
    vout[i+n] = qf[2];
    vout[i+2*n] = qf[3];
  }
  return;
} // end of rotate_float


// Construct a quaternion from a rotation vector
// and angle
void f_construct_quaternion(FVec w, float theta, FQuat q)
{
  // Normalize w
  float norm = (float) sqrt(w[0]*w[0]+w[1]*w[1]+w[2]*w[2]);
  float ct2,st2;
  if(norm == 0) {
    mexErrMsgTxt("Norm of w cannot be zero\n");
    return;
  }
  w[0] = w[0]/norm;
  w[1] = w[1]/norm;
  w[2] = w[2]/norm;

  // Construct quaternions
  ct2 = (float)cos(theta/2.0f);
  st2 = (float)sin(theta/2.0f);
  q[0] = ct2;
  q[1] = st2*w[0];
  q[2] = st2*w[1];
  q[3] = st2*w[2];  
} // end of f_construct_quaternion

void d_construct_quaternion(DVec w, double theta, DQuat q)
{
  // Normalize w
  double norm = sqrt(w[0]*w[0]+w[1]*w[1]+w[2]*w[2]);
  double ct2,st2;
  if(norm == 0) {
    mexErrMsgTxt("Norm of w cannot be zero\n");
    return;
  }
  w[0] = w[0]/norm;
  w[1] = w[1]/norm;
  w[2] = w[2]/norm;

  // Construct quaternions
  ct2 = cos(theta/2.0f);
  st2 = sin(theta/2.0f);
  q[0] = ct2;
  q[1] = st2*w[0];
  q[2] = st2*w[1];
  q[3] = st2*w[2];  
} // end of d_construct_quaternion





void mexFunction(int nlhs, mxArray *plhs[],
		 int nrhs, const mxArray *prhs[])
{
  // The rotation angle, in double
  // or single float format

  DQuat  dq;
  FQuat  fq;
  int    ndims;
  mwSize dims[10];
  
  // Construct quaternion if inputs are vectors
  // Go ahead & do it for both single & 
  // double precision
  if(nrhs > 2) {
    FVec fv;
    DVec dv;
    double dtheta;
    float  ftheta;
    if(mxGetNumberOfElements(prhs[1])!=3) 
      mexErrMsgTxt("2nd input must have length 3");

    if(mxIsSingle(prhs[1])) {
      float *f = (float *)mxGetPr(prhs[1]);
      fv[0] = f[0];fv[1] = f[1];fv[2] = f[2];
      dv[0] = f[0];dv[1] = f[1];dv[2] = f[2];
    }
    else if(mxIsDouble(prhs[1])) {
      double *d = (double *)mxGetPr(prhs[1]);
      dv[0] = d[0];dv[1] = d[1];dv[2] = d[2];
      fv[0] = (float) d[0];fv[1] = (float)d[1];fv[2] = (float)d[2];
    }
    else {
      mexErrMsgTxt("2nd input must be a 3D vector\n");
      return;
    }
    dtheta = mxGetScalar(prhs[2]);
    ftheta = (float)dtheta;
    f_construct_quaternion(fv,ftheta,fq);
    d_construct_quaternion(dv,dtheta,dq);
  }


  // Get the quaternion input
  else if(nrhs > 1) {
    if(mxGetNumberOfElements(prhs[1]) !=4) {
      mexErrMsgTxt("2nd Input must be a Quaternion\n");
      return;
    }
    if(mxIsSingle(prhs[1])) {
      float *f = (float *)mxGetPr(prhs[1]);
      fq[0] = f[0];fq[1] = f[1];fq[2] = f[2];fq[3] = f[3];
      dq[0] = f[0];dq[1] = f[1];dq[2] = f[2];dq[3] = f[3];
    }
    else if(mxIsDouble(prhs[1])) {
      double *d = (double *)mxGetPr(prhs[1]);
      dq[0] = d[0];dq[1] = d[1];dq[2] = d[2];dq[3] = d[3];
      fq[0] = (float)d[0];fq[1] = (float)d[1];
			fq[2] = (float)d[2];fq[3] = (float)d[3];
    }
    else {
      mexErrMsgTxt("2nd input must be a Quaternion\n");
      return;
    }
  }
  else {
    mexErrMsgTxt("Inputs must be input vectors and either a quaternion "
		 "or a vector axis of rotation  and an angle\n");
    return;
  }
      

  // Get the dimensions of the input
  ndims = mxGetNumberOfDimensions(prhs[0]);
  if(ndims > 2) {
    mexErrMsgTxt("Cannot operate on more than 2 dimensions.");
    return;
  }
  memcpy(dims,mxGetDimensions(prhs[0]),
	 sizeof(mwSize)*ndims);

  // Make sure the dimensions are what they
  // are supposed to be
  if(dims[1] != 3) {
    mexErrMsgTxt("Input Vectors Must Be (N x 3)\n");
    return;
  }

  // Check the input format
  // and operate accordingly
  if(mxIsSingle(prhs[0])) {
    float *fin;
    float *fout;
    plhs[0] = 
      mxCreateNumericMatrix(dims[0],dims[1],
			    mxSINGLE_CLASS,
			    mxREAL);
    fin = (float *)mxGetPr(prhs[0]);
    fout = (float *)mxGetPr(plhs[0]);
    rotate_float(fout,fin,fq,dims[0]);
  }
  else if(mxIsDouble(prhs[0])) {
    double *din;
    double *dout;
    plhs[0] = 
      mxCreateNumericMatrix(dims[0],dims[1],
			    mxDOUBLE_CLASS,
			    mxREAL);
    din = (double *)mxGetPr(prhs[0]);
    dout = (double *)mxGetPr(plhs[0]);
    rotate_double(dout,din,dq,dims[0]);
  }
  else
    mexErrMsgTxt("Input vectors must be either "
		 "single or double precision float.\n");
    

  return;
} // end of qrot3d

