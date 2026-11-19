package com.sightcall.analytics.datasource.analyticsupload;

import com.sightcall.analytics.datasource.AnalyticsUploadDatasource;
import com.sightcall.httpclient.SightCallHeaders;
import com.sightcall.pratik.exceptions.NotSuccessfulResponseException;
import com.sightcall.pratik.logs.Logger;
import java.io.IOException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J.\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\u000eJ(\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;", "Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;", "analyticsUploadApi", "Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;", "<init>", "(Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;)V", "upload", "", "uploadUrl", "", "token", "chunk", "", "fileName", "(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryUpload", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnalyticsUploadDatasourceImpl implements AnalyticsUploadDatasource {
    private final AnalyticsUploadApi analyticsUploadApi;

    @Inject
    public AnalyticsUploadDatasourceImpl(AnalyticsUploadApi analyticsUploadApi) {
        analyticsUploadApi.getClass();
        this.analyticsUploadApi = analyticsUploadApi;
    }

    private final void tryUpload(String uploadUrl, String token, byte[] chunk, String fileName) throws NotSuccessfulResponseException, IOException, RuntimeException {
        MultipartBody.Part.f76948c.getClass();
        fileName.getClass();
        RequestBody.Companion companion = RequestBody.f76978a;
        companion.getClass();
        MediaType mediaTypeA = null;
        MultipartBody.Part partB = MultipartBody.Part.Companion.b("name", null, RequestBody.Companion.b(fileName, null));
        MediaType.f76933e.getClass();
        try {
            mediaTypeA = MediaType.Companion.a("application/octet-stream");
        } catch (IllegalArgumentException unused) {
        }
        int length = chunk.length;
        companion.getClass();
        Response responseExecute = this.analyticsUploadApi.upload(uploadUrl, new SightCallHeaders.Authorization.Bearer(token), partB, MultipartBody.Part.Companion.b("file", fileName, RequestBody.Companion.a(length, mediaTypeA, chunk))).execute();
        if (!responseExecute.f79449a.r) {
            throw new NotSuccessfulResponseException(responseExecute.f79449a.f76986e, responseExecute.f79451c);
        }
    }

    @Override // com.sightcall.analytics.datasource.AnalyticsUploadDatasource
    public Object upload(String str, String str2, byte[] bArr, String str3, Continuation<? super Unit> continuation) {
        try {
            tryUpload(str, str2, bArr, str3);
        } catch (NotSuccessfulResponseException unused) {
            Logger.INSTANCE.getTag();
        } catch (IOException unused2) {
            Logger.INSTANCE.getTag();
        } catch (RuntimeException unused3) {
            Logger.INSTANCE.getTag();
        }
        return Unit.f71739a;
    }
}
