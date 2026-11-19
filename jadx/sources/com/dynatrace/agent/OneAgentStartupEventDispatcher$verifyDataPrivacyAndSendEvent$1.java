package com.dynatrace.agent;

import com.dynatrace.agent.metrics.SessionInformationMetrics;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1", f = "OneAgentStartupEventDispatcher.kt", l = {}, m = "invokeSuspend")
final class OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OneAgentStartupEventDispatcher f26478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JSONObject f26479c;
    public final /* synthetic */ SessionInformationMetrics d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1(OneAgentStartupEventDispatcher oneAgentStartupEventDispatcher, JSONObject jSONObject, SessionInformationMetrics sessionInformationMetrics, Continuation continuation) {
        super(2, continuation);
        this.f26478b = oneAgentStartupEventDispatcher;
        this.f26479c = jSONObject;
        this.d = sessionInformationMetrics;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1(this.f26478b, this.f26479c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f26478b.f26470c.d(this.f26479c, this.d);
        return Unit.f71739a;
    }
}
