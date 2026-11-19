package com.vuitton.android.data.datasource.cart.bff;

import com.vuitton.android.data.api.bff.user.CartApi;
import com.vuitton.android.data.datasource.cart.CartErrorMapperKt;
import defpackage.md;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.bff.CartDataSource$resetCartContainer$2", f = "CartDataSource.kt", l = {170}, m = "invokeSuspend", v = 2)
final class CartDataSource$resetCartContainer$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartDataSource f43922c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartDataSource$resetCartContainer$2(CartDataSource cartDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43922c = cartDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CartDataSource$resetCartContainer$2(this.f43922c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CartDataSource$resetCartContainer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43921b;
        CartDataSource cartDataSource = this.f43922c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                CartApi cartApi = cartDataSource.f43884a;
                this.f43921b = 1;
                if (cartApi.resetCartContainer(this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
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
        Throwable thA2 = Result.a(((Result) failure).f71708b);
        if (thA2 == null) {
            return Unit.f71739a;
        }
        throw CartErrorMapperKt.a(cartDataSource.d, thA2);
    }
}
