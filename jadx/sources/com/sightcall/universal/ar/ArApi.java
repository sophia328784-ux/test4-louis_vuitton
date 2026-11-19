package com.sightcall.universal.ar;

import com.sightcall.universal.api.JsonApi;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface ArApi {
    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v2/upload-pictures")
    Call<JsonApi.Wrapper<ArPictureUpload>> upload(@Header(com.sightcall.universal.api.Headers.Authorization.Hash) com.sightcall.universal.api.Headers.Authorization.Bearer bearer, @Body JsonApi.Wrapper<ArPictureUpload> wrapper);
}
