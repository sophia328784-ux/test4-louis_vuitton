package com.vuitton.android.data.datasource.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.api.bff.publication.PublicationCartApi;
import com.vuitton.android.data.api.bff.user.CartApi;
import com.vuitton.android.data.datasource.cart.CartErrorMapperKt;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutConfirmationDetailDto;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.mapper.CheckoutConfirmationMapperKt;
import com.vuitton.android.data.dto.account.orders.CheckoutSurveyBodyDto;
import com.vuitton.android.data.dto.cart.bff.CartContributionDto;
import com.vuitton.android.data.dto.cart.bff.PrepareOrderDto;
import com.vuitton.android.data.dto.cart.bff.mapper.CartContributionMapperKt;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.cart.CheckoutFeedback;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;", "", "Lcom/vuitton/android/data/api/bff/user/CartApi;", "cartApi", "Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;", "publicationCartApi", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutinesDispatchers", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/data/api/bff/user/CartApi;Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CartDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartApi f43884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PublicationCartApi f43885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f43886c;
    public final Json d;

    @Inject
    public CartDataSource(CartApi cartApi, PublicationCartApi publicationCartApi, CoroutineDispatchers coroutineDispatchers, Json json) {
        cartApi.getClass();
        publicationCartApi.getClass();
        coroutineDispatchers.getClass();
        json.getClass();
        this.f43884a = cartApi;
        this.f43885b = publicationCartApi;
        this.f43886c = coroutineDispatchers;
        this.d = json;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(GiftOption giftOption, ContinuationImpl continuationImpl, boolean z) throws Throwable {
        CartDataSource$addGiftMessage$1 cartDataSource$addGiftMessage$1;
        if (continuationImpl instanceof CartDataSource$addGiftMessage$1) {
            cartDataSource$addGiftMessage$1 = (CartDataSource$addGiftMessage$1) continuationImpl;
            int i2 = cartDataSource$addGiftMessage$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$addGiftMessage$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$addGiftMessage$1 = new CartDataSource$addGiftMessage$1(this, continuationImpl);
            }
        } else {
            cartDataSource$addGiftMessage$1 = new CartDataSource$addGiftMessage$1(this, continuationImpl);
        }
        Object objF = cartDataSource$addGiftMessage$1.f43887b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$addGiftMessage$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43886c.getF43530b();
            CartDataSource$addGiftMessage$2 cartDataSource$addGiftMessage$2 = new CartDataSource$addGiftMessage$2(this, giftOption, z, null);
            cartDataSource$addGiftMessage$1.d = 1;
            objF = BuildersKt.f(f43530b, cartDataSource$addGiftMessage$2, cartDataSource$addGiftMessage$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, List list, ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$addToCart$1 cartDataSource$addToCart$1;
        if (continuationImpl instanceof CartDataSource$addToCart$1) {
            cartDataSource$addToCart$1 = (CartDataSource$addToCart$1) continuationImpl;
            int i2 = cartDataSource$addToCart$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$addToCart$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$addToCart$1 = new CartDataSource$addToCart$1(this, continuationImpl);
            }
        } else {
            cartDataSource$addToCart$1 = new CartDataSource$addToCart$1(this, continuationImpl);
        }
        Object objF = cartDataSource$addToCart$1.f43892b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$addToCart$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43886c.getF43530b();
            CartDataSource$addToCart$2 cartDataSource$addToCart$2 = new CartDataSource$addToCart$2(this, list, str, null);
            cartDataSource$addToCart$1.d = 1;
            objF = BuildersKt.f(f43530b, cartDataSource$addToCart$2, cartDataSource$addToCart$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(List list, boolean z, GiftOption giftOption, ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$chooseSamples$1 cartDataSource$chooseSamples$1;
        if (continuationImpl instanceof CartDataSource$chooseSamples$1) {
            cartDataSource$chooseSamples$1 = (CartDataSource$chooseSamples$1) continuationImpl;
            int i2 = cartDataSource$chooseSamples$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$chooseSamples$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$chooseSamples$1 = new CartDataSource$chooseSamples$1(this, continuationImpl);
            }
        } else {
            cartDataSource$chooseSamples$1 = new CartDataSource$chooseSamples$1(this, continuationImpl);
        }
        Object objF = cartDataSource$chooseSamples$1.f43897b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$chooseSamples$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43886c.getF43530b();
            CartDataSource$chooseSamples$2 cartDataSource$chooseSamples$2 = new CartDataSource$chooseSamples$2(this, giftOption, z, list, null);
            cartDataSource$chooseSamples$1.d = 1;
            objF = BuildersKt.f(f43530b, cartDataSource$chooseSamples$2, cartDataSource$chooseSamples$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$getCart$1 cartDataSource$getCart$1;
        if (continuationImpl instanceof CartDataSource$getCart$1) {
            cartDataSource$getCart$1 = (CartDataSource$getCart$1) continuationImpl;
            int i2 = cartDataSource$getCart$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$getCart$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$getCart$1 = new CartDataSource$getCart$1(this, continuationImpl);
            }
        } else {
            cartDataSource$getCart$1 = new CartDataSource$getCart$1(this, continuationImpl);
        }
        Object objF = cartDataSource$getCart$1.f43903b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$getCart$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43886c.getF43530b();
            CartDataSource$getCart$2 cartDataSource$getCart$2 = new CartDataSource$getCart$2(this, null);
            cartDataSource$getCart$1.d = 1;
            objF = BuildersKt.f(f43530b, cartDataSource$getCart$2, cartDataSource$getCart$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$getCartContribution$1 cartDataSource$getCartContribution$1;
        Object failure;
        if (continuationImpl instanceof CartDataSource$getCartContribution$1) {
            cartDataSource$getCartContribution$1 = (CartDataSource$getCartContribution$1) continuationImpl;
            int i2 = cartDataSource$getCartContribution$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$getCartContribution$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$getCartContribution$1 = new CartDataSource$getCartContribution$1(this, continuationImpl);
            }
        } else {
            cartDataSource$getCartContribution$1 = new CartDataSource$getCartContribution$1(this, continuationImpl);
        }
        Object cartContribution = cartDataSource$getCartContribution$1.f43907b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$getCartContribution$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(cartContribution);
                Result.Companion companion = Result.INSTANCE;
                PublicationCartApi publicationCartApi = this.f43885b;
                cartDataSource$getCartContribution$1.d = 1;
                cartContribution = publicationCartApi.getCartContribution(cartDataSource$getCartContribution$1);
                if (cartContribution == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(cartContribution);
            }
            failure = new Result(CartContributionMapperKt.a((CartContributionDto) cartContribution));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 != null) {
            LegacyLogger.f66205a.c("CartContribution", "Error when fetching cart contribution", thA2);
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$getCartCount$1 cartDataSource$getCartCount$1;
        if (continuationImpl instanceof CartDataSource$getCartCount$1) {
            cartDataSource$getCartCount$1 = (CartDataSource$getCartCount$1) continuationImpl;
            int i2 = cartDataSource$getCartCount$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$getCartCount$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$getCartCount$1 = new CartDataSource$getCartCount$1(this, continuationImpl);
            }
        } else {
            cartDataSource$getCartCount$1 = new CartDataSource$getCartCount$1(this, continuationImpl);
        }
        Object objF = cartDataSource$getCartCount$1.f43909b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$getCartCount$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43886c.getF43530b();
            CartDataSource$getCartCount$2 cartDataSource$getCartCount$2 = new CartDataSource$getCartCount$2(this, null);
            cartDataSource$getCartCount$1.d = 1;
            objF = BuildersKt.f(f43530b, cartDataSource$getCartCount$2, cartDataSource$getCartCount$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$getConfirmationDetails$1 cartDataSource$getConfirmationDetails$1;
        Object failure;
        if (continuationImpl instanceof CartDataSource$getConfirmationDetails$1) {
            cartDataSource$getConfirmationDetails$1 = (CartDataSource$getConfirmationDetails$1) continuationImpl;
            int i2 = cartDataSource$getConfirmationDetails$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$getConfirmationDetails$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$getConfirmationDetails$1 = new CartDataSource$getConfirmationDetails$1(this, continuationImpl);
            }
        } else {
            cartDataSource$getConfirmationDetails$1 = new CartDataSource$getConfirmationDetails$1(this, continuationImpl);
        }
        Object confirmationDetails = cartDataSource$getConfirmationDetails$1.f43913b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$getConfirmationDetails$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(confirmationDetails);
                Result.Companion companion = Result.INSTANCE;
                CartApi cartApi = this.f43884a;
                cartDataSource$getConfirmationDetails$1.d = 1;
                confirmationDetails = cartApi.getConfirmationDetails(cartDataSource$getConfirmationDetails$1);
                if (confirmationDetails == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(confirmationDetails);
            }
            failure = new Result(CheckoutConfirmationMapperKt.a((CheckoutConfirmationDetailDto) confirmationDetails));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$prepareOrder$1 cartDataSource$prepareOrder$1;
        Object failure;
        if (continuationImpl instanceof CartDataSource$prepareOrder$1) {
            cartDataSource$prepareOrder$1 = (CartDataSource$prepareOrder$1) continuationImpl;
            int i2 = cartDataSource$prepareOrder$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$prepareOrder$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$prepareOrder$1 = new CartDataSource$prepareOrder$1(this, continuationImpl);
            }
        } else {
            cartDataSource$prepareOrder$1 = new CartDataSource$prepareOrder$1(this, continuationImpl);
        }
        Object objPrepareOrder = cartDataSource$prepareOrder$1.f43915b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$prepareOrder$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objPrepareOrder);
                Result.Companion companion = Result.INSTANCE;
                CartApi cartApi = this.f43884a;
                cartDataSource$prepareOrder$1.d = 1;
                objPrepareOrder = cartApi.prepareOrder(cartDataSource$prepareOrder$1);
                if (objPrepareOrder == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objPrepareOrder);
            }
            failure = new Result((PrepareOrderDto) objPrepareOrder);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 == null) {
            return obj;
        }
        throw CartErrorMapperKt.a(this.d, thA2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(String str, ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$removeItemFromCart$1 cartDataSource$removeItemFromCart$1;
        if (continuationImpl instanceof CartDataSource$removeItemFromCart$1) {
            cartDataSource$removeItemFromCart$1 = (CartDataSource$removeItemFromCart$1) continuationImpl;
            int i2 = cartDataSource$removeItemFromCart$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$removeItemFromCart$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$removeItemFromCart$1 = new CartDataSource$removeItemFromCart$1(this, continuationImpl);
            }
        } else {
            cartDataSource$removeItemFromCart$1 = new CartDataSource$removeItemFromCart$1(this, continuationImpl);
        }
        Object objF = cartDataSource$removeItemFromCart$1.f43917b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$removeItemFromCart$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43886c.getF43530b();
            CartDataSource$removeItemFromCart$2 cartDataSource$removeItemFromCart$2 = new CartDataSource$removeItemFromCart$2(this, str, null);
            cartDataSource$removeItemFromCart$1.d = 1;
            objF = BuildersKt.f(f43530b, cartDataSource$removeItemFromCart$2, cartDataSource$removeItemFromCart$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    public final Object j(SuspendLambda suspendLambda) throws Throwable {
        Object objF = BuildersKt.f(this.f43886c.getF43530b(), new CartDataSource$resetCartContainer$2(this, null), suspendLambda);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object k(CheckoutFeedback checkoutFeedback, String str, ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$sendCheckoutFeedback$1 cartDataSource$sendCheckoutFeedback$1;
        Object failure;
        if (continuationImpl instanceof CartDataSource$sendCheckoutFeedback$1) {
            cartDataSource$sendCheckoutFeedback$1 = (CartDataSource$sendCheckoutFeedback$1) continuationImpl;
            int i2 = cartDataSource$sendCheckoutFeedback$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$sendCheckoutFeedback$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$sendCheckoutFeedback$1 = new CartDataSource$sendCheckoutFeedback$1(this, continuationImpl);
            }
        } else {
            cartDataSource$sendCheckoutFeedback$1 = new CartDataSource$sendCheckoutFeedback$1(this, continuationImpl);
        }
        Object obj = cartDataSource$sendCheckoutFeedback$1.f43923b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$sendCheckoutFeedback$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                CartApi cartApi = this.f43884a;
                CheckoutSurveyBodyDto checkoutSurveyBodyDto = new CheckoutSurveyBodyDto(checkoutFeedback.f66939a, checkoutFeedback.f66940b, str);
                cartDataSource$sendCheckoutFeedback$1.d = 1;
                if (cartApi.sendCheckoutSurvey(checkoutSurveyBodyDto, cartDataSource$sendCheckoutFeedback$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object l(String str, String str2, int i2, ContinuationImpl continuationImpl) throws Throwable {
        CartDataSource$updateItemQuantity$1 cartDataSource$updateItemQuantity$1;
        if (continuationImpl instanceof CartDataSource$updateItemQuantity$1) {
            cartDataSource$updateItemQuantity$1 = (CartDataSource$updateItemQuantity$1) continuationImpl;
            int i3 = cartDataSource$updateItemQuantity$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                cartDataSource$updateItemQuantity$1.d = i3 - Integer.MIN_VALUE;
            } else {
                cartDataSource$updateItemQuantity$1 = new CartDataSource$updateItemQuantity$1(this, continuationImpl);
            }
        } else {
            cartDataSource$updateItemQuantity$1 = new CartDataSource$updateItemQuantity$1(this, continuationImpl);
        }
        Object objF = cartDataSource$updateItemQuantity$1.f43925b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = cartDataSource$updateItemQuantity$1.d;
        if (i4 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43886c.getF43530b();
            CartDataSource$updateItemQuantity$2 cartDataSource$updateItemQuantity$2 = new CartDataSource$updateItemQuantity$2(this, str, str2, i2, null);
            cartDataSource$updateItemQuantity$1.d = 1;
            objF = BuildersKt.f(f43530b, cartDataSource$updateItemQuantity$2, cartDataSource$updateItemQuantity$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i4 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object m(GiftOption giftOption, ContinuationImpl continuationImpl, boolean z) throws Throwable {
        CartDataSource$updateShoppingBag$1 cartDataSource$updateShoppingBag$1;
        if (continuationImpl instanceof CartDataSource$updateShoppingBag$1) {
            cartDataSource$updateShoppingBag$1 = (CartDataSource$updateShoppingBag$1) continuationImpl;
            int i2 = cartDataSource$updateShoppingBag$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartDataSource$updateShoppingBag$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartDataSource$updateShoppingBag$1 = new CartDataSource$updateShoppingBag$1(this, continuationImpl);
            }
        } else {
            cartDataSource$updateShoppingBag$1 = new CartDataSource$updateShoppingBag$1(this, continuationImpl);
        }
        Object objF = cartDataSource$updateShoppingBag$1.f43931b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartDataSource$updateShoppingBag$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43886c.getF43530b();
            CartDataSource$updateShoppingBag$2 cartDataSource$updateShoppingBag$2 = new CartDataSource$updateShoppingBag$2(this, giftOption, z, null);
            cartDataSource$updateShoppingBag$1.d = 1;
            objF = BuildersKt.f(f43530b, cartDataSource$updateShoppingBag$2, cartDataSource$updateShoppingBag$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }
}
