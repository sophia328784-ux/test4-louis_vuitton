package com.dynatrace.agent;

import com.dynatrace.android.agent.conf.ServerConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.OneAgentStartupImpl$startCommunication$1", f = "OneAgentStartupImpl.kt", l = {115, 117, 119}, m = "invokeSuspend")
final class OneAgentStartupImpl$startCommunication$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OneAgentStartupImpl f26496c;
    public final /* synthetic */ ServerConfiguration d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentStartupImpl$startCommunication$1(OneAgentStartupImpl oneAgentStartupImpl, ServerConfiguration serverConfiguration, Continuation continuation) {
        super(2, continuation);
        this.f26496c = oneAgentStartupImpl;
        this.d = serverConfiguration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OneAgentStartupImpl$startCommunication$1(this.f26496c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OneAgentStartupImpl$startCommunication$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004e, code lost:
    
        if (r1.b((com.dynatrace.agent.storage.preference.ServerConfigurationV4) r7, r6.d) == r0) goto L22;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f26495b
            r2 = 3
            r3 = 2
            r4 = 1
            com.dynatrace.agent.OneAgentStartupImpl r5 = r6.f26496c
            if (r1 == 0) goto L24
            if (r1 == r4) goto L20
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L15
            kotlin.ResultKt.b(r7)
            goto L51
        L15:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L1c:
            kotlin.ResultKt.b(r7)
            goto L3d
        L20:
            kotlin.ResultKt.b(r7)
            goto L34
        L24:
            kotlin.ResultKt.b(r7)
            kotlinx.coroutines.Job r7 = r5.m
            if (r7 == 0) goto L34
            r6.f26495b = r4
            java.lang.Object r7 = r7.join(r6)
            if (r7 != r0) goto L34
            goto L50
        L34:
            r6.f26495b = r3
            java.lang.Object r7 = com.dynatrace.agent.OneAgentStartupImpl.d(r5, r6)
            if (r7 != r0) goto L3d
            goto L50
        L3d:
            com.dynatrace.agent.storage.preference.ServerConfigurationV4 r7 = (com.dynatrace.agent.storage.preference.ServerConfigurationV4) r7
            java.lang.String r1 = "starting BPv4 communication"
            com.dynatrace.android.agent.util.Utility.b(r1)
            com.dynatrace.agent.communication.CommunicationManager r1 = r5.f26480a
            r6.f26495b = r2
            com.dynatrace.android.agent.conf.ServerConfiguration r6 = r6.d
            kotlin.Unit r6 = r1.b(r7, r6)
            if (r6 != r0) goto L51
        L50:
            return r0
        L51:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dynatrace.agent.OneAgentStartupImpl$startCommunication$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
