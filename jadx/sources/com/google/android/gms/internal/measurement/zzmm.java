package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import defpackage.d21;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzmm implements Continuation {
    @Override // com.google.android.gms.tasks.Continuation
    public final Object d(Task task) {
        zzadu zzaduVarV;
        zzjh zzjhVar = (zzjh) task.getResult();
        zzmf zzmfVarG = zzmg.G();
        String str = zzjhVar.f30647b;
        zzmfVarG.l();
        ((zzmg) zzmfVarG.f30406c).H(str);
        String str2 = zzjhVar.d;
        zzmfVarG.l();
        ((zzmg) zzmfVarG.f30406c).J(str2);
        boolean z = zzjhVar.g;
        zzmfVarG.l();
        ((zzmg) zzmfVarG.f30406c).M(z);
        long j2 = zzjhVar.f30651h;
        zzmfVarG.l();
        ((zzmg) zzmfVarG.f30406c).N(j2);
        byte[] bArr = zzjhVar.f30648c;
        if (bArr != null) {
            zzacr zzacrVarO = zzacr.o(0, bArr.length, bArr);
            zzmfVarG.l();
            ((zzmg) zzmfVarG.f30406c).I(zzacrVarO);
        }
        for (zzjf zzjfVar : zzjhVar.f30649e) {
            for (zzjo zzjoVar : zzjfVar.f30645c) {
                int i2 = zzjoVar.f30668h;
                String str3 = zzjoVar.f30664b;
                if (i2 == 1) {
                    zzmh zzmhVarG = zzmi.G();
                    zzmhVarG.y(str3);
                    if (i2 != 1) {
                        md.n("Not a long type");
                        return null;
                    }
                    long j3 = zzjoVar.f30665c;
                    zzmhVarG.l();
                    ((zzmi) zzmhVarG.f30406c).J(j3);
                    zzaduVarV = zzmhVarG.v();
                } else if (i2 == 2) {
                    zzmh zzmhVarG2 = zzmi.G();
                    zzmhVarG2.y(str3);
                    if (i2 != 2) {
                        md.n("Not a boolean type");
                        return null;
                    }
                    boolean z2 = zzjoVar.d;
                    zzmhVarG2.l();
                    ((zzmi) zzmhVarG2.f30406c).K(z2);
                    zzaduVarV = zzmhVarG2.v();
                } else if (i2 == 3) {
                    zzmh zzmhVarG3 = zzmi.G();
                    zzmhVarG3.y(str3);
                    if (i2 != 3) {
                        md.n("Not a double type");
                        return null;
                    }
                    double d = zzjoVar.f30666e;
                    zzmhVarG3.l();
                    ((zzmi) zzmhVarG3.f30406c).L(d);
                    zzaduVarV = zzmhVarG3.v();
                } else if (i2 == 4) {
                    zzmh zzmhVarG4 = zzmi.G();
                    zzmhVarG4.y(str3);
                    if (i2 != 4) {
                        md.n("Not a String type");
                        return null;
                    }
                    String str4 = zzjoVar.f30667f;
                    Preconditions.h(str4);
                    zzmhVarG4.l();
                    ((zzmi) zzmhVarG4.f30406c).M(str4);
                    zzaduVarV = zzmhVarG4.v();
                } else {
                    if (i2 != 5) {
                        md.n(d21.f(i2, "Unrecognized flag type: ", new StringBuilder(String.valueOf(i2).length() + 24)));
                        return null;
                    }
                    zzmh zzmhVarG5 = zzmi.G();
                    zzmhVarG5.y(str3);
                    if (i2 != 5) {
                        md.n("Not a bytes type");
                        return null;
                    }
                    byte[] bArr2 = zzjoVar.g;
                    Preconditions.h(bArr2);
                    zzacr zzacrVarO2 = zzacr.o(0, bArr2.length, bArr2);
                    zzmhVarG5.l();
                    ((zzmi) zzmhVarG5.f30406c).N(zzacrVarO2);
                    zzaduVarV = zzmhVarG5.v();
                }
                zzmfVarG.l();
                ((zzmg) zzmfVarG.f30406c).K((zzmi) zzaduVarV);
            }
            String[] strArr = zzjfVar.d;
            if (strArr != null) {
                for (String str5 : strArr) {
                    zzmfVarG.l();
                    ((zzmg) zzmfVarG.f30406c).L(str5);
                }
            }
        }
        return (zzmg) zzmfVarG.v();
    }
}
