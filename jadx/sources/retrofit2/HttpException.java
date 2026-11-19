package retrofit2;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class HttpException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f79346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f79347c;
    public final transient Response d;

    public HttpException(Response<?> response) {
        Objects.requireNonNull(response, "response == null");
        StringBuilder sb = new StringBuilder("HTTP ");
        okhttp3.Response response2 = response.f79449a;
        int i2 = response2.f76986e;
        sb.append(i2);
        sb.append(" ");
        String str = response2.d;
        sb.append(str);
        super(sb.toString());
        this.f79346b = i2;
        this.f79347c = str;
        this.d = response;
    }
}
