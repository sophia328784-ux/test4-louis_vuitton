package com.sightcall.httpclient.interceptors;

import com.sightcall.pratik.utils.SdkUtilsKt;
import defpackage.cj;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.text.Regex;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/sightcall/httpclient/interceptors/UserAgentInterceptor;", "Lokhttp3/Interceptor;", "appVersion", "", "packageName", "", "versionName", "versionMucl", "", "<init>", "(JLjava/lang/String;Ljava/lang/String;I)V", "userAgent", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "toHumanReadableAscii", "httpclient_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UserAgentInterceptor implements Interceptor {
    private final String userAgent;

    public UserAgentInterceptor(long j2, String str, String str2, int i2) {
        str.getClass();
        str2.getClass();
        int iSdkVersion = SdkUtilsKt.sdkVersion();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("/");
        sb.append(j2);
        sb.append(" Universal/");
        cj.C(sb, str2, " Rtcc/", str2, " Mucl/");
        sb.append(i2);
        sb.append(" Android/");
        sb.append(iSdkVersion);
        this.userAgent = sb.toString();
    }

    private final String toHumanReadableAscii(String userAgent) {
        return new Regex("[^\\u0020-\\u007E]").replace(userAgent, "?");
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        chain.getClass();
        Request f77173e = chain.getF77173e();
        f77173e.getClass();
        Request.Builder builder = new Request.Builder(f77173e);
        builder.b("User-Agent", toHumanReadableAscii(this.userAgent));
        return chain.b(new Request(builder));
    }
}
