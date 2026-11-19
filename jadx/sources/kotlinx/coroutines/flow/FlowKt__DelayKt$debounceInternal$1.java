package kotlinx.coroutines.flow;

import defpackage.r5;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;", "downstream", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", l = {215, 415}, m = "invokeSuspend", v = 1)
final class FlowKt__DelayKt$debounceInternal$1 extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ReceiveChannel f74804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$ObjectRef f74805c;
    public Ref$LongRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f74806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ CoroutineScope f74807f;
    public /* synthetic */ FlowCollector g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ r5 f74808h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Flow f74809i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$debounceInternal$1(r5 r5Var, Flow flow, Continuation continuation) {
        super(3, continuation);
        this.f74808h = r5Var;
        this.f74809i = flow;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        FlowKt__DelayKt$debounceInternal$1 flowKt__DelayKt$debounceInternal$1 = new FlowKt__DelayKt$debounceInternal$1(this.f74808h, this.f74809i, (Continuation) obj3);
        flowKt__DelayKt$debounceInternal$1.f74807f = (CoroutineScope) obj;
        flowKt__DelayKt$debounceInternal$1.g = (FlowCollector) obj2;
        return flowKt__DelayKt$debounceInternal$1.invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0057  */
    /* JADX WARN: Code duplicated, block: B:18:0x006d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0089 A[PHI: r1 r2 r3
      0x0089: PHI (r1v2 kotlin.jvm.internal.Ref$LongRef) = (r1v4 kotlin.jvm.internal.Ref$LongRef), (r1v6 kotlin.jvm.internal.Ref$LongRef), (r1v6 kotlin.jvm.internal.Ref$LongRef) binds: [B:25:0x0087, B:15:0x0055, B:18:0x006d] A[DONT_GENERATE, DONT_INLINE]
      0x0089: PHI (r2v4 kotlin.jvm.internal.Ref$ObjectRef) = 
      (r2v12 kotlin.jvm.internal.Ref$ObjectRef)
      (r2v13 kotlin.jvm.internal.Ref$ObjectRef)
      (r2v13 kotlin.jvm.internal.Ref$ObjectRef)
     binds: [B:25:0x0087, B:15:0x0055, B:18:0x006d] A[DONT_GENERATE, DONT_INLINE]
      0x0089: PHI (r3v2 kotlinx.coroutines.channels.ReceiveChannel) = 
      (r3v3 kotlinx.coroutines.channels.ReceiveChannel)
      (r3v4 kotlinx.coroutines.channels.ReceiveChannel)
      (r3v4 kotlinx.coroutines.channels.ReceiveChannel)
     binds: [B:25:0x0087, B:15:0x0055, B:18:0x006d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x008f  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00e9  */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
