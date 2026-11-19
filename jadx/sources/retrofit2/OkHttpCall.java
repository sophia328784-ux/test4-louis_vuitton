package retrofit2;

import com.dynatrace.android.callback.OkCallback;
import defpackage.b21;
import defpackage.fc;
import defpackage.md;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes5.dex */
final class OkHttpCall<T> implements Call<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequestFactory f79363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f79364c;
    public final Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final okhttp3.Call.Factory f79365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Converter f79366f;
    public volatile boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public okhttp3.Call f79367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Throwable f79368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f79369j;

    public static final class ExceptionCatchingResponseBody extends ResponseBody {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ResponseBody f79372f;
        public final RealBufferedSource g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public IOException f79373h;

        public ExceptionCatchingResponseBody(ResponseBody responseBody) {
            this.f79372f = responseBody;
            this.g = new RealBufferedSource(new ForwardingSource(responseBody.getF77005h()) { // from class: retrofit2.OkHttpCall.ExceptionCatchingResponseBody.1
                @Override // okio.ForwardingSource, okio.Source
                public final long read(Buffer buffer, long j2) throws IOException {
                    try {
                        return super.read(buffer, j2);
                    } catch (IOException e2) {
                        ExceptionCatchingResponseBody.this.f79373h = e2;
                        throw e2;
                    }
                }
            });
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f79372f.close();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public final long getG() {
            return this.f79372f.getG();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public final MediaType getF77014f() {
            return this.f79372f.getF77014f();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source */
        public final BufferedSource getF77005h() {
            return this.g;
        }
    }

    public static final class NoContentResponseBody extends ResponseBody {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final MediaType f79375f;
        public final long g;

        public NoContentResponseBody(MediaType mediaType, long j2) {
            this.f79375f = mediaType;
            this.g = j2;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public final long getG() {
            return this.g;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public final MediaType getF77014f() {
            return this.f79375f;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source */
        public final BufferedSource getF77005h() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public OkHttpCall(RequestFactory requestFactory, Object obj, Object[] objArr, okhttp3.Call.Factory factory, Converter converter) {
        this.f79363b = requestFactory;
        this.f79364c = obj;
        this.d = objArr;
        this.f79365e = factory;
        this.f79366f = converter;
    }

    public final okhttp3.Call a() {
        HttpUrl httpUrlI;
        RequestFactory requestFactory = this.f79363b;
        ParameterHandler[] parameterHandlerArr = requestFactory.f79439k;
        Object[] objArr = this.d;
        int length = objArr.length;
        if (length != parameterHandlerArr.length) {
            md.n(defpackage.a.i(parameterHandlerArr.length, ")", fc.q(length, "Argument count (", ") doesn't match expected count (")));
            return null;
        }
        RequestBuilder requestBuilder = new RequestBuilder(requestFactory.d, requestFactory.f79433c, requestFactory.f79434e, requestFactory.f79435f, requestFactory.g, requestFactory.f79436h, requestFactory.f79437i, requestFactory.f79438j);
        if (requestFactory.l) {
            length--;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            arrayList.add(objArr[i2]);
            parameterHandlerArr[i2].a(requestBuilder, objArr[i2]);
        }
        HttpUrl.Builder builder = requestBuilder.d;
        if (builder != null) {
            httpUrlI = builder.c();
        } else {
            String str = requestBuilder.f79423c;
            HttpUrl httpUrl = requestBuilder.f79422b;
            httpUrlI = httpUrl.i(str);
            if (httpUrlI == null) {
                StringBuilder sb = new StringBuilder("Malformed URL. Base: ");
                sb.append(httpUrl);
                b21.w(sb, ", Relative: ", requestBuilder.f79423c);
                return null;
            }
        }
        RequestBody contentTypeOverridingRequestBody = requestBuilder.f79429k;
        if (contentTypeOverridingRequestBody == null) {
            FormBody.Builder builder2 = requestBuilder.f79428j;
            if (builder2 != null) {
                contentTypeOverridingRequestBody = builder2.b();
            } else {
                MultipartBody.Builder builder3 = requestBuilder.f79427i;
                if (builder3 != null) {
                    contentTypeOverridingRequestBody = builder3.b();
                } else if (requestBuilder.f79426h) {
                    RequestBody.f76978a.getClass();
                    contentTypeOverridingRequestBody = RequestBody.Companion.a(0, null, new byte[0]);
                }
            }
        }
        MediaType mediaType = requestBuilder.g;
        Headers.Builder builder4 = requestBuilder.f79425f;
        if (mediaType != null) {
            if (contentTypeOverridingRequestBody != null) {
                contentTypeOverridingRequestBody = new RequestBuilder.ContentTypeOverridingRequestBody(contentTypeOverridingRequestBody, mediaType);
            } else {
                builder4.a("Content-Type", mediaType.f76935a);
            }
        }
        Request.Builder builder5 = requestBuilder.f79424e;
        builder5.getClass();
        builder5.f76974a = httpUrlI;
        builder5.f76976c = builder4.d().h();
        builder5.c(requestBuilder.f79421a, contentTypeOverridingRequestBody);
        builder5.d(Invocation.class, new Invocation(requestFactory.f79431a, this.f79364c, requestFactory.f79432b, arrayList));
        return this.f79365e.a(new Request(builder5));
    }

    public final okhttp3.Call b() throws IOException {
        okhttp3.Call call = this.f79367h;
        if (call != null) {
            return call;
        }
        Throwable th = this.f79368i;
        if (th != null) {
            if (th instanceof IOException) {
                throw ((IOException) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            throw ((Error) th);
        }
        try {
            okhttp3.Call callA = a();
            this.f79367h = callA;
            return callA;
        } catch (IOException | Error | RuntimeException e2) {
            Utils.m(e2);
            this.f79368i = e2;
            throw e2;
        }
    }

    public final Response c(okhttp3.Response response) throws IOException {
        ResponseBody responseBody = response.f76988h;
        okhttp3.Response.Builder builder = new okhttp3.Response.Builder(response);
        builder.g = new NoContentResponseBody(responseBody.getF77014f(), responseBody.getG());
        okhttp3.Response responseA = builder.a();
        boolean z = responseA.r;
        int i2 = responseA.f76986e;
        if (i2 < 200 || i2 >= 300) {
            try {
                Buffer buffer = new Buffer();
                responseBody.getF77005h().N1(buffer);
                ResponseBody responseBodyCreate = ResponseBody.create(responseBody.getF77014f(), responseBody.getG(), buffer);
                Objects.requireNonNull(responseBodyCreate, "body == null");
                if (z) {
                    throw new IllegalArgumentException("rawResponse should not be successful response");
                }
                Response response2 = new Response(responseA, null, responseBodyCreate);
                responseBody.close();
                return response2;
            } catch (Throwable th) {
                responseBody.close();
                throw th;
            }
        }
        if (i2 == 204 || i2 == 205) {
            responseBody.close();
            if (z) {
                return new Response(responseA, null, null);
            }
            md.n("rawResponse must be successful response");
            return null;
        }
        ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(responseBody);
        try {
            Object objF = this.f79366f.f(exceptionCatchingResponseBody);
            if (z) {
                return new Response(responseA, objF, null);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        } catch (RuntimeException e2) {
            IOException iOException = exceptionCatchingResponseBody.f79373h;
            if (iOException == null) {
                throw e2;
            }
            throw iOException;
        }
    }

    @Override // retrofit2.Call
    public final void cancel() {
        okhttp3.Call call;
        this.g = true;
        synchronized (this) {
            call = this.f79367h;
        }
        if (call != null) {
            call.cancel();
        }
    }

    public final Object clone() {
        return new OkHttpCall(this.f79363b, this.f79364c, this.d, this.f79365e, this.f79366f);
    }

    @Override // retrofit2.Call
    public final Response execute() {
        okhttp3.Call callB;
        synchronized (this) {
            if (this.f79369j) {
                throw new IllegalStateException("Already executed.");
            }
            this.f79369j = true;
            callB = b();
        }
        if (this.g) {
            callB.cancel();
        }
        return c(OkCallback.b(callB));
    }

    @Override // retrofit2.Call
    public final boolean isCanceled() {
        boolean z = true;
        if (this.g) {
            return true;
        }
        synchronized (this) {
            try {
                okhttp3.Call call = this.f79367h;
                if (call == null || !call.getS()) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // retrofit2.Call
    public final void p(final Callback callback) {
        okhttp3.Call call;
        Throwable th;
        Objects.requireNonNull(callback, "callback == null");
        synchronized (this) {
            try {
                if (this.f79369j) {
                    throw new IllegalStateException("Already executed.");
                }
                this.f79369j = true;
                call = this.f79367h;
                th = this.f79368i;
                if (call == null && th == null) {
                    try {
                        okhttp3.Call callA = a();
                        this.f79367h = callA;
                        call = callA;
                    } catch (Throwable th2) {
                        th = th2;
                        Utils.m(th);
                        this.f79368i = th;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (th != null) {
            callback.onFailure(this, th);
            return;
        }
        if (this.g) {
            call.cancel();
        }
        OkCallback.a(call, new okhttp3.Callback() { // from class: retrofit2.OkHttpCall.1
            @Override // okhttp3.Callback
            public final void onFailure(okhttp3.Call call2, IOException iOException) {
                OkCallback.d(call2, iOException);
                try {
                    callback.onFailure(OkHttpCall.this, iOException);
                } catch (Throwable th4) {
                    try {
                        Utils.m(th4);
                        th4.printStackTrace();
                    } catch (Throwable th5) {
                        int i2 = OkCallback.f27607a;
                        throw th5;
                    }
                }
            }

            @Override // okhttp3.Callback
            public final void onResponse(okhttp3.Call call2, okhttp3.Response response) {
                Callback callback2 = callback;
                OkHttpCall okHttpCall = OkHttpCall.this;
                OkCallback.e(call2, response);
                try {
                    try {
                        try {
                            callback2.onResponse(okHttpCall, okHttpCall.c(response));
                        } catch (Throwable th4) {
                            Utils.m(th4);
                            th4.printStackTrace();
                        }
                        int i2 = OkCallback.f27607a;
                    } catch (Throwable th5) {
                        Utils.m(th5);
                        try {
                            callback2.onFailure(okHttpCall, th5);
                        } catch (Throwable th6) {
                            Utils.m(th6);
                            th6.printStackTrace();
                        }
                        int i3 = OkCallback.f27607a;
                    }
                } catch (Throwable th7) {
                    int i4 = OkCallback.f27607a;
                    throw th7;
                }
            }
        });
    }

    @Override // retrofit2.Call
    public final synchronized Request request() {
        try {
        } catch (IOException e2) {
            throw new RuntimeException("Unable to create request.", e2);
        }
        return b().getF77119c();
    }

    @Override // retrofit2.Call
    public final Call clone() {
        return new OkHttpCall(this.f79363b, this.f79364c, this.d, this.f79365e, this.f79366f);
    }
}
