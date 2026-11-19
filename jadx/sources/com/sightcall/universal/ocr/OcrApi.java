package com.sightcall.universal.ocr;

import com.sightcall.universal.agent.Timeout;
import java.util.concurrent.TimeUnit;
import okhttp3.MultipartBody;
import retrofit2.Call;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;

/* JADX INFO: loaded from: classes3.dex */
interface OcrApi {
    @Timeout(read = 20, unit = TimeUnit.SECONDS, write = 20)
    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi})
    @POST("v2/ocr")
    @Multipart
    Call<Void> upload(@Header(com.sightcall.universal.api.Headers.Authorization.Hash) com.sightcall.universal.api.Headers.Authorization.Bearer bearer, @Part MultipartBody.Part part, @Part MultipartBody.Part part2);
}
