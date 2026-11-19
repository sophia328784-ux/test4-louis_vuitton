package com.google.firebase.crashlytics.internal;

import com.google.firebase.crashlytics.internal.model.StaticSessionData;
import com.google.firebase.inject.Deferred;
import defpackage.s3;
import defpackage.xq;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class CrashlyticsNativeComponentDeferredProxy implements CrashlyticsNativeComponent {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final NativeSessionFileProvider f34476c = new MissingNativeSessionFileProvider();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Deferred f34477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f34478b = new AtomicReference(null);

    public static final class MissingNativeSessionFileProvider implements NativeSessionFileProvider {
    }

    public CrashlyticsNativeComponentDeferredProxy(Deferred<CrashlyticsNativeComponent> deferred) {
        this.f34477a = deferred;
        deferred.a(new s3(this, 21));
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final NativeSessionFileProvider a(String str) {
        CrashlyticsNativeComponent crashlyticsNativeComponent = (CrashlyticsNativeComponent) this.f34478b.get();
        return crashlyticsNativeComponent == null ? f34476c : crashlyticsNativeComponent.a(str);
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final boolean b() {
        CrashlyticsNativeComponent crashlyticsNativeComponent = (CrashlyticsNativeComponent) this.f34478b.get();
        return crashlyticsNativeComponent != null && crashlyticsNativeComponent.b();
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final void c(String str, long j2, StaticSessionData staticSessionData) {
        Logger.f34483b.a(2);
        this.f34477a.a(new xq(str, j2, staticSessionData));
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public final boolean d(String str) {
        CrashlyticsNativeComponent crashlyticsNativeComponent = (CrashlyticsNativeComponent) this.f34478b.get();
        return crashlyticsNativeComponent != null && crashlyticsNativeComponent.d(str);
    }
}
