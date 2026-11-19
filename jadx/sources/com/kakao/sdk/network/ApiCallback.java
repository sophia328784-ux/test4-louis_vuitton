package com.kakao.sdk.network;

import com.google.gson.Gson;
import com.kakao.sdk.common.model.ApiError;
import com.kakao.sdk.common.model.ApiErrorCause;
import com.kakao.sdk.common.model.ApiErrorResponse;
import com.kakao.sdk.common.util.KakaoJson;
import com.kakao.sdk.common.util.SdkLog;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u0007B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/kakao/sdk/network/ApiCallback;", "T", "Lretrofit2/Callback;", "", "logging", "<init>", "(Z)V", "Companion", "network_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class ApiCallback<T> implements Callback<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f35895c = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f35896b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/network/ApiCallback$Companion;", "", "network_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ ApiCallback(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z);
    }

    public abstract void a(Object obj, Throwable th);

    @Override // retrofit2.Callback
    public final void onFailure(Call call, Throwable th) {
        if (th instanceof ExceptionWrapper) {
            th = ((ExceptionWrapper) th).f35907b;
        }
        if (this.f35896b) {
            SdkLog.d.getClass();
            SdkLog.Companion.a(th);
        }
        a(null, th);
    }

    @Override // retrofit2.Callback
    public final void onResponse(Call call, Response response) {
        ApiError apiError;
        ResponseBody responseBody;
        Object obj = response.f79450b;
        String strString = null;
        if (obj != null) {
            if (this.f35896b) {
                SdkLog.d.getClass();
                SdkLog.Companion.b(obj);
            }
            a(obj, null);
            return;
        }
        HttpException httpException = new HttpException(response);
        f35895c.getClass();
        try {
            Response response2 = httpException.d;
            if (response2 != null && (responseBody = response2.f79451c) != null) {
                strString = responseBody.string();
            }
            Gson gson = KakaoJson.f35885a;
            strString.getClass();
            ApiErrorResponse apiErrorResponse = (ApiErrorResponse) KakaoJson.f35885a.fromJson(strString, (Type) ApiErrorResponse.class);
            ApiErrorCause apiErrorCause = (ApiErrorCause) KakaoJson.a(String.valueOf(apiErrorResponse.getCode()), ApiErrorCause.class);
            if (apiErrorCause == null) {
                apiErrorCause = ApiErrorCause.Unknown;
            }
            apiError = new ApiError(httpException.f79346b, apiErrorCause, apiErrorResponse);
        } catch (Throwable th) {
            apiError = th;
        }
        onFailure(call, apiError);
    }

    public ApiCallback(boolean z) {
        this.f35896b = z;
    }

    public ApiCallback() {
        this(false, 1, null);
    }
}
