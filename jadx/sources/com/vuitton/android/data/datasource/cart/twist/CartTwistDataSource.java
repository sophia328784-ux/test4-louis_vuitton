package com.vuitton.android.data.datasource.cart.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.api.bff.user.TwistCartApi;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;", "", "Lcom/vuitton/android/data/api/bff/user/TwistCartApi;", "twistCartApi", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutinesDispatchers", "<init>", "(Lcom/vuitton/android/data/api/bff/user/TwistCartApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CartTwistDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwistCartApi f43945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f43946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f43947c;

    @Inject
    public CartTwistDataSource(TwistCartApi twistCartApi, AuthTokenRepository authTokenRepository, CoroutineDispatchers coroutineDispatchers) {
        twistCartApi.getClass();
        authTokenRepository.getClass();
        coroutineDispatchers.getClass();
        this.f43945a = twistCartApi;
        this.f43946b = authTokenRepository;
        this.f43947c = coroutineDispatchers;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        CartTwistDataSource$getCheckoutUrl$1 cartTwistDataSource$getCheckoutUrl$1;
        if (continuationImpl instanceof CartTwistDataSource$getCheckoutUrl$1) {
            cartTwistDataSource$getCheckoutUrl$1 = (CartTwistDataSource$getCheckoutUrl$1) continuationImpl;
            int i2 = cartTwistDataSource$getCheckoutUrl$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartTwistDataSource$getCheckoutUrl$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartTwistDataSource$getCheckoutUrl$1 = new CartTwistDataSource$getCheckoutUrl$1(this, continuationImpl);
            }
        } else {
            cartTwistDataSource$getCheckoutUrl$1 = new CartTwistDataSource$getCheckoutUrl$1(this, continuationImpl);
        }
        Object objF = cartTwistDataSource$getCheckoutUrl$1.f43948b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartTwistDataSource$getCheckoutUrl$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43947c.getF43530b();
            CartTwistDataSource$getCheckoutUrl$2 cartTwistDataSource$getCheckoutUrl$2 = new CartTwistDataSource$getCheckoutUrl$2(this, null);
            cartTwistDataSource$getCheckoutUrl$1.d = 1;
            objF = BuildersKt.f(f43530b, cartTwistDataSource$getCheckoutUrl$2, cartTwistDataSource$getCheckoutUrl$1);
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
