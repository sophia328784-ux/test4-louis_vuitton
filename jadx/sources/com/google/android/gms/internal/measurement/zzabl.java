package com.google.android.gms.internal.measurement;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzabl extends zzabp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzabl f30345b = new zzabl();

    @Override // com.google.android.gms.internal.measurement.zzabp
    public final int c(zzyy zzyyVar, int i2, String str, int i3, int i4, int i5) {
        int i6;
        zzza zzzaVar;
        zzza zzzaVar2;
        zzabh zzabgVar;
        zzabh zzabkVar;
        char cCharAt = str.charAt(i5);
        boolean z = false;
        int i7 = 1;
        boolean z2 = (cCharAt & ' ') == 0;
        zzza zzzaVar3 = zzza.f31109e;
        char c2 = ' ';
        int i8 = i4;
        if (i8 != i5 || z2) {
            int i9 = true != z2 ? 0 : 128;
            while (true) {
                if (i8 != i5) {
                    int i10 = i8 + 1;
                    char cCharAt2 = str.charAt(i8);
                    i6 = i7;
                    if (cCharAt2 >= c2 && cCharAt2 <= '0') {
                        int i11 = ((int) ((zzza.d >>> ((cCharAt2 - ' ') * 3)) & 7)) - 1;
                        if (i11 >= 0) {
                            int i12 = i6 << i11;
                            if ((i9 & i12) != 0) {
                                throw zzabo.b(i8, "repeated flag", str);
                            }
                            i9 |= i12;
                            c2 = ' ';
                            i7 = i6;
                            i8 = i10;
                        } else {
                            if (cCharAt2 != '.') {
                                throw zzabo.b(i8, "invalid flag", str);
                            }
                            zzzaVar2 = new zzza(i9, -1, zzza.e(i10, i5, str));
                        }
                    } else {
                        if (cCharAt2 > '9') {
                            throw zzabo.b(i8, "invalid flag", str);
                        }
                        int i13 = cCharAt2 - '0';
                        while (true) {
                            if (i10 == i5) {
                                zzzaVar2 = new zzza(i9, i13, -1);
                                break;
                            }
                            int i14 = i10 + 1;
                            char cCharAt3 = str.charAt(i10);
                            if (cCharAt3 == '.') {
                                zzzaVar2 = new zzza(i9, i13, zzza.e(i14, i5, str));
                                break;
                            }
                            char c3 = (char) (cCharAt3 - '0');
                            if (c3 >= '\n') {
                                throw zzabo.b(i10, "invalid width character", str);
                            }
                            i13 = (i13 * 10) + c3;
                            if (i13 > 999999) {
                                throw zzabo.a(i8, i5, "width too large", str);
                            }
                            i10 = i14;
                            z = false;
                        }
                    }
                    zzzaVar = zzzaVar2;
                    break;
                }
                i6 = i7;
                zzzaVar = new zzza(i9, -1, -1);
                break;
            }
        }
        zzzaVar = zzza.f31109e;
        i6 = 1;
        zzyz zzyzVarA = zzyz.a(cCharAt);
        int i15 = i5 + 1;
        if (zzyzVarA != null) {
            zzzaVar.getClass();
            if (!zzzaVar.b(zzyzVarA.d(), zzyzVarA.c().a())) {
                throw zzabo.a(i3, i15, "invalid format specifier", str);
            }
            if (i2 < 10) {
                Map map = zzabj.d;
                if (zzzaVar.a()) {
                    zzabh[] zzabhVarArr = (zzabj[]) zzabj.d.get(zzyzVarA);
                    zzabr.a(zzabhVarArr, "default parameter");
                    zzabgVar = zzabhVarArr[i2];
                }
            }
            zzabkVar = new zzabj(i2, zzyzVarA, zzzaVar);
            zzabgVar = zzabkVar;
        } else if (cCharAt == 't' || cCharAt == 'T') {
            if (!zzzaVar.b(160, z)) {
                throw zzabo.a(i3, i15, "invalid format specification", str);
            }
            int i16 = i5 + 2;
            if (i16 > str.length()) {
                throw zzabo.b(i3, "truncated format specifier", str);
            }
            zzabf zzabfVarA = zzabf.a(str.charAt(i15));
            if (zzabfVarA == null) {
                throw zzabo.b(i15, "illegal date/time conversion", str);
            }
            zzabgVar = new zzabg(zzzaVar, i2, zzabfVarA);
            i15 = i16;
        } else {
            if (cCharAt != 'h' && cCharAt != 'H') {
                throw zzabo.a(i3, i15, "invalid format specification", str);
            }
            if (!zzzaVar.b(160, z)) {
                throw zzabo.a(i3, i15, "invalid format specification", str);
            }
            zzabkVar = new zzabk(zzzaVar, i2);
            zzabgVar = zzabkVar;
        }
        int i17 = zzabgVar.f30342a;
        if (i17 < 32) {
            zzyyVar.f30347b |= i6 << i17;
        }
        zzyyVar.f30348c = Math.max(zzyyVar.f30348c, i17);
        zzaaf zzaafVar = zzyyVar.f30346a;
        zzabn zzabnVar = zzaafVar.f30301a;
        StringBuilder sb = zzyyVar.f31105e;
        zzabnVar.b(zzyyVar.f31106f, i3, zzaafVar.f30302b, sb);
        Object[] objArr = zzyyVar.d;
        int i18 = zzabgVar.f30342a;
        if (i18 < objArr.length) {
            Object obj = objArr[i18];
            if (obj != null) {
                zzabgVar.a(zzyyVar, obj);
            } else {
                sb.append("null");
            }
        } else {
            sb.append("[ERROR: MISSING LOG ARGUMENT]");
        }
        zzyyVar.f31106f = i15;
        return i15;
    }
}
