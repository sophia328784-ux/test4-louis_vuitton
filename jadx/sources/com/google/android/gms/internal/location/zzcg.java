package com.google.android.gms.internal.location;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcg extends GoogleApi implements FusedLocationProviderClient {
    public static final Api l = new Api("LocationServices.API", new zzbe(), new Api.ClientKey());

    public zzcg(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) l, Api.ApiOptions.j0, GoogleApi.Settings.f28994c);
    }

    @Override // com.google.android.gms.location.FusedLocationProviderClient
    public final Task a(final LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
        if (looper == null) {
            looper = Looper.myLooper();
            Preconditions.i(looper, "invalid null looper");
        }
        Preconditions.i(locationCallback, "Listener must not be null");
        ListenerHolder listenerHolder = new ListenerHolder(looper, locationCallback, "LocationCallback");
        final zzcf zzcfVar = new zzcf(this, listenerHolder);
        RemoteCall remoteCall = new RemoteCall() { // from class: com.google.android.gms.internal.location.zzbq
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzdu zzduVar;
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                zzec zzecVar = (zzec) obj;
                Api api = zzcg.l;
                zzcf zzcfVar2 = zzcfVar;
                LocationRequest locationRequest2 = locationRequest;
                zzecVar.getClass();
                ListenerHolder listenerHolderD0 = zzcfVar2.d0();
                ListenerHolder.ListenerKey listenerKey = listenerHolderD0.f29038b;
                Objects.requireNonNull(listenerKey);
                boolean zD = zzecVar.D(com.google.android.gms.location.zzn.f31403b);
                SimpleArrayMap simpleArrayMap = zzecVar.E;
                synchronized (simpleArrayMap) {
                    try {
                        zzdu zzduVar2 = (zzdu) simpleArrayMap.get(listenerKey);
                        if (zzduVar2 == null || zD) {
                            zzdu zzduVar3 = new zzdu(zzcfVar2);
                            simpleArrayMap.put(listenerKey, zzduVar3);
                            zzduVar = zzduVar3;
                        } else {
                            zzduVar2.f30237b.a(listenerHolderD0);
                            zzduVar = zzduVar2;
                            zzduVar2 = null;
                        }
                        if (zD) {
                            ((zzu) zzecVar.v()).C(new zzed(2, zzduVar2 == null ? null : zzduVar2, zzduVar, null, listenerKey.a()), locationRequest2, new zzdi(null, taskCompletionSource));
                        } else {
                            zzdu zzduVar4 = zzduVar;
                            ((zzu) zzecVar.v()).Y1(new zzeh(1, new zzef(locationRequest2, null, false, false, false, false, Long.MAX_VALUE), null, zzduVar4, null, new zzdc(taskCompletionSource, zzduVar4), listenerKey.a()));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        RegistrationMethods.Builder builderA = RegistrationMethods.a();
        builderA.f29055a = remoteCall;
        builderA.f29056b = zzcfVar;
        builderA.d = listenerHolder;
        builderA.g = 2436;
        return f(builderA.a());
    }

    @Override // com.google.android.gms.location.FusedLocationProviderClient
    public final Task b(LocationCallback locationCallback) {
        Preconditions.i(locationCallback, "Listener must not be null");
        Preconditions.f("LocationCallback", "Listener type must not be empty");
        return g(new ListenerHolder.ListenerKey(locationCallback, "LocationCallback"), 2418).g(zzca.f30218b, zzbs.f30215b);
    }

    @Override // com.google.android.gms.location.FusedLocationProviderClient
    public final Task c() {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29063a = zzbu.f30216a;
        builderA.d = 2414;
        return i(0, builderA.a());
    }

    public zzcg(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) l, Api.ApiOptions.j0, GoogleApi.Settings.f28994c);
    }
}
