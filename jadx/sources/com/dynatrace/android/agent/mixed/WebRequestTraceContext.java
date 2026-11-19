package com.dynatrace.android.agent.mixed;

import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
public class WebRequestTraceContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f27579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f27580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f27581c;

    public final String a() {
        String str;
        String str2 = this.f27579a;
        if (str2 == null || (str = this.f27580b) == null) {
            return null;
        }
        String str3 = "00-" + str2 + '-' + str + "-01";
        Utility.b("Traceparent header is generated ".concat(str3));
        return str3;
    }
}
