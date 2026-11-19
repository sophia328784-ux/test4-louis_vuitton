package com.google.firebase.sessions;

import android.app.Application;
import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.sessions.settings.SessionsSettings;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\fB+\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessions;", "", "Lcom/google/firebase/FirebaseApp;", "firebaseApp", "Lcom/google/firebase/sessions/settings/SessionsSettings;", "settings", "Lkotlin/coroutines/CoroutineContext;", "backgroundDispatcher", "Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;", "sessionsActivityLifecycleCallbacks", "<init>", "(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;)V", "Companion", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FirebaseSessions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FirebaseApp f35426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SessionsSettings f35427b;

    /* JADX INFO: renamed from: com.google.firebase.sessions.FirebaseSessions$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.google.firebase.sessions.FirebaseSessions$1", f = "FirebaseSessions.kt", l = {EACTags.TRANSACTION_DATE, 55}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f35428b;
        public final /* synthetic */ SessionsActivityLifecycleCallbacks d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SessionsActivityLifecycleCallbacks sessionsActivityLifecycleCallbacks, Continuation continuation) {
            super(2, continuation);
            this.d = sessionsActivityLifecycleCallbacks;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return FirebaseSessions.this.new AnonymousClass1(this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0061, code lost:
        
            if (r1.b(r7) == r2) goto L25;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                com.google.firebase.sessions.FirebaseSessions r0 = com.google.firebase.sessions.FirebaseSessions.this
                com.google.firebase.sessions.settings.SessionsSettings r1 = r0.f35427b
                kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r3 = r7.f35428b
                java.lang.String r4 = "FirebaseSessions"
                r5 = 2
                r6 = 1
                if (r3 == 0) goto L21
                if (r3 == r6) goto L1d
                if (r3 != r5) goto L16
                kotlin.ResultKt.b(r8)
                goto L64
            L16:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r7)
                r7 = 0
                return r7
            L1d:
                kotlin.ResultKt.b(r8)
                goto L2f
            L21:
                kotlin.ResultKt.b(r8)
                com.google.firebase.sessions.api.FirebaseSessionsDependencies r8 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f35544a
                r7.f35428b = r6
                java.lang.Object r8 = r8.c(r7)
                if (r8 != r2) goto L2f
                goto L63
            L2f:
                java.util.Map r8 = (java.util.Map) r8
                java.util.Collection r8 = r8.values()
                java.lang.Iterable r8 = (java.lang.Iterable) r8
                boolean r3 = r8 instanceof java.util.Collection
                if (r3 == 0) goto L45
                r3 = r8
                java.util.Collection r3 = (java.util.Collection) r3
                boolean r3 = r3.isEmpty()
                if (r3 == 0) goto L45
                goto L99
            L45:
                java.util.Iterator r8 = r8.iterator()
            L49:
                boolean r3 = r8.hasNext()
                if (r3 == 0) goto L99
                java.lang.Object r3 = r8.next()
                com.google.firebase.sessions.api.SessionSubscriber r3 = (com.google.firebase.sessions.api.SessionSubscriber) r3
                boolean r3 = r3.a()
                if (r3 == 0) goto L49
                r7.f35428b = r5
                java.lang.Object r7 = r1.b(r7)
                if (r7 != r2) goto L64
            L63:
                return r2
            L64:
                com.google.firebase.sessions.settings.SettingsProvider r7 = r1.f35594a
                java.lang.Boolean r7 = r7.a()
                if (r7 == 0) goto L71
            L6c:
                boolean r6 = r7.booleanValue()
                goto L7a
            L71:
                com.google.firebase.sessions.settings.SettingsProvider r7 = r1.f35595b
                java.lang.Boolean r7 = r7.a()
                if (r7 == 0) goto L7a
                goto L6c
            L7a:
                if (r6 != 0) goto L88
                java.lang.String r7 = "Sessions SDK disabled. Not listening to lifecycle events."
                int r7 = android.util.Log.d(r4, r7)
                java.lang.Integer r8 = new java.lang.Integer
                r8.<init>(r7)
                goto La4
            L88:
                com.google.firebase.FirebaseApp r7 = r0.f35426a
                az r8 = new az
                r0 = 4
                r8.<init>(r0)
                r7.a()
                java.util.concurrent.CopyOnWriteArrayList r7 = r7.f34337j
                r7.add(r8)
                goto La4
            L99:
                java.lang.String r7 = "No Sessions subscribers. Not listening to lifecycle events."
                int r7 = android.util.Log.d(r4, r7)
                java.lang.Integer r8 = new java.lang.Integer
                r8.<init>(r7)
            La4:
                kotlin.Unit r7 = kotlin.Unit.f71739a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.FirebaseSessions.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessions$Companion;", "", "", "TAG", "Ljava/lang/String;", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public FirebaseSessions(FirebaseApp firebaseApp, SessionsSettings sessionsSettings, @Background CoroutineContext coroutineContext, SessionsActivityLifecycleCallbacks sessionsActivityLifecycleCallbacks) {
        firebaseApp.getClass();
        sessionsSettings.getClass();
        coroutineContext.getClass();
        sessionsActivityLifecycleCallbacks.getClass();
        this.f35426a = firebaseApp;
        this.f35427b = sessionsSettings;
        firebaseApp.a();
        Context applicationContext = firebaseApp.f34330a.getApplicationContext();
        if (!(applicationContext instanceof Application)) {
            applicationContext.getClass().toString();
        } else {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(sessionsActivityLifecycleCallbacks);
            BuildersKt.c(CoroutineScopeKt.a(coroutineContext), null, null, new AnonymousClass1(sessionsActivityLifecycleCallbacks, null), 3);
        }
    }
}
