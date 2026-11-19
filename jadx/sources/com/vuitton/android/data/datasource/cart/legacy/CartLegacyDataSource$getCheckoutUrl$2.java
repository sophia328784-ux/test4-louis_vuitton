package com.vuitton.android.data.datasource.cart.legacy;

import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.NativeCartConfig;
import java.util.concurrent.CancellationException;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.legacy.CartLegacyDataSource$getCheckoutUrl$2", f = "CartLegacyDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class CartLegacyDataSource$getCheckoutUrl$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends String>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CartLegacyDataSource f43944b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartLegacyDataSource$getCheckoutUrl$2(CartLegacyDataSource cartLegacyDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43944b = cartLegacyDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CartLegacyDataSource$getCheckoutUrl$2(this.f43944b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CartLegacyDataSource$getCheckoutUrl$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        NativeCartConfig nativeCartConfig;
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CartLegacyDataSource cartLegacyDataSource = this.f43944b;
        try {
            Result.Companion companion = Result.INSTANCE;
            AppConfig appConfigC = cartLegacyDataSource.f43941b.c();
            if (appConfigC == null || (nativeCartConfig = appConfigC.F) == null || (str = nativeCartConfig.f67266b) == null) {
                throw new IllegalStateException("Missing or not valid Checkout URL");
            }
            failure = new Result(str);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return new Result(((Result) failure).f71708b);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
