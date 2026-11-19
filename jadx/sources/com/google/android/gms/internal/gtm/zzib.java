package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzib extends zzdk {
    /* JADX WARN: Code duplicated, block: B:37:0x006a  */
    /* JADX WARN: Code duplicated, block: B:38:0x006b A[Catch: PatternSyntaxException -> 0x0071, TRY_LEAVE, TryCatch #0 {PatternSyntaxException -> 0x0071, blocks: (B:31:0x004f, B:33:0x005e, B:35:0x0064, B:38:0x006b), top: B:43:0x004f }] */
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Matcher matcher;
        String strGroup;
        zzkk zzkkVar;
        zzkk zzkkVar2;
        int length = zzkkVarArr.length;
        int i2 = 1;
        Preconditions.a(length >= 2);
        zzkk zzkkVar3 = zzkkVarArr[0];
        zzko zzkoVar = zzko.f30172h;
        if (zzkkVar3 != zzkoVar && zzkkVarArr[1] != zzkoVar) {
            String strD = zzdj.d(zzkkVar3);
            String strD2 = zzdj.d(zzkkVarArr[1]);
            int i3 = 64;
            if (length > 2 && (zzkkVar2 = zzkkVarArr[2]) != zzkoVar && zzdj.g(zzkkVar2)) {
                i3 = 66;
            }
            if (length <= 3 || (zzkkVar = zzkkVarArr[3]) == zzkoVar) {
                try {
                    matcher = Pattern.compile(strD2, i3).matcher(strD);
                    strGroup = null;
                    if (matcher.find() && matcher.groupCount() >= i2) {
                        strGroup = matcher.group(i2);
                    }
                    if (strGroup == null) {
                        return new zzkv(strGroup);
                    }
                } catch (PatternSyntaxException unused) {
                    return zzko.f30172h;
                }
            } else if (zzkkVar instanceof zzkm) {
                double dA = zzdj.a(zzkkVar);
                if (!Double.isInfinite(dA) && dA >= 0.0d) {
                    i2 = (int) dA;
                    matcher = Pattern.compile(strD2, i3).matcher(strD);
                    strGroup = null;
                    if (matcher.find()) {
                        strGroup = matcher.group(i2);
                    }
                    if (strGroup == null) {
                        return new zzkv(strGroup);
                    }
                }
            }
        }
        return zzkoVar;
    }
}
