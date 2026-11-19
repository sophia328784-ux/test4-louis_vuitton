package com.google.android.gms.internal.vision;

import defpackage.md;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzkq<T> implements zzlc<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzkk f31251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzlu f31252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f31253c;
    public final zziq d;

    public zzkq(zzlu zzluVar, zziq zziqVar, zzkk zzkkVar) {
        this.f31252b = zzluVar;
        ((zzip) zziqVar).getClass();
        this.f31253c = zzkkVar instanceof zzjb.zzc;
        this.d = zziqVar;
        this.f31251a = zzkkVar;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void a(Object obj) {
        ((zzlw) this.f31252b).getClass();
        ((zzjb) obj).zzb.f31284e = false;
        ((zzip) this.d).getClass();
        ((zzjb.zzc) obj).zzc.f();
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean b(Object obj) {
        ((zzip) this.d).getClass();
        return ((zzjb.zzc) obj).zzc.l();
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final int c(Object obj) {
        ((zzlw) this.f31252b).getClass();
        zzlx zzlxVar = ((zzjb) obj).zzb;
        int iG = zzlxVar.d;
        if (iG == -1) {
            iG = 0;
            for (int i2 = 0; i2 < zzlxVar.f31281a; i2++) {
                int i3 = zzlxVar.f31282b[i2] >>> 3;
                iG += zzii.g(3, (zzht) zzlxVar.f31283c[i2]) + zzii.q(2, i3) + (zzii.r(8) << 1);
            }
            zzlxVar.d = iG;
        }
        if (!this.f31253c) {
            return iG;
        }
        ((zzip) this.d).getClass();
        zzlg zzlgVar = ((zzjb.zzc) obj).zzc.f31213a;
        int i4 = 0;
        for (int i5 = 0; i5 < zzlgVar.f31269c.size(); i5++) {
            i4 += zziu.i(zzlgVar.d(i5));
        }
        Iterator<T> it = zzlgVar.f().iterator();
        while (it.hasNext()) {
            i4 += zziu.i((Map.Entry) it.next());
        }
        return iG + i4;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void d(Object obj, zzmr zzmrVar) {
        ((zzip) this.d).getClass();
        Iterator itJ = ((zzjb.zzc) obj).zzc.j();
        while (itJ.hasNext()) {
            Map.Entry entry = (Map.Entry) itJ.next();
            zziw zziwVar = (zziw) entry.getKey();
            if (zziwVar.f0() != zzmo.MESSAGE || zziwVar.g0() || zziwVar.h0()) {
                md.k("Found invalid MessageSet item.");
                return;
            }
            zzmrVar.j(zziwVar.d0(), entry.getValue());
        }
        ((zzlw) this.f31252b).getClass();
        zzlx zzlxVar = ((zzjb) obj).zzb;
        zzlxVar.getClass();
        zzmrVar.getClass();
        for (int i2 = 0; i2 < zzlxVar.f31281a; i2++) {
            zzmrVar.j(zzlxVar.f31282b[i2] >>> 3, zzlxVar.f31283c[i2]);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final Object d0() {
        return this.f31251a.N().j();
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final int e(zzjb zzjbVar) {
        ((zzlw) this.f31252b).getClass();
        int iHashCode = zzjbVar.zzb.hashCode();
        if (!this.f31253c) {
            return iHashCode;
        }
        ((zzip) this.d).getClass();
        return (iHashCode * 53) + ((zzjb.zzc) zzjbVar).zzc.f31213a.hashCode();
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void f(zzjb zzjbVar, zzjb zzjbVar2) {
        zzle.h(this.f31252b, zzjbVar, zzjbVar2);
        if (this.f31253c) {
            zzle.g(this.d, zzjbVar, zzjbVar2);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean g(zzjb zzjbVar, zzjb zzjbVar2) {
        zzlw zzlwVar = (zzlw) this.f31252b;
        zzlwVar.getClass();
        zzlx zzlxVar = zzjbVar.zzb;
        zzlwVar.getClass();
        if (!zzlxVar.equals(zzjbVar2.zzb)) {
            return false;
        }
        if (!this.f31253c) {
            return true;
        }
        zzip zzipVar = (zzip) this.d;
        zzipVar.getClass();
        zziu<Object> zziuVar = ((zzjb.zzc) zzjbVar).zzc;
        zzipVar.getClass();
        return zziuVar.equals(((zzjb.zzc) zzjbVar2).zzc);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x007c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0082 A[EDGE_INSN: B:51:0x0082->B:28:0x0082 BREAK  A[LOOP:1: B:14:0x0049->B:54:0x0049], SYNTHETIC] */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final void h(Object obj, byte[] bArr, int i2, int i3, zzhn zzhnVar) throws zzjk {
        int i4;
        zzjb zzjbVar = (zzjb) obj;
        zzlx zzlxVarB = zzjbVar.zzb;
        if (zzlxVarB == zzlx.f31280f) {
            zzlxVarB = zzlx.b();
            zzjbVar.zzb = zzlxVarB;
        }
        zzlx zzlxVar = zzlxVarB;
        ((zzjb.zzc) obj).n();
        while (i2 < i3) {
            int i5 = zzhl.i(bArr, i2, zzhnVar);
            int i6 = zzhnVar.f31183a;
            zzio zzioVar = zzhnVar.d;
            zzkk zzkkVar = this.f31251a;
            zziq zziqVar = this.d;
            if (i6 == 11) {
                int i7 = i3;
                zzhn zzhnVar2 = zzhnVar;
                int i8 = 0;
                zzht zzhtVar = null;
                while (true) {
                    if (i5 >= i7) {
                        i4 = i5;
                        break;
                    }
                    i4 = zzhl.i(bArr, i5, zzhnVar2);
                    int i9 = zzhnVar2.f31183a;
                    int i10 = i9 >>> 3;
                    int i11 = i9 & 7;
                    if (i10 == 2) {
                        if (i11 != 0) {
                            if (i9 != 12) {
                                break;
                                break;
                            }
                            i5 = zzhl.b(i9, bArr, i4, i7, zzhnVar2);
                        } else {
                            i5 = zzhl.i(bArr, i4, zzhnVar2);
                            i8 = zzhnVar2.f31183a;
                            ((zzip) zziqVar).getClass();
                            zzioVar.a(zzkkVar, i8);
                        }
                    } else if (i10 != 3 || i11 != 2) {
                        if (i9 != 12) {
                            break;
                        } else {
                            i5 = zzhl.b(i9, bArr, i4, i7, zzhnVar2);
                        }
                    } else {
                        i5 = zzhl.n(bArr, i4, zzhnVar2);
                        zzhtVar = (zzht) zzhnVar2.f31185c;
                    }
                }
                if (zzhtVar != null) {
                    zzlxVar.a((i8 << 3) | 2, zzhtVar);
                }
                i2 = i4;
                i3 = i7;
                zzhnVar = zzhnVar2;
            } else if ((i6 & 7) == 2) {
                ((zzip) zziqVar).getClass();
                zzioVar.a(zzkkVar, i6 >>> 3);
                i2 = zzhl.d(i6, bArr, i5, i3, zzlxVar, zzhnVar);
            } else {
                i2 = zzhl.b(i6, bArr, i5, i3, zzhnVar);
            }
        }
        if (i2 != i3) {
            throw zzjk.d();
        }
    }
}
