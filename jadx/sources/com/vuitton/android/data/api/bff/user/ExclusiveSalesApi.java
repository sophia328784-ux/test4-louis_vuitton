package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.exclusivesales.ExclusiveSalesAvailableDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import lv.nfc.reader.utils.LVConstants;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.Header;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0003\u0010\u0005\u001a\u00020\u00062\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0006H§@¢\u0006\u0002\u0010\b¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;", "", "getUserExclusiveSalesInfo", "Lretrofit2/Response;", "Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto;", "accept", "", "sotToken", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ExclusiveSalesApi {
    @GET("account/exclusive-sales")
    Object getUserExclusiveSalesInfo(@Header(LVConstants.LV_JSON_KEY) String str, @Header("sot_token") String str2, Continuation<? super Response<ExclusiveSalesAvailableDto>> continuation);
}
