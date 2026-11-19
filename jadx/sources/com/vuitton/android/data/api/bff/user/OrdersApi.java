package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.account.orders.HistoryOrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.InvoiceDto;
import com.vuitton.android.data.dto.account.orders.OngoingOrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.OrderReturnDtoResponse;
import com.vuitton.android.data.dto.account.orders.OrderReturnItemDto;
import com.vuitton.android.data.dto.account.orders.OrderReturnReasonDto;
import com.vuitton.android.data.dto.account.orders.PersonalizationDtoResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.ResponseBody;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u0007J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0003H§@¢\u0006\u0002\u0010\nJ\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0003H§@¢\u0006\u0002\u0010\nJ\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0003H§@¢\u0006\u0002\u0010\nJ\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H§@¢\u0006\u0002\u0010\nJ$\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u00032\u000e\b\u0001\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0010H§@¢\u0006\u0002\u0010\u0016¨\u0006\u0017À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/OrdersApi;", "", "getInvoice", "Lretrofit2/Response;", "Lokhttp3/ResponseBody;", "invoiceDto", "Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;", "(Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPurchaseHistory", "Lcom/vuitton/android/data/dto/account/orders/HistoryOrdersDtoResponse;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPurchaseHistoryPersonalization", "Lcom/vuitton/android/data/dto/account/orders/PersonalizationDtoResponse;", "getPurchaseOngoing", "Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse;", "getReturnReasons", "", "Lcom/vuitton/android/data/dto/account/orders/OrderReturnReasonDto;", "confirmReturn", "Lcom/vuitton/android/data/dto/account/orders/OrderReturnDtoResponse;", "orderReturnDto", "Lcom/vuitton/android/data/dto/account/orders/OrderReturnItemDto;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OrdersApi {
    @POST("orders/return")
    Object confirmReturn(@Body List<OrderReturnItemDto> list, Continuation<? super Response<OrderReturnDtoResponse>> continuation);

    @POST("v2/orders/invoice")
    Object getInvoice(@Body InvoiceDto invoiceDto, Continuation<? super Response<ResponseBody>> continuation);

    @GET("v2/orders/history")
    Object getPurchaseHistory(Continuation<? super Response<HistoryOrdersDtoResponse>> continuation);

    @GET("v2/orders/history/personalization")
    Object getPurchaseHistoryPersonalization(Continuation<? super Response<PersonalizationDtoResponse>> continuation);

    @GET("v3/orders/on-going")
    Object getPurchaseOngoing(Continuation<? super Response<OngoingOrdersDtoResponse>> continuation);

    @GET("orders/return-reasons")
    Object getReturnReasons(Continuation<? super List<OrderReturnReasonDto>> continuation);
}
