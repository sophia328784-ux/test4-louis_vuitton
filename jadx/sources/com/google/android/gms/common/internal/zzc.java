package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f29254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f29255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f29256c;

    public zzc(BaseGmsClient baseGmsClient, Object obj) {
        java.util.Objects.requireNonNull(baseGmsClient);
        this.f29256c = baseGmsClient;
        this.f29254a = obj;
        this.f29255b = false;
    }

    public abstract void a(Object obj);
}
