package com.sightcall.analytics.datasource.analyticsupload;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.httpclient.SightCallHeaders;
import kotlin.Metadata;
import okhttp3.MultipartBody;
import retrofit2.Call;
import retrofit2.http.Header;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\nH'¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;", "", "upload", "Lretrofit2/Call;", "Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "authorization", "Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Bearer;", "fileName", "Lokhttp3/MultipartBody$Part;", "chunk", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AnalyticsUploadApi {
    @POST
    @Multipart
    Call<AnalyticsUploadResponseEntity> upload(@Url String url, @Header("Authorization") SightCallHeaders.Authorization.Bearer authorization, @Part MultipartBody.Part fileName, @Part MultipartBody.Part chunk);
}
