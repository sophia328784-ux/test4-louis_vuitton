package com.dynatrace.agent.view;

import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;", "", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ErrorSummaryAccumulator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f27205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f27207c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f27208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f27209f;
    public boolean g;

    public final void a(JSONObject jSONObject) {
        jSONObject.getClass();
        boolean zOptBoolean = jSONObject.optBoolean("characteristics.has_request");
        boolean zOptBoolean2 = jSONObject.optBoolean("characteristics.has_error");
        boolean zOptBoolean3 = jSONObject.optBoolean("characteristics.has_exception");
        boolean zOptBoolean4 = jSONObject.optBoolean("characteristics.has_failed_request");
        int iOptInt = jSONObject.optInt("http.response.status_code", -1);
        this.g = this.g || jSONObject.optBoolean("characteristics.has_crash");
        if (zOptBoolean3) {
            this.f27206b++;
        }
        if (zOptBoolean2) {
            this.f27205a++;
        }
        if (zOptBoolean) {
            if (400 <= iOptInt && iOptInt < 500) {
                this.f27207c++;
                return;
            }
            if (500 <= iOptInt && iOptInt < 600) {
                this.d++;
                return;
            }
            if ((iOptInt >= 0 && iOptInt < 400) || (600 <= iOptInt && iOptInt <= Integer.MAX_VALUE)) {
                if (zOptBoolean4) {
                    this.f27208e++;
                }
            } else if (zOptBoolean4 || zOptBoolean3) {
                this.f27209f++;
            }
        }
    }

    public final void b(JSONObject jSONObject) throws JSONException {
        jSONObject.getClass();
        jSONObject.put("error.count", this.f27205a).put("error.exception_count", this.f27206b).put("error.http_4xx_count", this.f27207c).put("error.http_5xx_count", this.d).put("error.http_other_count", this.f27208e).put("error.request_other_count", this.f27209f);
        if (this.g) {
            jSONObject.put("error.has_crash", true);
        }
    }
}
