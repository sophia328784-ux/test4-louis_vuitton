package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgg extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        int length = zzkkVarArr.length;
        int i2 = 0;
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
        ArrayList arrayList = new ArrayList();
        if (length == 1) {
            arrayList.add(zzkkVarArr[0]);
        } else {
            String str = ((zzkv) zzkkVarArr[0]).f30188b;
            String strD = zzdj.d(zzkkVarArr[1]);
            boolean zIsEmpty = strD.isEmpty();
            String[] strArrSplit = str.split(strD, true != zIsEmpty ? -1 : 0);
            if (zIsEmpty && strArrSplit.length > 0 && strArrSplit[0].isEmpty()) {
                i2 = 1;
            }
            while (i2 < strArrSplit.length) {
                arrayList.add(new zzkv(strArrSplit[i2]));
                i2++;
            }
        }
        return new zzkr(arrayList);
    }
}
