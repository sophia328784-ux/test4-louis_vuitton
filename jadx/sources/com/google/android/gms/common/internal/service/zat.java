package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.internal.base.zac;
import com.google.android.gms.internal.base.zad;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public final class zat extends GoogleApi implements TelemetryLoggingClient {
    public static final Api l = new Api("ClientTelemetry.API", new zar(), new Api.ClientKey());

    public zat(Context context, TelemetryLoggingOptions telemetryLoggingOptions) {
        super(context, (Api<TelemetryLoggingOptions>) l, telemetryLoggingOptions, GoogleApi.Settings.f28994c);
    }

    public final Task j(final TelemetryData telemetryData) {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29065c = new Feature[]{zad.f29617a};
        builderA.f29064b = false;
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.common.internal.service.zas
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                Api api = zat.l;
                zak zakVar = (zak) ((zau) obj).v();
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken(zakVar.f29615b);
                int i2 = zac.f29616a;
                TelemetryData telemetryData2 = telemetryData;
                if (telemetryData2 == null) {
                    parcelObtain.writeInt(0);
                } else {
                    parcelObtain.writeInt(1);
                    telemetryData2.writeToParcel(parcelObtain, 0);
                }
                try {
                    zakVar.f29614a.transact(1, parcelObtain, null, 1);
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
