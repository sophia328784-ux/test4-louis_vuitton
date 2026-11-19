package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TaskApiCall<A extends Api.AnyClient, ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Feature[] f29060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f29061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29062c;

    public static class Builder<A extends Api.AnyClient, ResultT> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RemoteCall f29063a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f29064b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Feature[] f29065c;
        public int d;

        public final TaskApiCall a() {
            Preconditions.b(this.f29063a != null, "execute parameter required");
            return new zacn(this, this.f29065c, this.f29064b, this.d);
        }
    }

    public TaskApiCall(Feature[] featureArr, boolean z, int i2) {
        this.f29060a = featureArr;
        boolean z2 = false;
        if (featureArr != null && z) {
            z2 = true;
        }
        this.f29061b = z2;
        this.f29062c = i2;
    }

    public static Builder a() {
        Builder builder = new Builder();
        builder.f29064b = true;
        builder.d = 0;
        return builder;
    }

    public abstract void b(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource);

    @Deprecated
    public TaskApiCall() {
        this.f29060a = null;
        this.f29061b = false;
        this.f29062c = 0;
    }
}
