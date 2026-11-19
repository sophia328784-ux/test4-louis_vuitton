package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zbq extends com.google.android.gms.internal.p000authapi.zbb implements zbr {
    public zbq() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        switch (i2) {
            case 101:
                com.google.android.gms.internal.p000authapi.zbc.b(parcel);
                x1.i();
                return false;
            case 102:
                Status status = (Status) com.google.android.gms.internal.p000authapi.zbc.a(parcel, Status.CREATOR);
                com.google.android.gms.internal.p000authapi.zbc.b(parcel);
                P1(status);
                break;
            case 103:
                Status status2 = (Status) com.google.android.gms.internal.p000authapi.zbc.a(parcel, Status.CREATOR);
                com.google.android.gms.internal.p000authapi.zbc.b(parcel);
                J1(status2);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
