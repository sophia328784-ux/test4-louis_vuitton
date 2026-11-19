package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface FetchUsecasesCallback {

    public static class Success extends ApiCallback<JsonApi.Wrapper<Identity>> {
        final List<Usecase> usecases;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<Identity>> holder, List<Usecase> list) {
            super(holder);
            this.usecases = list;
        }

        public List<Usecase> usecases() {
            return this.usecases;
        }
    }

    void onFetchUsecasesError(Error error);

    void onFetchUsecasesSuccess(Success success);

    public static class Error extends ApiCallback<JsonApi.Wrapper<Identity>> {
        public Error() {
        }

        public Error(ApiCallback.Holder<JsonApi.Wrapper<Identity>> holder) {
            super(holder);
        }
    }
}
