package com.google.android.gms.internal.fido;

import defpackage.fc;
import defpackage.md;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhi extends zzhp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzgx f29909b;

    public zzhi(zzgx zzgxVar) {
        this.f29909b = zzgxVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        int iD0 = zzhpVar.d0();
        int iC = zzhp.c((byte) 64);
        if (iC != iD0) {
            return iC - zzhpVar.d0();
        }
        zzgx zzgxVar = ((zzhi) zzhpVar).f29909b;
        zzgx zzgxVar2 = this.f29909b;
        if (((zzgu) zzgxVar2).d.length != ((zzgu) zzgxVar).d.length) {
            return ((zzgu) zzgxVar2).d.length - ((zzgu) zzgxVar).d.length;
        }
        return zzgl.f29894a.compare(zzgxVar2.q(), zzgxVar.q());
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int d0() {
        return zzhp.c((byte) 64);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhi.class == obj.getClass()) {
            return this.f29909b.equals(((zzhi) obj).f29909b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c((byte) 64)), this.f29909b});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        zzgb zzgbVar;
        int i2;
        boolean z;
        zzge zzgeVar = (zzge) zzgf.f29892a;
        zzgf zzgfVarC = zzgeVar.d;
        if (zzgfVarC == null) {
            zzgb zzgbVar2 = zzgeVar.f29890b;
            char[] cArr = zzgbVar2.f29884b;
            int i3 = 0;
            while (true) {
                if (i3 >= cArr.length) {
                    zzgbVar = zzgbVar2;
                    break;
                }
                char c2 = cArr[i3];
                if (c2 >= 'a' && c2 <= 'z') {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= cArr.length) {
                            z = false;
                            break;
                        }
                        char c3 = cArr[i4];
                        if (c3 >= 'A' && c3 <= 'Z') {
                            z = true;
                            break;
                        }
                        i4++;
                    }
                    if (!z) {
                        char[] cArr2 = new char[cArr.length];
                        for (int i5 = 0; i5 < cArr.length; i5++) {
                            char c4 = cArr[i5];
                            if (c4 >= 97 && c4 <= 122) {
                                c4 ^= 32;
                            }
                            cArr2[i5] = (char) c4;
                        }
                        zzgbVar = new zzgb(zzgbVar2.f29883a.concat(".upperCase()"), cArr2);
                        byte[] bArr = zzgbVar.g;
                        if (!zzgbVar2.f29888h || zzgbVar.f29888h) {
                            break;
                            break;
                        }
                        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                        for (i2 = 65; i2 <= 90; i2++) {
                            int i6 = i2 | 32;
                            byte b2 = bArr[i2];
                            byte b3 = bArr[i6];
                            if (b2 == -1) {
                                bArrCopyOf[i2] = b3;
                            } else {
                                char c5 = (char) i2;
                                char c6 = (char) i6;
                                if (b3 != -1) {
                                    md.k(zzbo.a("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c5), Character.valueOf(c6)));
                                    return null;
                                }
                                bArrCopyOf[i6] = b2;
                            }
                        }
                        zzgbVar = new zzgb(zzgbVar.f29883a.concat(".ignoreCase()"), zzgbVar.f29884b, bArrCopyOf, true);
                        break;
                    }
                    md.k("Cannot call upperCase() on a mixed-case alphabet");
                    return null;
                }
                i3++;
            }
            zzgfVarC = zzgbVar == zzgbVar2 ? zzgeVar : zzgeVar.c(zzgbVar, zzgeVar.f29891c);
            zzgeVar.d = zzgfVarC;
        }
        byte[] bArrQ = this.f29909b.q();
        return fc.h("h'", zzgfVarC.b(bArrQ.length, bArrQ), "'");
    }
}
