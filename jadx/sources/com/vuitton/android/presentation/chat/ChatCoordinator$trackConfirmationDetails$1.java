package com.vuitton.android.presentation.chat;

import com.vuitton.android.domain.usecase.chat.ChatTrackerUseCase;
import com.vuitton.foundation.model.domain.model.cart.CartPrice;
import com.vuitton.foundation.model.domain.model.cart.CheckoutConfirmationDetail;
import com.vuitton.foundation.model.domain.model.cart.CheckoutItem;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import java.math.BigDecimal;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.chat.ChatCoordinator$trackConfirmationDetails$1", f = "ChatCoordinator.kt", l = {}, m = "invokeSuspend", v = 2)
final class ChatCoordinator$trackConfirmationDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CheckoutConfirmationDetail f50687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChatCoordinator f50688c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatCoordinator$trackConfirmationDetails$1(CheckoutConfirmationDetail checkoutConfirmationDetail, ChatCoordinator chatCoordinator, Continuation continuation) {
        super(2, continuation);
        this.f50687b = checkoutConfirmationDetail;
        this.f50688c = chatCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ChatCoordinator$trackConfirmationDetails$1(this.f50687b, this.f50688c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ChatCoordinator$trackConfirmationDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CheckoutConfirmationDetail checkoutConfirmationDetail = this.f50687b;
        int i2 = (int) checkoutConfirmationDetail.f66935h.f66919c.f66914a;
        ChatCoordinator chatCoordinator = this.f50688c;
        ChatTrackerUseCase chatTrackerUseCase = chatCoordinator.f50682h;
        ChatTrackerUseCase chatTrackerUseCase2 = chatCoordinator.f50682h;
        chatTrackerUseCase.f49645a.z();
        for (CheckoutItem checkoutItem : checkoutConfirmationDetail.g) {
            checkoutItem.getClass();
            String str = checkoutItem.f66942b;
            String str2 = checkoutItem.d.f67907a;
            CartPrice cartPrice = checkoutItem.f66944e;
            ChatProductModel chatProductModel = new ChatProductModel(str, str2, "", new BigDecimal(String.valueOf(cartPrice.f66914a)), null, checkoutItem.f66941a, checkoutItem.f66943c, cartPrice.f66916c, null);
            chatTrackerUseCase2.getClass();
            chatTrackerUseCase2.f49645a.I(chatProductModel, i2);
        }
        String str3 = checkoutConfirmationDetail.f66930a;
        chatTrackerUseCase2.getClass();
        str3.getClass();
        chatTrackerUseCase2.f49645a.k(str3);
        return Unit.f71739a;
    }
}
