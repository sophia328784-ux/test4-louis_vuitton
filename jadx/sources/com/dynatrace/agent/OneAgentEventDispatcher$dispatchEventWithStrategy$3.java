package com.dynatrace.agent;

import com.dynatrace.agent.events.enrichment.SessionInformationSupplier;
import com.dynatrace.agent.events.enrichment.TimeMetrics;
import com.dynatrace.agent.events.enrichment.TimeMetricsSupplier;
import com.dynatrace.agent.events.enrichment.sanitation.SanitationContext;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import defpackage.kh0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.OneAgentEventDispatcher$dispatchEventWithStrategy$3", f = "OneAgentEventDispatcher.kt", l = {}, m = "invokeSuspend")
final class OneAgentEventDispatcher$dispatchEventWithStrategy$3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OneAgentEventDispatcher f26459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SanitationContext f26460c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TimeMetrics f26461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SessionInformationMetrics f26462f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentEventDispatcher$dispatchEventWithStrategy$3(OneAgentEventDispatcher oneAgentEventDispatcher, SanitationContext sanitationContext, long j2, TimeMetrics timeMetrics, SessionInformationMetrics sessionInformationMetrics, Continuation continuation) {
        super(1, continuation);
        this.f26459b = oneAgentEventDispatcher;
        this.f26460c = sanitationContext;
        this.d = j2;
        this.f26461e = timeMetrics;
        this.f26462f = sessionInformationMetrics;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OneAgentEventDispatcher$dispatchEventWithStrategy$3(this.f26459b, this.f26460c, this.d, this.f26461e, this.f26462f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OneAgentEventDispatcher$dispatchEventWithStrategy$3) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws JSONException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        OneAgentEventDispatcher.g(this.f26459b, this.f26460c.f26797a, this.d, CollectionsKt.P(new TimeMetricsSupplier(this.f26461e), new kh0()), CollectionsKt.O(new SessionInformationSupplier(this.f26462f)), this.f26462f, null, null, 96);
        return Unit.f71739a;
    }
}
