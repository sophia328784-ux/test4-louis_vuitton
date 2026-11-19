package com.google.android.gms.identitycredentials.internal;

import android.os.IInterface;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.internal.identity_credentials.zzb;

/* JADX INFO: loaded from: classes2.dex */
public interface IIdentityCredentialCallbacks extends IInterface {

    public static abstract class Stub extends zzb implements IIdentityCredentialCallbacks {
        public Stub() {
            attachInterface(this, "com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks");
        }
    }

    void W1(Status status, PendingGetCredentialHandle pendingGetCredentialHandle);
}
