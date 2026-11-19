package com.google.android.gms.internal.cloudmessaging;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cloudmessaging.CloudMessagingClient;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public final class zzm extends GoogleApi implements CloudMessagingClient {
    public static final Api l = new Api("CloudMessaging.API", new zzh(), new Api.ClientKey());

    public zzm(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) l, Api.ApiOptions.j0, GoogleApi.Settings.f28994c);
    }

    public final Task j(final RegisterRequest registerRequest) {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29065c = new Feature[]{com.google.android.gms.cloudmessaging.zzi.f28929a};
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.internal.cloudmessaging.zzl
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                int i2;
                zzd zzdVar = (zzd) obj;
                zzm zzmVar = this.f29803a;
                zzi zziVar = new zzi(zzmVar, (TaskCompletionSource) obj2);
                Context context = zzmVar.f28985a;
                try {
                    i2 = Wrappers.a(context).b(0, context.getPackageName()).versionCode;
                } catch (PackageManager.NameNotFoundException unused) {
                    i2 = 0;
                }
                RegisterRequest registerRequest2 = registerRequest;
                registerRequest2.g = i2;
                zze zzeVar = (zze) zzdVar.v();
                int i3 = zzn.f29805a;
                Parcelable.Creator<ComplianceOptions> creator = ComplianceOptions.CREATOR;
                new ComplianceOptions.Builder();
                ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
                Parcelable.Creator<ApiMetadata> creator2 = ApiMetadata.CREATOR;
                ApiMetadata.Builder builder = new ApiMetadata.Builder();
                builder.f28978a = complianceOptions;
                ApiMetadata apiMetadataA = builder.a();
                ApiMetadata.Builder builder2 = new ApiMetadata.Builder();
                builder2.f28978a = apiMetadataA.f28976b;
                builder2.f28980c = apiMetadataA.d;
                builder2.f28979b = true;
                ApiMetadata apiMetadataA2 = builder2.a();
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.google.android.gms.cloudmessaging.internal.ICloudMessagingService");
                int i4 = zzc.f29801a;
                parcelObtain.writeStrongBinder(zziVar);
                parcelObtain.writeInt(1);
                registerRequest2.writeToParcel(parcelObtain, 0);
                parcelObtain.writeInt(1);
                apiMetadataA2.writeToParcel(parcelObtain, 0);
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    zzeVar.f29800a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                }
            }
        };
        builderA.d = 39001;
        return i(0, builderA.a());
    }
}
