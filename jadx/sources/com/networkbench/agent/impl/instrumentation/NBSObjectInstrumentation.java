package com.networkbench.agent.impl.instrumentation;

import com.networkbench.agent.impl.harvest.type.MetricCategory;
import com.networkbench.agent.impl.util.ak;
import defpackage.o60;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NBSObjectInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList("category", MetricCategory.class.getName(), "JSON"));

    public static JSONObject init(String str) throws JSONException {
        try {
            NBSTraceEngine.enterMethod(ak.b() + "JSONObject#<init>", categoryParams);
            JSONObject jSONObject = new JSONObject(str);
            NBSTraceEngine.exitMethod();
            return jSONObject;
        } catch (JSONException e2) {
            NBSTraceEngine.exitMethod();
            throw e2;
        }
    }

    public static String toString(JSONObject jSONObject, int i2) throws JSONException {
        NBSTraceEngine.enterMethod(o60.p("JSONObject#toString", new StringBuilder()), categoryParams);
        try {
            String string = jSONObject.toString(i2);
            NBSTraceEngine.exitMethod();
            return string;
        } catch (JSONException e2) {
            NBSTraceEngine.exitMethod();
            throw e2;
        }
    }

    @Deprecated
    public void a() {
    }

    public static String toString(JSONObject jSONObject) {
        NBSTraceEngine.enterMethod(o60.p("JSONObject#toString", new StringBuilder()), categoryParams);
        String string = jSONObject.toString();
        NBSTraceEngine.exitMethod();
        return string;
    }
}
