package com.sightcall.universal.media.offline;

import okhttp3.MultipartBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
public interface OfflineMediaApi {
    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v3/offlineMediaSessions")
    Call<ResponseBody> createOfflineMediaSession(@Header("Authorization") String str, @Body OfflineMediaSession.Request request);

    @POST
    @Multipart
    Call<ResponseBody> uploadFile(@Url String str, @Header("Authorization") String str2, @Part MultipartBody.Part part, @Part MultipartBody.Part part2);
}
