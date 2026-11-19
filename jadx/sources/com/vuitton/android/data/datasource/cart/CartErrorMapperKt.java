package com.vuitton.android.data.datasource.cart;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.mapper.CartMapperKt;
import com.vuitton.android.data.dto.cart.common.CartErrorDto;
import com.vuitton.android.data.dto.cart.common.CartErrorsDto;
import com.vuitton.foundation.model.domain.error.cart.CartError;
import com.vuitton.foundation.model.domain.error.cart.GenericCartError;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;
import okhttp3.ResponseBody;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CartErrorMapperKt {
    /* JADX WARN: Code duplicated, block: B:43:0x0084  */
    public static final CartError a(Json json, Throwable th) throws Throwable {
        Object failure;
        CartError cartError;
        ResponseBody responseBody;
        String strString;
        Object failure2;
        List list;
        CartErrorDto cartErrorDto;
        json.getClass();
        if (th instanceof CartError) {
            return (CartError) th;
        }
        GenericCartError genericCartError = new GenericCartError("Generic cart error");
        if (!(th instanceof HttpException)) {
            return genericCartError;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Response response = ((HttpException) th).d;
            if (response == null || (responseBody = response.f79451c) == null || (strString = responseBody.string()) == null) {
                cartError = genericCartError;
            } else {
                Object obj = null;
                try {
                    failure2 = new Result(StringsKt.w(strString) ? null : json.b(CartErrorsDto.INSTANCE.serializer(), strString));
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure2 = new Result.Failure(th2);
                }
                Throwable thA = Result.a(failure2);
                if (thA != null) {
                    if (thA instanceof CancellationException) {
                        throw thA;
                    }
                    failure2 = new Result(new Result.Failure(thA));
                }
                Object obj2 = ((Result) failure2).f71708b;
                if (!(obj2 instanceof Result.Failure)) {
                    obj = obj2;
                }
                CartErrorsDto cartErrorsDto = (CartErrorsDto) obj;
                if (cartErrorsDto == null || (list = cartErrorsDto.f45085a) == null || (cartErrorDto = (CartErrorDto) CollectionsKt.firstOrNull(list)) == null) {
                    cartError = genericCartError;
                } else {
                    cartError = CartMapperKt.a(cartErrorDto).f66211b;
                }
            }
            failure = new Result(cartError);
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th3);
        }
        Throwable thA2 = Result.a(failure);
        if (thA2 != null) {
            if (thA2 instanceof CancellationException) {
                throw thA2;
            }
            failure = new Result(new Result.Failure(thA2));
        }
        Object obj3 = ((Result) failure).f71708b;
        Object obj4 = genericCartError;
        if (Result.a(obj3) == null) {
            obj4 = obj3;
        }
        return (CartError) obj4;
    }
}
