package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzin extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        int length = zzkkVarArr.length;
        if (length == 2) {
            z = true;
        } else if (length == 3) {
            z = true;
            length = 3;
        } else {
            z = false;
        }
        Preconditions.a(z);
        String strD = zzdj.d(zzkkVarArr[0]);
        String strD2 = zzdj.d(zzkkVarArr[1]);
        int i2 = 64;
        if (length >= 3 && "true".equalsIgnoreCase(zzdj.d(zzkkVarArr[2]))) {
            i2 = 66;
        }
        try {
            return new zzkl(Boolean.valueOf(Pattern.compile(strD2, i2).matcher(strD).find()));
        } catch (PatternSyntaxException unused) {
            return new zzkl(Boolean.FALSE);
        }
    }
}
