package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class zzge extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        int length = zzkkVarArr.length;
        if (length == 1) {
            z = true;
        } else if (length == 2) {
            length = 2;
            z = true;
        } else {
            z = false;
        }
        Preconditions.a(z);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        Matcher matcher = Pattern.compile(length < 2 ? "" : zzdj.d(zzkkVarArr[1])).matcher(((zzkv) zzkkVarArr[0]).f30188b);
        return matcher.find() ? new zzkm(Double.valueOf(matcher.start())) : new zzkm(Double.valueOf(-1.0d));
    }
}
