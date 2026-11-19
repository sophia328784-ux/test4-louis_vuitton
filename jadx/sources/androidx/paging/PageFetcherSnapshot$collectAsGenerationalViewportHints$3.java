package androidx.paging;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "Landroidx/paging/GenerationalViewportHint;", "Key", "", "Value", "previous", "next"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$3", f = "PageFetcherSnapshot.kt", l = {}, m = "invokeSuspend")
final class PageFetcherSnapshot$collectAsGenerationalViewportHints$3 extends SuspendLambda implements Function3<GenerationalViewportHint, GenerationalViewportHint, Continuation<? super GenerationalViewportHint>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ GenerationalViewportHint f18746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ GenerationalViewportHint f18747c;
    public final /* synthetic */ LoadType d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$collectAsGenerationalViewportHints$3(LoadType loadType, Continuation continuation) {
        super(3, continuation);
        this.d = loadType;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        PageFetcherSnapshot$collectAsGenerationalViewportHints$3 pageFetcherSnapshot$collectAsGenerationalViewportHints$3 = new PageFetcherSnapshot$collectAsGenerationalViewportHints$3(this.d, (Continuation) obj3);
        pageFetcherSnapshot$collectAsGenerationalViewportHints$3.f18746b = (GenerationalViewportHint) obj;
        pageFetcherSnapshot$collectAsGenerationalViewportHints$3.f18747c = (GenerationalViewportHint) obj2;
        return pageFetcherSnapshot$collectAsGenerationalViewportHints$3.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean zA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        GenerationalViewportHint generationalViewportHint = this.f18746b;
        GenerationalViewportHint generationalViewportHint2 = this.f18747c;
        generationalViewportHint2.getClass();
        generationalViewportHint.getClass();
        LoadType loadType = this.d;
        loadType.getClass();
        int i2 = generationalViewportHint2.f18616a;
        int i3 = generationalViewportHint.f18616a;
        if (i2 > i3) {
            zA = true;
        } else {
            zA = i2 < i3 ? false : HintHandlerKt.a(generationalViewportHint2.f18617b, generationalViewportHint.f18617b, loadType);
        }
        return zA ? generationalViewportHint2 : generationalViewportHint;
    }
}
