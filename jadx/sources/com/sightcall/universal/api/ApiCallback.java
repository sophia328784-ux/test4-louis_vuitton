package com.sightcall.universal.api;

import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ApiCallback<T> {
    private final Holder<T> holder;

    public ApiCallback() {
        this.holder = null;
    }

    public Call<T> call() {
        Holder<T> holder = this.holder;
        if (holder != null) {
            return ((Holder) holder).call;
        }
        return null;
    }

    public Response<T> response() {
        Holder<T> holder = this.holder;
        if (holder != null) {
            return ((Holder) holder).response;
        }
        return null;
    }

    public Throwable throwable() {
        Holder<T> holder = this.holder;
        if (holder != null) {
            return ((Holder) holder).throwable;
        }
        return null;
    }

    public ApiCallback(Holder<T> holder) {
        this.holder = holder;
    }

    public static class Holder<T> {
        private final Call<T> call;
        private final Response<T> response;
        private final Throwable throwable;

        private Holder(Call<T> call, Response<T> response, Throwable th) {
            this.call = call;
            this.response = response;
            this.throwable = th;
        }

        public static <T> Holder<T> hold(ApiCallback<T> apiCallback) {
            return new Holder<>(apiCallback.call(), apiCallback.response(), apiCallback.throwable());
        }

        public static <T> Holder<T> hold(Call<T> call, Throwable th) {
            return new Holder<>(call, null, th);
        }

        public static <T> Holder<T> hold(Call<T> call, Response<T> response, Throwable th) {
            return new Holder<>(call, response, th);
        }

        public static <T> Holder<T> hold(Call<T> call, Response<T> response) {
            return new Holder<>(call, response, null);
        }
    }
}
