package com.vuitton.android.data.datasource.orders;

import com.vuitton.android.data.api.bff.user.CartApi;
import com.vuitton.android.data.dto.cart.bff.ExchangeProductDto;
import com.vuitton.android.data.dto.cart.bff.ExchangeSetupDto;
import com.vuitton.android.data.dto.cart.bff.ExchangeSetupDtoKt$WhenMappings;
import com.vuitton.android.data.dto.cart.bff.ExchangeSetupResponseDto;
import com.vuitton.android.data.dto.cart.bff.ExchangeShippingAddressDto;
import com.vuitton.android.data.dto.cart.bff.ExchangeShippingMethodDto;
import com.vuitton.android.data.dto.cart.bff.ExchangeShippingTypeDto;
import com.vuitton.android.data.dto.cart.bff.mapper.CartPriceMapperKt;
import com.vuitton.foundation.model.domain.model.cart.ExchangeProduct;
import com.vuitton.foundation.model.domain.model.cart.ExchangeSetupPost;
import com.vuitton.foundation.model.domain.model.cart.ExchangeSetupResult;
import com.vuitton.foundation.model.domain.model.cart.ExchangeShippingAddress;
import com.vuitton.foundation.model.domain.model.cart.ExchangeShippingMethod;
import com.vuitton.foundation.model.domain.model.cart.ExchangeShippingType;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource$setupExchange$2", f = "OrdersRemoteDataSource.kt", l = {153}, m = "invokeSuspend", v = 2)
final class OrdersRemoteDataSource$setupExchange$2 extends SuspendLambda implements Function1<Continuation<? super ExchangeSetupResult>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f44175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrdersRemoteDataSource f44176c;
    public final /* synthetic */ ExchangeSetupPost d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrdersRemoteDataSource$setupExchange$2(OrdersRemoteDataSource ordersRemoteDataSource, ExchangeSetupPost exchangeSetupPost, Continuation continuation) {
        super(1, continuation);
        this.f44176c = ordersRemoteDataSource;
        this.d = exchangeSetupPost;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new OrdersRemoteDataSource$setupExchange$2(this.f44176c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((OrdersRemoteDataSource$setupExchange$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ExchangeShippingType exchangeShippingType;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f44175b;
        if (i2 == 0) {
            ResultKt.b(obj);
            CartApi cartApi = this.f44176c.f44141c;
            ExchangeSetupPost exchangeSetupPost = this.d;
            exchangeSetupPost.getClass();
            ExchangeSetupDto exchangeSetupDto = new ExchangeSetupDto(exchangeSetupPost.f66954a, exchangeSetupPost.f66955b, exchangeSetupPost.f66956c, null);
            this.f44175b = 1;
            obj = cartApi.setupExchange(exchangeSetupDto, this);
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
        ExchangeSetupResponseDto exchangeSetupResponseDto = (ExchangeSetupResponseDto) obj;
        exchangeSetupResponseDto.getClass();
        ExchangeProductDto exchangeProductDto = exchangeSetupResponseDto.f45031a;
        exchangeProductDto.getClass();
        ExchangeProduct exchangeProduct = new ExchangeProduct(exchangeProductDto.f45019a, exchangeProductDto.f45020b, exchangeProductDto.f45021c, exchangeProductDto.d, exchangeProductDto.f45022e, CartPriceMapperKt.a(exchangeProductDto.f45023f), exchangeProductDto.g, exchangeProductDto.f45024h, null);
        ExchangeShippingAddressDto exchangeShippingAddressDto = exchangeSetupResponseDto.f45032b;
        exchangeShippingAddressDto.getClass();
        ExchangeShippingAddress exchangeShippingAddress = new ExchangeShippingAddress(exchangeShippingAddressDto.f45035a, exchangeShippingAddressDto.f45036b, exchangeShippingAddressDto.f45037c, exchangeShippingAddressDto.d, exchangeShippingAddressDto.f45038e, exchangeShippingAddressDto.f45039f, exchangeShippingAddressDto.g, exchangeShippingAddressDto.f45040h);
        ExchangeShippingMethodDto exchangeShippingMethodDto = exchangeSetupResponseDto.f45033c;
        exchangeShippingMethodDto.getClass();
        String str = exchangeShippingMethodDto.f45042a;
        String str2 = exchangeShippingMethodDto.f45043b;
        ExchangeShippingTypeDto exchangeShippingTypeDto = exchangeShippingMethodDto.f45044c;
        exchangeShippingTypeDto.getClass();
        int i3 = ExchangeSetupDtoKt$WhenMappings.f45030a[exchangeShippingTypeDto.ordinal()];
        if (i3 == 1) {
            exchangeShippingType = ExchangeShippingType.STANDARD;
        } else {
            if (i3 != 2) {
                v40.g();
                return null;
            }
            exchangeShippingType = ExchangeShippingType.CLICK_AND_COLLECT;
        }
        return new ExchangeSetupResult(exchangeProduct, exchangeShippingAddress, new ExchangeShippingMethod(str, str2, exchangeShippingType));
    }
}
