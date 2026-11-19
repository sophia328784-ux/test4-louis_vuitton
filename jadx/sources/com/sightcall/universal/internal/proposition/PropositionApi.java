package com.sightcall.universal.internal.proposition;

import com.batch.android.s.b;
import com.sightcall.universal.api.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.Multipart;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
interface PropositionApi {
    @POST
    Call<Void> acceptV3(@Url String str);

    @POST
    Call<Void> cancelV3(@Url String str);

    @PATCH("v1.7/external/propositions/{id}")
    Call<Void> patch(@Header(Headers.Authorization.Raw) Headers.Authorization.TokenReference tokenReference, @Path(b.a.f24015b) String str, @Body RequestBody requestBody);

    @POST("v1.7/external/propositions/{id}/signature")
    @Multipart
    Call<Void> sign(@Header(Headers.Authorization.Raw) Headers.Authorization.TokenReference tokenReference, @Path(b.a.f24015b) String str, @Part MultipartBody.Part part);

    @POST
    Call<Void> uploadSignV3(@Url String str, @Header("Authorization") String str2, @Body RequestBody requestBody);
}
