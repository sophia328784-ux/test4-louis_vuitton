package com.linecorp.linesdk.utils;

import android.os.Parcel;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ParcelUtils {
    public static Date a(Parcel parcel) {
        long j2 = parcel.readLong();
        if (j2 != -1) {
            return new Date(j2);
        }
        return null;
    }
}
