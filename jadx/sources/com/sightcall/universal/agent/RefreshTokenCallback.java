package com.sightcall.universal.agent;

import com.sightcall.universal.agent.registration.AccessTokensResponse;
import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\t\nJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/agent/RefreshTokenCallback;", "", "onRefreshTokenSuccess", "", "success", "Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;", "onRefreshTokenError", "error", "Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;", "Success", "Error", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface RefreshTokenCallback {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;", "", "<init>", "()V", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Error {
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B#\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;", "Lcom/sightcall/universal/api/ApiCallback;", "Lcom/sightcall/universal/api/JsonApi$Wrapper;", "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;", "hold", "Lcom/sightcall/universal/api/ApiCallback$Holder;", "registration", "<init>", "(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/registration/AccessTokensResponse;)V", "getRegistration", "()Lcom/sightcall/universal/agent/registration/AccessTokensResponse;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Success extends ApiCallback<JsonApi.Wrapper<AccessTokensResponse>> {
        private final AccessTokensResponse registration;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(ApiCallback.Holder<JsonApi.Wrapper<AccessTokensResponse>> holder, AccessTokensResponse accessTokensResponse) {
            super(holder);
            holder.getClass();
            accessTokensResponse.getClass();
            this.registration = accessTokensResponse;
        }

        public final AccessTokensResponse getRegistration() {
            return this.registration;
        }
    }

    void onRefreshTokenError(Error error);

    void onRefreshTokenSuccess(Success success);
}
