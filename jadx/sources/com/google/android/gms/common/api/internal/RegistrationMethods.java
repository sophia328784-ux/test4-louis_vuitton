package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class RegistrationMethods<A extends Api.AnyClient, L> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RegisterListenerMethod f29052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UnregisterListenerMethod f29053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f29054c;

    public static class Builder<A extends Api.AnyClient, L> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RemoteCall f29055a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RemoteCall f29056b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Runnable f29057c;
        public ListenerHolder d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Feature[] f29058e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f29059f;
        public int g;

        public final RegistrationMethods a() {
            Preconditions.b(this.f29055a != null, "Must set register function");
            Preconditions.b(this.f29056b != null, "Must set unregister function");
            Preconditions.b(this.d != null, "Must set holder");
            ListenerHolder.ListenerKey listenerKey = this.d.f29038b;
            Preconditions.i(listenerKey, "Key must not be null");
            return new RegistrationMethods(new zace(this, this.d, this.f29058e, this.f29059f, this.g), new zacf(this, listenerKey), this.f29057c);
        }
    }

    public /* synthetic */ RegistrationMethods(RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, Runnable runnable) {
        this.f29052a = registerListenerMethod;
        this.f29053b = unregisterListenerMethod;
        this.f29054c = runnable;
    }

    public static Builder a() {
        Builder builder = new Builder();
        builder.f29057c = zacg.zaa;
        builder.f29059f = true;
        return builder;
    }
}
