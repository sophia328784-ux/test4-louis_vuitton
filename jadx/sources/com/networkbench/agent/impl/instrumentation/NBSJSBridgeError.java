package com.networkbench.agent.impl.instrumentation;

import android.webkit.JavascriptInterface;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NBSJSBridgeError {
    private static e log = f.a();
    private static String METHOD = "method";
    private static String PARAMS = "params";

    public static Map<String, Object> JsonToHashMap(JSONObject jSONObject) {
        HashMap map = new HashMap();
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String string = String.valueOf(itKeys.next()).toString();
                map.put(string, jSONObject.get(string).toString());
            }
            return map;
        } catch (Throwable th) {
            g.b("JsonToHashMap has an error : ", th);
            return map;
        }
    }

    public static Map<String, Object> a(JSONObject jSONObject) {
        return JsonToHashMap(jSONObject);
    }

    private void toggleDataCollect(String str) {
    }

    @JavascriptInterface
    public void parseArguments(String str) {
        try {
            toggleDataCollect(str);
        } catch (Throwable th) {
            g.b("parseArguments has an error : ", th);
        }
    }
}
