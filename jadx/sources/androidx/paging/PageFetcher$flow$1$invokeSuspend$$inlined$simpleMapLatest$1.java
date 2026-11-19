package androidx.paging;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.paging.PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1", f = "PageFetcher.kt", l = {105}, m = "invokeSuspend")
public final class PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super PagingData<Object>>, PageFetcher.GenerationInfo<Object, Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ FlowCollector f18701c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PageFetcher f18702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ RemoteMediatorAccessor f18703f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1(Continuation continuation, PageFetcher pageFetcher, RemoteMediatorAccessor remoteMediatorAccessor) {
        super(3, continuation);
        this.f18702e = pageFetcher;
        this.f18703f = remoteMediatorAccessor;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1 pageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1 = new PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1((Continuation) obj3, this.f18702e, this.f18703f);
        pageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1.f18701c = (FlowCollector) obj;
        pageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1.d = obj2;
        return pageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Flow flowA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18700b;
        if (i2 == 0) {
            ResultKt.b(obj);
            FlowCollector flowCollector = this.f18701c;
            PageFetcher.GenerationInfo generationInfo = (PageFetcher.GenerationInfo) this.d;
            PageFetcherSnapshot pageFetcherSnapshot = generationInfo.f18683a;
            Job job = generationInfo.f18685c;
            PageFetcher pageFetcher = this.f18702e;
            pageFetcher.getClass();
            RemoteMediatorAccessor remoteMediatorAccessor = this.f18703f;
            if (remoteMediatorAccessor == null) {
                flowA = pageFetcherSnapshot.m;
            } else {
                PageFetcher$injectRemoteEvents$1 pageFetcher$injectRemoteEvents$1 = new PageFetcher$injectRemoteEvents$1(remoteMediatorAccessor, pageFetcherSnapshot, new MutableLoadStateCollection(), null);
                job.getClass();
                flowA = SimpleChannelFlowKt.a(new CancelableChannelFlowKt$cancelableChannelFlow$1(job, pageFetcher$injectRemoteEvents$1, null));
            }
            PagingData pagingData = new PagingData(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(flowA, new PageFetcher$flow$1$3$downstreamFlow$1(2, null)), new PageFetcher.PagerUiReceiver(pageFetcher, pageFetcher.f18681e), new PageFetcher.PagerHintReceiver(pageFetcher, generationInfo.f18683a), null, 8, null);
            this.f18700b = 1;
            if (flowCollector.emit(pagingData, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
