package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes2.dex */
final class zbk extends zbl {
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result c(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    public final void i(Api.AnyClient anyClient) {
        zbe zbeVar = (zbe) anyClient;
        zbs zbsVar = (zbs) zbeVar.v();
        zbj zbjVar = new zbj(this);
        GoogleSignInOptions googleSignInOptions = zbeVar.D;
        Parcel parcelE2 = zbsVar.E2();
        int i2 = com.google.android.gms.internal.p000authapi.zbc.f29595a;
        parcelE2.writeStrongBinder(zbjVar);
        com.google.android.gms.internal.p000authapi.zbc.c(parcelE2, googleSignInOptions);
        zbsVar.F2(103, parcelE2);
    }
}
