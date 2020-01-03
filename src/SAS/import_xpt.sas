libname NH "/folders/myfolders/NHANES";                 

libname DEMI xport "/folders/myfolders/Data/DEMO_I.XPT";
libname DEMH xport "/folders/myfolders/Data/DEMO_H.XPT";

libname BMXI xport "/folders/myfolders/Data/BMX_I.XPT";
libname BMXH xport "/folders/myfolders/Data/BMX_H.XPT";

libname BPXI xport "/folders/myfolders/Data/BPX_I.XPT";
libname BPXH xport "/folders/myfolders/Data/BPX_H.XPT";

libname DIQI xport "/folders/myfolders/Data/DIQ_I.XPT";
libname DIQH xport "/folders/myfolders/Data/DIQ_H.XPT";

libname GLUI xport "/folders/myfolders/Data/GLU_I.XPT";
libname GLUH xport "/folders/myfolders/Data/GLU_H.XPT";

libname HIQI xport "/folders/myfolders/Data/HIQ_I.XPT";
libname HIQH xport "/folders/myfolders/Data/HIQ_H.XPT";

libname HOQI xport "/folders/myfolders/Data/HOQ_I.XPT";
libname HOQH xport "/folders/myfolders/Data/HOQ_H.XPT";

libname HSQI xport "/folders/myfolders/Data/HSQ_I.XPT";
libname HSQH xport "/folders/myfolders/Data/HSQ_H.XPT";

libname INQI xport "/folders/myfolders/Data/INQ_I.XPT";
libname INQH xport "/folders/myfolders/Data/INQ_H.XPT";

libname INSI xport "/folders/myfolders/Data/INS_I.XPT";
libname INSH xport "/folders/myfolders/Data/INS_H.XPT";

libname MCQI xport "/folders/myfolders/Data/MCQ_I.XPT";
libname MCQH xport "/folders/myfolders/Data/MCQ_H.XPT";

libname PAQI xport "/folders/myfolders/Data/PAQ_I.XPT";
libname PAQH xport "/folders/myfolders/Data/PAQ_H.XPT";

libname RHQI xport "/folders/myfolders/Data/RHQ_I.XPT";
libname RHQH xport "/folders/myfolders/Data/RHQ_H.XPT";

libname SLQI xport "/folders/myfolders/Data/SLQ_I.XPT";
libname SLQH xport "/folders/myfolders/Data/SLQ_H.XPT";

libname SMQI xport "/folders/myfolders/Data/SMQ_I.XPT";
libname SMQH xport "/folders/myfolders/Data/SMQ_H.XPT";

run;

proc copy in=DEMI out=NH;
proc copy in=DEMH out=NH;
proc copy in=BMXI out=NH;
proc copy in=BMXH out=NH;
proc copy in=BPXI out=NH;
proc copy in=BPXH out=NH;
proc copy in=DIQI out=NH;
proc copy in=DIQH out=NH;
proc copy in=GLUI out=NH;
proc copy in=GLUH out=NH;

proc copy in=HIQI out=NH;
proc copy in=HIQH out=NH;
proc copy in=HOQI out=NH;
proc copy in=HOQH out=NH;
proc copy in=HSQI out=NH;
proc copy in=HSQH out=NH;
proc copy in=INQI out=NH;
proc copy in=INQH out=NH;
proc copy in=INSI out=NH;
proc copy in=INSH out=NH;

proc copy in=MCQI out=NH;
proc copy in=MCQH out=NH;
proc copy in=PAQI out=NH;
proc copy in=PAQH out=NH;
proc copy in=RHQI out=NH;
proc copy in=RHQH out=NH;
proc copy in=SLQI out=NH;
proc copy in=SLQH out=NH;
proc copy in=SMQI out=NH;
proc copy in=SMQH out=NH;

run;