package okhttp3.internal;

import kotlin.Metadata;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class UnreadableResponseBodyKt {
    public static final Response a(Response response) {
        Response.Builder builder = new Response.Builder(response);
        ResponseBody responseBody = response.f76988h;
        builder.g = new UnreadableResponseBody(responseBody.getF77014f(), responseBody.getG());
        return builder.a();
    }
}
