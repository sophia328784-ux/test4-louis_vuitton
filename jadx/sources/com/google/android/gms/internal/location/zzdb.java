package com.google.android.gms.internal.location;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdb extends GoogleApi implements SettingsClient {
    public zzdb(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) zzcg.l, Api.ApiOptions.j0, GoogleApi.Settings.f28994c);
    }

    public final Task j(final LocationSettingsRequest locationSettingsRequest) {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.internal.location.zzcz
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                zzec zzecVar = (zzec) obj;
                LocationSettingsRequest locationSettingsRequest2 = locationSettingsRequest;
                Preconditions.b(locationSettingsRequest2 != null, "locationSettingsRequest can't be null");
                ((zzu) zzecVar.v()).n2(locationSettingsRequest2, new zzdd(taskCompletionSource));
            }
        };
        builderA.d = 2426;
        return i(0, builderA.a());
    }

    public zzdb(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzcg.l, Api.ApiOptions.j0, GoogleApi.Settings.f28994c);
    }
}
