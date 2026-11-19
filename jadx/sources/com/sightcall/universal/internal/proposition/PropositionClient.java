package com.sightcall.universal.internal.proposition;

import android.graphics.Bitmap;
import android.os.SystemClock;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.api.Headers;
import com.sightcall.universal.model.Session;
import java.io.ByteArrayOutputStream;
import java.util.UUID;
import net.rtccloud.sdk.util.OldLogger;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
class PropositionClient {
    private static final OldLogger log = OldLogger.get("PropositionClient");

    public interface AcceptCallback {
        void onAcceptError();

        void onAcceptFailure();

        void onAcceptSuccess();
    }

    public interface CancelCallback {
        void onCancelError();

        void onCancelFailure();

        void onCancelSuccess();
    }

    public interface SignCallback {
        void onSignError();

        void onSignFailure();

        void onSignSuccess();
    }

    public static Call<?> accept(Session session, Proposition proposition, final AcceptCallback acceptCallback) {
        log.d("accept()");
        Environment environment = session.environment();
        Call<Void> callPatch = proposition.acceptUrl == null ? api(environment).patch(Headers.Authorization.TokenReference.with(session.config.hash()), proposition.id, patchAccept()) : api(environment).acceptV3(proposition.acceptUrl);
        callPatch.p(new Callback<Void>() { // from class: com.sightcall.universal.internal.proposition.PropositionClient.1
            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable th) {
                PropositionClient.log.e("accept.onFailure()", th);
                acceptCallback.onAcceptFailure();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                okhttp3.Response response2 = response.f79449a;
                if (response2.r) {
                    PropositionClient.log.d("accept.onResponse()");
                    acceptCallback.onAcceptSuccess();
                    return;
                }
                PropositionClient.log.e("accept.onResponse() " + response2.f76986e + " " + response2.d);
                acceptCallback.onAcceptError();
            }
        });
        return callPatch;
    }

    public static PropositionApi api(Environment environment) {
        return (PropositionApi) Apis.get(PropositionApi.class, environment);
    }

    public static Call<?> cancel(Session session, Proposition proposition, final CancelCallback cancelCallback) {
        log.d("cancel()");
        Environment environment = session.environment();
        Call<Void> callPatch = proposition.acceptUrl == null ? api(environment).patch(Headers.Authorization.TokenReference.with(session.config.hash()), proposition.id, patchCancel()) : api(environment).cancelV3(proposition.cancelUrl);
        callPatch.p(new Callback<Void>() { // from class: com.sightcall.universal.internal.proposition.PropositionClient.2
            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable th) {
                PropositionClient.log.e("cancel.onFailure()", th);
                cancelCallback.onCancelFailure();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                okhttp3.Response response2 = response.f79449a;
                if (response2.r) {
                    PropositionClient.log.d("cancel.onResponse()");
                    cancelCallback.onCancelSuccess();
                    return;
                }
                PropositionClient.log.e("cancel.onResponse() " + response2.f76986e + " " + response2.d);
                cancelCallback.onCancelError();
            }
        });
        return callPatch;
    }

    private static RequestBody patchAccept() {
        MediaType.f76933e.getClass();
        return RequestBody.c("{\"proposition\":{\"state\":\"accepted\"}}", MediaType.Companion.a(InitUrlConnection.CONTENT_TYPE_VALUE));
    }

    private static RequestBody patchCancel() {
        MediaType.f76933e.getClass();
        return RequestBody.c("{\"proposition\":{\"state\":\"canceled\"}}", MediaType.Companion.a(InitUrlConnection.CONTENT_TYPE_VALUE));
    }

    public static Call<?> sign(Session session, Proposition proposition, Bitmap bitmap, final SignCallback signCallback) {
        Call<Void> callSign;
        OldLogger oldLogger = log;
        oldLogger.d("sign()");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        MediaType.f76933e.getClass();
        MediaType mediaTypeA = MediaType.Companion.a("image/png");
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        RequestBody.Companion companion = RequestBody.f76978a;
        companion.getClass();
        byteArray.getClass();
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3A = RequestBody.Companion.a(byteArray.length, mediaTypeA, byteArray);
        oldLogger.d("toByteArray in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + NBSSpanMetricUnit.Millisecond);
        if (proposition.signatureUploadUrl == null || proposition.signatureUploadToken == null) {
            PropositionApi propositionApiApi = api(session.environment());
            Headers.Authorization.TokenReference tokenReferenceWith = Headers.Authorization.TokenReference.with(session.config.hash());
            String str = proposition.id;
            MultipartBody.Part.f76948c.getClass();
            callSign = propositionApiApi.sign(tokenReferenceWith, str, MultipartBody.Part.Companion.b("file", "file", requestBody$Companion$toRequestBody$3A));
        } else {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            builder.c(MultipartBody.f76939i);
            builder.a("name", UUID.randomUUID().toString());
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            MediaType mediaTypeA2 = MediaType.Companion.a("image/jpeg");
            companion.getClass();
            byteArray2.getClass();
            RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3A2 = RequestBody.Companion.a(byteArray2.length, mediaTypeA2, byteArray2);
            MultipartBody.Part.f76948c.getClass();
            builder.f76947c.add(MultipartBody.Part.Companion.b("file", "blob", requestBody$Companion$toRequestBody$3A2));
            MultipartBody multipartBodyB = builder.b();
            callSign = api(session.environment()).uploadSignV3(proposition.signatureUploadUrl, " Bearer " + proposition.signatureUploadToken, multipartBodyB);
        }
        callSign.p(new Callback<Void>() { // from class: com.sightcall.universal.internal.proposition.PropositionClient.3
            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable th) {
                PropositionClient.log.e("sign.onFailure()", th);
                signCallback.onSignFailure();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                okhttp3.Response response2 = response.f79449a;
                if (response2.r) {
                    PropositionClient.log.d("sign.onResponse()");
                    signCallback.onSignSuccess();
                    return;
                }
                PropositionClient.log.e("sign.onResponse() " + response2.f76986e + " " + response2.d);
                signCallback.onSignError();
            }
        });
        return callSign;
    }
}
