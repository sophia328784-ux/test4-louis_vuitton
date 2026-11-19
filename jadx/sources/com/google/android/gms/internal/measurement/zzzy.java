package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zzzy extends zzaaa {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzzj f31134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzzj f31135c;
    public final int[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31136e;

    /* JADX WARN: Code duplicated, block: B:25:0x0054  */
    public zzzy(zzzj zzzjVar, zzzj zzzjVar2) {
        this.f31134b = zzzjVar;
        this.f31135c = zzzjVar2;
        int iA = zzzjVar2.a();
        if (!(iA <= 28)) {
            md.n("metadata size too large");
            throw null;
        }
        int[] iArr = new int[iA];
        this.d = iArr;
        long j2 = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < iA) {
            zzyl zzylVarD = d(i2);
            long j3 = zzylVarD.f31092e | j2;
            if (j3 == j2) {
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        i4 = -1;
                        break;
                    } else if (zzylVarD.equals(d(iArr[i4] & 31))) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (i4 != -1) {
                    iArr[i4] = zzylVarD.f31091c ? iArr[i4] | (1 << (i2 + 4)) : i2;
                } else {
                    iArr[i3] = i2;
                    i3++;
                }
            } else {
                iArr[i3] = i2;
                i3++;
            }
            i2++;
            j2 = j3;
        }
        this.f31136e = i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final void a(zzzq zzzqVar, zzzc zzzcVar) {
        for (int i2 = 0; i2 < this.f31136e; i2++) {
            int i3 = this.d[i2];
            zzyl zzylVarD = d(i3 & 31);
            if (zzylVarD.f31091c) {
                zzzqVar.b(zzylVarD, new zzzx(this, zzylVarD, i3), zzzcVar);
            } else {
                zzzj zzzjVar = this.f31134b;
                int iA = zzzjVar.a();
                if (i3 >= iA) {
                    zzzjVar = this.f31135c;
                    i3 -= iA;
                }
                zzzqVar.a(zzylVarD, zzylVarD.f31090b.cast(zzzjVar.c(i3)), zzzcVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final int b() {
        return this.f31136e;
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final Set c() {
        return new zzzw(this);
    }

    public final zzyl d(int i2) {
        zzzj zzzjVar = this.f31134b;
        int iA = zzzjVar.a();
        return i2 >= iA ? this.f31135c.b(i2 - iA) : zzzjVar.b(i2);
    }
}
