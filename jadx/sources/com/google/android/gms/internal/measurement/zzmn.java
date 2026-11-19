package com.google.android.gms.internal.measurement;

import android.app.Application;
import android.os.Looper;
import android.os.Parcel;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmn implements zzmj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzkk f30743a;

    public zzmn(zzkk zzkkVar) {
        zzkkVar.getClass();
        this.f30743a = zzkkVar;
    }

    public static ListenableFuture e(Task task) {
        final zzkz zzkzVar = new zzkz();
        zzkzVar.f30701b = task;
        task.b(MoreExecutors.b(), new OnCompleteListener() { // from class: com.google.android.gms.internal.measurement.zzla
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final /* synthetic */ void onComplete(Task task2) {
                boolean zJ = task2.j();
                zzkz zzkzVar2 = zzkzVar;
                if (zJ) {
                    zzkzVar2.cancel(false);
                    return;
                }
                if (task2.isSuccessful()) {
                    zzkzVar2.set(task2.getResult());
                    return;
                }
                Exception exception = task2.getException();
                if (exception != null) {
                    zzkzVar2.setException(exception);
                } else {
                    r81.b();
                }
            }
        });
        return Futures.c(zzkzVar, ApiException.class, zzml.f30742a, MoreExecutors.b());
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture a(final String str) {
        str.getClass();
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.internal.measurement.zzkb
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                int i2 = zzkk.l;
                zzkj zzkjVar = new zzkj((TaskCompletionSource) obj2);
                zzkt zzktVar = (zzkt) ((zzku) obj).v();
                Parcel parcelF2 = zzktVar.F2();
                zzbn.c(parcelF2, zzkjVar);
                parcelF2.writeString(str);
                parcelF2.writeString("");
                parcelF2.writeString(null);
                zzktVar.G2(11, parcelF2);
            }
        };
        return e(this.f30743a.i(0, builderA.a()).g(MoreExecutors.b(), new zzmm()));
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture b(String str) {
        str.getClass();
        return e(this.f30743a.k(str));
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture c(zzpm zzpmVar) {
        final String string;
        final zzkk zzkkVar = this.f30743a;
        Looper looper = zzkkVar.g;
        Preconditions.i(looper, "Looper must not be null");
        final ListenerHolder listenerHolder = new ListenerHolder(looper, zzpmVar, "zzku");
        if (ProcessUtils.f29343a == null) {
            ProcessUtils.f29343a = Application.getProcessName();
        }
        String str = ProcessUtils.f29343a;
        if (str == null) {
            string = "__PH_INTERNAL__NO_PROCESS__";
        } else {
            int length = str.length() + 1;
            int iIdentityHashCode = System.identityHashCode(zzku.class);
            StringBuilder sb = new StringBuilder(length + String.valueOf(iIdentityHashCode).length());
            sb.append(str);
            sb.append("|");
            sb.append(iIdentityHashCode);
            string = sb.toString();
        }
        RemoteCall remoteCall = new RemoteCall() { // from class: com.google.android.gms.internal.measurement.zzkg
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzkt zzktVar = (zzkt) ((zzku) obj).v();
                zzka zzkaVar = new zzka(zzkkVar, listenerHolder);
                Parcel parcelF2 = zzktVar.F2();
                parcelF2.writeString(string);
                zzbn.c(parcelF2, zzkaVar);
                zzktVar.G2(28, parcelF2);
            }
        };
        RegistrationMethods.Builder builderA = RegistrationMethods.a();
        builderA.d = listenerHolder;
        builderA.f29055a = remoteCall;
        builderA.f29056b = zzkh.f30690a;
        builderA.f29058e = new Feature[]{zzjn.f30662b};
        builderA.f29059f = false;
        return e(zzkkVar.f(builderA.a()));
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture d(final zzme zzmeVar) {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.internal.measurement.zzkd
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                int i2 = zzkk.l;
                zzkj zzkjVar = new zzkj((TaskCompletionSource) obj2);
                zzkt zzktVar = (zzkt) ((zzku) obj).v();
                byte[] bArrI = zzmeVar.i();
                Parcel parcelF2 = zzktVar.F2();
                zzbn.c(parcelF2, zzkjVar);
                parcelF2.writeByteArray(bArrI);
                zzktVar.G2(31, parcelF2);
            }
        };
        builderA.f29065c = new Feature[]{zzjn.f30661a};
        builderA.f29064b = false;
        TaskApiCall taskApiCallA = builderA.a();
        final zzkk zzkkVar = this.f30743a;
        return e(zzkkVar.i(0, taskApiCallA).h(MoreExecutors.b(), new Continuation() { // from class: com.google.android.gms.internal.measurement.zzke
            @Override // com.google.android.gms.tasks.Continuation
            public final Object d(Task task) {
                boolean z = task.getException() instanceof UnsupportedApiCallException;
                zzme zzmeVar2 = zzmeVar;
                zzkk zzkkVar2 = zzkkVar;
                if (z) {
                    return zzkkVar2.k(zzmeVar2.A());
                }
                if (task.getException() instanceof ApiException) {
                    ApiException apiException = (ApiException) task.getException();
                    apiException.getClass();
                    if (apiException.f28974b.f29008b == 29514) {
                        return zzkkVar2.k(zzmeVar2.A());
                    }
                }
                return task;
            }
        }));
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final ListenableFuture g0() {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        final zzkk zzkkVar = this.f30743a;
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.internal.measurement.zzkf
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzkt zzktVar = (zzkt) ((zzku) obj).v();
                zzjy zzjyVar = new zzjy(zzkkVar, (TaskCompletionSource) obj2);
                Parcel parcelF2 = zzktVar.F2();
                zzbn.c(parcelF2, zzjyVar);
                zzktVar.G2(27, parcelF2);
            }
        };
        builderA.f29065c = new Feature[]{zzjn.f30663c};
        builderA.f29064b = false;
        return e(zzkkVar.i(0, builderA.a()));
    }
}
