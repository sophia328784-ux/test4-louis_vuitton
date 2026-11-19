package androidx.paging.compose;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.compose.LazyPagingItemsKt$collectAsLazyPagingItems$2$1", f = "LazyPagingItems.kt", l = {220, 222}, m = "invokeSuspend")
final class LazyPagingItemsKt$collectAsLazyPagingItems$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f19012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoroutineContext f19013c;
    public final /* synthetic */ LazyPagingItems d;

    /* JADX INFO: renamed from: androidx.paging.compose.LazyPagingItemsKt$collectAsLazyPagingItems$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.paging.compose.LazyPagingItemsKt$collectAsLazyPagingItems$2$1$1", f = "LazyPagingItems.kt", l = {223}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19014b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LazyPagingItems f19015c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LazyPagingItems lazyPagingItems, Continuation continuation) {
            super(2, continuation);
            this.f19015c = lazyPagingItems;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f19015c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f19014b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f19014b = 1;
                LazyPagingItems lazyPagingItems = this.f19015c;
                Object objF = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(lazyPagingItems.f19002c.f18871k).f(new LazyPagingItems$collectLoadState$2(lazyPagingItems), this);
                if (objF != coroutineSingletons) {
                    objF = Unit.f71739a;
                }
                if (objF == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyPagingItemsKt$collectAsLazyPagingItems$2$1(CoroutineContext coroutineContext, LazyPagingItems lazyPagingItems, Continuation continuation) {
        super(2, continuation);
        this.f19013c = coroutineContext;
        this.d = lazyPagingItems;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LazyPagingItemsKt$collectAsLazyPagingItems$2$1(this.f19013c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LazyPagingItemsKt$collectAsLazyPagingItems$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
    
        if (r6 == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        if (kotlinx.coroutines.BuildersKt.f(r1, r7, r6) == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0050, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f19012b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L18
            if (r1 == r4) goto L14
            if (r1 != r3) goto Le
            goto L14
        Le:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L14:
            kotlin.ResultKt.b(r7)
            goto L51
        L18:
            kotlin.ResultKt.b(r7)
            kotlin.coroutines.EmptyCoroutineContext r7 = kotlin.coroutines.EmptyCoroutineContext.f71840b
            kotlin.coroutines.CoroutineContext r1 = r6.f19013c
            boolean r7 = kotlin.jvm.internal.Intrinsics.c(r1, r7)
            androidx.paging.compose.LazyPagingItems r5 = r6.d
            if (r7 == 0) goto L43
            r6.f19012b = r4
            androidx.paging.compose.LazyPagingItems$pagingDataPresenter$1 r7 = r5.f19002c
            kotlinx.coroutines.flow.StateFlow r7 = r7.f18871k
            kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 r1 = new kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1
            r1.<init>(r7)
            androidx.paging.compose.LazyPagingItems$collectLoadState$2 r7 = new androidx.paging.compose.LazyPagingItems$collectLoadState$2
            r7.<init>(r5)
            java.lang.Object r6 = r1.f(r7, r6)
            if (r6 != r0) goto L3e
            goto L40
        L3e:
            kotlin.Unit r6 = kotlin.Unit.f71739a
        L40:
            if (r6 != r0) goto L51
            goto L50
        L43:
            androidx.paging.compose.LazyPagingItemsKt$collectAsLazyPagingItems$2$1$1 r7 = new androidx.paging.compose.LazyPagingItemsKt$collectAsLazyPagingItems$2$1$1
            r7.<init>(r5, r2)
            r6.f19012b = r3
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.f(r1, r7, r6)
            if (r6 != r0) goto L51
        L50:
            return r0
        L51:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.compose.LazyPagingItemsKt$collectAsLazyPagingItems$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
