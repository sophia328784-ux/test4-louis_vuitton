package com.vuitton.android.core.schedulers;

import dagger.Module;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;", "", "<init>", "()V", "Companion", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public final class CoroutineDispatchersModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f43527a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1 f43528b = new CoroutineDispatchers() { // from class: com.vuitton.android.core.schedulers.CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MainCoroutineDispatcher f43529a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DefaultIoScheduler f43530b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DefaultScheduler f43531c;

        {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            this.f43529a = MainDispatcherLoader.f75131a;
            this.f43530b = DefaultIoScheduler.f75161b;
            this.f43531c = Dispatchers.f74659a;
        }

        @Override // com.vuitton.android.core.schedulers.CoroutineDispatchers
        /* JADX INFO: renamed from: a, reason: from getter */
        public final MainCoroutineDispatcher getF43529a() {
            return this.f43529a;
        }

        @Override // com.vuitton.android.core.schedulers.CoroutineDispatchers
        /* JADX INFO: renamed from: b, reason: from getter */
        public final DefaultIoScheduler getF43530b() {
            return this.f43530b;
        }

        @Override // com.vuitton.android.core.schedulers.CoroutineDispatchers
        /* JADX INFO: renamed from: getDefault, reason: from getter */
        public final DefaultScheduler getF43531c() {
            return this.f43531c;
        }
    };

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion;", "", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }
}
