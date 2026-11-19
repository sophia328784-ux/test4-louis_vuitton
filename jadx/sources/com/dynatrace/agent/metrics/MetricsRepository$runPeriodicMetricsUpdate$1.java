package com.dynatrace.agent.metrics;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.metrics.MetricsRepository$runPeriodicMetricsUpdate$1", f = "MetricsRepository.kt", l = {EACTags.DISPLAY_IMAGE, 70}, m = "invokeSuspend")
final class MetricsRepository$runPeriodicMetricsUpdate$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f26876c;
    public final /* synthetic */ MetricsRepository d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricsRepository$runPeriodicMetricsUpdate$1(MetricsRepository metricsRepository, Continuation continuation) {
        super(2, continuation);
        this.d = metricsRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MetricsRepository$runPeriodicMetricsUpdate$1 metricsRepository$runPeriodicMetricsUpdate$1 = new MetricsRepository$runPeriodicMetricsUpdate$1(this.d, continuation);
        metricsRepository$runPeriodicMetricsUpdate$1.f26876c = obj;
        return metricsRepository$runPeriodicMetricsUpdate$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MetricsRepository$runPeriodicMetricsUpdate$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002d A[PHI: r2
      0x002d: PHI (r2v4 kotlinx.coroutines.CoroutineScope) = 
      (r2v2 kotlinx.coroutines.CoroutineScope)
      (r2v3 kotlinx.coroutines.CoroutineScope)
      (r2v8 kotlinx.coroutines.CoroutineScope)
     binds: [B:10:0x0026, B:26:0x00df, B:6:0x000e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:13:0x0033  */
    /* JADX WARN: Code duplicated, block: B:15:0x0047  */
    /* JADX WARN: Code duplicated, block: B:16:0x0050  */
    /* JADX WARN: Code duplicated, block: B:18:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:22:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:25:0x00d3 A[PHI: r2
      0x00d3: PHI (r2v3 kotlinx.coroutines.CoroutineScope) = (r2v4 kotlinx.coroutines.CoroutineScope), (r2v6 kotlinx.coroutines.CoroutineScope) binds: [B:23:0x00d0, B:9:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00df -> B:11:0x002d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dynatrace.agent.metrics.MetricsRepository$runPeriodicMetricsUpdate$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
