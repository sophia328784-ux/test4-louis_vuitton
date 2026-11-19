package com.dynatrace.agent;

import com.dynatrace.agent.events.enrichment.SessionInformationSupplier;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
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
@DebugMetadata(c = "com.dynatrace.agent.OneAgentEventDispatcher$dispatchEvent$1", f = "OneAgentEventDispatcher.kt", l = {}, m = "invokeSuspend")
final class OneAgentEventDispatcher$dispatchEvent$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OneAgentEventDispatcher f26444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JSONObject f26445c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SessionInformationMetrics f26446e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentEventDispatcher$dispatchEvent$1(OneAgentEventDispatcher oneAgentEventDispatcher, JSONObject jSONObject, long j2, SessionInformationMetrics sessionInformationMetrics, Continuation continuation) {
        super(1, continuation);
        this.f26444b = oneAgentEventDispatcher;
        this.f26445c = jSONObject;
        this.d = j2;
        this.f26446e = sessionInformationMetrics;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OneAgentEventDispatcher$dispatchEvent$1(this.f26444b, this.f26445c, this.d, this.f26446e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OneAgentEventDispatcher$dispatchEvent$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws JSONException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        OneAgentEventDispatcher.g(this.f26444b, this.f26445c, this.d, EmptyList.f71768b, CollectionsKt.O(new SessionInformationSupplier(this.f26446e)), this.f26446e, null, null, 96);
        return Unit.f71739a;
    }
}
