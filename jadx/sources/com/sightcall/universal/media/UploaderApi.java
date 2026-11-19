package com.sightcall.universal.media;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.universal.agent.Timeout;
import java.util.concurrent.TimeUnit;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH'J,\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\b\b\u0001\u0010\u000b\u001a\u00020\u00062\b\b\u0001\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\u000e\u001a\u00020\u000fH'¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/media/UploaderApi;", "", "createPictureGroup", "Lretrofit2/Call;", "Lcom/sightcall/universal/media/PictureGroupV3Response;", "token", "", "request", "Lcom/sightcall/universal/media/PictureGroupV3Request;", "uploadPictures", "Ljava/lang/Void;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "authorization", "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;", "file", "Lokhttp3/RequestBody;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface UploaderApi {
    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v3/savePictureSessions")
    Call<PictureGroupV3Response> createPictureGroup(@Header("Authorization") String token, @Body PictureGroupV3Request request);

    @Timeout(read = 20, unit = TimeUnit.SECONDS, write = 20)
    @POST
    Call<Void> uploadPictures(@Url String url, @Header("Authorization") com.sightcall.universal.api.Headers.Authorization.Bearer authorization, @Body RequestBody file);
}
