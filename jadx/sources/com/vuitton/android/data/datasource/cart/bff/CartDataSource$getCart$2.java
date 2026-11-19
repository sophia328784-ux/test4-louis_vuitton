package com.vuitton.android.data.datasource.cart.bff;

import com.vuitton.android.data.api.bff.user.CartApi;
import com.vuitton.android.data.datasource.cart.CartErrorMapperKt;
import com.vuitton.android.data.dto.cart.bff.CartDto;
import com.vuitton.android.data.dto.cart.bff.mapper.CartMapperKt;
import com.vuitton.foundation.model.domain.error.cart.Empty;
import com.vuitton.foundation.model.domain.model.cart.Cart;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/cart/Cart;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.bff.CartDataSource$getCart$2", f = "CartDataSource.kt", l = {55}, m = "invokeSuspend", v = 2)
final class CartDataSource$getCart$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Cart>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartDataSource f43906c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartDataSource$getCart$2(CartDataSource cartDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43906c = cartDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CartDataSource$getCart$2(this.f43906c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CartDataSource$getCart$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43905b;
        CartDataSource cartDataSource = this.f43906c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                CartApi cartApi = cartDataSource.f43884a;
                this.f43905b = 1;
                obj = cartApi.getCart(this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            CartDto cartDto = (CartDto) obj;
            if (cartDto.f44978b <= 0) {
                throw new Empty("Cart is empty");
            }
            failure = new Result(CartMapperKt.b(cartDto));
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            Object failure2 = ((Result) failure).f71708b;
            Throwable thA2 = Result.a(failure2);
            if (thA2 != null) {
                try {
                    throw CartErrorMapperKt.a(cartDataSource.d, thA2);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure2 = new Result.Failure(th);
                }
            }
            return new Result(failure2);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th2);
        }
    }
}
