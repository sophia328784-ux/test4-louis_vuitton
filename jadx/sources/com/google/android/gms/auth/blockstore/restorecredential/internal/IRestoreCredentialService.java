package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.blockstore.restorecredential.ClearRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialRequest;
import com.google.android.gms.internal.auth_blockstore.zza;
import com.google.android.gms.internal.auth_blockstore.zzb;
import com.google.android.gms.internal.auth_blockstore.zzc;

/* JADX INFO: loaded from: classes2.dex */
public interface IRestoreCredentialService extends IInterface {

    public static abstract class Stub extends zzb implements IRestoreCredentialService {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f28869a = 0;

        public static class Proxy extends zza implements IRestoreCredentialService {
            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService
            public final void B1(CreateRestoreCredentialRequest createRestoreCredentialRequest, InternalRestoreCredentialClient$createRestoreCredential$1$callback$1 internalRestoreCredentialClient$createRestoreCredential$1$callback$1) {
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService");
                int i2 = zzc.f29613a;
                if (createRestoreCredentialRequest == null) {
                    parcelObtain.writeInt(0);
                } else {
                    parcelObtain.writeInt(1);
                    createRestoreCredentialRequest.writeToParcel(parcelObtain, 0);
                }
                parcelObtain.writeStrongBinder(internalRestoreCredentialClient$createRestoreCredential$1$callback$1.asBinder());
                E2(3, parcelObtain);
            }

            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService
            public final void D0(GetRestoreCredentialRequest getRestoreCredentialRequest, InternalRestoreCredentialClient$getRestoreCredential$1$callback$1 internalRestoreCredentialClient$getRestoreCredential$1$callback$1) {
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService");
                int i2 = zzc.f29613a;
                if (getRestoreCredentialRequest == null) {
                    parcelObtain.writeInt(0);
                } else {
                    parcelObtain.writeInt(1);
                    getRestoreCredentialRequest.writeToParcel(parcelObtain, 0);
                }
                parcelObtain.writeStrongBinder(internalRestoreCredentialClient$getRestoreCredential$1$callback$1.asBinder());
                E2(2, parcelObtain);
            }

            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService
            public final void E0(ClearRestoreCredentialRequest clearRestoreCredentialRequest, InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1 internalRestoreCredentialClient$clearRestoreCredential$1$callback$1) {
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService");
                int i2 = zzc.f29613a;
                if (clearRestoreCredentialRequest == null) {
                    parcelObtain.writeInt(0);
                } else {
                    parcelObtain.writeInt(1);
                    clearRestoreCredentialRequest.writeToParcel(parcelObtain, 0);
                }
                parcelObtain.writeStrongBinder(internalRestoreCredentialClient$clearRestoreCredential$1$callback$1.asBinder());
                E2(4, parcelObtain);
            }
        }
    }

    void B1(CreateRestoreCredentialRequest createRestoreCredentialRequest, InternalRestoreCredentialClient$createRestoreCredential$1$callback$1 internalRestoreCredentialClient$createRestoreCredential$1$callback$1);

    void D0(GetRestoreCredentialRequest getRestoreCredentialRequest, InternalRestoreCredentialClient$getRestoreCredential$1$callback$1 internalRestoreCredentialClient$getRestoreCredential$1$callback$1);

    void E0(ClearRestoreCredentialRequest clearRestoreCredentialRequest, InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1 internalRestoreCredentialClient$clearRestoreCredential$1$callback$1);
}
