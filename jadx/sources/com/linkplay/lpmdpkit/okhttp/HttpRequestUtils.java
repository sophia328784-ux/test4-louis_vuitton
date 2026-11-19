package com.linkplay.lpmdpkit.okhttp;

import android.os.Handler;
import android.os.Looper;
import com.dynatrace.android.callback.OkCallback;
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
    public final MediaType JSON;
    private final MediaType MEDIA_OBJECT_STREAM;
    protected OkHttpClient mOkHttpClient;
    private Handler mUIHandler;

    public static abstract class ResultCallback<T> {
        public abstract void onFailure(Exception exc);

        public abstract void onSuccess(T t);
    }

    public HttpRequestUtils() {
        MediaType mediaTypeA;
        MediaType.f76933e.getClass();
        MediaType mediaTypeA2 = null;
        try {
            mediaTypeA = MediaType.Companion.a(LVConstants.LV_JSON_VALUE);
        } catch (IllegalArgumentException unused) {
            mediaTypeA = null;
        }
        this.JSON = mediaTypeA;
        try {
            mediaTypeA2 = MediaType.Companion.a("application/octet-stream");
        } catch (IllegalArgumentException unused2) {
        }
        this.MEDIA_OBJECT_STREAM = mediaTypeA2;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.c(30L);
        builder.d(10L);
        builder.b(15L);
        this.mOkHttpClient = new OkHttpClient(builder);
        this.mUIHandler = new Handler(Looper.getMainLooper());
    }

    private Request buildDelRequestHeader(String str, List<Param> list) {
        Request.Builder builder = new Request.Builder();
        if (list != null) {
            for (Param param : list) {
                try {
                    builder.a(param.key, param.value);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
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
                try {
                    builder.a(param.key, param.value);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        builder.e(str);
        return new Request(builder);
    }

    private Request buildPostRequest(String str, List<Param> list, List<Param> list2) {
        Request.Builder builder = new Request.Builder();
        if (list != null) {
            for (Param param : list) {
                try {
                    builder.a(param.key, param.value);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
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
                try {
                    builder.a(param.key, param.value);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSuccessful(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OkHttpResponseItem parseResponse(Response response) {
        if (response == null) {
            return null;
        }
        OkHttpResponseItem okHttpResponseItem = new OkHttpResponseItem();
        try {
            byte[] bArrBytes = response.f76988h.bytes();
            okHttpResponseItem.bytes = bArrBytes;
            okHttpResponseItem.body = new String(bArrBytes);
            okHttpResponseItem.headers = response.g;
            okHttpResponseItem.code = response.f76986e;
            okHttpResponseItem.url = response.f76984b.f76969a.f76925i;
            return okHttpResponseItem;
        } catch (Exception e2) {
            okHttpResponseItem.body = e2.getMessage();
            return okHttpResponseItem;
        }
    }

    private void putRequest(String str, final ResultCallback resultCallback, List<Param> list, File file) {
        Request requestBuildPutRequest = buildPutRequest(str, list, file);
        if (requestBuildPutRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPutRequest, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.7
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
                public void onResponse(Call call, Response response) {
                    OkCallback.e(call, response);
                    try {
                        OkHttpResponseItem response2 = HttpRequestUtils.this.parseResponse(response);
                        if (response2 != null && !HttpRequestUtils.this.isSuccessful(response2.code)) {
                            HttpRequestUtils.this.sendFailCallback(resultCallback, new Exception("okhttp3 onResponse unSuccessful"));
                            return;
                        }
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, response2);
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
        this.mUIHandler.post(new Runnable() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.12
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
    public void sendSuccessCallBack(final ResultCallback resultCallback, final Object obj) {
        this.mUIHandler.post(new Runnable() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.13
            @Override // java.lang.Runnable
            public void run() {
                ResultCallback resultCallback2 = resultCallback;
                if (resultCallback2 != null) {
                    resultCallback2.onSuccess(obj);
                }
            }
        });
    }

    public void delRequest(String str, final ResultCallback resultCallback) {
        Request.Builder builder = new Request.Builder();
        builder.e(str);
        builder.c("DELETE", RequestBody.f76979b);
        Request request = new Request(builder);
        OkHttpClient okHttpClient = this.mOkHttpClient;
        OkCallback.a(n00.w(okHttpClient, okHttpClient, request, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.8
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
            public void onResponse(Call call, Response response) {
                OkCallback.e(call, response);
                try {
                    OkHttpResponseItem response2 = HttpRequestUtils.this.parseResponse(response);
                    if (response2 != null && !HttpRequestUtils.this.isSuccessful(response2.code)) {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, new Exception("okhttp3 onResponse unSuccessful"));
                        return;
                    }
                    HttpRequestUtils.this.sendSuccessCallBack(resultCallback, response2);
                } catch (Throwable th) {
                    int i2 = OkCallback.f27607a;
                    throw th;
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

    public OkHttpClient getOkHttpClient() {
        return this.mOkHttpClient;
    }

    public void getRequest(List<Param> list, String str, final ResultCallback resultCallback) {
        Request requestBuildGetRequestHeader = buildGetRequestHeader(str, list);
        if (requestBuildGetRequestHeader == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildGetRequestHeader, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.1
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
                public void onResponse(Call call, Response response) {
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

    public void post(String str, ResultCallback resultCallback) {
        postRequest(str, resultCallback, null);
    }

    public OkHttpResponseItem postExecute(String str, List<Param> list, List<Param> list2) {
        return postExecuteRequest(str, list, list2);
    }

    public OkHttpResponseItem postExecuteRequest(String str, List<Param> list, List<Param> list2) {
        return parseResponse(OkCallback.b(this.mOkHttpClient.a(buildPostRequest(str, list, list2))));
    }

    public void postRequest(String str, final ResultCallback resultCallback, List<Param> list) {
        Request requestBuildPostRequest = buildPostRequest(str, list);
        if (requestBuildPostRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPostRequest, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.3
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
                public void onResponse(Call call, Response response) {
                    OkCallback.e(call, response);
                    try {
                        OkHttpResponseItem response2 = HttpRequestUtils.this.parseResponse(response);
                        if (response2 != null && !HttpRequestUtils.this.isSuccessful(response2.code)) {
                            HttpRequestUtils.this.sendFailCallback(resultCallback, new Exception("okhttp3 onResponse unSuccessful"));
                            return;
                        }
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, response2);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
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

    private void putRequest(String str, final ResultCallback resultCallback, List<Param> list, List<Param> list2) {
        Request requestBuildPutRequest = buildPutRequest(str, list, list2);
        if (requestBuildPutRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPutRequest, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.10
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
                public void onResponse(Call call, Response response) {
                    OkCallback.e(call, response);
                    try {
                        OkHttpResponseItem response2 = HttpRequestUtils.this.parseResponse(response);
                        if (response2 != null && !HttpRequestUtils.this.isSuccessful(response2.code)) {
                            HttpRequestUtils.this.sendFailCallback(resultCallback, new Exception("okhttp3 onResponse unSuccessful"));
                            return;
                        }
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, response2);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    public void getRequest(String str, final ResultCallback resultCallback) {
        Request.Builder builder = new Request.Builder();
        builder.e(str);
        Request request = new Request(builder);
        OkHttpClient okHttpClient = this.mOkHttpClient;
        OkCallback.a(n00.w(okHttpClient, okHttpClient, request, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.2
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
            public void onResponse(Call call, Response response) {
                OkCallback.e(call, response);
                try {
                    OkHttpResponseItem response2 = HttpRequestUtils.this.parseResponse(response);
                    if (response2 != null && !HttpRequestUtils.this.isSuccessful(response2.code)) {
                        HttpRequestUtils.this.sendFailCallback(resultCallback, new Exception("okhttp3 onResponse unSuccessful"));
                        return;
                    }
                    HttpRequestUtils.this.sendSuccessCallBack(resultCallback, response2);
                } catch (Throwable th) {
                    int i2 = OkCallback.f27607a;
                    throw th;
                }
            }
        });
    }

    public void postRequest(String str, final ResultCallback resultCallback, List<Param> list, List<Param> list2) {
        Request requestBuildPostRequest = buildPostRequest(str, list, list2);
        if (requestBuildPostRequest == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPostRequest, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.4
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
                public void onResponse(Call call, Response response) {
                    OkCallback.e(call, response);
                    try {
                        OkHttpResponseItem response2 = HttpRequestUtils.this.parseResponse(response);
                        if (response2 != null && !HttpRequestUtils.this.isSuccessful(response2.code)) {
                            HttpRequestUtils.this.sendFailCallback(resultCallback, new Exception("okhttp3 onResponse unSuccessful"));
                            return;
                        }
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, response2);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    public void delRequest(String str, final ResultCallback resultCallback, List<Param> list) {
        Request requestBuildDelRequestHeader = buildDelRequestHeader(str, list);
        if (requestBuildDelRequestHeader == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildDelRequestHeader, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.9
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
                public void onResponse(Call call, Response response) {
                    OkCallback.e(call, response);
                    try {
                        OkHttpResponseItem response2 = HttpRequestUtils.this.parseResponse(response);
                        if (response2 != null && !HttpRequestUtils.this.isSuccessful(response2.code)) {
                            HttpRequestUtils.this.sendFailCallback(resultCallback, new Exception("okhttp3 onResponse unSuccessful"));
                            return;
                        }
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, response2);
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
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPutRequest, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.11
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
                public void onResponse(Call call, Response response) {
                    OkCallback.e(call, response);
                    try {
                        OkHttpResponseItem response2 = HttpRequestUtils.this.parseResponse(response);
                        if (response2 != null && !HttpRequestUtils.this.isSuccessful(response2.code)) {
                            HttpRequestUtils.this.sendFailCallback(resultCallback, new Exception("okhttp3 onResponse unSuccessful"));
                            return;
                        }
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, response2);
                    } catch (Throwable th) {
                        int i2 = OkCallback.f27607a;
                        throw th;
                    }
                }
            });
        }
    }

    public void postRequest(Request request, final ResultCallback resultCallback) {
        if (request == null) {
            sendFailCallback(resultCallback, new Exception("okhttp Request is nullponter"));
        } else {
            OkHttpClient okHttpClient = this.mOkHttpClient;
            OkCallback.a(n00.w(okHttpClient, okHttpClient, request, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.5
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
                public void onResponse(Call call, Response response) {
                    OkCallback.e(call, response);
                    try {
                        OkHttpResponseItem response2 = HttpRequestUtils.this.parseResponse(response);
                        if (response2 != null && !HttpRequestUtils.this.isSuccessful(response2.code)) {
                            HttpRequestUtils.this.sendFailCallback(resultCallback, new Exception("okhttp3 onResponse unSuccessful"));
                            return;
                        }
                        HttpRequestUtils.this.sendSuccessCallBack(resultCallback, response2);
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
            OkCallback.a(n00.w(okHttpClient, okHttpClient, requestBuildPostRequest, false), new Callback() { // from class: com.linkplay.lpmdpkit.okhttp.HttpRequestUtils.6
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
                public void onResponse(Call call, Response response) {
                    OkCallback.e(call, response);
                    try {
                        HttpRequestUtils httpRequestUtils = HttpRequestUtils.this;
                        httpRequestUtils.sendSuccessCallBack(resultCallback, httpRequestUtils.parseResponse(response));
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
                try {
                    builder.a(param.key, param.value);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        MediaType mediaType = this.MEDIA_OBJECT_STREAM;
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
                try {
                    builder.a(param.key, param.value);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
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
                try {
                    builder.a(param.key, param.value);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3C = RequestBody.c(str2, this.JSON);
        builder.e(str);
        builder.c("PUT", requestBody$Companion$toRequestBody$3C);
        return new Request(builder);
    }
}
