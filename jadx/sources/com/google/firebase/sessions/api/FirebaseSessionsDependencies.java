package com.google.firebase.sessions.api;

import com.google.firebase.crashlytics.internal.common.CrashlyticsAppQualitySessionsSubscriber;
import defpackage.mt;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;", "", "Dependency", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FirebaseSessionsDependencies {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FirebaseSessionsDependencies f35544a = new FirebaseSessionsDependencies();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f35545b = Collections.synchronizedMap(new LinkedHashMap());

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(SessionSubscriber.Name name) {
        name.getClass();
        Map map = f35545b;
        if (map.containsKey(name)) {
            Objects.toString(name);
            return;
        }
        map.getClass();
        map.put(name, new Dependency(new CountDownLatch(1), null, 2, 0 == true ? 1 : 0));
        Objects.toString(name);
    }

    public static Dependency b(SessionSubscriber.Name name) {
        Map map = f35545b;
        map.getClass();
        Object obj = map.get(name);
        if (obj != null) {
            return (Dependency) obj;
        }
        mt.j("Cannot get dependency ", name, ". Dependencies should be added at class load time.");
        return null;
    }

    public static final void d(CrashlyticsAppQualitySessionsSubscriber crashlyticsAppQualitySessionsSubscriber) {
        SessionSubscriber.Name name = SessionSubscriber.Name.CRASHLYTICS;
        Dependency dependencyB = b(name);
        if (dependencyB.f35547b != null) {
            Objects.toString(name);
            return;
        }
        dependencyB.f35547b = crashlyticsAppQualitySessionsSubscriber;
        Objects.toString(name);
        dependencyB.f35546a.countDown();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0063  */
    /* JADX WARN: Code duplicated, block: B:19:0x0093 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0094  */
    /* JADX WARN: Code duplicated, block: B:23:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0094 -> B:21:0x0095). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object c(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1
            if (r0 == 0) goto L13
            r0 = r9
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1 r0 = (com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1) r0
            int r1 = r0.f35553i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35553i = r1
            goto L18
        L13:
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1 r0 = new com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r8 = r0.g
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.f35553i
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L3c
            if (r1 != r3) goto L36
            java.lang.Object r1 = r0.f35551f
            java.util.Map r4 = r0.f35550e
            java.util.Map r4 = (java.util.Map) r4
            com.google.firebase.sessions.api.SessionSubscriber$Name r5 = r0.d
            java.util.Iterator r6 = r0.f35549c
            java.util.Map r7 = r0.f35548b
            java.util.Map r7 = (java.util.Map) r7
            kotlin.ResultKt.b(r8)
            goto L95
        L36:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r2
        L3c:
            kotlin.ResultKt.b(r8)
            java.util.Map r8 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f35545b
            r8.getClass()
            java.util.LinkedHashMap r1 = new java.util.LinkedHashMap
            int r4 = r8.size()
            int r4 = kotlin.collections.MapsKt.g(r4)
            r1.<init>(r4)
            java.util.Set r8 = r8.entrySet()
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
            r6 = r8
            r4 = r1
        L5d:
            boolean r8 = r6.hasNext()
            if (r8 == 0) goto Lad
            java.lang.Object r8 = r6.next()
            java.util.Map$Entry r8 = (java.util.Map.Entry) r8
            java.lang.Object r1 = r8.getKey()
            java.lang.Object r5 = r8.getKey()
            com.google.firebase.sessions.api.SessionSubscriber$Name r5 = (com.google.firebase.sessions.api.SessionSubscriber.Name) r5
            java.lang.Object r8 = r8.getValue()
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$Dependency r8 = (com.google.firebase.sessions.api.FirebaseSessionsDependencies.Dependency) r8
            com.google.firebase.sessions.api.a r7 = new com.google.firebase.sessions.api.a
            r7.<init>()
            r8 = r4
            java.util.Map r8 = (java.util.Map) r8
            r0.f35548b = r8
            r0.f35549c = r6
            r0.d = r5
            r0.f35550e = r8
            r0.f35551f = r1
            r0.f35553i = r3
            java.lang.Object r8 = kotlinx.coroutines.InterruptibleKt.a(r7, r0)
            if (r8 != r9) goto L94
            return r9
        L94:
            r7 = r4
        L95:
            r5.getClass()
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$Dependency r8 = b(r5)
            com.google.firebase.sessions.api.SessionSubscriber r8 = r8.f35547b
            if (r8 == 0) goto La5
            r4.put(r1, r8)
            r4 = r7
            goto L5d
        La5:
            java.lang.String r8 = "Subscriber "
            java.lang.String r9 = " has not been registered."
            defpackage.mt.j(r8, r5, r9)
            return r2
        Lad:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.api.FirebaseSessionsDependencies.c(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;", "", "Ljava/util/concurrent/CountDownLatch;", "latch", "Lcom/google/firebase/sessions/api/SessionSubscriber;", "subscriber", "<init>", "(Ljava/util/concurrent/CountDownLatch;Lcom/google/firebase/sessions/api/SessionSubscriber;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Dependency {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CountDownLatch f35546a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SessionSubscriber f35547b;

        public Dependency(CountDownLatch countDownLatch, SessionSubscriber sessionSubscriber) {
            countDownLatch.getClass();
            this.f35546a = countDownLatch;
            this.f35547b = sessionSubscriber;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Dependency)) {
                return false;
            }
            Dependency dependency = (Dependency) obj;
            return Intrinsics.c(this.f35546a, dependency.f35546a) && Intrinsics.c(this.f35547b, dependency.f35547b);
        }

        public final int hashCode() {
            int iHashCode = this.f35546a.hashCode() * 31;
            SessionSubscriber sessionSubscriber = this.f35547b;
            return iHashCode + (sessionSubscriber == null ? 0 : sessionSubscriber.hashCode());
        }

        public final String toString() {
            return "Dependency(latch=" + this.f35546a + ", subscriber=" + this.f35547b + ')';
        }

        public /* synthetic */ Dependency(CountDownLatch countDownLatch, SessionSubscriber sessionSubscriber, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(countDownLatch, (i2 & 2) != 0 ? null : sessionSubscriber);
        }
    }
}
