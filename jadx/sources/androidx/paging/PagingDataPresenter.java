package androidx.paging;

import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0001\tB#\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/paging/PagingDataPresenter;", "", "T", "Lkotlin/coroutines/CoroutineContext;", "mainContext", "Landroidx/paging/PagingData;", "cachedPagingData", "<init>", "(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V", "InitialUiReceiver", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class PagingDataPresenter<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineContext f18863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HintReceiver f18864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public UiReceiver f18865c;
    public PageStore d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableCombinedLoadStateCollection f18866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CopyOnWriteArrayList f18867f;
    public final SingleRunner g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f18868h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile int f18869i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f18870j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final StateFlow f18871k;
    public final SharedFlowImpl l;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/paging/PagingDataPresenter$InitialUiReceiver;", "Landroidx/paging/UiReceiver;", "<init>", "()V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class InitialUiReceiver implements UiReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f18873a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f18874b;

        @Override // androidx.paging.UiReceiver
        public final void G0() {
            this.f18874b = true;
        }

        @Override // androidx.paging.UiReceiver
        public final void a() {
            this.f18873a = true;
        }
    }

    public PagingDataPresenter(CoroutineContext coroutineContext, PagingData<T> pagingData) {
        PageStore pageStore;
        PageEvent.Insert insert;
        coroutineContext.getClass();
        this.f18863a = coroutineContext;
        this.f18865c = new InitialUiReceiver();
        PageStore.Companion companion = PageStore.f18829e;
        PageEvent.Insert insert2 = pagingData != null ? (PageEvent.Insert) pagingData.d.mo47invoke() : null;
        companion.getClass();
        if (insert2 != null) {
            pageStore = new PageStore(insert2);
        } else {
            pageStore = PageStore.f18830f;
            pageStore.getClass();
        }
        this.d = pageStore;
        MutableCombinedLoadStateCollection mutableCombinedLoadStateCollection = new MutableCombinedLoadStateCollection();
        if (pagingData != null && (insert = (PageEvent.Insert) pagingData.d.mo47invoke()) != null) {
            LoadStates loadStates = insert.f18671e;
            LoadStates loadStates2 = insert.f18672f;
            loadStates.getClass();
            mutableCombinedLoadStateCollection.c(new MutableCombinedLoadStateCollection$set$1(mutableCombinedLoadStateCollection, loadStates, loadStates2));
        }
        this.f18866e = mutableCombinedLoadStateCollection;
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f18867f = copyOnWriteArrayList;
        this.g = new SingleRunner(false, 1, null);
        this.f18870j = StateFlowKt.a(Boolean.FALSE);
        this.f18871k = mutableCombinedLoadStateCollection.f18654c;
        this.l = SharedFlowKt.a(0, 64, BufferOverflow.DROP_OLDEST);
        copyOnWriteArrayList.add(new Function0<Unit>() { // from class: androidx.paging.PagingDataPresenter.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                SharedFlowImpl sharedFlowImpl = PagingDataPresenter.this.l;
                Unit unit = Unit.f71739a;
                sharedFlowImpl.a(unit);
                return unit;
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(PagingDataPresenter pagingDataPresenter, List list, int i2, int i3, boolean z, LoadStates loadStates, LoadStates loadStates2, HintReceiver hintReceiver, ContinuationImpl continuationImpl) {
        PagingDataPresenter$presentNewList$1 pagingDataPresenter$presentNewList$1;
        PageStore pageStore;
        HintReceiver hintReceiver2;
        List list2;
        List list3;
        if (continuationImpl instanceof PagingDataPresenter$presentNewList$1) {
            pagingDataPresenter$presentNewList$1 = (PagingDataPresenter$presentNewList$1) continuationImpl;
            int i4 = pagingDataPresenter$presentNewList$1.m;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                pagingDataPresenter$presentNewList$1.m = i4 - Integer.MIN_VALUE;
            } else {
                pagingDataPresenter$presentNewList$1 = new PagingDataPresenter$presentNewList$1(pagingDataPresenter, continuationImpl);
            }
        } else {
            pagingDataPresenter$presentNewList$1 = new PagingDataPresenter$presentNewList$1(pagingDataPresenter, continuationImpl);
        }
        Object obj = pagingDataPresenter$presentNewList$1.f18889k;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = pagingDataPresenter$presentNewList$1.m;
        Object objN = null;
        if (i5 == 0) {
            ResultKt.b(obj);
            if (z && loadStates == null) {
                md.n("Cannot dispatch LoadStates in PagingDataPresenter without source LoadStates set.");
                return null;
            }
            pagingDataPresenter.f18868h = false;
            pageStore = new PageStore(list, i2, i3);
            PageStore pageStore2 = pagingDataPresenter.d;
            pageStore2.getClass();
            pagingDataPresenter.d = pageStore;
            pagingDataPresenter.f18864b = hintReceiver;
            new PagingDataEvent.Refresh(pageStore, pageStore2);
            pagingDataPresenter$presentNewList$1.f18882b = pagingDataPresenter;
            pagingDataPresenter$presentNewList$1.f18883c = list;
            pagingDataPresenter$presentNewList$1.d = loadStates;
            pagingDataPresenter$presentNewList$1.f18884e = loadStates2;
            pagingDataPresenter$presentNewList$1.f18885f = hintReceiver;
            pagingDataPresenter$presentNewList$1.g = pageStore;
            pagingDataPresenter$presentNewList$1.f18886h = i2;
            pagingDataPresenter$presentNewList$1.f18887i = i3;
            pagingDataPresenter$presentNewList$1.f18888j = z;
            pagingDataPresenter$presentNewList$1.m = 1;
            if (pagingDataPresenter.c() == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i5 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = pagingDataPresenter$presentNewList$1.f18888j;
            i3 = pagingDataPresenter$presentNewList$1.f18887i;
            i2 = pagingDataPresenter$presentNewList$1.f18886h;
            PageStore pageStore3 = pagingDataPresenter$presentNewList$1.g;
            hintReceiver = pagingDataPresenter$presentNewList$1.f18885f;
            loadStates2 = pagingDataPresenter$presentNewList$1.f18884e;
            loadStates = pagingDataPresenter$presentNewList$1.d;
            list = pagingDataPresenter$presentNewList$1.f18883c;
            PagingDataPresenter pagingDataPresenter2 = pagingDataPresenter$presentNewList$1.f18882b;
            ResultKt.b(obj);
            pageStore = pageStore3;
            pagingDataPresenter = pagingDataPresenter2;
        }
        if (PagingLogger.a(3)) {
            StringBuilder sb = new StringBuilder("Presenting data (\n                            |   first item: ");
            TransformablePage transformablePage = (TransformablePage) CollectionsKt.firstOrNull(list);
            sb.append((transformablePage == null || (list3 = transformablePage.f18983b) == null) ? null : CollectionsKt.firstOrNull(list3));
            sb.append("\n                            |   last item: ");
            TransformablePage transformablePage2 = (TransformablePage) CollectionsKt.N(list);
            if (transformablePage2 != null && (list2 = transformablePage2.f18983b) != null) {
                objN = CollectionsKt.N(list2);
            }
            sb.append(objN);
            sb.append("\n                            |   placeholdersBefore: ");
            sb.append(i2);
            sb.append("\n                            |   placeholdersAfter: ");
            sb.append(i3);
            sb.append("\n                            |   hintReceiver: ");
            sb.append(hintReceiver);
            sb.append("\n                            |   sourceLoadStates: ");
            sb.append(loadStates);
            sb.append("\n                        ");
            String string = sb.toString();
            if (loadStates2 != null) {
                string = string + "|   mediatorLoadStates: " + loadStates2 + '\n';
            }
            StringsKt.c0(string.concat("|)"));
        }
        if (z) {
            MutableCombinedLoadStateCollection mutableCombinedLoadStateCollection = pagingDataPresenter.f18866e;
            loadStates.getClass();
            mutableCombinedLoadStateCollection.getClass();
            mutableCombinedLoadStateCollection.c(new MutableCombinedLoadStateCollection$set$1(mutableCombinedLoadStateCollection, loadStates, loadStates2));
        }
        if (pageStore.getSize() == 0 && (hintReceiver2 = pagingDataPresenter.f18864b) != null) {
            int i6 = pageStore.f18832b / 2;
            Integer numM = ArraysKt.M(((TransformablePage) CollectionsKt.B(pageStore.f18831a)).f18982a);
            numM.getClass();
            hintReceiver2.a(new ViewportHint.Initial(i6, i6, numM.intValue(), pageStore.f()));
        }
        return Unit.f71739a;
    }

    public final Object b(PagingData pagingData, Continuation continuation) {
        PagingDataPresenter$collectFrom$2 pagingDataPresenter$collectFrom$2 = new PagingDataPresenter$collectFrom$2(this, pagingData, null);
        int i2 = SingleRunner.f18954b;
        Object objA = this.g.a(0, pagingDataPresenter$collectFrom$2, (ContinuationImpl) continuation);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    public abstract Unit c();

    public final ItemSnapshotList d() {
        PageStore pageStore = this.d;
        int i2 = pageStore.f18833c;
        int i3 = pageStore.d;
        ArrayList arrayList = pageStore.f18831a;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList2, ((TransformablePage) it.next()).f18983b);
        }
        return new ItemSnapshotList(i2, i3, arrayList2);
    }

    public PagingDataPresenter() {
        this(null, null, 3, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PagingDataPresenter(CoroutineContext coroutineContext, PagingData pagingData, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            coroutineContext = MainDispatcherLoader.f75131a;
        }
        this(coroutineContext, (i2 & 2) != 0 ? null : pagingData);
    }
}
