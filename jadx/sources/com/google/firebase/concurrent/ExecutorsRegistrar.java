package com.google.firebase.concurrent;

import android.os.StrictMode;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.annotations.concurrent.Lightweight;
import com.google.firebase.annotations.concurrent.UiThread;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Lazy;
import com.google.firebase.components.Qualified;
import com.google.firebase.inject.Provider;
import defpackage.mt;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f34440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f34441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy f34442c;
    public static final Lazy d;

    static {
        final int i2 = 0;
        f34440a = new Lazy(new Provider() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                switch (i2) {
                    case 0:
                        Lazy lazy = ExecutorsRegistrar.f34440a;
                        StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                        builderDetectNetwork.detectResourceMismatches();
                        builderDetectNetwork.detectUnbufferedIo();
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(4, new CustomThreadFactory("Firebase Background", 10, builderDetectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 1:
                        Lazy lazy2 = ExecutorsRegistrar.f34440a;
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new CustomThreadFactory("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 2:
                        Lazy lazy3 = ExecutorsRegistrar.f34440a;
                        return new DelegatingScheduledExecutorService(Executors.newCachedThreadPool(new CustomThreadFactory("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    default:
                        Lazy lazy4 = ExecutorsRegistrar.f34440a;
                        return Executors.newSingleThreadScheduledExecutor(new CustomThreadFactory("Firebase Scheduler", 0, null));
                }
            }
        });
        final int i3 = 1;
        f34441b = new Lazy(new Provider() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                switch (i3) {
                    case 0:
                        Lazy lazy = ExecutorsRegistrar.f34440a;
                        StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                        builderDetectNetwork.detectResourceMismatches();
                        builderDetectNetwork.detectUnbufferedIo();
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(4, new CustomThreadFactory("Firebase Background", 10, builderDetectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 1:
                        Lazy lazy2 = ExecutorsRegistrar.f34440a;
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new CustomThreadFactory("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 2:
                        Lazy lazy3 = ExecutorsRegistrar.f34440a;
                        return new DelegatingScheduledExecutorService(Executors.newCachedThreadPool(new CustomThreadFactory("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    default:
                        Lazy lazy4 = ExecutorsRegistrar.f34440a;
                        return Executors.newSingleThreadScheduledExecutor(new CustomThreadFactory("Firebase Scheduler", 0, null));
                }
            }
        });
        final int i4 = 2;
        f34442c = new Lazy(new Provider() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                switch (i4) {
                    case 0:
                        Lazy lazy = ExecutorsRegistrar.f34440a;
                        StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                        builderDetectNetwork.detectResourceMismatches();
                        builderDetectNetwork.detectUnbufferedIo();
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(4, new CustomThreadFactory("Firebase Background", 10, builderDetectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 1:
                        Lazy lazy2 = ExecutorsRegistrar.f34440a;
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new CustomThreadFactory("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 2:
                        Lazy lazy3 = ExecutorsRegistrar.f34440a;
                        return new DelegatingScheduledExecutorService(Executors.newCachedThreadPool(new CustomThreadFactory("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    default:
                        Lazy lazy4 = ExecutorsRegistrar.f34440a;
                        return Executors.newSingleThreadScheduledExecutor(new CustomThreadFactory("Firebase Scheduler", 0, null));
                }
            }
        });
        final int i5 = 3;
        d = new Lazy(new Provider() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                switch (i5) {
                    case 0:
                        Lazy lazy = ExecutorsRegistrar.f34440a;
                        StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                        builderDetectNetwork.detectResourceMismatches();
                        builderDetectNetwork.detectUnbufferedIo();
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(4, new CustomThreadFactory("Firebase Background", 10, builderDetectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 1:
                        Lazy lazy2 = ExecutorsRegistrar.f34440a;
                        return new DelegatingScheduledExecutorService(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new CustomThreadFactory("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    case 2:
                        Lazy lazy3 = ExecutorsRegistrar.f34440a;
                        return new DelegatingScheduledExecutorService(Executors.newCachedThreadPool(new CustomThreadFactory("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
                    default:
                        Lazy lazy4 = ExecutorsRegistrar.f34440a;
                        return Executors.newSingleThreadScheduledExecutor(new CustomThreadFactory("Firebase Scheduler", 0, null));
                }
            }
        });
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        Component.Builder builder = new Component.Builder(new Qualified(Background.class, ScheduledExecutorService.class), new Qualified[]{new Qualified(Background.class, ExecutorService.class), new Qualified(Background.class, Executor.class)});
        builder.f34387f = new mt(11);
        Component componentB = builder.b();
        Component.Builder builder2 = new Component.Builder(new Qualified(Blocking.class, ScheduledExecutorService.class), new Qualified[]{new Qualified(Blocking.class, ExecutorService.class), new Qualified(Blocking.class, Executor.class)});
        builder2.f34387f = new mt(12);
        Component componentB2 = builder2.b();
        Component.Builder builder3 = new Component.Builder(new Qualified(Lightweight.class, ScheduledExecutorService.class), new Qualified[]{new Qualified(Lightweight.class, ExecutorService.class), new Qualified(Lightweight.class, Executor.class)});
        builder3.f34387f = new mt(13);
        Component componentB3 = builder3.b();
        Component.Builder builderA = Component.a(new Qualified(UiThread.class, Executor.class));
        builderA.f34387f = new mt(14);
        return Arrays.asList(componentB, componentB2, componentB3, builderA.b());
    }
}
