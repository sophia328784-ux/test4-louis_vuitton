package com.vuitton.android.presentation.screen.connectivity.faq;

import com.vuitton.android.domain.usecase.connectivity.GetFaqItemListUseCase;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.faq.FaqViewModel$getFaqItemList$2", f = "FaqViewModel.kt", l = {29}, m = "invokeSuspend", v = 2)
final class FaqViewModel$getFaqItemList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FaqViewModel f56002c;
    public final /* synthetic */ FaqType d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaqViewModel$getFaqItemList$2(FaqViewModel faqViewModel, FaqType faqType, Continuation continuation) {
        super(2, continuation);
        this.f56002c = faqViewModel;
        this.d = faqType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FaqViewModel$getFaqItemList$2(this.f56002c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FaqViewModel$getFaqItemList$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56001b;
        FaqViewModel faqViewModel = this.f56002c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetFaqItemListUseCase getFaqItemListUseCase = faqViewModel.f55995c;
            this.f56001b = 1;
            obj = getFaqItemListUseCase.a(this.d, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        list.getClass();
        LVViewModel.Bc(faqViewModel, null, new FaqViewModel$displayItemList$1(faqViewModel, list, null), 3);
        return Unit.f71739a;
    }
}
