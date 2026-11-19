package com.dynatrace.agent.communication.network.request;

import com.dynatrace.agent.communication.network.datasource.ConfigRequest;
import com.dynatrace.agent.communication.network.model.RetryInfo;
import com.dynatrace.agent.storage.db.EndPointInfo;
import kotlin.Metadata;
import okhttp3.HttpUrl;
import okhttp3.Request;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;", "", "", "version", "<init>", "(Ljava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ConfigRequestFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26647a;

    public ConfigRequestFactory(String str) {
        str.getClass();
        this.f26647a = str;
    }

    public final Request a(ConfigRequest configRequest) {
        HttpUrl.Companion companion = HttpUrl.f76918j;
        EndPointInfo endPointInfo = configRequest.f26632a;
        String str = endPointInfo.f26895b;
        companion.getClass();
        HttpUrl.Builder builderG = HttpUrl.Companion.c(str).g();
        HttpUrlExtensionsKt.a(builderG, endPointInfo, this.f26647a, configRequest.f26633b.f26562b.f27043a);
        RetryInfo retryInfo = configRequest.f26634c;
        if (retryInfo != null) {
            builderG.b("rc", String.valueOf(retryInfo.f26645a));
            String str2 = retryInfo.f26646b;
            if (str2 != null) {
                builderG.b("rr", str2);
            }
        }
        Integer num = configRequest.d;
        if (num != null) {
            builderG.b("si", String.valueOf(num.intValue()));
        }
        HttpUrl httpUrlB = HttpUrlExtensionsKt.b(builderG);
        Request.Builder builder = new Request.Builder();
        builder.c("GET", null);
        builder.f76974a = httpUrlB;
        return new Request(builder);
    }
}
