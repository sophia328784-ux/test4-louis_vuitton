package com.vuitton.android.presentation.screen.connectivity.faqcategory;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategoryType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesViewModel$getFaqCategoryList$2", f = "FaqCategoriesViewModel.kt", l = {24, 25}, m = "invokeSuspend", v = 2)
final class FaqCategoriesViewModel$getFaqCategoryList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FaqCategoriesViewModel f56037c;
    public final /* synthetic */ FaqCategoryType d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaqCategoriesViewModel$getFaqCategoryList$2(FaqCategoriesViewModel faqCategoriesViewModel, FaqCategoryType faqCategoryType, Continuation continuation) {
        super(2, continuation);
        this.f56037c = faqCategoriesViewModel;
        this.d = faqCategoryType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FaqCategoriesViewModel$getFaqCategoryList$2(this.f56037c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FaqCategoriesViewModel$getFaqCategoryList$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r2.zc(r5, r1) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f56036b
            com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesViewModel r2 = r5.f56037c
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1d
            if (r1 == r4) goto L19
            if (r1 != r3) goto L12
            kotlin.ResultKt.b(r6)
            goto L40
        L12:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L19:
            kotlin.ResultKt.b(r6)
            goto L2d
        L1d:
            kotlin.ResultKt.b(r6)
            com.vuitton.android.domain.usecase.connectivity.GetFaqCategoryListUseCase r6 = r2.f56033c
            r5.f56036b = r4
            com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategoryType r1 = r5.d
            java.lang.Object r6 = r6.a(r1, r5)
            if (r6 != r0) goto L2d
            goto L3f
        L2d:
            java.util.List r6 = (java.util.List) r6
            ud r1 = new ud
            r4 = 3
            r1.<init>(r6, r4)
            r5.f56036b = r3
            int r6 = com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesViewModel.f56032e
            java.lang.Object r5 = r2.zc(r5, r1)
            if (r5 != r0) goto L40
        L3f:
            return r0
        L40:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesViewModel$getFaqCategoryList$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
