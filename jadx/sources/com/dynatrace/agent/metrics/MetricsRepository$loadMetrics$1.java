package com.dynatrace.agent.metrics;

import com.dynatrace.agent.storage.preference.MetricsData;
import com.dynatrace.agent.storage.preference.MetricsDiskDataSource;
import defpackage.md;
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
@DebugMetadata(c = "com.dynatrace.agent.metrics.MetricsRepository$loadMetrics$1", f = "MetricsRepository.kt", l = {119}, m = "invokeSuspend")
final class MetricsRepository$loadMetrics$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MetricsRepository f26873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f26874c;
    public final /* synthetic */ MetricsRepository d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricsRepository$loadMetrics$1(MetricsRepository metricsRepository, Continuation continuation) {
        super(2, continuation);
        this.d = metricsRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MetricsRepository$loadMetrics$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MetricsRepository$loadMetrics$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MetricsRepository metricsRepository;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26874c;
        if (i2 == 0) {
            ResultKt.b(obj);
            MetricsRepository metricsRepository2 = this.d;
            MetricsDiskDataSource metricsDiskDataSource = metricsRepository2.f26866a;
            this.f26873b = metricsRepository2;
            this.f26874c = 1;
            Object objA = metricsDiskDataSource.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = objA;
            metricsRepository = metricsRepository2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            metricsRepository = this.f26873b;
            ResultKt.b(obj);
        }
        metricsRepository.f26872i = (MetricsData) obj;
        return Unit.f71739a;
    }
}
