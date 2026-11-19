package com.vuitton.android.presentation.screen.thankyou;

import com.vuitton.android.domain.usecase.cart.SendCheckoutFeedbackUseCase;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouTrackingUiModel;
import com.vuitton.foundation.model.domain.model.cart.CheckoutFeedback;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl$submitFeedback$1", f = "ThankYouViewModelImpl.kt", l = {192}, m = "invokeSuspend", v = 2)
final class ThankYouViewModelImpl$submitFeedback$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThankYouViewModelImpl f65230c;
    public final /* synthetic */ ThankYouFeedbackUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThankYouViewModelImpl$submitFeedback$1(ThankYouViewModelImpl thankYouViewModelImpl, ThankYouFeedbackUiModel thankYouFeedbackUiModel, Continuation continuation) {
        super(2, continuation);
        this.f65230c = thankYouViewModelImpl;
        this.d = thankYouFeedbackUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThankYouViewModelImpl$submitFeedback$1(this.f65230c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThankYouViewModelImpl$submitFeedback$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ThankYouFeedbackUiModel thankYouFeedbackUiModel = this.d;
        Integer num = thankYouFeedbackUiModel.f65285a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65229b;
        if (i2 == 0) {
            ResultKt.b(obj);
            ThankYouTrackingUiModel.SubmitFeedback submitFeedback = new ThankYouTrackingUiModel.SubmitFeedback(num);
            ThankYouViewModelImpl thankYouViewModelImpl = this.f65230c;
            thankYouViewModelImpl.Ba(submitFeedback);
            SendCheckoutFeedbackUseCase sendCheckoutFeedbackUseCase = thankYouViewModelImpl.f65203h;
            String str = thankYouFeedbackUiModel.f65286b;
            CheckoutFeedback checkoutFeedback = new CheckoutFeedback(num, StringsKt.w(str) ? null : str);
            this.f65229b = 1;
            if (sendCheckoutFeedbackUseCase.a(checkoutFeedback, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }
}
