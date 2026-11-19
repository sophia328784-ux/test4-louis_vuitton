package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.analytic.DeviceIdLocalDataSource;
import com.vuitton.android.data.datasource.cart.bff.CartDataSource;
import com.vuitton.android.data.datasource.cart.legacy.CartLegacyDataSource;
import com.vuitton.android.data.datasource.cart.twist.CartTwistDataSource;
import com.vuitton.android.data.dto.cart.bff.PrepareOrderDto;
import com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy;
import com.vuitton.android.domain.repository.CartRepository;
import com.vuitton.foundation.model.domain.model.cart.CheckoutFeedback;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import com.vuitton.foundation.model.domain.model.cart.PrepareOrder;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/repository/CartRepositoryImpl;", "Lcom/vuitton/android/domain/repository/CartRepository;", "Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;", "cartDataSource", "Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;", "cartTwistDataSource", "Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;", "cartLegacyDataSource", "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;", "deviceIdLocalDataSource", "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;", "cookieManager", "<init>", "(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CartRepositoryImpl implements CartRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartDataSource f47467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartTwistDataSource f47468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartLegacyDataSource f47469c;
    public final DeviceIdLocalDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WebkitCookieManagerProxy f47470e;

    @Inject
    public CartRepositoryImpl(CartDataSource cartDataSource, CartTwistDataSource cartTwistDataSource, CartLegacyDataSource cartLegacyDataSource, DeviceIdLocalDataSource deviceIdLocalDataSource, WebkitCookieManagerProxy webkitCookieManagerProxy) {
        cartDataSource.getClass();
        cartTwistDataSource.getClass();
        cartLegacyDataSource.getClass();
        deviceIdLocalDataSource.getClass();
        webkitCookieManagerProxy.getClass();
        this.f47467a = cartDataSource;
        this.f47468b = cartTwistDataSource;
        this.f47469c = cartLegacyDataSource;
        this.d = deviceIdLocalDataSource;
        this.f47470e = webkitCookieManagerProxy;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$getCart$1 cartRepositoryImpl$getCart$1;
        if (continuationImpl instanceof CartRepositoryImpl$getCart$1) {
            cartRepositoryImpl$getCart$1 = (CartRepositoryImpl$getCart$1) continuationImpl;
            int i2 = cartRepositoryImpl$getCart$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$getCart$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$getCart$1 = new CartRepositoryImpl$getCart$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$getCart$1 = new CartRepositoryImpl$getCart$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$getCart$1.f47477b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$getCart$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$getCart$1.d = 1;
            Object objD = this.f47467a.d(cartRepositoryImpl$getCart$1);
            return objD == coroutineSingletons ? coroutineSingletons : objD;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$getCartContribution$1 cartRepositoryImpl$getCartContribution$1;
        if (continuationImpl instanceof CartRepositoryImpl$getCartContribution$1) {
            cartRepositoryImpl$getCartContribution$1 = (CartRepositoryImpl$getCartContribution$1) continuationImpl;
            int i2 = cartRepositoryImpl$getCartContribution$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$getCartContribution$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$getCartContribution$1 = new CartRepositoryImpl$getCartContribution$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$getCartContribution$1 = new CartRepositoryImpl$getCartContribution$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$getCartContribution$1.f47479b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$getCartContribution$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$getCartContribution$1.d = 1;
            Object objE = this.f47467a.e(cartRepositoryImpl$getCartContribution$1);
            return objE == coroutineSingletons ? coroutineSingletons : objE;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object c(List list, boolean z, GiftOption giftOption, ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$chooseSamples$1 cartRepositoryImpl$chooseSamples$1;
        if (continuationImpl instanceof CartRepositoryImpl$chooseSamples$1) {
            cartRepositoryImpl$chooseSamples$1 = (CartRepositoryImpl$chooseSamples$1) continuationImpl;
            int i2 = cartRepositoryImpl$chooseSamples$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$chooseSamples$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$chooseSamples$1 = new CartRepositoryImpl$chooseSamples$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$chooseSamples$1 = new CartRepositoryImpl$chooseSamples$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$chooseSamples$1.f47475b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$chooseSamples$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$chooseSamples$1.d = 1;
            Object objC = this.f47467a.c(list, z, giftOption, cartRepositoryImpl$chooseSamples$1);
            return objC == coroutineSingletons ? coroutineSingletons : objC;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object d(SuspendLambda suspendLambda) throws Throwable {
        Object objJ = this.f47467a.j(suspendLambda);
        return objJ == CoroutineSingletons.COROUTINE_SUSPENDED ? objJ : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object e(ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$prepareOrder$1 cartRepositoryImpl$prepareOrder$1;
        Object objH;
        if (continuationImpl instanceof CartRepositoryImpl$prepareOrder$1) {
            cartRepositoryImpl$prepareOrder$1 = (CartRepositoryImpl$prepareOrder$1) continuationImpl;
            int i2 = cartRepositoryImpl$prepareOrder$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$prepareOrder$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$prepareOrder$1 = new CartRepositoryImpl$prepareOrder$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$prepareOrder$1 = new CartRepositoryImpl$prepareOrder$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$prepareOrder$1.f47487b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$prepareOrder$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$prepareOrder$1.d = 1;
            objH = this.f47467a.h(cartRepositoryImpl$prepareOrder$1);
            if (objH == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objH = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objH instanceof Result.Failure) {
            return objH;
        }
        PrepareOrderDto prepareOrderDto = (PrepareOrderDto) objH;
        prepareOrderDto.getClass();
        Boolean bool = prepareOrderDto.f45059a;
        return new PrepareOrder(bool != null ? bool.booleanValue() : false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object f(GiftOption giftOption, ContinuationImpl continuationImpl, boolean z) throws Throwable {
        CartRepositoryImpl$updateShoppingBag$1 cartRepositoryImpl$updateShoppingBag$1;
        if (continuationImpl instanceof CartRepositoryImpl$updateShoppingBag$1) {
            cartRepositoryImpl$updateShoppingBag$1 = (CartRepositoryImpl$updateShoppingBag$1) continuationImpl;
            int i2 = cartRepositoryImpl$updateShoppingBag$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$updateShoppingBag$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$updateShoppingBag$1 = new CartRepositoryImpl$updateShoppingBag$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$updateShoppingBag$1 = new CartRepositoryImpl$updateShoppingBag$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$updateShoppingBag$1.f47497b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$updateShoppingBag$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$updateShoppingBag$1.d = 1;
            Object objM = this.f47467a.m(giftOption, cartRepositoryImpl$updateShoppingBag$1, z);
            return objM == coroutineSingletons ? coroutineSingletons : objM;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object g(GiftOption giftOption, ContinuationImpl continuationImpl, boolean z) throws Throwable {
        CartRepositoryImpl$addGiftMessage$1 cartRepositoryImpl$addGiftMessage$1;
        if (continuationImpl instanceof CartRepositoryImpl$addGiftMessage$1) {
            cartRepositoryImpl$addGiftMessage$1 = (CartRepositoryImpl$addGiftMessage$1) continuationImpl;
            int i2 = cartRepositoryImpl$addGiftMessage$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$addGiftMessage$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$addGiftMessage$1 = new CartRepositoryImpl$addGiftMessage$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$addGiftMessage$1 = new CartRepositoryImpl$addGiftMessage$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$addGiftMessage$1.f47471b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$addGiftMessage$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$addGiftMessage$1.d = 1;
            Object objA = this.f47467a.a(giftOption, cartRepositoryImpl$addGiftMessage$1, z);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object h(String str, ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$removeItemFromCart$1 cartRepositoryImpl$removeItemFromCart$1;
        if (continuationImpl instanceof CartRepositoryImpl$removeItemFromCart$1) {
            cartRepositoryImpl$removeItemFromCart$1 = (CartRepositoryImpl$removeItemFromCart$1) continuationImpl;
            int i2 = cartRepositoryImpl$removeItemFromCart$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$removeItemFromCart$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$removeItemFromCart$1 = new CartRepositoryImpl$removeItemFromCart$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$removeItemFromCart$1 = new CartRepositoryImpl$removeItemFromCart$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$removeItemFromCart$1.f47489b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$removeItemFromCart$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$removeItemFromCart$1.d = 1;
            Object objI = this.f47467a.i(str, cartRepositoryImpl$removeItemFromCart$1);
            return objI == coroutineSingletons ? coroutineSingletons : objI;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object i(String str, List list, ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$addToCart$1 cartRepositoryImpl$addToCart$1;
        if (continuationImpl instanceof CartRepositoryImpl$addToCart$1) {
            cartRepositoryImpl$addToCart$1 = (CartRepositoryImpl$addToCart$1) continuationImpl;
            int i2 = cartRepositoryImpl$addToCart$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$addToCart$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$addToCart$1 = new CartRepositoryImpl$addToCart$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$addToCart$1 = new CartRepositoryImpl$addToCart$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$addToCart$1.f47473b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$addToCart$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$addToCart$1.d = 1;
            Object objB = this.f47467a.b(str, list, cartRepositoryImpl$addToCart$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object j(ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$getCartCount$1 cartRepositoryImpl$getCartCount$1;
        if (continuationImpl instanceof CartRepositoryImpl$getCartCount$1) {
            cartRepositoryImpl$getCartCount$1 = (CartRepositoryImpl$getCartCount$1) continuationImpl;
            int i2 = cartRepositoryImpl$getCartCount$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$getCartCount$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$getCartCount$1 = new CartRepositoryImpl$getCartCount$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$getCartCount$1 = new CartRepositoryImpl$getCartCount$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$getCartCount$1.f47481b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$getCartCount$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$getCartCount$1.d = 1;
            Object objF = this.f47467a.f(cartRepositoryImpl$getCartCount$1);
            return objF == coroutineSingletons ? coroutineSingletons : objF;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004a, code lost:
    
        if (r6 == r1) goto L34;
     */
    @Override // com.vuitton.android.domain.repository.CartRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(boolean r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.vuitton.android.data.repository.CartRepositoryImpl$getCheckoutUrl$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.data.repository.CartRepositoryImpl$getCheckoutUrl$1 r0 = (com.vuitton.android.data.repository.CartRepositoryImpl$getCheckoutUrl$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.CartRepositoryImpl$getCheckoutUrl$1 r0 = new com.vuitton.android.data.repository.CartRepositoryImpl$getCheckoutUrl$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f47483b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2e
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.f71708b
            return r5
        L2e:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L35:
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L4d
        L3d:
            kotlin.ResultKt.b(r7)
            if (r6 == 0) goto L7e
            r0.d = r4
            com.vuitton.android.data.datasource.cart.twist.CartTwistDataSource r6 = r5.f47468b
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L4d
            goto L88
        L4d:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L74
            r0 = r6
            com.vuitton.android.data.datasource.cart.bff.CheckoutUrlWithCookies r0 = (com.vuitton.android.data.datasource.cart.bff.CheckoutUrlWithCookies) r0
            java.util.List r0 = r0.f43937b
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L5e:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L74
            java.lang.Object r1 = r0.next()
            com.vuitton.android.data.datasource.cart.bff.Cookie r1 = (com.vuitton.android.data.datasource.cart.bff.Cookie) r1
            java.lang.String r2 = r1.f43938a
            java.lang.String r1 = r1.f43939b
            com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy r3 = r5.f47470e
            r3.c(r2, r1)
            goto L5e
        L74:
            if (r7 != 0) goto L7d
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE
            com.vuitton.android.data.datasource.cart.bff.CheckoutUrlWithCookies r6 = (com.vuitton.android.data.datasource.cart.bff.CheckoutUrlWithCookies) r6
            java.lang.String r5 = r6.f43936a
            return r5
        L7d:
            return r6
        L7e:
            r0.d = r3
            com.vuitton.android.data.datasource.cart.legacy.CartLegacyDataSource r5 = r5.f47469c
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L89
        L88:
            return r1
        L89:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CartRepositoryImpl.k(boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object l(String str, String str2, int i2, ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$updateItemQuantity$1 cartRepositoryImpl$updateItemQuantity$1;
        if (continuationImpl instanceof CartRepositoryImpl$updateItemQuantity$1) {
            cartRepositoryImpl$updateItemQuantity$1 = (CartRepositoryImpl$updateItemQuantity$1) continuationImpl;
            int i3 = cartRepositoryImpl$updateItemQuantity$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$updateItemQuantity$1.d = i3 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$updateItemQuantity$1 = new CartRepositoryImpl$updateItemQuantity$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$updateItemQuantity$1 = new CartRepositoryImpl$updateItemQuantity$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$updateItemQuantity$1.f47495b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = cartRepositoryImpl$updateItemQuantity$1.d;
        if (i4 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$updateItemQuantity$1.d = 1;
            Object objL = this.f47467a.l(str, str2, i2, cartRepositoryImpl$updateItemQuantity$1);
            return objL == coroutineSingletons ? coroutineSingletons : objL;
        }
        if (i4 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object m(CheckoutFeedback checkoutFeedback, ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$sendCheckoutFeedback$1 cartRepositoryImpl$sendCheckoutFeedback$1;
        CartDataSource cartDataSource;
        if (continuationImpl instanceof CartRepositoryImpl$sendCheckoutFeedback$1) {
            cartRepositoryImpl$sendCheckoutFeedback$1 = (CartRepositoryImpl$sendCheckoutFeedback$1) continuationImpl;
            int i2 = cartRepositoryImpl$sendCheckoutFeedback$1.f47494f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$sendCheckoutFeedback$1.f47494f = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$sendCheckoutFeedback$1 = new CartRepositoryImpl$sendCheckoutFeedback$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$sendCheckoutFeedback$1 = new CartRepositoryImpl$sendCheckoutFeedback$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$sendCheckoutFeedback$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$sendCheckoutFeedback$1.f47494f;
        if (i3 == 0) {
            ResultKt.b(obj);
            CartDataSource cartDataSource2 = this.f47467a;
            cartRepositoryImpl$sendCheckoutFeedback$1.f47491b = cartDataSource2;
            cartRepositoryImpl$sendCheckoutFeedback$1.f47492c = checkoutFeedback;
            cartRepositoryImpl$sendCheckoutFeedback$1.f47494f = 1;
            Object objA = this.d.a(cartRepositoryImpl$sendCheckoutFeedback$1);
            if (objA != coroutineSingletons) {
                obj = objA;
                cartDataSource = cartDataSource2;
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        checkoutFeedback = cartRepositoryImpl$sendCheckoutFeedback$1.f47492c;
        cartDataSource = cartRepositoryImpl$sendCheckoutFeedback$1.f47491b;
        ResultKt.b(obj);
        cartRepositoryImpl$sendCheckoutFeedback$1.f47491b = null;
        cartRepositoryImpl$sendCheckoutFeedback$1.f47492c = null;
        cartRepositoryImpl$sendCheckoutFeedback$1.f47494f = 2;
        Object objK = cartDataSource.k(checkoutFeedback, (String) obj, cartRepositoryImpl$sendCheckoutFeedback$1);
        return objK == coroutineSingletons ? coroutineSingletons : objK;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CartRepository
    public final Object n(ContinuationImpl continuationImpl) throws Throwable {
        CartRepositoryImpl$getConfirmationDetails$1 cartRepositoryImpl$getConfirmationDetails$1;
        if (continuationImpl instanceof CartRepositoryImpl$getConfirmationDetails$1) {
            cartRepositoryImpl$getConfirmationDetails$1 = (CartRepositoryImpl$getConfirmationDetails$1) continuationImpl;
            int i2 = cartRepositoryImpl$getConfirmationDetails$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartRepositoryImpl$getConfirmationDetails$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartRepositoryImpl$getConfirmationDetails$1 = new CartRepositoryImpl$getConfirmationDetails$1(this, continuationImpl);
            }
        } else {
            cartRepositoryImpl$getConfirmationDetails$1 = new CartRepositoryImpl$getConfirmationDetails$1(this, continuationImpl);
        }
        Object obj = cartRepositoryImpl$getConfirmationDetails$1.f47485b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartRepositoryImpl$getConfirmationDetails$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cartRepositoryImpl$getConfirmationDetails$1.d = 1;
            Object objG = this.f47467a.g(cartRepositoryImpl$getConfirmationDetails$1);
            return objG == coroutineSingletons ? coroutineSingletons : objG;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
