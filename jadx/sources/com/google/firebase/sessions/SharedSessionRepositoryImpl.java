package com.google.firebase.sessions;

import androidx.datastore.core.DataStore;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import defpackage.md;
import defpackage.v40;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0013BI\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\b\u0001\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;", "Lcom/google/firebase/sessions/SharedSessionRepository;", "Lcom/google/firebase/sessions/settings/SessionsSettings;", "sessionsSettings", "Lcom/google/firebase/sessions/SessionGenerator;", "sessionGenerator", "Lcom/google/firebase/sessions/SessionFirelogPublisher;", "sessionFirelogPublisher", "Lcom/google/firebase/sessions/TimeProvider;", "timeProvider", "Landroidx/datastore/core/DataStore;", "Lcom/google/firebase/sessions/SessionData;", "sessionDataStore", "Lcom/google/firebase/sessions/ProcessDataManager;", "processDataManager", "Lkotlin/coroutines/CoroutineContext;", "backgroundDispatcher", "<init>", "(Lcom/google/firebase/sessions/settings/SessionsSettings;Lcom/google/firebase/sessions/SessionGenerator;Lcom/google/firebase/sessions/SessionFirelogPublisher;Lcom/google/firebase/sessions/TimeProvider;Landroidx/datastore/core/DataStore;Lcom/google/firebase/sessions/ProcessDataManager;Lkotlin/coroutines/CoroutineContext;)V", "NotificationType", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SharedSessionRepositoryImpl implements SharedSessionRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionsSettings f35504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SessionGenerator f35505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionFirelogPublisher f35506c;
    public final TimeProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DataStore f35507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProcessDataManager f35508f;
    public final CoroutineContext g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SessionData f35509h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f35510i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f35511j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f35512k;

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$1", f = "SharedSessionRepository.kt", l = {96}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f35513b;

        /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/google/firebase/sessions/SessionData;", "it", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$1$1", f = "SharedSessionRepository.kt", l = {94}, m = "invokeSuspend")
        final class C00821 extends SuspendLambda implements Function3<FlowCollector<? super SessionData>, Throwable, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f35515b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public /* synthetic */ FlowCollector f35516c;
            public /* synthetic */ Throwable d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SharedSessionRepositoryImpl f35517e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00821(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, Continuation continuation) {
                super(3, continuation);
                this.f35517e = sharedSessionRepositoryImpl;
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object A(Object obj, Object obj2, Object obj3) {
                C00821 c00821 = new C00821(this.f35517e, (Continuation) obj3);
                c00821.f35516c = (FlowCollector) obj;
                c00821.d = (Throwable) obj2;
                return c00821.invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f35515b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    FlowCollector flowCollector = this.f35516c;
                    Throwable th = this.d;
                    SessionData sessionData = new SessionData(this.f35517e.f35505b.a(null), (Time) null, (Map) null, 4, (DefaultConstructorMarker) null);
                    th.getMessage();
                    String str = sessionData.f35460a.f35466a;
                    this.f35516c = null;
                    this.f35515b = 1;
                    if (flowCollector.emit(sessionData, this) == coroutineSingletons) {
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

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SharedSessionRepositoryImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f35513b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final SharedSessionRepositoryImpl sharedSessionRepositoryImpl = SharedSessionRepositoryImpl.this;
                FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(sharedSessionRepositoryImpl.f35507e.getD(), new C00821(sharedSessionRepositoryImpl, null));
                FlowCollector flowCollector = new FlowCollector() { // from class: com.google.firebase.sessions.SharedSessionRepositoryImpl.1.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        SessionData sessionData = (SessionData) obj2;
                        sessionData.getClass();
                        SharedSessionRepositoryImpl sharedSessionRepositoryImpl2 = sharedSessionRepositoryImpl;
                        sharedSessionRepositoryImpl2.f35509h = sessionData;
                        if (sharedSessionRepositoryImpl2.f35511j) {
                            sharedSessionRepositoryImpl2.f35511j = false;
                            sharedSessionRepositoryImpl2.c();
                        }
                        Object objD = SharedSessionRepositoryImpl.d(sharedSessionRepositoryImpl2, sessionData.f35460a.f35466a, NotificationType.GENERAL, continuation);
                        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
                    }
                };
                this.f35513b = 1;
                if (flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.f(flowCollector, this) == coroutineSingletons) {
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

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;", "", "GENERAL", "FALLBACK", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class NotificationType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ NotificationType[] $VALUES;
        public static final NotificationType FALLBACK;
        public static final NotificationType GENERAL;

        static {
            NotificationType notificationType = new NotificationType("GENERAL", 0);
            GENERAL = notificationType;
            NotificationType notificationType2 = new NotificationType("FALLBACK", 1);
            FALLBACK = notificationType2;
            NotificationType[] notificationTypeArr = {notificationType, notificationType2};
            $VALUES = notificationTypeArr;
            $ENTRIES = EnumEntriesKt.a(notificationTypeArr);
        }

        public static NotificationType valueOf(String str) {
            return (NotificationType) Enum.valueOf(NotificationType.class, str);
        }

        public static NotificationType[] values() {
            return (NotificationType[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f35519a;

        static {
            int[] iArr = new int[NotificationType.values().length];
            try {
                iArr[NotificationType.GENERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NotificationType.FALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f35519a = iArr;
        }
    }

    @Inject
    public SharedSessionRepositoryImpl(SessionsSettings sessionsSettings, SessionGenerator sessionGenerator, SessionFirelogPublisher sessionFirelogPublisher, TimeProvider timeProvider, DataStore<SessionData> dataStore, ProcessDataManager processDataManager, @Background CoroutineContext coroutineContext) {
        sessionsSettings.getClass();
        sessionGenerator.getClass();
        sessionFirelogPublisher.getClass();
        timeProvider.getClass();
        dataStore.getClass();
        processDataManager.getClass();
        coroutineContext.getClass();
        this.f35504a = sessionsSettings;
        this.f35505b = sessionGenerator;
        this.f35506c = sessionFirelogPublisher;
        this.d = timeProvider;
        this.f35507e = dataStore;
        this.f35508f = processDataManager;
        this.g = coroutineContext;
        NotificationType notificationType = NotificationType.GENERAL;
        this.f35512k = "";
        BuildersKt.c(CoroutineScopeKt.a(coroutineContext), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object d(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, String str, NotificationType notificationType, Continuation continuation) {
        SharedSessionRepositoryImpl$notifySubscribers$1 sharedSessionRepositoryImpl$notifySubscribers$1;
        if (continuation instanceof SharedSessionRepositoryImpl$notifySubscribers$1) {
            sharedSessionRepositoryImpl$notifySubscribers$1 = (SharedSessionRepositoryImpl$notifySubscribers$1) continuation;
            int i2 = sharedSessionRepositoryImpl$notifySubscribers$1.f35531f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                sharedSessionRepositoryImpl$notifySubscribers$1.f35531f = i2 - Integer.MIN_VALUE;
            } else {
                sharedSessionRepositoryImpl$notifySubscribers$1 = new SharedSessionRepositoryImpl$notifySubscribers$1(sharedSessionRepositoryImpl, continuation);
            }
        } else {
            sharedSessionRepositoryImpl$notifySubscribers$1 = new SharedSessionRepositoryImpl$notifySubscribers$1(sharedSessionRepositoryImpl, continuation);
        }
        Object objC = sharedSessionRepositoryImpl$notifySubscribers$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = sharedSessionRepositoryImpl$notifySubscribers$1.f35531f;
        if (i3 == 0) {
            ResultKt.b(objC);
            if (Intrinsics.c(sharedSessionRepositoryImpl.f35512k, str)) {
                return Unit.f71739a;
            }
            sharedSessionRepositoryImpl.f35512k = str;
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.f35544a;
            sharedSessionRepositoryImpl$notifySubscribers$1.f35528b = str;
            sharedSessionRepositoryImpl$notifySubscribers$1.f35529c = notificationType;
            sharedSessionRepositoryImpl$notifySubscribers$1.f35531f = 1;
            objC = firebaseSessionsDependencies.c(sharedSessionRepositoryImpl$notifySubscribers$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            notificationType = sharedSessionRepositoryImpl$notifySubscribers$1.f35529c;
            str = sharedSessionRepositoryImpl$notifySubscribers$1.f35528b;
            ResultKt.b(objC);
        }
        for (SessionSubscriber sessionSubscriber : ((Map) objC).values()) {
            sessionSubscriber.c(new SessionSubscriber.SessionDetails(str));
            int i4 = WhenMappings.f35519a[notificationType.ordinal()];
            if (i4 == 1) {
                Objects.toString(sessionSubscriber.b());
            } else {
                if (i4 != 2) {
                    v40.g();
                    return null;
                }
                Objects.toString(sessionSubscriber.b());
            }
        }
        return Unit.f71739a;
    }

    @Override // com.google.firebase.sessions.SharedSessionRepository
    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF35510i() {
        return this.f35510i;
    }

    @Override // com.google.firebase.sessions.SharedSessionRepository
    public final void b() {
        this.f35510i = false;
        if (this.f35509h == null) {
            return;
        }
        this.f35508f.a();
        BuildersKt.c(CoroutineScopeKt.a(this.g), null, null, new SharedSessionRepositoryImpl$appBackground$1(this, null), 3);
    }

    @Override // com.google.firebase.sessions.SharedSessionRepository
    public final void c() {
        boolean zB = true;
        this.f35510i = true;
        SessionData sessionData = this.f35509h;
        if (sessionData == null) {
            this.f35511j = true;
            return;
        }
        if (sessionData == null) {
            Intrinsics.h("localSessionData");
            throw null;
        }
        ProcessDataManager processDataManager = this.f35508f;
        processDataManager.a();
        if (!e(sessionData)) {
            Map map = sessionData.f35462c;
            if (map == null || (zB = processDataManager.b(map))) {
                processDataManager.a();
            }
            if (!zB) {
                return;
            }
        }
        BuildersKt.c(CoroutineScopeKt.a(this.g), null, null, new SharedSessionRepositoryImpl$appForeground$1(this, sessionData, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0033  */
    /* JADX WARN: Code duplicated, block: B:13:0x003b  */
    /* JADX WARN: Code duplicated, block: B:18:0x0048  */
    public final boolean e(SessionData sessionData) {
        Duration durationB;
        long jG;
        Time time = sessionData.f35461b;
        SessionDetails sessionDetails = sessionData.f35460a;
        if (time == null) {
            String str = sessionDetails.f35466a;
            return false;
        }
        Time timeA = this.d.a();
        Duration.Companion companion = Duration.INSTANCE;
        long jH = DurationKt.h(timeA.f35537a - time.f35537a, DurationUnit.MILLISECONDS);
        SessionsSettings sessionsSettings = this.f35504a;
        Duration durationB2 = sessionsSettings.f35594a.b();
        if (durationB2 != null) {
            jG = durationB2.f74570b;
            if (jG <= 0 || Duration.i(jG)) {
                durationB = sessionsSettings.f35595b.b();
                if (durationB != null) {
                    jG = durationB.f74570b;
                    if (jG > 0 || Duration.i(jG)) {
                        jG = DurationKt.g(30, DurationUnit.MINUTES);
                    }
                } else {
                    jG = DurationKt.g(30, DurationUnit.MINUTES);
                }
            }
        } else {
            durationB = sessionsSettings.f35595b.b();
            if (durationB != null) {
                jG = durationB.f74570b;
                if (jG > 0) {
                    jG = DurationKt.g(30, DurationUnit.MINUTES);
                } else {
                    jG = DurationKt.g(30, DurationUnit.MINUTES);
                }
            } else {
                jG = DurationKt.g(30, DurationUnit.MINUTES);
            }
        }
        boolean z = Duration.c(jH, jG) > 0;
        if (z) {
            String str2 = sessionDetails.f35466a;
        }
        return z;
    }
}
