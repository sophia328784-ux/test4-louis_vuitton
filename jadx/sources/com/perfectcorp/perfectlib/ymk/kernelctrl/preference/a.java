package com.perfectcorp.perfectlib.ymk.kernelctrl.preference;

import android.util.Base64;
import com.perfectcorp.common.utility.BasicPreferences;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends BasicPreferences {

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a$a, reason: collision with other inner class name */
    public static final class C0202a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f42022a = new a("MakeupCamSdkPreferences");
    }

    public static String p(String str) {
        Charset charset = StandardCharsets.UTF_8;
        return new String(Base64.encode(str.getBytes(charset), 2), charset);
    }

    public static void q(JSONObject jSONObject, HashSet hashSet, HashSet hashSet2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("featureList");
        if (jSONArrayOptJSONArray == null) {
            return;
        }
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("featureName");
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("valueList");
                if (jSONArrayOptJSONArray2 != null) {
                    if ("type".equals(strOptString)) {
                        for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                            hashSet.add(jSONArrayOptJSONArray2.optString(i3));
                        }
                    } else if ("EnableFunction".equals(strOptString)) {
                        for (int i4 = 0; i4 < jSONArrayOptJSONArray2.length(); i4++) {
                            hashSet2.add(jSONArrayOptJSONArray2.optString(i4));
                        }
                    }
                }
            }
        }
    }

    public static a r() {
        return C0202a.f42022a;
    }

    public static String s(String str) {
        try {
            Charset charset = StandardCharsets.UTF_8;
            return new String(Base64.decode(str.getBytes(charset), 2), charset);
        } catch (Throwable unused) {
            return null;
        }
    }
}
