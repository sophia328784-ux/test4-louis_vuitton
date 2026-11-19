package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.zad;
import com.google.android.gms.internal.base.zac;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public final class zaq extends GoogleApi implements zad {
    public static final Api l = new Api("ClientNotification.API", new zao(), new Api.ClientKey());

    public zaq(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) l, Api.ApiOptions.j0, GoogleApi.Settings.f28994c);
    }

    public final Task j(final com.google.android.gms.common.internal.zab zabVar) {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29065c = new Feature[]{com.google.android.gms.internal.base.zad.f29618b};
        builderA.f29064b = false;
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.common.internal.service.zap
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                Api api = zaq.l;
                zaj zajVar = (zaj) ((zab) obj).v();
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken(zajVar.f29615b);
                int i2 = zac.f29616a;
                parcelObtain.writeInt(1);
                zabVar.writeToParcel(parcelObtain, 0);
                try {
                    zajVar.f29614a.transact(1, parcelObtain, null, 1);
                    parcelObtain.recycle();
                    taskCompletionSource.b(null);
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }
        };
        return i(2, builderA.a());
    }
}
