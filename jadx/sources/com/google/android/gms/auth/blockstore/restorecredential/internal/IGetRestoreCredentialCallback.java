package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialResponse;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth_blockstore.zzb;
import com.google.android.gms.internal.auth_blockstore.zzc;

/* JADX INFO: loaded from: classes2.dex */
public interface IGetRestoreCredentialCallback extends IInterface {

    public static abstract class Stub extends zzb implements IGetRestoreCredentialCallback {
        public Stub() {
            super("com.google.android.gms.auth.blockstore.restorecredential.internal.IGetRestoreCredentialCallback");
        }

        @Override // com.google.android.gms.internal.auth_blockstore.zzb
        public final boolean E2(int i2, Parcel parcel) {
            if (i2 != 1) {
                return false;
            }
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            GetRestoreCredentialResponse getRestoreCredentialResponse = (GetRestoreCredentialResponse) zzc.a(parcel, GetRestoreCredentialResponse.CREATOR);
            zzb.F2(parcel);
            status.getClass();
            getRestoreCredentialResponse.getClass();
            TaskUtil.a(status, getRestoreCredentialResponse, ((InternalRestoreCredentialClient$getRestoreCredential$1$callback$1) this).f28875a);
            return true;
        }
    }
}
