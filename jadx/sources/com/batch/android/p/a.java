package com.batch.android.p;

import com.batch.android.BatchEventDispatcher;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static final String g = "other";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f23879a = "firebase";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f23880b = "at_internet";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f23881c = "mixpanel";
    public static final String d = "google_analytics";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f23882e = "batch_plugins";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f23883f = "piano";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final List<String> f23884h = Arrays.asList(f23879a, f23880b, f23881c, d, f23882e, f23883f);

    public static JSONObject a(Set<BatchEventDispatcher> set) {
        JSONObject jSONObject = new JSONObject();
        for (BatchEventDispatcher batchEventDispatcher : set) {
            try {
                if (batchEventDispatcher.getName() != null) {
                    jSONObject.put(f23884h.contains(batchEventDispatcher.getName()) ? batchEventDispatcher.getName() : g, batchEventDispatcher.getVersion());
                }
            } catch (JSONException | AbstractMethodError unused) {
            }
        }
        return jSONObject;
    }
}
