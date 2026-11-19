package com.dynatrace.android.agent.comm;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HttpResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27325c;
    public final Map d;

    public HttpResponse(int i2, String str, String str2, Map<String, List<String>> map) {
        this.f27323a = i2;
        this.f27324b = str;
        this.f27325c = str2;
        this.d = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            HttpResponse httpResponse = (HttpResponse) obj;
            if (this.f27323a != httpResponse.f27323a) {
                return false;
            }
            String str = httpResponse.f27324b;
            String str2 = this.f27324b;
            if (str2 == null ? str != null : !str2.equals(str)) {
                return false;
            }
            String str3 = httpResponse.f27325c;
            String str4 = this.f27325c;
            if (str4 != null) {
                return str4.equals(str3);
            }
            if (str3 == null) {
                return true;
            }
        }
        return false;
    }
}
