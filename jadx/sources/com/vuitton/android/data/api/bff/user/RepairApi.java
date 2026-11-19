package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.careservices.RepairCancellationReasonDto;
import com.vuitton.android.data.dto.repair.RepairStatusTranslationDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\u0005J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H§@¢\u0006\u0002\u0010\u0005¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/RepairApi;", "", "getTranslations", "", "Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRepairCancellationReason", "Lcom/vuitton/android/data/dto/careservices/RepairCancellationReasonDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface RepairApi {
    @GET("repair/cancellation-reasons")
    Object getRepairCancellationReason(Continuation<? super List<RepairCancellationReasonDto>> continuation);

    @GET("repair/translation-status")
    Object getTranslations(Continuation<? super List<RepairStatusTranslationDto>> continuation);
}
