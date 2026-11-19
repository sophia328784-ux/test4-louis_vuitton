package com.google.android.gms.identitycredentials.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.identitycredentials.GetCredentialRequest;
import com.google.android.gms.internal.identity_credentials.zza;
import com.google.android.gms.internal.identity_credentials.zzb;
import com.google.android.gms.internal.identity_credentials.zzc;

/* JADX INFO: loaded from: classes2.dex */
public interface IIdentityCredentialService extends IInterface {

    public static abstract class Stub extends zzb implements IIdentityCredentialService {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f29573a = 0;

        public static class Proxy extends zza implements IIdentityCredentialService {
            @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialService
            public final void Q1(InternalIdentityCredentialClient$getCredential$1$callback$1 internalIdentityCredentialClient$getCredential$1$callback$1, GetCredentialRequest getCredentialRequest) {
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
                int i2 = zzc.f30208a;
                parcelObtain.writeStrongBinder(internalIdentityCredentialClient$getCredential$1$callback$1);
                if (getCredentialRequest == null) {
                    parcelObtain.writeInt(0);
                } else {
                    parcelObtain.writeInt(1);
                    getCredentialRequest.writeToParcel(parcelObtain, 0);
                }
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    this.f30207a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                }
            }
        }
    }

    void Q1(InternalIdentityCredentialClient$getCredential$1$callback$1 internalIdentityCredentialClient$getCredential$1$callback$1, GetCredentialRequest getCredentialRequest);
}
