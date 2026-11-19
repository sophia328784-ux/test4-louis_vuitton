package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.settings.SessionsSettings;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000eB3\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0001\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;", "Lcom/google/firebase/sessions/SessionFirelogPublisher;", "Lcom/google/firebase/FirebaseApp;", "firebaseApp", "Lcom/google/firebase/installations/FirebaseInstallationsApi;", "firebaseInstallations", "Lcom/google/firebase/sessions/settings/SessionsSettings;", "sessionSettings", "Lcom/google/firebase/sessions/EventGDTLoggerInterface;", "eventGDTLogger", "Lkotlin/coroutines/CoroutineContext;", "backgroundDispatcher", "<init>", "(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/sessions/settings/SessionsSettings;Lcom/google/firebase/sessions/EventGDTLoggerInterface;Lkotlin/coroutines/CoroutineContext;)V", "Companion", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionFirelogPublisherImpl implements SessionFirelogPublisher {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final double f35475f;
    public static final /* synthetic */ int g = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FirebaseApp f35476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FirebaseInstallationsApi f35477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionsSettings f35478c;
    public final EventGDTLoggerInterface d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineContext f35479e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$Companion;", "", "", "randomValueForSampling", "D", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f35475f = Math.random();
    }

    @Inject
    public SessionFirelogPublisherImpl(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, SessionsSettings sessionsSettings, EventGDTLoggerInterface eventGDTLoggerInterface, @Background CoroutineContext coroutineContext) {
        firebaseApp.getClass();
        firebaseInstallationsApi.getClass();
        sessionsSettings.getClass();
        eventGDTLoggerInterface.getClass();
        coroutineContext.getClass();
        this.f35476a = firebaseApp;
        this.f35477b = firebaseInstallationsApi;
        this.f35478c = sessionsSettings;
        this.d = eventGDTLoggerInterface;
        this.f35479e = coroutineContext;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
    
        if (r0.b(r1) == r6) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(com.google.firebase.sessions.SessionFirelogPublisherImpl r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            com.google.firebase.sessions.settings.SessionsSettings r0 = r5.f35478c
            boolean r1 = r6 instanceof com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1
            if (r1 == 0) goto L15
            r1 = r6
            com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1 r1 = (com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1) r1
            int r2 = r1.d
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.d = r2
            goto L1a
        L15:
            com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1 r1 = new com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1
            r1.<init>(r5, r6)
        L1a:
            java.lang.Object r5 = r1.f35487b
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r1.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2c
            kotlin.ResultKt.b(r5)
            goto L7a
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L33:
            kotlin.ResultKt.b(r5)
            goto L45
        L37:
            kotlin.ResultKt.b(r5)
            com.google.firebase.sessions.api.FirebaseSessionsDependencies r5 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f35544a
            r1.d = r4
            java.lang.Object r5 = r5.c(r1)
            if (r5 != r6) goto L45
            goto L79
        L45:
            java.util.Map r5 = (java.util.Map) r5
            java.util.Collection r5 = r5.values()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            boolean r2 = r5 instanceof java.util.Collection
            if (r2 == 0) goto L5b
            r2 = r5
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L5b
            goto La5
        L5b:
            java.util.Iterator r5 = r5.iterator()
        L5f:
            boolean r2 = r5.hasNext()
            if (r2 == 0) goto La5
            java.lang.Object r2 = r5.next()
            com.google.firebase.sessions.api.SessionSubscriber r2 = (com.google.firebase.sessions.api.SessionSubscriber) r2
            boolean r2 = r2.a()
            if (r2 == 0) goto L5f
            r1.d = r3
            java.lang.Object r5 = r0.b(r1)
            if (r5 != r6) goto L7a
        L79:
            return r6
        L7a:
            com.google.firebase.sessions.settings.SettingsProvider r5 = r0.f35594a
            java.lang.Boolean r5 = r5.a()
            if (r5 == 0) goto L87
        L82:
            boolean r4 = r5.booleanValue()
            goto L90
        L87:
            com.google.firebase.sessions.settings.SettingsProvider r5 = r0.f35595b
            java.lang.Boolean r5 = r5.a()
            if (r5 == 0) goto L90
            goto L82
        L90:
            if (r4 != 0) goto L95
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            return r5
        L95:
            double r5 = com.google.firebase.sessions.SessionFirelogPublisherImpl.f35475f
            double r0 = r0.a()
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 > 0) goto La2
            java.lang.Boolean r5 = java.lang.Boolean.TRUE
            return r5
        La2:
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            return r5
        La5:
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SessionFirelogPublisherImpl.b(com.google.firebase.sessions.SessionFirelogPublisherImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.google.firebase.sessions.SessionFirelogPublisher
    public final void a(SessionDetails sessionDetails) {
        BuildersKt.c(CoroutineScopeKt.a(this.f35479e), null, null, new SessionFirelogPublisherImpl$mayLogSession$1(this, sessionDetails, null), 3);
    }
}
