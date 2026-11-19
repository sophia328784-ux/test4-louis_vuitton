package com.dynatrace.agent;

import com.dynatrace.agent.events.enrichment.SessionInformationSupplier;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.storage.preference.MetricsData;
import defpackage.x60;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.OneAgentEventDispatcher$dispatchEvent$4", f = "OneAgentEventDispatcher.kt", l = {}, m = "invokeSuspend")
final class OneAgentEventDispatcher$dispatchEvent$4 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OneAgentEventDispatcher f26454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JSONObject f26455c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SessionInformationMetrics f26456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MetricsData f26457f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentEventDispatcher$dispatchEvent$4(OneAgentEventDispatcher oneAgentEventDispatcher, JSONObject jSONObject, long j2, SessionInformationMetrics sessionInformationMetrics, MetricsData metricsData, Continuation continuation) {
        super(1, continuation);
        this.f26454b = oneAgentEventDispatcher;
        this.f26455c = jSONObject;
        this.d = j2;
        this.f26456e = sessionInformationMetrics;
        this.f26457f = metricsData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OneAgentEventDispatcher$dispatchEvent$4(this.f26454b, this.f26455c, this.d, this.f26456e, this.f26457f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OneAgentEventDispatcher$dispatchEvent$4) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws JSONException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        EmptyList emptyList = EmptyList.f71768b;
        SessionInformationMetrics sessionInformationMetrics = this.f26456e;
        OneAgentEventDispatcher.g(this.f26454b, this.f26455c, this.d, emptyList, CollectionsKt.O(new SessionInformationSupplier(sessionInformationMetrics)), sessionInformationMetrics, new x60(this.f26457f, 18), null, 64);
        return Unit.f71739a;
    }
}
