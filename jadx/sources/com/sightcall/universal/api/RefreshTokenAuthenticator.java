package com.sightcall.universal.api;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/sightcall/universal/api/RefreshTokenAuthenticator;", "Lokhttp3/Authenticator;", "<init>", "()V", "authenticate", "Lokhttp3/Request;", "route", "Lokhttp3/Route;", Payload.RESPONSE, "Lokhttp3/Response;", "UnregisterCallback", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RefreshTokenAuthenticator implements Authenticator {

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/sightcall/universal/api/RefreshTokenAuthenticator$UnregisterCallback;", "Lcom/sightcall/universal/agent/UnregisterCallback;", "<init>", "()V", "onUnregisterSuccess", "", "success", "Lcom/sightcall/universal/agent/UnregisterCallback$Success;", "onUnregisterError", "error", "Lcom/sightcall/universal/agent/UnregisterCallback$Error;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class UnregisterCallback implements com.sightcall.universal.agent.UnregisterCallback {
        @Override // com.sightcall.universal.agent.UnregisterCallback
        public void onUnregisterError(com.sightcall.universal.agent.UnregisterCallback.Error error) {
            error.getClass();
        }

        @Override // com.sightcall.universal.agent.UnregisterCallback
        public void onUnregisterSuccess(com.sightcall.universal.agent.UnregisterCallback.Success success) {
            success.getClass();
        }
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) {
        Request request;
        response.getClass();
        synchronized (this) {
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.f71921b = response.f76984b;
            BuildersKt.d(new RefreshTokenAuthenticator$authenticate$1$1(ref$ObjectRef, response, null));
            request = (Request) ref$ObjectRef.f71921b;
        }
        return request;
    }
}
