package androidx.paging;

import defpackage.md;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0003\u000f\u0010\u0011B[\u0012(\u0010\u0007\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Landroidx/paging/PageFetcher;", "", "Key", "Value", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Landroidx/paging/PagingSource;", "pagingSourceFactory", "initialKey", "Landroidx/paging/PagingConfig;", "config", "Landroidx/paging/RemoteMediator;", "remoteMediator", "<init>", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/paging/PagingConfig;Landroidx/paging/RemoteMediator;)V", "GenerationInfo", "PagerHintReceiver", "PagerUiReceiver", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PageFetcher<Key, Value> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f18678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f18679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PagingConfig f18680c;
    public final ConflatedEventBus d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConflatedEventBus f18681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Flow f18682f;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u0001*\b\b\u0003\u0010\u0003*\u00020\u00012\u00020\u0001B9\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/paging/PageFetcher$GenerationInfo;", "", "Key", "Value", "Landroidx/paging/PageFetcherSnapshot;", "snapshot", "Landroidx/paging/PagingState;", "state", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lkotlinx/coroutines/Job;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class GenerationInfo<Key, Value> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PageFetcherSnapshot f18683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PagingState f18684b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Job f18685c;

        public GenerationInfo(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, PagingState<Key, Value> pagingState, Job job) {
            pageFetcherSnapshot.getClass();
            job.getClass();
            this.f18683a = pageFetcherSnapshot;
            this.f18684b = pagingState;
            this.f18685c = job;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u0001*\b\b\u0003\u0010\u0003*\u00020\u00012\u00020\u0004B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/paging/PageFetcher$PagerHintReceiver;", "", "Key", "Value", "Landroidx/paging/HintReceiver;", "Landroidx/paging/PageFetcherSnapshot;", "pageFetcherSnapshot", "<init>", "(Landroidx/paging/PageFetcher;Landroidx/paging/PageFetcherSnapshot;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class PagerHintReceiver<Key, Value> implements HintReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PageFetcherSnapshot f18686a;

        public PagerHintReceiver(PageFetcher pageFetcher, PageFetcherSnapshot<Key, Value> pageFetcherSnapshot) {
            pageFetcherSnapshot.getClass();
            this.f18686a = pageFetcherSnapshot;
        }

        @Override // androidx.paging.HintReceiver
        public final void a(final ViewportHint viewportHint) {
            PageFetcherSnapshot pageFetcherSnapshot = this.f18686a;
            pageFetcherSnapshot.getClass();
            HintHandler hintHandler = pageFetcherSnapshot.f18735h;
            hintHandler.getClass();
            hintHandler.f18618a.a(viewportHint instanceof ViewportHint.Access ? (ViewportHint.Access) viewportHint : null, new Function2<HintHandler.HintFlow, HintHandler.HintFlow, Unit>() { // from class: androidx.paging.HintHandler$processHint$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    HintHandler.HintFlow hintFlow = (HintHandler.HintFlow) obj;
                    HintHandler.HintFlow hintFlow2 = (HintHandler.HintFlow) obj2;
                    hintFlow.getClass();
                    hintFlow2.getClass();
                    ViewportHint viewportHint2 = hintFlow.f18619a;
                    LoadType loadType = LoadType.PREPEND;
                    ViewportHint viewportHint3 = viewportHint;
                    if (HintHandlerKt.a(viewportHint3, viewportHint2, loadType)) {
                        hintFlow.f18619a = viewportHint3;
                        hintFlow.f18620b.a(viewportHint3);
                    }
                    if (HintHandlerKt.a(viewportHint3, hintFlow2.f18619a, LoadType.APPEND)) {
                        hintFlow2.f18619a = viewportHint3;
                        hintFlow2.f18620b.a(viewportHint3);
                    }
                    return Unit.f71739a;
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/paging/PageFetcher$PagerUiReceiver;", "Landroidx/paging/UiReceiver;", "Landroidx/paging/ConflatedEventBus;", "", "retryEventBus", "<init>", "(Landroidx/paging/PageFetcher;Landroidx/paging/ConflatedEventBus;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class PagerUiReceiver implements UiReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ConflatedEventBus f18687a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ PageFetcher f18688b;

        public PagerUiReceiver(PageFetcher pageFetcher, ConflatedEventBus<Unit> conflatedEventBus) {
            conflatedEventBus.getClass();
            this.f18688b = pageFetcher;
            this.f18687a = conflatedEventBus;
        }

        @Override // androidx.paging.UiReceiver
        public final void G0() {
            this.f18688b.d.a(Boolean.TRUE);
        }

        @Override // androidx.paging.UiReceiver
        public final void a() {
            this.f18687a.a(Unit.f71739a);
        }
    }

    public PageFetcher(Function1<? super Continuation<? super PagingSource<Key, Value>>, ? extends Object> function1, Key key, PagingConfig pagingConfig, RemoteMediator<Key, Value> remoteMediator) {
        function1.getClass();
        pagingConfig.getClass();
        this.f18678a = function1;
        this.f18679b = key;
        this.f18680c = pagingConfig;
        this.d = new ConflatedEventBus(null, 1, null);
        this.f18681e = new ConflatedEventBus(null, 1, null);
        this.f18682f = SimpleChannelFlowKt.a(new PageFetcher$flow$1(remoteMediator, this, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object a(PageFetcher pageFetcher, PagingSource pagingSource, ContinuationImpl continuationImpl) {
        PageFetcher$generateNewPagingSource$1 pageFetcher$generateNewPagingSource$1;
        if (continuationImpl instanceof PageFetcher$generateNewPagingSource$1) {
            pageFetcher$generateNewPagingSource$1 = (PageFetcher$generateNewPagingSource$1) continuationImpl;
            int i2 = pageFetcher$generateNewPagingSource$1.f18707f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pageFetcher$generateNewPagingSource$1.f18707f = i2 - Integer.MIN_VALUE;
            } else {
                pageFetcher$generateNewPagingSource$1 = new PageFetcher$generateNewPagingSource$1(pageFetcher, continuationImpl);
            }
        } else {
            pageFetcher$generateNewPagingSource$1 = new PageFetcher$generateNewPagingSource$1(pageFetcher, continuationImpl);
        }
        Object objInvoke = pageFetcher$generateNewPagingSource$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pageFetcher$generateNewPagingSource$1.f18707f;
        boolean z = true;
        if (i3 == 0) {
            ResultKt.b(objInvoke);
            Function1 function1 = pageFetcher.f18678a;
            pageFetcher$generateNewPagingSource$1.f18704b = pageFetcher;
            pageFetcher$generateNewPagingSource$1.f18705c = pagingSource;
            pageFetcher$generateNewPagingSource$1.f18707f = 1;
            objInvoke = function1.invoke(pageFetcher$generateNewPagingSource$1);
            if (objInvoke == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            pagingSource = pageFetcher$generateNewPagingSource$1.f18705c;
            pageFetcher = pageFetcher$generateNewPagingSource$1.f18704b;
            ResultKt.b(objInvoke);
        }
        PageFetcher pageFetcher2 = pageFetcher;
        PagingSource pagingSource2 = (PagingSource) objInvoke;
        if (pagingSource2 instanceof CompatLegacyPagingSource) {
            int i4 = pageFetcher2.f18680c.f18837a;
            ((CompatLegacyPagingSource) pagingSource2).a();
        }
        if (pagingSource2 == pagingSource) {
            md.k("An instance of PagingSource was re-used when Pager expected to create a new\ninstance. Ensure that the pagingSourceFactory passed to Pager always returns a\nnew instance of PagingSource.");
            return null;
        }
        PageFetcher$generateNewPagingSource$3 pageFetcher$generateNewPagingSource$3 = new PageFetcher$generateNewPagingSource$3(0, pageFetcher2, PageFetcher.class, "invalidate", "invalidate()V", 0);
        pagingSource2.getClass();
        InvalidateCallbackTracker invalidateCallbackTracker = pagingSource2.f18890a;
        Function1 function2 = invalidateCallbackTracker.f18627a;
        Function0 function0 = invalidateCallbackTracker.f18628b;
        if (function0 != null && ((Boolean) function0.mo47invoke()).booleanValue()) {
            invalidateCallbackTracker.a();
        }
        if (invalidateCallbackTracker.f18630e) {
            function2.invoke(pageFetcher$generateNewPagingSource$3);
        } else {
            ReentrantLock reentrantLock = invalidateCallbackTracker.f18629c;
            try {
                reentrantLock.lock();
                if (!invalidateCallbackTracker.f18630e) {
                    invalidateCallbackTracker.d.add(pageFetcher$generateNewPagingSource$3);
                    z = false;
                }
                if (z) {
                    function2.invoke(pageFetcher$generateNewPagingSource$3);
                }
            } finally {
                reentrantLock.unlock();
            }
        }
        if (pagingSource != null) {
            PageFetcher$generateNewPagingSource$4 pageFetcher$generateNewPagingSource$4 = new PageFetcher$generateNewPagingSource$4(0, pageFetcher2, PageFetcher.class, "invalidate", "invalidate()V", 0);
            InvalidateCallbackTracker invalidateCallbackTracker2 = pagingSource.f18890a;
            ReentrantLock reentrantLock2 = invalidateCallbackTracker2.f18629c;
            try {
                reentrantLock2.lock();
                invalidateCallbackTracker2.d.remove(pageFetcher$generateNewPagingSource$4);
                reentrantLock2.unlock();
            } catch (Throwable th) {
                reentrantLock2.unlock();
                throw th;
            }
        }
        if (pagingSource != null && pagingSource.f18890a.a() && PagingLogger.a(3)) {
            pagingSource.toString();
        }
        if (PagingLogger.a(3)) {
            pagingSource2.toString();
        }
        return pagingSource2;
    }

    public /* synthetic */ PageFetcher(Function1 function1, Object obj, PagingConfig pagingConfig, RemoteMediator remoteMediator, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, obj, pagingConfig, (i2 & 8) != 0 ? null : remoteMediator);
    }
}
