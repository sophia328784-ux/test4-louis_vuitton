package com.google.firebase.sessions;

import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1", f = "SharedSessionRepository.kt", l = {142, 193}, m = "invokeSuspend")
final class SharedSessionRepositoryImpl$appForeground$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f35524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SharedSessionRepositoryImpl f35525c;
    public final /* synthetic */ SessionData d;

    /* JADX INFO: renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/google/firebase/sessions/SessionData;", "currentSessionData"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1", f = "SharedSessionRepository.kt", l = {}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<SessionData, Continuation<? super SessionData>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f35526b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SharedSessionRepositoryImpl f35527c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, Continuation continuation) {
            super(2, continuation);
            this.f35527c = sharedSessionRepositoryImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f35527c, continuation);
            anonymousClass1.f35526b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((SessionData) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            SessionData sessionData = (SessionData) this.f35526b;
            SharedSessionRepositoryImpl sharedSessionRepositoryImpl = this.f35527c;
            ProcessDataManager processDataManager = sharedSessionRepositoryImpl.f35508f;
            boolean zE = sharedSessionRepositoryImpl.e(sessionData);
            Map mapC = sessionData.f35462c;
            boolean zB = true;
            boolean zE2 = mapC != null ? processDataManager.e(mapC) : true;
            if (mapC == null || (zB = processDataManager.b(mapC))) {
                processDataManager.a();
            }
            if (zE2) {
                mapC = processDataManager.f();
            } else if (zB) {
                mapC = processDataManager.c(mapC);
            }
            SessionDetails sessionDetails = zE2 ? null : sessionData.f35460a;
            if (!zE && !zE2) {
                return zB ? SessionData.a(sessionData, null, null, processDataManager.c(mapC), 3) : sessionData;
            }
            SessionDetails sessionDetailsA = sharedSessionRepositoryImpl.f35505b.a(sessionDetails);
            sharedSessionRepositoryImpl.f35506c.a(sessionDetailsA);
            processDataManager.d();
            return new SessionData(sessionDetailsA, null, mapC);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedSessionRepositoryImpl$appForeground$1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, SessionData sessionData, Continuation continuation) {
        super(2, continuation);
        this.f35525c = sharedSessionRepositoryImpl;
        this.d = sessionData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SharedSessionRepositoryImpl$appForeground$1(this.f35525c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SharedSessionRepositoryImpl$appForeground$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
    
        if (r6 == r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
    
        if (com.google.firebase.sessions.SharedSessionRepositoryImpl.d(r5, r7, r1, r6) == r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005d, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f35524b
            r2 = 0
            r3 = 2
            r4 = 1
            com.google.firebase.sessions.SharedSessionRepositoryImpl r5 = r6.f35525c
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L19
            if (r1 != r3) goto L13
            kotlin.ResultKt.b(r7)
            goto L5e
        L13:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L19:
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Exception -> L1d
            goto L5e
        L1d:
            r7 = move-exception
            goto L32
        L1f:
            kotlin.ResultKt.b(r7)
            androidx.datastore.core.DataStore r7 = r5.f35507e     // Catch: java.lang.Exception -> L1d
            com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1 r1 = new com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1     // Catch: java.lang.Exception -> L1d
            r1.<init>(r5, r2)     // Catch: java.lang.Exception -> L1d
            r6.f35524b = r4     // Catch: java.lang.Exception -> L1d
            java.lang.Object r6 = r7.a(r1, r6)     // Catch: java.lang.Exception -> L1d
            if (r6 != r0) goto L5e
            goto L5d
        L32:
            r7.getMessage()
            com.google.firebase.sessions.SessionData r7 = r6.d
            boolean r1 = r5.e(r7)
            if (r1 == 0) goto L5e
            com.google.firebase.sessions.SessionGenerator r1 = r5.f35505b
            com.google.firebase.sessions.SessionDetails r4 = r7.f35460a
            com.google.firebase.sessions.SessionDetails r1 = r1.a(r4)
            r4 = 4
            com.google.firebase.sessions.SessionData r7 = com.google.firebase.sessions.SessionData.a(r7, r1, r2, r2, r4)
            r5.f35509h = r7
            com.google.firebase.sessions.SessionFirelogPublisher r7 = r5.f35506c
            r7.a(r1)
            java.lang.String r7 = r1.f35466a
            com.google.firebase.sessions.SharedSessionRepositoryImpl$NotificationType r1 = com.google.firebase.sessions.SharedSessionRepositoryImpl.NotificationType.FALLBACK
            r6.f35524b = r3
            java.lang.Object r6 = com.google.firebase.sessions.SharedSessionRepositoryImpl.d(r5, r7, r1, r6)
            if (r6 != r0) goto L5e
        L5d:
            return r0
        L5e:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
