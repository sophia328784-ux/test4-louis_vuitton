package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzbu implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzbu f30216a = new zzbu();

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        zzec zzecVar = (zzec) obj;
        Api api = zzcg.l;
        LastLocationRequest.Builder builder = new LastLocationRequest.Builder();
        LastLocationRequest lastLocationRequest = new LastLocationRequest(builder.f31341a, builder.f31342b, builder.f31343c, builder.d);
        zzecVar.getClass();
        if (zzecVar.D(com.google.android.gms.location.zzn.f31403b)) {
            ((zzu) zzecVar.v()).I0(lastLocationRequest, new zzed(4, null, new zzdj(taskCompletionSource), null, null));
        } else if (zzecVar.D(com.google.android.gms.location.zzn.f31402a)) {
            ((zzu) zzecVar.v()).V0(lastLocationRequest, new zzdj(taskCompletionSource));
        } else {
            taskCompletionSource.b(((zzu) zzecVar.v()).j());
        }
    }
}
