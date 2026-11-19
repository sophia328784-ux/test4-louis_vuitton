package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth_blockstore.zzb;
import com.google.android.gms.internal.auth_blockstore.zzc;

/* JADX INFO: loaded from: classes2.dex */
public interface IClearRestoreCredentialCallback extends IInterface {

    public static abstract class Stub extends zzb implements IClearRestoreCredentialCallback {
        public Stub() {
            super("com.google.android.gms.auth.blockstore.restorecredential.internal.IClearRestoreCredentialCallback");
        }

        @Override // com.google.android.gms.internal.auth_blockstore.zzb
        public final boolean E2(int i2, Parcel parcel) {
            if (i2 != 1) {
                return false;
            }
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            boolean z = parcel.readInt() != 0;
            zzb.F2(parcel);
            status.getClass();
            TaskUtil.a(status, Boolean.valueOf(z), ((InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1) this).f28873a);
            return true;
        }
    }
}
