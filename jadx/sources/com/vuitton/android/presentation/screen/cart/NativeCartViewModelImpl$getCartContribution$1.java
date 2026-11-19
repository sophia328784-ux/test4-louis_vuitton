package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.domain.usecase.cart.GetCartContributionUseCase;
import com.vuitton.android.presentation.screen.cart.models.CartContributionUiModel;
import com.vuitton.android.presentation.screen.cart.models.ContributionGiftingUiModel;
import com.vuitton.android.presentation.screen.cart.models.ContributionPackagingUiModel;
import com.vuitton.android.presentation.screen.cart.models.ContributionShoppingBagUiModel;
import com.vuitton.foundation.model.domain.model.cart.CartContribution;
import com.vuitton.foundation.model.domain.model.cart.GiftingContribution;
import com.vuitton.foundation.model.domain.model.cart.PackagingContribution;
import com.vuitton.foundation.model.domain.model.cart.ShoppingBagContribution;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$getCartContribution$1", f = "NativeCartViewModelImpl.kt", l = {1029}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$getCartContribution$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54900c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$getCartContribution$1(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
        super(2, continuation);
        this.f54900c = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$getCartContribution$1(continuation, this.f54900c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$getCartContribution$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        NativeCartViewModelImpl nativeCartViewModelImpl = this.f54900c;
        MutableStateFlow mutableStateFlow = nativeCartViewModelImpl.N;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54899b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            GetCartContributionUseCase getCartContributionUseCase = nativeCartViewModelImpl.s;
            this.f54899b = 1;
            objA = getCartContributionUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            CartContribution cartContribution = (CartContribution) objA;
            MutableStateFlow mutableStateFlow2 = nativeCartViewModelImpl.Y;
            cartContribution.getClass();
            GiftingContribution giftingContribution = cartContribution.f66902a;
            giftingContribution.getClass();
            String str = giftingContribution.f66981a;
            if (str == null) {
                str = "";
            }
            String str2 = giftingContribution.f66982b;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = giftingContribution.f66983c;
            if (str3 == null) {
                str3 = "";
            }
            ContributionGiftingUiModel contributionGiftingUiModel = new ContributionGiftingUiModel(str, str2, str3);
            ShoppingBagContribution shoppingBagContribution = cartContribution.f66903b;
            shoppingBagContribution.getClass();
            String str4 = shoppingBagContribution.f67001a;
            if (str4 == null) {
                str4 = "";
            }
            String str5 = shoppingBagContribution.f67002b;
            if (str5 == null) {
                str5 = "";
            }
            String str6 = shoppingBagContribution.f67003c;
            if (str6 == null) {
                str6 = "";
            }
            ContributionShoppingBagUiModel contributionShoppingBagUiModel = new ContributionShoppingBagUiModel(str4, str5, str6);
            PackagingContribution packagingContribution = cartContribution.f66904c;
            packagingContribution.getClass();
            String str7 = packagingContribution.f66984a;
            if (str7 == null) {
                str7 = "";
            }
            String str8 = packagingContribution.f66985b;
            if (str8 == null) {
                str8 = "";
            }
            String str9 = packagingContribution.f66986c;
            if (str9 == null) {
                str9 = "";
            }
            String str10 = packagingContribution.d;
            mutableStateFlow2.setValue(new CartContributionUiModel(contributionGiftingUiModel, contributionShoppingBagUiModel, new ContributionPackagingUiModel(str7, str8, str9, str10 != null ? str10 : "")));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            nativeCartViewModelImpl.f54871a.c("NativeCartViewModelImpl", "Unable to get cart contribution", thA);
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
