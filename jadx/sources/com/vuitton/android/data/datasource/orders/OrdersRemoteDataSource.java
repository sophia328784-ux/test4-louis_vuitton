package com.vuitton.android.data.datasource.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.CartApi;
import com.vuitton.android.data.api.bff.user.OrderExchangeApi;
import com.vuitton.android.data.api.bff.user.OrdersApi;
import com.vuitton.android.data.dto.account.orders.ExchangeErrorCodeDto;
import com.vuitton.android.data.dto.account.orders.ExchangeErrorDetailsDto;
import com.vuitton.android.data.dto.account.orders.ExchangeErrorResponseDto;
import com.vuitton.android.data.dto.account.orders.HistoryOrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.OngoingOrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.OrderReturnDtoResponse;
import com.vuitton.android.data.dto.account.orders.OrderReturnErrorDto;
import com.vuitton.android.data.dto.account.orders.OrderReturnItemDto;
import com.vuitton.android.data.dto.account.orders.OrderReturnReasonDto;
import com.vuitton.android.data.dto.account.orders.PersonalizationDtoResponse;
import com.vuitton.android.data.dto.account.orders.mapper.OrdersMapperKt;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto;
import com.vuitton.android.data.dto.producttiny.mapper.ProductTinyMapperKt;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorDataDto;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorDetailsDto;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorDto;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorResponseDto;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorStatusDetailsDto;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorSubDetailsDto;
import com.vuitton.foundation.model.domain.error.account.AccountUnderProcessException;
import com.vuitton.foundation.model.domain.model.account.orders.ExchangeException;
import com.vuitton.foundation.model.domain.model.account.orders.OrderReturnError;
import com.vuitton.foundation.model.domain.model.account.orders.OrderReturnItem;
import com.vuitton.foundation.model.domain.model.account.orders.OrderReturnReason;
import com.vuitton.foundation.model.domain.model.account.orders.Orders;
import com.vuitton.foundation.model.domain.model.cart.ExchangeSetupPost;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.serialization.json.Json;
import okhttp3.ResponseBody;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/user/OrdersApi;", "ordersApi", "Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;", "orderExchangeApi", "Lcom/vuitton/android/data/api/bff/user/CartApi;", "cartApi", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/data/api/bff/user/OrdersApi;Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;Lcom/vuitton/android/data/api/bff/user/CartApi;Lkotlinx/serialization/json/Json;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OrdersRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OrdersApi f44139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OrderExchangeApi f44140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartApi f44141c;
    public final Json d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44142a;

        static {
            int[] iArr = new int[ExchangeErrorCodeDto.values().length];
            try {
                iArr[ExchangeErrorCodeDto.EXCHANGE_ERROR_NOT_SELLABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ExchangeErrorCodeDto.EXCHANGE_ERROR_SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ExchangeErrorCodeDto.EXCHANGE_ERROR_OUT_OF_STOCK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f44142a = iArr;
        }
    }

    @Inject
    public OrdersRemoteDataSource(OrdersApi ordersApi, OrderExchangeApi orderExchangeApi, CartApi cartApi, Json json) {
        ordersApi.getClass();
        orderExchangeApi.getClass();
        cartApi.getClass();
        json.getClass();
        this.f44139a = ordersApi;
        this.f44140b = orderExchangeApi;
        this.f44141c = cartApi;
        this.d = json;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(OrdersRemoteDataSource ordersRemoteDataSource, ContinuationImpl continuationImpl) throws Throwable {
        OrdersRemoteDataSource$getPurchaseHistory$1 ordersRemoteDataSource$getPurchaseHistory$1;
        Object failure;
        if (continuationImpl instanceof OrdersRemoteDataSource$getPurchaseHistory$1) {
            ordersRemoteDataSource$getPurchaseHistory$1 = (OrdersRemoteDataSource$getPurchaseHistory$1) continuationImpl;
            int i2 = ordersRemoteDataSource$getPurchaseHistory$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$getPurchaseHistory$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$getPurchaseHistory$1 = new OrdersRemoteDataSource$getPurchaseHistory$1(ordersRemoteDataSource, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$getPurchaseHistory$1 = new OrdersRemoteDataSource$getPurchaseHistory$1(ordersRemoteDataSource, continuationImpl);
        }
        Object purchaseHistory = ordersRemoteDataSource$getPurchaseHistory$1.f44167b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$getPurchaseHistory$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(purchaseHistory);
                Result.Companion companion = Result.INSTANCE;
                OrdersApi ordersApi = ordersRemoteDataSource.f44139a;
                ordersRemoteDataSource$getPurchaseHistory$1.d = 1;
                purchaseHistory = ordersApi.getPurchaseHistory(ordersRemoteDataSource$getPurchaseHistory$1);
                if (purchaseHistory == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(purchaseHistory);
            }
            Response response = (Response) purchaseHistory;
            if (!response.f79449a.r) {
                ordersRemoteDataSource.j(response);
                throw null;
            }
            Object obj = response.f79450b;
            obj.getClass();
            failure = new Result((HistoryOrdersDtoResponse) obj);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v7, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.util.ArrayList] */
    public final Object b(List list, ContinuationImpl continuationImpl) throws Throwable {
        OrdersRemoteDataSource$confirmReturn$1 ordersRemoteDataSource$confirmReturn$1;
        Object failure;
        Object arrayList;
        List list2;
        if (continuationImpl instanceof OrdersRemoteDataSource$confirmReturn$1) {
            ordersRemoteDataSource$confirmReturn$1 = (OrdersRemoteDataSource$confirmReturn$1) continuationImpl;
            int i2 = ordersRemoteDataSource$confirmReturn$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$confirmReturn$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$confirmReturn$1 = new OrdersRemoteDataSource$confirmReturn$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$confirmReturn$1 = new OrdersRemoteDataSource$confirmReturn$1(this, continuationImpl);
        }
        Object objConfirmReturn = ordersRemoteDataSource$confirmReturn$1.f44143b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$confirmReturn$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objConfirmReturn);
                Result.Companion companion = Result.INSTANCE;
                OrdersApi ordersApi = this.f44139a;
                List<OrderReturnItem> list3 = list;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                for (OrderReturnItem orderReturnItem : list3) {
                    orderReturnItem.getClass();
                    arrayList2.add(new OrderReturnItemDto(orderReturnItem.f66319a, orderReturnItem.f66320b, orderReturnItem.f66321c, orderReturnItem.d, null));
                }
                ordersRemoteDataSource$confirmReturn$1.d = 1;
                objConfirmReturn = ordersApi.confirmReturn(arrayList2, ordersRemoteDataSource$confirmReturn$1);
                if (objConfirmReturn == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objConfirmReturn);
            }
            Response response = (Response) objConfirmReturn;
            if (!response.f79449a.r) {
                throw new HttpException(response);
            }
            OrderReturnDtoResponse orderReturnDtoResponse = (OrderReturnDtoResponse) response.f79450b;
            if (orderReturnDtoResponse == null || (list2 = orderReturnDtoResponse.f44401a) == null) {
                arrayList = EmptyList.f71768b;
            } else {
                List<OrderReturnErrorDto> list4 = list2;
                arrayList = new ArrayList(CollectionsKt.t(list4, 10));
                for (OrderReturnErrorDto orderReturnErrorDto : list4) {
                    orderReturnErrorDto.getClass();
                    arrayList.add(new OrderReturnError(orderReturnErrorDto.f44403a, orderReturnErrorDto.f44404b, orderReturnErrorDto.f44405c));
                }
            }
            failure = new Result(arrayList);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Function1 function1, ContinuationImpl continuationImpl) {
        OrdersRemoteDataSource$exchangeRequest$1 ordersRemoteDataSource$exchangeRequest$1;
        Object failure;
        Object failure2;
        Throwable notSellable;
        List list;
        Object objB;
        ResponseBody responseBody;
        if (continuationImpl instanceof OrdersRemoteDataSource$exchangeRequest$1) {
            ordersRemoteDataSource$exchangeRequest$1 = (OrdersRemoteDataSource$exchangeRequest$1) continuationImpl;
            int i2 = ordersRemoteDataSource$exchangeRequest$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$exchangeRequest$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$exchangeRequest$1 = new OrdersRemoteDataSource$exchangeRequest$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$exchangeRequest$1 = new OrdersRemoteDataSource$exchangeRequest$1(this, continuationImpl);
        }
        Object objInvoke = ordersRemoteDataSource$exchangeRequest$1.f44145b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$exchangeRequest$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objInvoke);
                Result.Companion companion = Result.INSTANCE;
                ordersRemoteDataSource$exchangeRequest$1.d = 1;
                objInvoke = function1.invoke(ordersRemoteDataSource$exchangeRequest$1);
                if (objInvoke == obj) {
                    return obj;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objInvoke);
            }
            failure = new Result(objInvoke);
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
        Object obj2 = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj2);
        if (thA2 == null) {
            return obj2;
        }
        try {
            String str = "";
            if (thA2 instanceof HttpException) {
                Response response = ((HttpException) thA2).d;
                String strString = (response == null || (responseBody = response.f79451c) == null) ? null : responseBody.string();
                if (strString != null && strString.length() != 0) {
                    Json json = this.d;
                    try {
                        if (StringsKt.w(strString)) {
                            objB = null;
                        } else {
                            json.getClass();
                            objB = json.b(ExchangeErrorResponseDto.INSTANCE.serializer(), strString);
                        }
                        failure2 = new Result(objB);
                    } catch (Throwable th2) {
                        Result.Companion companion3 = Result.INSTANCE;
                        failure2 = new Result.Failure(th2);
                    }
                    Throwable thA3 = Result.a(failure2);
                    if (thA3 != null) {
                        if (thA3 instanceof CancellationException) {
                            throw thA3;
                        }
                        failure2 = new Result(new Result.Failure(thA3));
                    }
                    Object obj3 = ((Result) failure2).f71708b;
                    if (obj3 instanceof Result.Failure) {
                        obj3 = null;
                    }
                    ExchangeErrorResponseDto exchangeErrorResponseDto = (ExchangeErrorResponseDto) obj3;
                    ExchangeErrorDetailsDto exchangeErrorDetailsDto = (exchangeErrorResponseDto == null || (list = exchangeErrorResponseDto.f44364f) == null) ? null : (ExchangeErrorDetailsDto) CollectionsKt.firstOrNull(list);
                    ExchangeErrorCodeDto exchangeErrorCodeDto = exchangeErrorDetailsDto != null ? exchangeErrorDetailsDto.f44355a : null;
                    int i4 = exchangeErrorCodeDto == null ? -1 : WhenMappings.f44142a[exchangeErrorCodeDto.ordinal()];
                    if (i4 == 1) {
                        String str2 = exchangeErrorDetailsDto.f44356b;
                        if (str2 != null) {
                            str = str2;
                        }
                        notSellable = new ExchangeException.NotSellable(str);
                    } else if (i4 == 2) {
                        String str3 = exchangeErrorDetailsDto.f44356b;
                        if (str3 != null) {
                            str = str3;
                        }
                        notSellable = new ExchangeException.Skip(str);
                    } else if (i4 != 3) {
                        String str4 = exchangeErrorDetailsDto != null ? exchangeErrorDetailsDto.f44356b : null;
                        if (str4 != null) {
                            str = str4;
                        }
                        notSellable = new ExchangeException.Unknown(str, String.valueOf(((HttpException) thA2).f79346b));
                    } else {
                        String str5 = exchangeErrorDetailsDto.f44356b;
                        if (str5 != null) {
                            str = str5;
                        }
                        notSellable = new ExchangeException.OutOfStock(str);
                    }
                    return new Result.Failure(notSellable);
                }
            }
            return new Result.Failure(new ExchangeException.Unknown(new String(), ""));
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            return new Result.Failure(th3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public final Object d(String str, double d, double d2, ContinuationImpl continuationImpl) {
        OrdersRemoteDataSource$getExchangeVariations$1 ordersRemoteDataSource$getExchangeVariations$1;
        if (continuationImpl instanceof OrdersRemoteDataSource$getExchangeVariations$1) {
            ordersRemoteDataSource$getExchangeVariations$1 = (OrdersRemoteDataSource$getExchangeVariations$1) continuationImpl;
            int i2 = ordersRemoteDataSource$getExchangeVariations$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$getExchangeVariations$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$getExchangeVariations$1 = new OrdersRemoteDataSource$getExchangeVariations$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$getExchangeVariations$1 = new OrdersRemoteDataSource$getExchangeVariations$1(this, continuationImpl);
        }
        OrdersRemoteDataSource$getExchangeVariations$1 ordersRemoteDataSource$getExchangeVariations$2 = ordersRemoteDataSource$getExchangeVariations$1;
        Object obj = ordersRemoteDataSource$getExchangeVariations$2.f44147b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$getExchangeVariations$2.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        Function1 ordersRemoteDataSource$getExchangeVariations$3 = new OrdersRemoteDataSource$getExchangeVariations$2(this, str, d, d2, null);
        ordersRemoteDataSource$getExchangeVariations$2.d = 1;
        Object objC = c(ordersRemoteDataSource$getExchangeVariations$3, ordersRemoteDataSource$getExchangeVariations$2);
        return objC == obj2 ? obj2 : objC;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(ContinuationImpl continuationImpl) {
        OrdersRemoteDataSource$getOngoingOrders$1 ordersRemoteDataSource$getOngoingOrders$1;
        Object failure;
        Object objH;
        if (continuationImpl instanceof OrdersRemoteDataSource$getOngoingOrders$1) {
            ordersRemoteDataSource$getOngoingOrders$1 = (OrdersRemoteDataSource$getOngoingOrders$1) continuationImpl;
            int i2 = ordersRemoteDataSource$getOngoingOrders$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$getOngoingOrders$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$getOngoingOrders$1 = new OrdersRemoteDataSource$getOngoingOrders$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$getOngoingOrders$1 = new OrdersRemoteDataSource$getOngoingOrders$1(this, continuationImpl);
        }
        Object obj = ordersRemoteDataSource$getOngoingOrders$1.f44153b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$getOngoingOrders$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                ordersRemoteDataSource$getOngoingOrders$1.d = 1;
                objH = h(ordersRemoteDataSource$getOngoingOrders$1);
                if (objH == obj2) {
                    return obj2;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objH = ((Result) obj).f71708b;
            }
            ResultKt.b(objH);
            failure = new Result(OrdersMapperKt.c(((OngoingOrdersDtoResponse) objH).f44384a, true));
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
    public final Object f(ContinuationImpl continuationImpl) throws Throwable {
        OrdersRemoteDataSource$getOrderList$1 ordersRemoteDataSource$getOrderList$1;
        Object failure;
        if (continuationImpl instanceof OrdersRemoteDataSource$getOrderList$1) {
            ordersRemoteDataSource$getOrderList$1 = (OrdersRemoteDataSource$getOrderList$1) continuationImpl;
            int i2 = ordersRemoteDataSource$getOrderList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$getOrderList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$getOrderList$1 = new OrdersRemoteDataSource$getOrderList$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$getOrderList$1 = new OrdersRemoteDataSource$getOrderList$1(this, continuationImpl);
        }
        Object objF = ordersRemoteDataSource$getOrderList$1.f44155b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$getOrderList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                OrdersRemoteDataSource$getOrderList$2$1 ordersRemoteDataSource$getOrderList$2$1 = new OrdersRemoteDataSource$getOrderList$2$1(this, null);
                ordersRemoteDataSource$getOrderList$1.d = 1;
                objF = BuildersKt.f(defaultIoScheduler, ordersRemoteDataSource$getOrderList$2$1, ordersRemoteDataSource$getOrderList$1);
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
            failure = new Result((Orders) objF);
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
    public final Object g(ContinuationImpl continuationImpl) throws Throwable {
        OrdersRemoteDataSource$getOrdersHistoryPersonalization$1 ordersRemoteDataSource$getOrdersHistoryPersonalization$1;
        Object failure;
        ProductTinyDto productTinyDto;
        if (continuationImpl instanceof OrdersRemoteDataSource$getOrdersHistoryPersonalization$1) {
            ordersRemoteDataSource$getOrdersHistoryPersonalization$1 = (OrdersRemoteDataSource$getOrdersHistoryPersonalization$1) continuationImpl;
            int i2 = ordersRemoteDataSource$getOrdersHistoryPersonalization$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$getOrdersHistoryPersonalization$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$getOrdersHistoryPersonalization$1 = new OrdersRemoteDataSource$getOrdersHistoryPersonalization$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$getOrdersHistoryPersonalization$1 = new OrdersRemoteDataSource$getOrdersHistoryPersonalization$1(this, continuationImpl);
        }
        Object purchaseHistoryPersonalization = ordersRemoteDataSource$getOrdersHistoryPersonalization$1.f44165b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$getOrdersHistoryPersonalization$1.d;
        ProductTiny productTinyA = null;
        try {
            if (i3 == 0) {
                ResultKt.b(purchaseHistoryPersonalization);
                Result.Companion companion = Result.INSTANCE;
                OrdersApi ordersApi = this.f44139a;
                ordersRemoteDataSource$getOrdersHistoryPersonalization$1.d = 1;
                purchaseHistoryPersonalization = ordersApi.getPurchaseHistoryPersonalization(ordersRemoteDataSource$getOrdersHistoryPersonalization$1);
                if (purchaseHistoryPersonalization == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(purchaseHistoryPersonalization);
            }
            Response response = (Response) purchaseHistoryPersonalization;
            if (!response.f79449a.r) {
                j(response);
                throw null;
            }
            PersonalizationDtoResponse personalizationDtoResponse = (PersonalizationDtoResponse) response.f79450b;
            if (personalizationDtoResponse != null && (productTinyDto = personalizationDtoResponse.f44418a) != null) {
                productTinyA = ProductTinyMapperKt.a(productTinyDto);
            }
            failure = new Result(productTinyA);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(ContinuationImpl continuationImpl) throws Throwable {
        OrdersRemoteDataSource$getPurchaseOngoing$1 ordersRemoteDataSource$getPurchaseOngoing$1;
        Object failure;
        if (continuationImpl instanceof OrdersRemoteDataSource$getPurchaseOngoing$1) {
            ordersRemoteDataSource$getPurchaseOngoing$1 = (OrdersRemoteDataSource$getPurchaseOngoing$1) continuationImpl;
            int i2 = ordersRemoteDataSource$getPurchaseOngoing$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$getPurchaseOngoing$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$getPurchaseOngoing$1 = new OrdersRemoteDataSource$getPurchaseOngoing$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$getPurchaseOngoing$1 = new OrdersRemoteDataSource$getPurchaseOngoing$1(this, continuationImpl);
        }
        Object purchaseOngoing = ordersRemoteDataSource$getPurchaseOngoing$1.f44169b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$getPurchaseOngoing$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(purchaseOngoing);
                Result.Companion companion = Result.INSTANCE;
                OrdersApi ordersApi = this.f44139a;
                ordersRemoteDataSource$getPurchaseOngoing$1.d = 1;
                purchaseOngoing = ordersApi.getPurchaseOngoing(ordersRemoteDataSource$getPurchaseOngoing$1);
                if (purchaseOngoing == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(purchaseOngoing);
            }
            Response response = (Response) purchaseOngoing;
            if (!response.f79449a.r) {
                j(response);
                throw null;
            }
            Object obj = response.f79450b;
            obj.getClass();
            failure = new Result((OngoingOrdersDtoResponse) obj);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(ContinuationImpl continuationImpl) {
        OrdersRemoteDataSource$getReturnReasons$1 ordersRemoteDataSource$getReturnReasons$1;
        Object failure;
        if (continuationImpl instanceof OrdersRemoteDataSource$getReturnReasons$1) {
            ordersRemoteDataSource$getReturnReasons$1 = (OrdersRemoteDataSource$getReturnReasons$1) continuationImpl;
            int i2 = ordersRemoteDataSource$getReturnReasons$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$getReturnReasons$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$getReturnReasons$1 = new OrdersRemoteDataSource$getReturnReasons$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$getReturnReasons$1 = new OrdersRemoteDataSource$getReturnReasons$1(this, continuationImpl);
        }
        Object returnReasons = ordersRemoteDataSource$getReturnReasons$1.f44171b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$getReturnReasons$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(returnReasons);
                Result.Companion companion = Result.INSTANCE;
                OrdersApi ordersApi = this.f44139a;
                ordersRemoteDataSource$getReturnReasons$1.d = 1;
                returnReasons = ordersApi.getReturnReasons(ordersRemoteDataSource$getReturnReasons$1);
                if (returnReasons == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(returnReasons);
            }
            Iterable<OrderReturnReasonDto> iterable = (Iterable) returnReasons;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            for (OrderReturnReasonDto orderReturnReasonDto : iterable) {
                orderReturnReasonDto.getClass();
                arrayList.add(new OrderReturnReason(orderReturnReasonDto.f44411a, orderReturnReasonDto.f44412b));
            }
            failure = new Result(arrayList);
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

    public final void j(Response response) throws Throwable {
        String strString;
        Object failure;
        SalesforceErrorDetailsDto salesforceErrorDetailsDto;
        SalesforceErrorResponseDto salesforceErrorResponseDto;
        SalesforceErrorDataDto salesforceErrorDataDto;
        SalesforceErrorSubDetailsDto salesforceErrorSubDetailsDto;
        SalesforceErrorStatusDetailsDto salesforceErrorStatusDetailsDto;
        Object objB;
        ResponseBody responseBody = response.f79451c;
        if (responseBody != null && (strString = responseBody.string()) != null) {
            Json json = this.d;
            String str = null;
            try {
                Result.Companion companion = Result.INSTANCE;
                if (StringsKt.w(strString)) {
                    objB = null;
                } else {
                    json.getClass();
                    objB = json.b(SalesforceErrorDto.INSTANCE.serializer(), strString);
                }
                failure = new Result(objB);
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
            if (obj instanceof Result.Failure) {
                obj = null;
            }
            SalesforceErrorDto salesforceErrorDto = (SalesforceErrorDto) obj;
            if (salesforceErrorDto != null && (salesforceErrorDetailsDto = salesforceErrorDto.f46765a) != null && (salesforceErrorResponseDto = salesforceErrorDetailsDto.f46763a) != null && (salesforceErrorDataDto = salesforceErrorResponseDto.f46767a) != null && (salesforceErrorSubDetailsDto = salesforceErrorDataDto.f46760a) != null && (salesforceErrorStatusDetailsDto = salesforceErrorSubDetailsDto.f46771a) != null) {
                str = salesforceErrorStatusDetailsDto.f46769a;
            }
            if (Intrinsics.c(str, "ACCT-CREATING")) {
                throw new AccountUnderProcessException();
            }
        }
        throw new IllegalStateException("Getting history orders failed");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object k(ExchangeSetupPost exchangeSetupPost, ContinuationImpl continuationImpl) {
        OrdersRemoteDataSource$setupExchange$1 ordersRemoteDataSource$setupExchange$1;
        if (continuationImpl instanceof OrdersRemoteDataSource$setupExchange$1) {
            ordersRemoteDataSource$setupExchange$1 = (OrdersRemoteDataSource$setupExchange$1) continuationImpl;
            int i2 = ordersRemoteDataSource$setupExchange$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$setupExchange$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$setupExchange$1 = new OrdersRemoteDataSource$setupExchange$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$setupExchange$1 = new OrdersRemoteDataSource$setupExchange$1(this, continuationImpl);
        }
        Object obj = ordersRemoteDataSource$setupExchange$1.f44173b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$setupExchange$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        Function1 ordersRemoteDataSource$setupExchange$2 = new OrdersRemoteDataSource$setupExchange$2(this, exchangeSetupPost, null);
        ordersRemoteDataSource$setupExchange$1.d = 1;
        Object objC = c(ordersRemoteDataSource$setupExchange$2, ordersRemoteDataSource$setupExchange$1);
        return objC == obj2 ? obj2 : objC;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object l(String str, ContinuationImpl continuationImpl) {
        OrdersRemoteDataSource$submitSelfExchange$1 ordersRemoteDataSource$submitSelfExchange$1;
        if (continuationImpl instanceof OrdersRemoteDataSource$submitSelfExchange$1) {
            ordersRemoteDataSource$submitSelfExchange$1 = (OrdersRemoteDataSource$submitSelfExchange$1) continuationImpl;
            int i2 = ordersRemoteDataSource$submitSelfExchange$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ordersRemoteDataSource$submitSelfExchange$1.d = i2 - Integer.MIN_VALUE;
            } else {
                ordersRemoteDataSource$submitSelfExchange$1 = new OrdersRemoteDataSource$submitSelfExchange$1(this, continuationImpl);
            }
        } else {
            ordersRemoteDataSource$submitSelfExchange$1 = new OrdersRemoteDataSource$submitSelfExchange$1(this, continuationImpl);
        }
        Object obj = ordersRemoteDataSource$submitSelfExchange$1.f44177b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = ordersRemoteDataSource$submitSelfExchange$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        Function1 ordersRemoteDataSource$submitSelfExchange$2 = new OrdersRemoteDataSource$submitSelfExchange$2(this, str, null);
        ordersRemoteDataSource$submitSelfExchange$1.d = 1;
        Object objC = c(ordersRemoteDataSource$submitSelfExchange$2, ordersRemoteDataSource$submitSelfExchange$1);
        return objC == obj2 ? obj2 : objC;
    }
}
