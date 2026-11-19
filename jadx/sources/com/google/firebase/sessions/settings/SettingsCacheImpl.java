package com.google.firebase.sessions.settings;

import androidx.datastore.core.DataStore;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.sessions.TimeProvider;
import defpackage.md;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.FunctionAdapter;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B)\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/google/firebase/sessions/settings/SettingsCacheImpl;", "Lcom/google/firebase/sessions/settings/SettingsCache;", "Lkotlin/coroutines/CoroutineContext;", "backgroundDispatcher", "Lcom/google/firebase/sessions/TimeProvider;", "timeProvider", "Landroidx/datastore/core/DataStore;", "Lcom/google/firebase/sessions/settings/SessionConfigs;", "sessionConfigsDataStore", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/TimeProvider;Landroidx/datastore/core/DataStore;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SettingsCacheImpl implements SettingsCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineContext f35600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f35601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataStore f35602c;
    public final AtomicReference d;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.google.firebase.sessions.settings.SettingsCacheImpl$1", f = "SettingsCache.kt", l = {73}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f35603b;

        /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        final /* synthetic */ class C00831 implements FlowCollector, FunctionAdapter {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ AtomicReference f35605b;

            public C00831(AtomicReference atomicReference) {
                this.f35605b = atomicReference;
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object emit(Object obj, Continuation continuation) {
                this.f35605b.set((SessionConfigs) obj);
                Unit unit = Unit.f71739a;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                return unit;
            }

            public final boolean equals(Object obj) {
                if ((obj instanceof FlowCollector) && (obj instanceof FunctionAdapter)) {
                    return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            }

            @Override // kotlin.jvm.internal.FunctionAdapter
            public final Function getFunctionDelegate() {
                return new AdaptedFunctionReference(2, this.f35605b, AtomicReference.class, "set", "set(Ljava/lang/Object;)V", 4);
            }

            public final int hashCode() {
                return getFunctionDelegate().hashCode();
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SettingsCacheImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f35603b;
            if (i2 == 0) {
                ResultKt.b(obj);
                SettingsCacheImpl settingsCacheImpl = SettingsCacheImpl.this;
                Flow data = settingsCacheImpl.f35602c.getData();
                C00831 c00831 = new C00831(settingsCacheImpl.d);
                this.f35603b = 1;
                if (data.f(c00831, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    @Inject
    public SettingsCacheImpl(@Background CoroutineContext coroutineContext, TimeProvider timeProvider, DataStore<SessionConfigs> dataStore) {
        coroutineContext.getClass();
        timeProvider.getClass();
        dataStore.getClass();
        this.f35600a = coroutineContext;
        this.f35601b = timeProvider;
        this.f35602c = dataStore;
        this.d = new AtomicReference();
        BuildersKt.c(CoroutineScopeKt.a(coroutineContext), null, null, new AnonymousClass1(null), 3);
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public final Double a() {
        return f().f35588b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.google.firebase.sessions.settings.SettingsCache
    public final Object b(SessionConfigs sessionConfigs, ContinuationImpl continuationImpl) {
        SettingsCacheImpl$updateConfigs$1 settingsCacheImpl$updateConfigs$1;
        if (continuationImpl instanceof SettingsCacheImpl$updateConfigs$1) {
            settingsCacheImpl$updateConfigs$1 = (SettingsCacheImpl$updateConfigs$1) continuationImpl;
            int i2 = settingsCacheImpl$updateConfigs$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                settingsCacheImpl$updateConfigs$1.d = i2 - Integer.MIN_VALUE;
            } else {
                settingsCacheImpl$updateConfigs$1 = new SettingsCacheImpl$updateConfigs$1(this, continuationImpl);
            }
        } else {
            settingsCacheImpl$updateConfigs$1 = new SettingsCacheImpl$updateConfigs$1(this, continuationImpl);
        }
        Object obj = settingsCacheImpl$updateConfigs$1.f35608b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = settingsCacheImpl$updateConfigs$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                DataStore dataStore = this.f35602c;
                SettingsCacheImpl$updateConfigs$2 settingsCacheImpl$updateConfigs$2 = new SettingsCacheImpl$updateConfigs$2(sessionConfigs, null);
                settingsCacheImpl$updateConfigs$1.d = 1;
                if (dataStore.a(settingsCacheImpl$updateConfigs$2, settingsCacheImpl$updateConfigs$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (IOException e2) {
            e2.toString();
        }
        return Unit.f71739a;
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public final boolean c() {
        Long l = f().f35590e;
        Integer num = f().d;
        return l == null || num == null || this.f35601b.a().f35539c - l.longValue() >= ((long) num.intValue());
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public final Boolean d() {
        return f().f35587a;
    }

    @Override // com.google.firebase.sessions.settings.SettingsCache
    public final Integer e() {
        return f().f35589c;
    }

    public final SessionConfigs f() throws Throwable {
        AtomicReference atomicReference = this.d;
        if (atomicReference.get() == null) {
            Object objE = BuildersKt.e(EmptyCoroutineContext.f71840b, new SettingsCacheImpl$sessionConfigs$1(this, null));
            while (!atomicReference.compareAndSet(null, objE) && atomicReference.get() == null) {
            }
        }
        Object obj = atomicReference.get();
        obj.getClass();
        return (SessionConfigs) obj;
    }
}
