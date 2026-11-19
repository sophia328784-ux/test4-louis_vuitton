package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface FetchUsecaseCallback {

    public static class Success extends ApiCallback<JsonApi.Wrapper<Usecase>> {
        final Usecase usecase;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<Usecase>> holder, Usecase usecase) {
            super(holder);
            this.usecase = usecase;
        }

        public Usecase usecase() {
            return this.usecase;
        }
    }

    void onFetchUsecaseError(Error error);

    void onFetchUsecaseSuccess(Success success);

    public static class Error extends ApiCallback<JsonApi.Wrapper<Usecase>> {
        public Error() {
        }

        public Error(ApiCallback.Holder<JsonApi.Wrapper<Usecase>> holder) {
            super(holder);
        }
    }
}
