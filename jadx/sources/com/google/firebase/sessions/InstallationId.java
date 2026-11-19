package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/firebase/sessions/InstallationId;", "", "Companion", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InstallationId {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f35441c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35443b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/google/firebase/sessions/InstallationId$Companion;", "", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
        
            if (r7 == r9) goto L29;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0 */
        /* JADX WARN: Type inference failed for: r7v14 */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v3, types: [com.google.firebase.installations.FirebaseInstallationsApi] */
        /* JADX WARN: Type inference failed for: r8v0, types: [com.google.firebase.installations.FirebaseInstallationsApi, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v13 */
        /* JADX WARN: Type inference failed for: r8v14 */
        /* JADX WARN: Type inference failed for: r8v15 */
        /* JADX WARN: Type inference failed for: r8v16 */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r8v6 */
        /* JADX WARN: Type inference failed for: r8v7 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(com.google.firebase.installations.FirebaseInstallationsApi r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof com.google.firebase.sessions.InstallationId$Companion$create$1
                if (r0 == 0) goto L13
                r0 = r9
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = (com.google.firebase.sessions.InstallationId$Companion$create$1) r0
                int r1 = r0.f35446e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f35446e = r1
                goto L18
            L13:
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = new com.google.firebase.sessions.InstallationId$Companion$create$1
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r7 = r0.f35445c
                kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r0.f35446e
                r2 = 0
                r3 = 2
                r4 = 1
                java.lang.String r5 = ""
                if (r1 == 0) goto L3f
                if (r1 == r4) goto L37
                if (r1 != r3) goto L31
                java.lang.Object r8 = r0.f35444b
                java.lang.String r8 = (java.lang.String) r8
                kotlin.ResultKt.b(r7)     // Catch: java.lang.Exception -> L7b
                goto L75
            L31:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r7)
                return r2
            L37:
                java.lang.Object r8 = r0.f35444b
                com.google.firebase.installations.FirebaseInstallationsApi r8 = (com.google.firebase.installations.FirebaseInstallationsApi) r8
                kotlin.ResultKt.b(r7)     // Catch: java.lang.Exception -> L61
                goto L54
            L3f:
                kotlin.ResultKt.b(r7)
                com.google.android.gms.tasks.Task r7 = r8.a()     // Catch: java.lang.Exception -> L61
                r7.getClass()     // Catch: java.lang.Exception -> L61
                r0.f35444b = r8     // Catch: java.lang.Exception -> L61
                r0.f35446e = r4     // Catch: java.lang.Exception -> L61
                java.lang.Object r7 = kotlinx.coroutines.tasks.TasksKt.a(r7, r0)     // Catch: java.lang.Exception -> L61
                if (r7 != r9) goto L54
                goto L74
            L54:
                com.google.firebase.installations.InstallationTokenResult r7 = (com.google.firebase.installations.InstallationTokenResult) r7     // Catch: java.lang.Exception -> L61
                java.lang.String r7 = r7.a()     // Catch: java.lang.Exception -> L61
                r7.getClass()     // Catch: java.lang.Exception -> L61
                r6 = r8
                r8 = r7
                r7 = r6
                goto L63
            L61:
                r7 = r8
                r8 = r5
            L63:
                com.google.android.gms.tasks.Task r7 = r7.getId()     // Catch: java.lang.Exception -> L7b
                r7.getClass()     // Catch: java.lang.Exception -> L7b
                r0.f35444b = r8     // Catch: java.lang.Exception -> L7b
                r0.f35446e = r3     // Catch: java.lang.Exception -> L7b
                java.lang.Object r7 = kotlinx.coroutines.tasks.TasksKt.a(r7, r0)     // Catch: java.lang.Exception -> L7b
                if (r7 != r9) goto L75
            L74:
                return r9
            L75:
                java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> L7b
                if (r7 != 0) goto L7a
                goto L7b
            L7a:
                r5 = r7
            L7b:
                com.google.firebase.sessions.InstallationId r7 = new com.google.firebase.sessions.InstallationId
                r7.<init>(r5, r8, r2)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.InstallationId.Companion.a(com.google.firebase.installations.FirebaseInstallationsApi, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }
    }

    public InstallationId(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f35442a = str;
        this.f35443b = str2;
    }
}
