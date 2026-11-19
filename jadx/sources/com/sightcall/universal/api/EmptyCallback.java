package com.sightcall.universal.api;

import com.sightcall.pratik.logs.Logger;
import okhttp3.Request;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
public class EmptyCallback<T> implements Callback<T> {
    @Override // retrofit2.Callback
    public void onFailure(Call<T> call, Throwable th) {
        Request request = call.request();
        Logger.INSTANCE.e(request.f76970b + " " + request.f76969a + " [" + th.getMessage() + "]", th);
    }

    @Override // retrofit2.Callback
    public void onResponse(Call<T> call, Response<T> response) {
        Request request = call.request();
        Logger.INSTANCE.d(request.f76970b + " " + request.f76969a + " [" + response.f79449a.f76986e + " " + response.f79449a.d + "]");
    }
}
