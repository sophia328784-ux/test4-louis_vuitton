package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.communication.api.ServerDataListener;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/communication/ServerDataMaintainer;", "", "Lcom/dynatrace/agent/communication/LocalServerData;", "initialServerData", "Lcom/dynatrace/agent/communication/api/ServerDataListener;", "updateListener", "<init>", "(Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/api/ServerDataListener;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ServerDataMaintainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ServerDataListener f26604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutexImpl f26605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f26606c;
    public AgentState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ServerConfigurationV4 f26607e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ServerConfiguration f26608f;

    public ServerDataMaintainer(LocalServerData localServerData, ServerDataListener serverDataListener) {
        localServerData.getClass();
        serverDataListener.getClass();
        this.f26604a = serverDataListener;
        this.f26605b = MutexKt.a();
        this.f26606c = new AtomicBoolean(true);
        this.d = localServerData.f26561a;
        this.f26607e = localServerData.f26562b;
        this.f26608f = localServerData.f26563c;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007d A[Catch: all -> 0x006b, TRY_LEAVE, TryCatch #0 {all -> 0x006b, blocks: (B:19:0x0061, B:21:0x0065, B:28:0x0077, B:30:0x007d, B:24:0x006d), top: B:44:0x0061 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00af, code lost:
    
        if (r12.a(r11) == r1) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.dynatrace.android.agent.conf.ServerConfiguration r12, boolean r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof com.dynatrace.agent.communication.ServerDataMaintainer$updateInternalV3Config$1
            if (r0 == 0) goto L13
            r0 = r14
            com.dynatrace.agent.communication.ServerDataMaintainer$updateInternalV3Config$1 r0 = (com.dynatrace.agent.communication.ServerDataMaintainer$updateInternalV3Config$1) r0
            int r1 = r0.f26614i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f26614i = r1
            goto L18
        L13:
            com.dynatrace.agent.communication.ServerDataMaintainer$updateInternalV3Config$1 r0 = new com.dynatrace.agent.communication.ServerDataMaintainer$updateInternalV3Config$1
            r0.<init>(r11, r14)
        L18:
            java.lang.Object r14 = r0.g
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f26614i
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L44
            if (r2 == r4) goto L32
            if (r2 != r3) goto L2c
            kotlin.ResultKt.b(r14)
            goto Lb2
        L2c:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            return r5
        L32:
            boolean r13 = r0.f26612f
            kotlinx.coroutines.sync.MutexImpl r11 = r0.f26611e
            kotlin.jvm.internal.Ref$BooleanRef r12 = r0.d
            com.dynatrace.android.agent.conf.ServerConfiguration r2 = r0.f26610c
            com.dynatrace.agent.communication.ServerDataMaintainer r6 = r0.f26609b
            kotlin.ResultKt.b(r14)
            r14 = r12
            r12 = r2
            r2 = r11
            r11 = r6
            goto L61
        L44:
            kotlin.ResultKt.b(r14)
            kotlin.jvm.internal.Ref$BooleanRef r14 = new kotlin.jvm.internal.Ref$BooleanRef
            r14.<init>()
            r0.f26609b = r11
            r0.f26610c = r12
            r0.d = r14
            kotlinx.coroutines.sync.MutexImpl r2 = r11.f26605b
            r0.f26611e = r2
            r0.f26612f = r13
            r0.f26614i = r4
            java.lang.Object r6 = r2.c(r0)
            if (r6 != r1) goto L61
            goto Lb1
        L61:
            com.dynatrace.android.agent.conf.ServerConfiguration r6 = r11.f26608f     // Catch: java.lang.Throwable -> L6b
            if (r12 != 0) goto L6d
            java.lang.String r12 = "updated configuration v3 is null, ignoring update"
            com.dynatrace.android.agent.util.Utility.b(r12)     // Catch: java.lang.Throwable -> L6b
            goto L76
        L6b:
            r11 = move-exception
            goto Lb8
        L6d:
            long r7 = r12.o     // Catch: java.lang.Throwable -> L6b
            long r9 = r6.o     // Catch: java.lang.Throwable -> L6b
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 < 0) goto L76
            goto L77
        L76:
            r12 = r6
        L77:
            boolean r6 = kotlin.jvm.internal.Intrinsics.c(r6, r12)     // Catch: java.lang.Throwable -> L6b
            if (r6 != 0) goto L81
            r11.f26608f = r12     // Catch: java.lang.Throwable -> L6b
            r14.f71917b = r4     // Catch: java.lang.Throwable -> L6b
        L81:
            r2.d(r5)
            if (r13 == 0) goto Lb5
            boolean r12 = r14.f71917b
            if (r12 == 0) goto Lb5
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r13 = "updated server configuration v3; config: "
            r12.<init>(r13)
            com.dynatrace.android.agent.conf.ServerConfiguration r13 = r11.f26608f
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            com.dynatrace.android.agent.util.Utility.b(r12)
            com.dynatrace.agent.communication.api.ServerDataListener r12 = r11.f26604a
            com.dynatrace.android.agent.conf.ServerConfiguration r11 = r11.f26608f
            r0.f26609b = r5
            r0.f26610c = r5
            r0.d = r5
            r0.f26611e = r5
            r0.f26614i = r3
            kotlin.Unit r11 = r12.a(r11)
            if (r11 != r1) goto Lb2
        Lb1:
            return r1
        Lb2:
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        Lb5:
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        Lb8:
            r2.d(r5)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dynatrace.agent.communication.ServerDataMaintainer.a(com.dynatrace.android.agent.conf.ServerConfiguration, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a7, code lost:
    
        if (r11.a(r12, true, r0) == r1) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(com.dynatrace.agent.communication.api.ServerDataUpdate r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof com.dynatrace.agent.communication.ServerDataMaintainer$updateServerData$1
            if (r0 == 0) goto L13
            r0 = r13
            com.dynatrace.agent.communication.ServerDataMaintainer$updateServerData$1 r0 = (com.dynatrace.agent.communication.ServerDataMaintainer$updateServerData$1) r0
            int r1 = r0.f26618f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f26618f = r1
            goto L18
        L13:
            com.dynatrace.agent.communication.ServerDataMaintainer$updateServerData$1 r0 = new com.dynatrace.agent.communication.ServerDataMaintainer$updateServerData$1
            r0.<init>(r11, r13)
        L18:
            java.lang.Object r13 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f26618f
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3a
            if (r2 == r5) goto L32
            if (r2 != r4) goto L2c
            kotlin.ResultKt.b(r13)
            goto Laa
        L2c:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            return r3
        L32:
            com.dynatrace.agent.communication.api.ServerDataUpdate r12 = r0.f26616c
            com.dynatrace.agent.communication.ServerDataMaintainer r11 = r0.f26615b
            kotlin.ResultKt.b(r13)
            goto L9b
        L3a:
            kotlin.ResultKt.b(r13)
            if (r12 != 0) goto L42
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        L42:
            com.dynatrace.agent.communication.api.AgentState r13 = r12.f26621a
            java.util.concurrent.atomic.AtomicBoolean r2 = r11.f26606c
            r6 = 0
            boolean r2 = r2.compareAndSet(r5, r6)
            if (r2 != 0) goto L55
            com.dynatrace.agent.communication.api.AgentState r2 = r11.d
            boolean r2 = kotlin.jvm.internal.Intrinsics.c(r13, r2)
            if (r2 != 0) goto L58
        L55:
            r11.d = r13
            r6 = r5
        L58:
            com.dynatrace.agent.storage.preference.ServerConfigurationV4 r13 = r12.f26622b
            if (r13 == 0) goto L69
            long r7 = r13.f27043a
            com.dynatrace.agent.storage.preference.ServerConfigurationV4 r2 = r11.f26607e
            long r9 = r2.f27043a
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 <= 0) goto L69
            r11.f26607e = r13
            r6 = r5
        L69:
            if (r6 == 0) goto L9b
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            java.lang.String r2 = "updated server configuration; state: "
            r13.<init>(r2)
            com.dynatrace.agent.communication.api.AgentState r2 = r11.d
            r13.append(r2)
            java.lang.String r2 = ", config: "
            r13.append(r2)
            com.dynatrace.agent.storage.preference.ServerConfigurationV4 r2 = r11.f26607e
            r13.append(r2)
            java.lang.String r13 = r13.toString()
            com.dynatrace.android.agent.util.Utility.b(r13)
            com.dynatrace.agent.communication.api.AgentState r13 = r11.d
            com.dynatrace.agent.storage.preference.ServerConfigurationV4 r2 = r11.f26607e
            r0.f26615b = r11
            r0.f26616c = r12
            r0.f26618f = r5
            com.dynatrace.agent.communication.api.ServerDataListener r6 = r11.f26604a
            java.lang.Object r13 = r6.b(r13, r2, r0)
            if (r13 != r1) goto L9b
            goto La9
        L9b:
            com.dynatrace.android.agent.conf.ServerConfiguration r12 = r12.f26623c
            r0.f26615b = r3
            r0.f26616c = r3
            r0.f26618f = r4
            java.lang.Object r11 = r11.a(r12, r5, r0)
            if (r11 != r1) goto Laa
        La9:
            return r1
        Laa:
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dynatrace.agent.communication.ServerDataMaintainer.b(com.dynatrace.agent.communication.api.ServerDataUpdate, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
