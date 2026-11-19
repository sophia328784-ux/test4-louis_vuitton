package androidx.paging;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0001\u000fBE\b\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Landroidx/paging/PagingData;", "", "T", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/paging/PageEvent;", "flow", "Landroidx/paging/UiReceiver;", "uiReceiver", "Landroidx/paging/HintReceiver;", "hintReceiver", "Lkotlin/Function0;", "Landroidx/paging/PageEvent$Insert;", "cachedPageEvent", "<init>", "(Lkotlinx/coroutines/flow/Flow;Landroidx/paging/UiReceiver;Landroidx/paging/HintReceiver;Lkotlin/jvm/functions/Function0;)V", "Companion", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PagingData<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f18842e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final PagingData$Companion$NOOP_UI_RECEIVER$1 f18843f = new PagingData$Companion$NOOP_UI_RECEIVER$1();
    public static final PagingData$Companion$NOOP_HINT_RECEIVER$1 g = new PagingData$Companion$NOOP_HINT_RECEIVER$1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Flow f18844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UiReceiver f18845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HintReceiver f18846c;
    public final Function0 d;

    /* JADX INFO: renamed from: androidx.paging.PagingData$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "T", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class AnonymousClass1 extends Lambda implements Function0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f18847c = new AnonymousClass1(0);

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final /* bridge */ /* synthetic */ Object mo47invoke() {
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/paging/PagingData$Companion;", "", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static PagingData a(final List list) {
            return new PagingData(new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(new PageEvent.StaticList(list, null, null)), PagingData.f18843f, PagingData.g, new Function0<PageEvent.Insert<Object>>() { // from class: androidx.paging.PagingData$Companion$from$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    PageEvent.Insert.Companion companion = PageEvent.Insert.g;
                    List listO = CollectionsKt.O(new TransformablePage(0, list));
                    LoadStates.f18638f.getClass();
                    LoadStates loadStates = LoadStates.g;
                    companion.getClass();
                    return PageEvent.Insert.Companion.a(listO, 0, 0, loadStates, null);
                }
            });
        }
    }

    public PagingData(Flow<? extends PageEvent<T>> flow, UiReceiver uiReceiver, HintReceiver hintReceiver, Function0<PageEvent.Insert<T>> function0) {
        flow.getClass();
        uiReceiver.getClass();
        hintReceiver.getClass();
        function0.getClass();
        this.f18844a = flow;
        this.f18845b = uiReceiver;
        this.f18846c = hintReceiver;
        this.d = function0;
    }

    public /* synthetic */ PagingData(Flow flow, UiReceiver uiReceiver, HintReceiver hintReceiver, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(flow, uiReceiver, hintReceiver, (i2 & 8) != 0 ? AnonymousClass1.f18847c : function0);
    }
}
