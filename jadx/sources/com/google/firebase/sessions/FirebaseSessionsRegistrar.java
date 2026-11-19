package com.google.firebase.sessions;

import android.content.Context;
import com.google.android.datatransport.TransportFactory;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.sessions.dagger.internal.DoubleCheck;
import com.google.firebase.sessions.dagger.internal.InstanceFactory;
import com.google.firebase.sessions.dagger.internal.Preconditions;
import com.google.firebase.sessions.settings.LocalOverrideSettings_Factory;
import com.google.firebase.sessions.settings.RemoteSettingsFetcher_Factory;
import com.google.firebase.sessions.settings.RemoteSettings_Factory;
import com.google.firebase.sessions.settings.SessionsSettings_Factory;
import com.google.firebase.sessions.settings.SettingsCacheImpl_Factory;
import defpackage.az;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J6\u0010\u0004\u001a0\u0012,\u0012*\u0012\u000e\b\u0001\u0012\n \b*\u0004\u0018\u00010\u00070\u0007 \b*\u0014\u0012\u000e\b\u0001\u0012\n \b*\u0004\u0018\u00010\u00070\u0007\u0018\u00010\u00060\u00060\u0005H\u0016¨\u0006\n"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", "<init>", "()V", "getComponents", "", "Lcom/google/firebase/components/Component;", "", "kotlin.jvm.PlatformType", "Companion", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {

    @Deprecated
    public static final String LIBRARY_NAME = "fire-sessions";
    private static final Companion Companion = new Companion(null);
    private static final Qualified<Context> appContext = Qualified.a(Context.class);
    private static final Qualified<FirebaseApp> firebaseApp = Qualified.a(FirebaseApp.class);
    private static final Qualified<FirebaseInstallationsApi> firebaseInstallationsApi = Qualified.a(FirebaseInstallationsApi.class);
    private static final Qualified<CoroutineDispatcher> backgroundDispatcher = new Qualified<>(Background.class, CoroutineDispatcher.class);
    private static final Qualified<CoroutineDispatcher> blockingDispatcher = new Qualified<>(Blocking.class, CoroutineDispatcher.class);
    private static final Qualified<TransportFactory> transportFactory = Qualified.a(TransportFactory.class);
    private static final Qualified<FirebaseSessionsComponent> firebaseSessionsComponent = Qualified.a(FirebaseSessionsComponent.class);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;", "", "", "LIBRARY_NAME", "Ljava/lang/String;", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseSessions getComponents$lambda$0(ComponentContainer componentContainer) {
        return ((FirebaseSessionsComponent) componentContainer.e(firebaseSessionsComponent)).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseSessionsComponent getComponents$lambda$1(ComponentContainer componentContainer) {
        DaggerFirebaseSessionsComponent$Builder daggerFirebaseSessionsComponent$Builder = new DaggerFirebaseSessionsComponent$Builder();
        Object objE = componentContainer.e(appContext);
        objE.getClass();
        daggerFirebaseSessionsComponent$Builder.f35406a = (Context) objE;
        Object objE2 = componentContainer.e(backgroundDispatcher);
        objE2.getClass();
        daggerFirebaseSessionsComponent$Builder.f35407b = (CoroutineContext) objE2;
        Object objE3 = componentContainer.e(blockingDispatcher);
        objE3.getClass();
        daggerFirebaseSessionsComponent$Builder.f35408c = (CoroutineContext) objE3;
        Object objE4 = componentContainer.e(firebaseApp);
        objE4.getClass();
        daggerFirebaseSessionsComponent$Builder.d = (FirebaseApp) objE4;
        Object objE5 = componentContainer.e(firebaseInstallationsApi);
        objE5.getClass();
        daggerFirebaseSessionsComponent$Builder.f35409e = (FirebaseInstallationsApi) objE5;
        Provider providerB = componentContainer.b(transportFactory);
        providerB.getClass();
        daggerFirebaseSessionsComponent$Builder.f35410f = providerB;
        Preconditions.a(Context.class, daggerFirebaseSessionsComponent$Builder.f35406a);
        Preconditions.a(CoroutineContext.class, daggerFirebaseSessionsComponent$Builder.f35407b);
        Preconditions.a(CoroutineContext.class, daggerFirebaseSessionsComponent$Builder.f35408c);
        Preconditions.a(FirebaseApp.class, daggerFirebaseSessionsComponent$Builder.d);
        Preconditions.a(FirebaseInstallationsApi.class, daggerFirebaseSessionsComponent$Builder.f35409e);
        Preconditions.a(Provider.class, daggerFirebaseSessionsComponent$Builder.f35410f);
        Context context = daggerFirebaseSessionsComponent$Builder.f35406a;
        CoroutineContext coroutineContext = daggerFirebaseSessionsComponent$Builder.f35407b;
        CoroutineContext coroutineContext2 = daggerFirebaseSessionsComponent$Builder.f35408c;
        FirebaseApp firebaseApp2 = daggerFirebaseSessionsComponent$Builder.d;
        FirebaseInstallationsApi firebaseInstallationsApi2 = daggerFirebaseSessionsComponent$Builder.f35409e;
        Provider provider = daggerFirebaseSessionsComponent$Builder.f35410f;
        DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl = new DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl();
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35411a = InstanceFactory.a(firebaseApp2);
        InstanceFactory instanceFactoryA = InstanceFactory.a(context);
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35412b = instanceFactoryA;
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35413c = DoubleCheck.a(new LocalOverrideSettings_Factory(instanceFactoryA));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.d = DoubleCheck.a(FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory.InstanceHolder.f35436a);
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35414e = InstanceFactory.a(firebaseInstallationsApi2);
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35415f = DoubleCheck.a(new FirebaseSessionsComponent_MainModule_Companion_ApplicationInfoFactory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35411a));
        InstanceFactory instanceFactoryA2 = InstanceFactory.a(coroutineContext2);
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.g = instanceFactoryA2;
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35416h = DoubleCheck.a(new RemoteSettingsFetcher_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35415f, instanceFactoryA2));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35417i = InstanceFactory.a(coroutineContext);
        com.google.firebase.sessions.dagger.internal.Provider providerA = DoubleCheck.a(new FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35412b, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.g));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35418j = providerA;
        com.google.firebase.sessions.dagger.internal.Provider providerA2 = DoubleCheck.a(new SettingsCacheImpl_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35417i, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.d, providerA));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35419k = providerA2;
        com.google.firebase.sessions.dagger.internal.Provider providerA3 = DoubleCheck.a(new RemoteSettings_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.d, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35414e, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35415f, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35416h, providerA2));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.l = providerA3;
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.m = DoubleCheck.a(new SessionsSettings_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35413c, providerA3));
        com.google.firebase.sessions.dagger.internal.Provider providerA4 = DoubleCheck.a(FirebaseSessionsComponent_MainModule_Companion_UuidGeneratorFactory.InstanceHolder.f35437a);
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.n = providerA4;
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.o = DoubleCheck.a(new SessionGenerator_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.d, providerA4));
        com.google.firebase.sessions.dagger.internal.Provider providerA5 = DoubleCheck.a(new EventGDTLogger_Factory(InstanceFactory.a(provider)));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.p = providerA5;
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.q = DoubleCheck.a(new SessionFirelogPublisherImpl_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35411a, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35414e, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.m, providerA5, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35417i));
        com.google.firebase.sessions.dagger.internal.Provider providerA6 = DoubleCheck.a(new SessionDataSerializer_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.o));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.r = providerA6;
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.s = DoubleCheck.a(new FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35412b, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.g, providerA6));
        com.google.firebase.sessions.dagger.internal.Provider providerA7 = DoubleCheck.a(new ProcessDataManagerImpl_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35412b, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.n));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.t = providerA7;
        com.google.firebase.sessions.dagger.internal.Provider providerA8 = DoubleCheck.a(new SharedSessionRepositoryImpl_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.m, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.o, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.q, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.d, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.s, providerA7, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35417i));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.u = providerA8;
        com.google.firebase.sessions.dagger.internal.Provider providerA9 = DoubleCheck.a(new SessionsActivityLifecycleCallbacks_Factory(providerA8));
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.v = providerA9;
        daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.w = DoubleCheck.a(new FirebaseSessions_Factory(daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35411a, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.m, daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl.f35417i, providerA9));
        return daggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<? extends Object>> getComponents() {
        Component.Builder builderB = Component.b(FirebaseSessions.class);
        builderB.f34383a = LIBRARY_NAME;
        builderB.a(Dependency.a(firebaseSessionsComponent));
        builderB.f34387f = new az(5);
        builderB.c(2);
        Component componentB = builderB.b();
        Component.Builder builderB2 = Component.b(FirebaseSessionsComponent.class);
        builderB2.f34383a = "fire-sessions-component";
        builderB2.a(Dependency.a(appContext));
        builderB2.a(Dependency.a(backgroundDispatcher));
        builderB2.a(Dependency.a(blockingDispatcher));
        builderB2.a(Dependency.a(firebaseApp));
        builderB2.a(Dependency.a(firebaseInstallationsApi));
        builderB2.a(new Dependency(transportFactory, 1, 1));
        builderB2.f34387f = new az(6);
        return CollectionsKt.P(componentB, builderB2.b(), LibraryVersionComponent.a(LIBRARY_NAME, "3.0.7"));
    }
}
