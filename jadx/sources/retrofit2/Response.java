package retrofit2;

import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes5.dex */
public final class Response<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final okhttp3.Response f79449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f79450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ResponseBody f79451c;

    public Response(okhttp3.Response response, Object obj, ResponseBody responseBody) {
        this.f79449a = response;
        this.f79450b = obj;
        this.f79451c = responseBody;
    }

    public final String toString() {
        return this.f79449a.toString();
    }
}
