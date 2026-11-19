package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzw extends com.google.android.gms.internal.common.zzb implements zzx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f29281a = 0;

    public zzw() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.internal.common.zzb
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        if (i2 == 1) {
            IObjectWrapper iObjectWrapperG0 = g0();
            parcel2.writeNoException();
            com.google.android.gms.internal.common.zzc.b(parcel2, iObjectWrapperG0);
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        int iH0 = h0();
        parcel2.writeNoException();
        parcel2.writeInt(iH0);
        return true;
    }
}
