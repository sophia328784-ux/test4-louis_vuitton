package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzdu<T> implements zzef<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzdo f29699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzex f29700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f29701c;
    public final zzbu d;

    public zzdu(zzex zzexVar, zzbu zzbuVar, zzdo zzdoVar) {
        this.f29700b = zzexVar;
        ((zzbv) zzbuVar).getClass();
        this.f29701c = zzdoVar instanceof zzcg.zzd;
        this.d = zzbuVar;
        this.f29699a = zzdoVar;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void a(Object obj) {
        ((zzez) this.f29700b).getClass();
        ((zzcg) obj).zzjp.d = false;
        ((zzbv) this.d).getClass();
        ((zzcg.zzd) obj).zzjv.g();
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final Object b() {
        return this.f29699a.c().h();
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean c(zzcg zzcgVar, zzcg zzcgVar2) {
        zzez zzezVar = (zzez) this.f29700b;
        zzezVar.getClass();
        zzey zzeyVar = zzcgVar.zzjp;
        zzezVar.getClass();
        if (!zzeyVar.equals(zzcgVar2.zzjp)) {
            return false;
        }
        if (!this.f29701c) {
            return true;
        }
        zzbv zzbvVar = (zzbv) this.d;
        zzbvVar.getClass();
        zzby<Object> zzbyVar = ((zzcg.zzd) zzcgVar).zzjv;
        zzbvVar.getClass();
        return zzbyVar.equals(((zzcg.zzd) zzcgVar2).zzjv);
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final int d(zzcg zzcgVar) {
        ((zzez) this.f29700b).getClass();
        int iHashCode = zzcgVar.zzjp.hashCode();
        if (!this.f29701c) {
            return iHashCode;
        }
        ((zzbv) this.d).getClass();
        return (iHashCode * 53) + ((zzcg.zzd) zzcgVar).zzjv.f29666a.hashCode();
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean e(Object obj) {
        ((zzbv) this.d).getClass();
        return ((zzcg.zzd) obj).zzjv.a();
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void f(zzcg zzcgVar, zzcg zzcgVar2) {
        zzeh.b(this.f29700b, zzcgVar, zzcgVar2);
        if (this.f29701c) {
            zzeh.a(this.d, zzcgVar, zzcgVar2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0062 A[EDGE_INSN: B:51:0x0062->B:28:0x0062 BREAK  A[LOOP:1: B:14:0x0032->B:54:0x0032], SYNTHETIC] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void g(Object obj, byte[] bArr, int i2, int i3, zzay zzayVar) throws zzco {
        zzcg zzcgVar = (zzcg) obj;
        zzey zzeyVarB = zzcgVar.zzjp;
        if (zzeyVarB == zzey.f29737e) {
            zzeyVarB = zzey.b();
            zzcgVar.zzjp = zzeyVarB;
        }
        zzey zzeyVar = zzeyVarB;
        while (i2 < i3) {
            int iD = zzax.d(bArr, i2, zzayVar);
            int i4 = zzayVar.f29651a;
            if (i4 != 11) {
                byte[] bArr2 = bArr;
                int i5 = i3;
                zzay zzayVar2 = zzayVar;
                i2 = (i4 & 7) == 2 ? zzax.b(i4, bArr2, iD, i5, zzeyVar, zzayVar2) : zzax.a(i4, bArr2, iD, i5, zzayVar2);
            } else {
                byte[] bArr3 = bArr;
                int i6 = i3;
                zzay zzayVar3 = zzayVar;
                int i7 = 0;
                zzbb zzbbVar = null;
                while (true) {
                    if (iD >= i6) {
                        i2 = iD;
                        break;
                    }
                    i2 = zzax.d(bArr3, iD, zzayVar3);
                    int i8 = zzayVar3.f29651a;
                    int i9 = i8 >>> 3;
                    int i10 = i8 & 7;
                    if (i9 == 2) {
                        if (i10 != 0) {
                            if (i8 != 12) {
                                break;
                                break;
                            }
                            iD = zzax.a(i8, bArr3, i2, i6, zzayVar3);
                        } else {
                            iD = zzax.d(bArr3, i2, zzayVar3);
                            i7 = zzayVar3.f29651a;
                        }
                    } else if (i9 != 3 || i10 != 2) {
                        if (i8 != 12) {
                            break;
                        } else {
                            iD = zzax.a(i8, bArr3, i2, i6, zzayVar3);
                        }
                    } else {
                        iD = zzax.i(bArr3, i2, zzayVar3);
                        zzbbVar = (zzbb) zzayVar3.f29653c;
                    }
                }
                if (zzbbVar != null) {
                    zzeyVar.a((i7 << 3) | 2, zzbbVar);
                }
                bArr = bArr3;
                i3 = i6;
                zzayVar = zzayVar3;
            }
        }
        if (i2 != i3) {
            throw zzco.b();
        }
    }
}
