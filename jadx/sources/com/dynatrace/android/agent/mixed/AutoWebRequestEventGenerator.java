package com.dynatrace.android.agent.mixed;

import com.linkplay.network.SecurityConstants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.AbstractMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AutoWebRequestEventGenerator extends BaseWebRequestEventGenerator {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f27568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Exception f27569f;
    public AbstractMap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AbstractMap f27570h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public WebRequestTraceContext f27571i;

    public AutoWebRequestEventGenerator() {
        this.f27574c = -1;
        this.g = null;
        this.f27570h = null;
        this.f27571i = null;
    }

    public final JSONObject a(JSONObject jSONObject) throws JSONException {
        if (SecurityConstants.SECURITY_NONE.equalsIgnoreCase(this.f27573b) || SecurityConstants.SECURITY_HTTPS.equalsIgnoreCase(this.f27573b)) {
            jSONObject.put("network.protocol.name", SecurityConstants.SECURITY_NONE);
            jSONObject.put("http.request.method", this.f27568e);
            int i2 = this.f27574c;
            if (i2 > 0) {
                jSONObject.put("http.response.status_code", i2);
            }
            int i3 = this.f27574c;
            if (i3 >= 400 && i3 <= 599) {
                jSONObject.put("characteristics.has_error", true);
                jSONObject.put("characteristics.has_failed_request", true);
            }
            String str = this.d;
            if (str != null) {
                jSONObject.put("http.response.reason_phrase", str);
            }
            AbstractMap abstractMap = this.f27570h;
            if (abstractMap != null) {
                for (Map.Entry entry : abstractMap.entrySet()) {
                    String str2 = (String) entry.getKey();
                    if (str2 != null) {
                        jSONObject.put("http.response.header." + str2.toLowerCase(), String.join(", ", (List) entry.getValue()));
                    }
                }
            }
            AbstractMap abstractMap2 = this.g;
            if (abstractMap2 != null) {
                for (Map.Entry entry2 : abstractMap2.entrySet()) {
                    String str3 = (String) entry2.getKey();
                    if (str3 != null) {
                        jSONObject.put("http.request.header." + str3.toLowerCase(), String.join(", ", (List) entry2.getValue()));
                    }
                }
            }
        } else {
            jSONObject.put("network.protocol.name", this.f27573b);
        }
        if (this.f27569f != null) {
            jSONObject.put("characteristics.has_exception", true);
            StringWriter stringWriter = new StringWriter();
            this.f27569f.printStackTrace(new PrintWriter(stringWriter));
            jSONObject.put("exception.stack_trace", stringWriter.toString());
            jSONObject.put("exception.type", this.f27569f.getClass().getName());
            jSONObject.put("exception.message", this.f27569f.getMessage());
            jSONObject.put("characteristics.has_error", true);
            jSONObject.put("characteristics.has_failed_request", true);
        }
        WebRequestTraceContext webRequestTraceContext = this.f27571i;
        if (webRequestTraceContext != null) {
            if (webRequestTraceContext.a() != null) {
                jSONObject.put("trace.id", this.f27571i.f27579a);
                jSONObject.put("span.id", this.f27571i.f27580b);
            }
            jSONObject.put("request.trace_context_hint", this.f27571i.f27581c);
        }
        return jSONObject;
    }
}
