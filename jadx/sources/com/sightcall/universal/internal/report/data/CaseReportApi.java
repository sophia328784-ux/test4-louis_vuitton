package com.sightcall.universal.internal.report.data;

import com.sightcall.universal.internal.report.data.entities.CaseReportV3Request;
import com.sightcall.universal.internal.report.data.entities.CaseReportV3Response;
import kotlin.Metadata;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH'¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/internal/report/data/CaseReportApi;", "", "updateCaseReport", "Lretrofit2/Call;", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Response;", "authorization", "", "caseReportRecordingRequestEntity", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CaseReportApi {
    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v3/caseReportEventsArrays")
    Call<CaseReportV3Response> updateCaseReport(@Header("Authorization") String authorization, @Body CaseReportV3Request caseReportRecordingRequestEntity);
}
