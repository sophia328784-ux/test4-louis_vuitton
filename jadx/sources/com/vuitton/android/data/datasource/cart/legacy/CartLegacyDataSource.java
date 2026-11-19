package com.vuitton.android.data.datasource.cart.legacy;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.repository.AppConfigRepository;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutinesDispatchers", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "appConfigRepository", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/repository/AppConfigRepository;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CartLegacyDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f43940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppConfigRepository f43941b;

    @Inject
    public CartLegacyDataSource(CoroutineDispatchers coroutineDispatchers, AppConfigRepository appConfigRepository) {
        coroutineDispatchers.getClass();
        appConfigRepository.getClass();
        this.f43940a = coroutineDispatchers;
        this.f43941b = appConfigRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        CartLegacyDataSource$getCheckoutUrl$1 cartLegacyDataSource$getCheckoutUrl$1;
        if (continuationImpl instanceof CartLegacyDataSource$getCheckoutUrl$1) {
            cartLegacyDataSource$getCheckoutUrl$1 = (CartLegacyDataSource$getCheckoutUrl$1) continuationImpl;
            int i2 = cartLegacyDataSource$getCheckoutUrl$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cartLegacyDataSource$getCheckoutUrl$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cartLegacyDataSource$getCheckoutUrl$1 = new CartLegacyDataSource$getCheckoutUrl$1(this, continuationImpl);
            }
        } else {
            cartLegacyDataSource$getCheckoutUrl$1 = new CartLegacyDataSource$getCheckoutUrl$1(this, continuationImpl);
        }
        Object objF = cartLegacyDataSource$getCheckoutUrl$1.f43942b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cartLegacyDataSource$getCheckoutUrl$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43940a.getF43530b();
            CartLegacyDataSource$getCheckoutUrl$2 cartLegacyDataSource$getCheckoutUrl$2 = new CartLegacyDataSource$getCheckoutUrl$2(this, null);
            cartLegacyDataSource$getCheckoutUrl$1.d = 1;
            objF = BuildersKt.f(f43530b, cartLegacyDataSource$getCheckoutUrl$2, cartLegacyDataSource$getCheckoutUrl$1);
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
