package com.sightcall.universal.guest;

import android.content.Context;
import com.sightcall.pratik.utils.JWTUtilsKt;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.Headers;
import com.sightcall.universal.api.JsonApi;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import net.rtccloud.sdk.Rtcc;
import okhttp3.HttpUrl;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalGuest {
    private final Context context;

    public interface CancelAgentCallback {
        void onCancelAgentError();

        void onCancelAgentSuccess();
    }

    public interface NotifyAgentCallback {
        void onNotifyAgentError();

        void onNotifyAgentSuccess(Calls.Action action);
    }

    public interface RequestAgentCallback {
        void onRequestAgentError();

        void onRequestAgentSuccess(AgentHttpAcd.Result.Data data);
    }

    public UniversalGuest(Context context) {
        this.context = context.getApplicationContext();
        Rtcc.instance().bus().register(this);
    }

    private GuestApi api(Session session) {
        return (GuestApi) Apis.get(GuestApi.class, session.environment());
    }

    public void cancelAgent(Session session, HttpAcdRequest httpAcdRequest, final CancelAgentCallback cancelAgentCallback) {
        Headers.Authorization.TokenReference tokenReferenceWith = Headers.Authorization.TokenReference.with(session.config.hash());
        String strId = httpAcdRequest.id();
        AgentHttpAcd.Cancel cancel = new AgentHttpAcd.Cancel(strId);
        String strPartner = httpAcdRequest.partner();
        HttpUrl httpUrlC = null;
        if (strPartner != null) {
            HttpUrl.f76918j.getClass();
            try {
                httpUrlC = HttpUrl.Companion.c(strPartner);
            } catch (IllegalArgumentException unused) {
            }
        }
        GuestApi guestApiApi = api(session);
        (httpUrlC != null ? guestApiApi.cancelAgent(tokenReferenceWith, httpUrlC, cancel) : guestApiApi.cancelAgent(tokenReferenceWith, strId, cancel)).p(new Callback<Void>() { // from class: com.sightcall.universal.guest.UniversalGuest.2
            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable th) {
                Universal.logger().e(th);
                cancelAgentCallback.onCancelAgentError();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                boolean z = response.f79449a.r;
                CancelAgentCallback cancelAgentCallback2 = cancelAgentCallback;
                if (z) {
                    cancelAgentCallback2.onCancelAgentSuccess();
                } else {
                    cancelAgentCallback2.onCancelAgentError();
                }
            }
        });
    }

    public void notifyAgent(Session session, final NotifyAgentCallback notifyAgentCallback) {
        api(session).calls(Headers.Authorization.Bearer.with(session.config.hash()), JsonApi.wrap(Calls.ready(session))).p(new Callback<JsonApi.Wrapper<Calls>>() { // from class: com.sightcall.universal.guest.UniversalGuest.3
            @Override // retrofit2.Callback
            public void onFailure(Call<JsonApi.Wrapper<Calls>> call, Throwable th) {
                Universal.logger().e(th);
                notifyAgentCallback.onNotifyAgentError();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<JsonApi.Wrapper<Calls>> call, Response<JsonApi.Wrapper<Calls>> response) {
                if (response.f79449a.r) {
                    Calls calls = (Calls) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                    Calls.Action actionNextAction = calls != null ? calls.nextAction() : null;
                    if (actionNextAction != null) {
                        notifyAgentCallback.onNotifyAgentSuccess(actionNextAction);
                        return;
                    }
                }
                notifyAgentCallback.onNotifyAgentError();
            }
        });
    }

    public void requestAgent(Session session, String str, final RequestAgentCallback requestAgentCallback) {
        Usecase usecase = session.usecase;
        String uid = JWTUtilsKt.getUid(session.rtccJwt);
        Integer num = usecase.productId;
        AgentHttpAcd.Request request = new AgentHttpAcd.Request(this.context, str, uid, usecase.idInt(), num != null ? num.intValue() : 0, session.reference(), session.caseReportId());
        Headers.Authorization.TokenReference tokenReferenceWith = Headers.Authorization.TokenReference.with(session.config.hash());
        HttpUrl.f76918j.getClass();
        HttpUrl httpUrlD = HttpUrl.Companion.d(str);
        GuestApi guestApiApi = api(session);
        (httpUrlD != null ? guestApiApi.requestAgent(tokenReferenceWith, httpUrlD, request) : guestApiApi.requestAgent(tokenReferenceWith, request)).p(new Callback<AgentHttpAcd.Result>() { // from class: com.sightcall.universal.guest.UniversalGuest.1
            @Override // retrofit2.Callback
            public void onFailure(Call<AgentHttpAcd.Result> call, Throwable th) {
                Universal.logger().e(th);
                requestAgentCallback.onRequestAgentError();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<AgentHttpAcd.Result> call, Response<AgentHttpAcd.Result> response) {
                AgentHttpAcd.Result result;
                okhttp3.Response response2 = response.f79449a;
                if ((response2.r || response2.f76986e == 410) && (result = (AgentHttpAcd.Result) response.f79450b) != null) {
                    requestAgentCallback.onRequestAgentSuccess(result.data());
                } else {
                    requestAgentCallback.onRequestAgentError();
                }
            }
        });
    }

    private GuestApi api(Config config) {
        return (GuestApi) Apis.get(GuestApi.class, config.environment());
    }
}
