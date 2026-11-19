package okhttp3.internal.http;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/HttpMethod;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class HttpMethod {
    public static final boolean a(String str) {
        str.getClass();
        return Intrinsics.c(str, "POST") || Intrinsics.c(str, "PATCH") || Intrinsics.c(str, "PUT") || Intrinsics.c(str, "DELETE") || Intrinsics.c(str, "MOVE");
    }

    public static final boolean b(String str) {
        str.getClass();
        return (Intrinsics.c(str, "GET") || Intrinsics.c(str, "HEAD")) ? false : true;
    }
}
