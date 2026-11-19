package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes2.dex */
final class zbi extends zbl {
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result c(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    public final void i(Api.AnyClient anyClient) {
        zbe zbeVar = (zbe) anyClient;
        zbs zbsVar = (zbs) zbeVar.v();
        zbh zbhVar = new zbh(this);
        GoogleSignInOptions googleSignInOptions = zbeVar.D;
        Parcel parcelE2 = zbsVar.E2();
        int i2 = com.google.android.gms.internal.p000authapi.zbc.f29595a;
        parcelE2.writeStrongBinder(zbhVar);
        com.google.android.gms.internal.p000authapi.zbc.c(parcelE2, googleSignInOptions);
        zbsVar.F2(102, parcelE2);
    }
}
