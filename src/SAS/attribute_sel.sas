/* Cycle 2013-14 Var selection*/

DATA WORK.BMX_H_C; 
   SET NH.BMX_H;
   KEEP SEQN BMXBMI BMXWAIST;
   by SEQN;

DATA WORK.BPX_H_C; 
   SET NH.BPX_H;
   KEEP SEQN BPXDI1;
   by SEQN;

DATA WORK.DEMO_H_C; 
   SET NH.DEMO_H;
   KEEP SEQN RIAGENDR RIDAGEYR RIDRETH3 DMDEDUC2;
   by SEQN;
     
DATA WORK.DIQ_H_C; 
   SET NH.DIQ_H;
   KEEP SEQN DIQ010;
   by SEQN;
     
DATA WORK.GLU_H_C; 
   SET NH.GLU_H;
   KEEP SEQN LBXGLU;
   by SEQN;

DATA WORK.HIQ_H_C; 
   SET NH.HIQ_H;
   KEEP SEQN  HIQ011;
   by SEQN;
     
DATA WORK.HOQ_H_C; 
   SET NH.HOQ_H;
   KEEP SEQN  HOD050 HOQ065; 
   by SEQN;
   
DATA WORK.HSQ_H_C; 
   SET NH.HSQ_H;
   KEEP SEQN HSD010; 
   by SEQN;
   
DATA WORK.INQ_H_C; 
   SET NH.INQ_H;
   KEEP SEQN INQ020;
   by SEQN;

DATA WORK.INS_H_C; 
   SET NH.INS_H;
   KEEP SEQN LBXIN;
   by SEQN;
     
DATA WORK.MCQ_H_C; 
   SET NH.MCQ_H;
   KEEP SEQN MCQ010 MCQ300C;
   by SEQN;

DATA WORK.PAQ_H_C; 
   SET NH.PAQ_H;
   KEEP SEQN PAQ650 PAQ665 PAQ710 PAQ715;
   by SEQN;

DATA WORK.RHQ_H_C; 
   SET NH.RHQ_H;
   KEEP SEQN  RHQ160;
   by SEQN;
   
DATA WORK.SLQ_H_C(RENAME=(SLD010H=SLD012)); 
   SET NH.SLQ_H;
   KEEP SEQN SLD010H;
   by SEQN;
   
DATA WORK.SMQ_H_C; 
   SET NH.SMQ_H;
   KEEP SEQN SMQ040;
   by SEQN;

RUN;

/* Cycle 2015-16 Var selection*/

DATA WORK.BMX_I_C; 
   SET NH.BMX_I;
   KEEP SEQN BMXBMI BMXWAIST;
   by SEQN;

DATA WORK.BPX_I_C; 
   SET NH.BPX_I;
   KEEP SEQN BPXDI1;
   by SEQN;

DATA WORK.DEMO_I_C; 
   SET NH.DEMO_I;
   KEEP SEQN RIAGENDR RIDAGEYR RIDRETH3 DMDEDUC2;
   by SEQN;
     
DATA WORK.DIQ_I_C; 
   SET NH.DIQ_I;
   KEEP SEQN DIQ010;
   by SEQN;
     
DATA WORK.GLU_I_C; 
   SET NH.GLU_I;
   KEEP SEQN LBXGLU;
   by SEQN;

DATA WORK.HIQ_I_C; 
   SET NH.HIQ_I;
   KEEP SEQN  HIQ011;
   by SEQN;
     
DATA WORK.HOQ_I_C; 
   SET NH.HOQ_I;
   KEEP SEQN  HOD050 HOQ065; 
   by SEQN;
   
DATA WORK.HSQ_I_C; 
   SET NH.HSQ_I;
   KEEP SEQN HSD010; 
   by SEQN;
   
DATA WORK.INQ_I_C; 
   SET NH.INQ_I;
   KEEP SEQN INQ020;
   by SEQN;

DATA WORK.INS_I_C; 
   SET NH.INS_I;
   KEEP SEQN LBXIN;
   by SEQN;
     
DATA WORK.MCQ_I_C; 
   SET NH.MCQ_I;
   KEEP SEQN MCQ010 MCQ300C;
   by SEQN;

DATA WORK.PAQ_I_C; 
   SET NH.PAQ_I;
   KEEP SEQN PAQ650 PAQ665 PAQ710 PAQ715;
   by SEQN;

DATA WORK.RHQ_I_C; 
   SET NH.RHQ_I;
   KEEP SEQN  RHQ160;
   by SEQN;
   
DATA WORK.SLQ_I_C; 
   SET NH.SLQ_I;
   KEEP SEQN SLD012;
   by SEQN;
   
DATA WORK.SMQ_I_C; 
   SET NH.SMQ_I;
   KEEP SEQN SMQ040;
   by SEQN;

RUN;
     
/* MERGE data Cycle 2014-2014*/

DATA WORK.MERGE_13_14;
   merge WORK.BMX_H_C WORK.BPX_H_C WORK.DIQ_H_C WORK.GLU_H_C WORK.HIQ_H_C WORK.HOQ_H_C 
   WORK.HSQ_H_C WORK.INQ_H_C WORK.INS_H_C WORK.MCQ_H_C  WORK.PAQ_H_C WORK.RHQ_H_C 
   WORK.SLQ_H_C WORK.SMQ_H_C WORK.DEMO_H_C;
   by SEQN;

RUN;

/*MERGE data Cycle 2015-2016*/

DATA WORK.MERGE_15_16;
   merge WORK.BMX_I_C WORK.BPX_I_C WORK.DIQ_I_C WORK.GLU_I_C WORK.HIQ_I_C WORK.HOQ_I_C 
   WORK.HSQ_I_C WORK.INQ_I_C WORK.INS_I_C WORK.MCQ_I_C  WORK.PAQ_I_C WORK.RHQ_I_C 
   WORK.SLQ_I_C WORK.SMQ_I_C WORK.DEMO_I_C;
   by SEQN;

RUN;