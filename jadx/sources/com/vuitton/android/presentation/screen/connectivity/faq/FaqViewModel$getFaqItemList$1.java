package com.vuitton.android.presentation.screen.connectivity.faq;

import defpackage.kp;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\n"}, d2 = {"<anonymous>", "", "error", "Ljava/lang/Exception;", "Lkotlin/Exception;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.faq.FaqViewModel$getFaqItemList$1", f = "FaqViewModel.kt", l = {26}, m = "invokeSuspend", v = 2)
final class FaqViewModel$getFaqItemList$1 extends SuspendLambda implements Function2<Exception, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56000c;
    public final /* synthetic */ FaqViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaqViewModel$getFaqItemList$1(FaqViewModel faqViewModel, Continuation continuation) {
        super(2, continuation);
        this.d = faqViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        FaqViewModel$getFaqItemList$1 faqViewModel$getFaqItemList$1 = new FaqViewModel$getFaqItemList$1(this.d, continuation);
        faqViewModel$getFaqItemList$1.f56000c = obj;
        return faqViewModel$getFaqItemList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FaqViewModel$getFaqItemList$1) create((Exception) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Exception exc = (Exception) this.f56000c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55999b;
        if (i2 == 0) {
            ResultKt.b(obj);
            kp kpVar = new kp(3, exc);
            this.f56000c = null;
            this.f55999b = 1;
            int i3 = FaqViewModel.f55994f;
            if (this.d.zc(this, kpVar) == coroutineSingletons) {
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
