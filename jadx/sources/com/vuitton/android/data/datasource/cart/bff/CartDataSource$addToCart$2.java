package com.vuitton.android.data.datasource.cart.bff;

import com.vuitton.android.data.api.bff.user.CartApi;
import com.vuitton.android.data.datasource.cart.CartErrorMapperKt;
import com.vuitton.android.data.dto.cart.bff.AddToCartDto;
import com.vuitton.android.data.dto.cart.bff.AddToCartItemDto;
import com.vuitton.android.data.dto.cart.bff.CartResponseMultipleDto;
import com.vuitton.android.data.dto.cart.bff.mapper.CartMapperKt;
import com.vuitton.foundation.model.domain.error.cart.ServerOverloadException;
import com.vuitton.foundation.model.domain.model.cart.CartResponse;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.cart.bff.CartDataSource$addToCart$2", f = "CartDataSource.kt", l = {181}, m = "invokeSuspend", v = 2)
final class CartDataSource$addToCart$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends CartResponse>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CartDataSource f43895c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f43896e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CartDataSource$addToCart$2(CartDataSource cartDataSource, List list, String str, Continuation continuation) {
        super(2, continuation);
        this.f43895c = cartDataSource;
        this.d = list;
        this.f43896e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CartDataSource$addToCart$2(this.f43895c, this.d, this.f43896e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CartDataSource$addToCart$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43894b;
        CartDataSource cartDataSource = this.f43895c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                List list = this.d;
                Result.Companion companion = Result.INSTANCE;
                CartApi cartApi = cartDataSource.f43884a;
                List list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(new SkuId(((SkuId) ((Pair) it.next()).f71705b).f67933a));
                }
                String strK = CollectionsKt.K(arrayList, ",", null, null, null, 62);
                List<Pair> list3 = list;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                for (Pair pair : list3) {
                    arrayList2.add(new AddToCartItemDto(((SkuId) pair.f71705b).f67933a, (String) pair.f71706c, null));
                }
                AddToCartDto addToCartDto = new AddToCartDto(arrayList2);
                String str = this.f43896e;
                String str2 = str != null ? str : null;
                this.f43894b = 1;
                obj = cartApi.addToCart(strK, str2, addToCartDto, this);
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
            failure = new Result(CartMapperKt.c((CartResponseMultipleDto) obj));
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
        Object failure2 = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(failure2);
        if (thA2 != null) {
            try {
                if ((thA2 instanceof HttpException) && ((HttpException) thA2).f79346b == 429) {
                    throw new ServerOverloadException();
                }
                throw CartErrorMapperKt.a(cartDataSource.d, thA2);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                failure2 = new Result.Failure(th2);
            }
        }
        return new Result(failure2);
    }
}
