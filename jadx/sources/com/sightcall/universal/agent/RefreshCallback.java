package com.sightcall.universal.agent;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface RefreshCallback {

    public static class Success extends ApiCallback<JsonApi.Wrapper<Identity>> {
        private final Agent agent;
        private final Code code;
        private final Consent consent;
        private final List<Usecase> usecases;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<Identity>> holder, Agent agent, List<Usecase> list, Consent consent, Code code) {
            super(holder);
            this.agent = agent;
            this.usecases = list;
            this.consent = consent;
            this.code = code;
        }

        public Agent agent() {
            return this.agent;
        }

        public Code code() {
            return this.code;
        }

        public Consent consent() {
            return this.consent;
        }

        public List<Usecase> usecases() {
            return this.usecases;
        }
    }

    void onRefreshError(Error error);

    void onRefreshSuccess(Success success);

    public static class Error extends ApiCallback<JsonApi.Wrapper<Identity>> {
        public Error() {
        }

        public Error(ApiCallback.Holder<JsonApi.Wrapper<Identity>> holder) {
            super(holder);
        }
    }
}
