package com.google.firebase.crashlytics;

import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.annotations.concurrent.Lightweight;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.remoteconfig.interop.FirebaseRemoteConfigInterop;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import defpackage.s3;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Qualified f34471a = new Qualified(Background.class, ExecutorService.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Qualified f34472b = new Qualified(Blocking.class, ExecutorService.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Qualified f34473c = new Qualified(Lightweight.class, ExecutorService.class);

    static {
        FirebaseSessionsDependencies.a(SessionSubscriber.Name.CRASHLYTICS);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        Component.Builder builderB = Component.b(FirebaseCrashlytics.class);
        builderB.f34383a = "fire-cls";
        builderB.a(Dependency.b(FirebaseApp.class));
        builderB.a(Dependency.b(FirebaseInstallationsApi.class));
        builderB.a(Dependency.a(this.f34471a));
        builderB.a(Dependency.a(this.f34472b));
        builderB.a(Dependency.a(this.f34473c));
        builderB.a(new Dependency(0, 2, CrashlyticsNativeComponent.class));
        builderB.a(new Dependency(0, 2, AnalyticsConnector.class));
        builderB.a(new Dependency(0, 2, FirebaseRemoteConfigInterop.class));
        builderB.f34387f = new s3(this, 22);
        builderB.c(2);
        return Arrays.asList(builderB.b(), LibraryVersionComponent.a("fire-cls", "20.1.0"));
    }
}
