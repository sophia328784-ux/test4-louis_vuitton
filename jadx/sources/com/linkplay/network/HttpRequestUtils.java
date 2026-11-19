package com.linkplay.network;

import android.os.Handler;
import android.os.Looper;
import com.dynatrace.android.callback.OkCallback;
import com.linkplay.medialib.FinalDataUtil;
import com.linkplay.request.RequestItem;
import defpackage.n00;
import java.io.File;
import java.io.IOException;
import java.util.List;
import lv.nfc.reader.utils.LVConstants;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$asRequestBody$1;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class HttpRequestUtils {
    public static final String COMMAND_URL = "/httpapi.asp?command=";
    public static final MediaType JSON;
    private static final MediaType MEDIA_OBJECT_STREAM;
    protected OkHttpClient mOkHttpClient;
    private Handler mUIHandler;

    public static abstract class ResultCallback {
        public abstract void onFailure(Exception exc);

        public abstract void onSuccess(OkHttpResponseItem okHttpResponseItem);
    }

    static {
        MediaType mediaTypeA;
        MediaType.f76933e.getClass();
        MediaType mediaTypeA2 = null;
        try {
            mediaTypeA = MediaType.Companion.a(LVConstants.LV_JSON_VALUE);
        } catch (IllegalArgumentException unused) {
            mediaTypeA = null;
        }
        JSON = mediaTypeA;
        try {
            mediaTypeA2 = MediaType.Companion.a("application/octet-stream");
        } catch (IllegalArgumentException unused2) {
        }
        MEDIA_OBJECT_STREAM = mediaTypeA2;
    }

    public HttpRequestUtils() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.c(OkHttpDataUtil.getReadTimeOut());
        builder.d(OkHttpDataUtil.getWriteTimeOut());
        builder.b(OkHttpDataUtil.getConnectTimeOut());
        this.mOkHttpClient = new OkHttpClient(builder);
        this.mUIHandler = new Handler(Looper.getMainLooper());
    }

    private Request buildDelRequestHeader(String str, List<Param> list) {
        Request.Builder builder = new Request.Builder();
        if (list != null) {
            for (Param param : list) {
                builder.a(param.key, param.value);
            }
        }
        builder.e(str);
        builder.c("DELETE", RequestBody.f76979b);
        return new Request(builder);
    }

    private Request buildGetRequestHeader(String str, List<Param> list) {
        Request.Builder builder = new Request.Builder();
        if (list != null) {
            for (Param param : list) {
                builder.a(param.key, param.value);
            }
        }
        builder.e(str);
        return new Request(builder);
    }

    private Request buildPostRequest(String str, List<Param> list, List<Param> list2) {
        Request.Builder builder = new Request.Builder();
        if (list != null) {
            for (Param param : list) {
                builder.a(param.key, param.value);
            }
        }
        FormBody.Builder builder2 = new FormBody.Builder();
        if (list2 != null) {
            for (Param param2 : list2) {
                builder2.a(param2.key, param2.value);
            }
        }
        FormBody formBodyB = builder2.b();
        builder.e(str);
        builder.c("POST", formBodyB);
        return new Request(builder);
    }

    private Request buildPutRequest(String str, List<Param> list, List<Param> list2) {
        Request.Builder builder = new Request.Builder();
        if (list != null) {
            for (Param param : list) {
                builder.a(param.key, param.value);
            }
        }
        FormBody.Builder builder2 = new FormBody.Builder();
        if (list2 != null) {
            for (Param param2 : list2) {
                builder2.a(param2.key, param2.value);
            }
        }
        FormBody formBodyB = builder2.b();
        builder.e(str);
        builder.c("PUT", formBodyB);
        return new Request(builder);
    }

    private void delRequest(String str, final ResultCallback resultCallback) {
        Request.Builder builder = new Request.Builder();
        builder.e(str);
        builder.c("DELETE", RequestBody.f76979b);
        Request request = new Request(builder);
        OkHttpClient okHttpClient = this.mOkHttpClient;
        OkCallback.a(n00.w(okHttpClient, okHttpClient, request, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.7
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                OkCallback.d(call, iOException);
                try {
                    HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                } catch (Throwable th) {
                    int i2 = OkCallback.f27607a;
                    throw th;
                }
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                OkCallback.e(call, response);
                try {
                    HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                } catch (Throwable th) {
                    int i2 = OkCallback.f27607a;
                    throw th;
                }
            }
        });
    }

    private OkHttpResponseItem getExecuteRequest(String str) {
        Request.Builder builder = new Request.Builder();
        builder.e(str);
        Request request = new Request(builder);
        OkHttpClient okHttpClient = this.mOkHttpClient;
        try {
            return parseResponse(OkCallback.b(n00.w(okHttpClient, okHttpClient, request, false)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void getRequest(List<Param> list, String str, final ResultCallback resultCallback) {
        Request requestBuildGetRequestHeader = buildGetRequestHeader(str, list);
        if (requestBuildGetRequestHeader == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildGetRequestHeader, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    OkCallback.d(call, iOException);
                    try {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    OkCallback.e(call, response);
                    try {
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    public static String getRequestPrefix(RequestItem requestItem) {
        if (isEncryptedFirmware(requestItem.getSecurity())) {
            return "https://" + requestItem.getIp() + COMMAND_URL;
        }
        return FinalDataUtil.HTTP_HEAD + requestItem.getIp() + COMMAND_URL;
    }

    public static HttpRequestUtils getRequestUtils(RequestItem requestItem) {
        if (isEncryptedFirmware(requestItem.getSecurity())) {
            return isHttpsEncrypted(requestItem.getSecurity()) ? EncryptedOkHttp.getInstance() : EncryptedNewOkHttp.getInstance();
        }
        return OkHttpUtils.getInstance();
    }

    private static boolean isEncryptedFirmware(String str) {
        return isHttpsEncrypted(str) || isHttps2Encrypted(str);
    }

    private static boolean isHttps2Encrypted(String str) {
        return "https/2.0".equals(str);
    }

    private static boolean isHttpsEncrypted(String str) {
        return SecurityConstants.SECURITY_HTTPS.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OkHttpResponseItem parseResponse(Response response) {
        if (response == null) {
            return null;
        }
        OkHttpResponseItem okHttpResponseItem = new OkHttpResponseItem();
        try {
            try {
                okHttpResponseItem.bytes = response.f76988h.bytes();
                okHttpResponseItem.headers = response.g;
                okHttpResponseItem.code = response.f76986e;
                return okHttpResponseItem;
            } catch (IOException e2) {
                okHttpResponseItem.bytes = e2.getMessage().getBytes();
                return okHttpResponseItem;
            }
        } catch (Throwable unused) {
            return okHttpResponseItem;
        }
    }

    private void postRequest(String str, final ResultCallback resultCallback, List<Param> list) {
        Request requestBuildPostRequest = buildPostRequest(str, list);
        if (requestBuildPostRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPostRequest, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.3
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    OkCallback.d(call, iOException);
                    try {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    OkCallback.e(call, response);
                    try {
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    private void putRequest(String str, final ResultCallback resultCallback, List<Param> list, File file) {
        Request requestBuildPutRequest = buildPutRequest(str, list, file);
        if (requestBuildPutRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPutRequest, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.6
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    OkCallback.d(call, iOException);
                    try {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    OkCallback.e(call, response);
                    try {
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFailCallback(final ResultCallback resultCallback, final Exception exc) {
        this.mUIHandler.post(new Runnable(this) { // from class: com.linkplay.network.HttpRequestUtils.11
            @Override // java.lang.Runnable
            public void run() {
                ResultCallback resultCallback2 = resultCallback;
                if (resultCallback2 != null) {
                    resultCallback2.onFailure(exc);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSuccessCallBack(final ResultCallback resultCallback, final OkHttpResponseItem okHttpResponseItem) {
        this.mUIHandler.post(new Runnable(this) { // from class: com.linkplay.network.HttpRequestUtils.12
            @Override // java.lang.Runnable
            public void run() {
                ResultCallback resultCallback2 = resultCallback;
                if (resultCallback2 != null) {
                    resultCallback2.onSuccess(okHttpResponseItem);
                }
            }
        });
    }

    public void delete(List<Param> list, String str, ResultCallback resultCallback) {
        delRequest(str, resultCallback, list);
    }

    public void get(String str, ResultCallback resultCallback) {
        getRequest(str, resultCallback);
    }

    public OkHttpResponseItem getExecute(String str) {
        return getExecuteRequest(str);
    }

    public void post(String str, ResultCallback resultCallback) {
        postRequest(str, resultCallback, null);
    }

    public void put(String str, ResultCallback resultCallback, List<Param> list, File file) {
        putRequest(str, resultCallback, list, file);
    }

    public void delete(String str, ResultCallback resultCallback) {
        delRequest(str, resultCallback);
    }

    public void get(List<Param> list, String str, ResultCallback resultCallback) {
        getRequest(list, str, resultCallback);
    }

    public void put(String str, ResultCallback resultCallback, List<Param> list, String str2) {
        putRequest(str, resultCallback, list, str2);
    }

    public void post(String str, ResultCallback resultCallback, List<Param> list) {
        postRequest(str, resultCallback, list);
    }

    public void put(String str, ResultCallback resultCallback, List<Param> list, List<Param> list2) {
        putRequest(str, resultCallback, list, list2);
    }

    public void post(String str, ResultCallback resultCallback, List<Param> list, List<Param> list2) {
        postRequest(str, resultCallback, list, list2);
    }

    public static class Param {
        String key;
        String value;

        public Param(String str, String str2) {
            this.key = str;
            this.value = str2;
        }

        public Param() {
        }
    }

    public void post(String str, ResultCallback resultCallback, List<Param> list, String str2) {
        postRequest(str, resultCallback, list, str2);
    }

    private void getRequest(String str, final ResultCallback resultCallback) {
        Request.Builder builder = new Request.Builder();
        builder.e(str);
        Request request = new Request(builder);
        OkHttpClient okHttpClient = this.mOkHttpClient;
        OkCallback.a(n00.w(okHttpClient, okHttpClient, request, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.2
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                OkCallback.d(call, iOException);
                try {
                    HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                } catch (Throwable th) {
                    int i2 = OkCallback.f27607a;
                    throw th;
                }
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                OkCallback.e(call, response);
                try {
                    HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                } catch (Throwable th) {
                    int i2 = OkCallback.f27607a;
                    throw th;
                }
            }
        });
    }

    private void postRequest(String str, final ResultCallback resultCallback, List<Param> list, List<Param> list2) {
        Request requestBuildPostRequest = buildPostRequest(str, list, list2);
        if (requestBuildPostRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPostRequest, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.4
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    OkCallback.d(call, iOException);
                    try {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    OkCallback.e(call, response);
                    try {
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    private void putRequest(String str, final ResultCallback resultCallback, List<Param> list, List<Param> list2) {
        Request requestBuildPutRequest = buildPutRequest(str, list, list2);
        if (requestBuildPutRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPutRequest, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.9
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    OkCallback.d(call, iOException);
                    try {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    OkCallback.e(call, response);
                    try {
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    private void delRequest(String str, final ResultCallback resultCallback, List<Param> list) {
        Request requestBuildDelRequestHeader = buildDelRequestHeader(str, list);
        if (requestBuildDelRequestHeader == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildDelRequestHeader, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.8
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    OkCallback.d(call, iOException);
                    try {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    OkCallback.e(call, response);
                    try {
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    private void postRequest(String str, final ResultCallback resultCallback, List<Param> list, String str2) {
        Request requestBuildPostRequest = buildPostRequest(str, list, str2);
        if (requestBuildPostRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPostRequest, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.5
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    OkCallback.d(call, iOException);
                    try {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    OkCallback.e(call, response);
                    try {
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    private void putRequest(String str, final ResultCallback resultCallback, List<Param> list, String str2) {
        Request requestBuildPutRequest = buildPutRequest(str, list, str2);
        if (requestBuildPutRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPutRequest, false), new Callback() { // from class: com.linkplay.network.HttpRequestUtils.10
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    OkCallback.d(call, iOException);
                    try {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, iOException);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    OkCallback.e(call, response);
                    try {
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, HttpRequestUtils.this.parseResponse(response));
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    private Request buildPostRequest(String str, List<Param> list) {
        FormBody.Builder builder = new FormBody.Builder();
        if (list != null) {
            for (Param param : list) {
                builder.a(param.key, param.value);
            }
        }
        FormBody formBodyB = builder.b();
        Request.Builder builder2 = new Request.Builder();
        builder2.e(str);
        builder2.c("POST", formBodyB);
        return new Request(builder2);
    }

    private Request buildPutRequest(String str, List<Param> list, File file) {
        Request.Builder builder = new Request.Builder();
        if (list != null) {
            for (Param param : list) {
                builder.a(param.key, param.value);
            }
        }
        MediaType mediaType = MEDIA_OBJECT_STREAM;
        RequestBody.f76978a.getClass();
        file.getClass();
        RequestBody$Companion$asRequestBody$1 requestBody$Companion$asRequestBody$1 = new RequestBody$Companion$asRequestBody$1(mediaType, file);
        builder.e(str);
        builder.c("PUT", requestBody$Companion$asRequestBody$1);
        return new Request(builder);
    }

    private Request buildPostRequest(String str, List<Param> list, String str2) {
        Request.Builder builder = new Request.Builder();
        if (list != null) {
            for (Param param : list) {
                builder.a(param.key, param.value);
            }
        }
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3C = RequestBody.c(str2, null);
        builder.e(str);
        builder.c("POST", requestBody$Companion$toRequestBody$3C);
        return new Request(builder);
    }

    private Request buildPutRequest(String str, List<Param> list, String str2) {
        Request.Builder builder = new Request.Builder();
        if (list != null) {
            for (Param param : list) {
                builder.a(param.key, param.value);
            }
        }
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3C = RequestBody.c(str2, JSON);
        builder.e(str);
        builder.c("PUT", requestBody$Companion$toRequestBody$3C);
        return new Request(builder);
    }
}
