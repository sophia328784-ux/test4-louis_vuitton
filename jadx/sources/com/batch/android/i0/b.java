package com.batch.android.i0;

import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.batch.android.e.a0;
import com.batch.android.e.q;
import com.batch.android.e.t;
import com.batch.android.h0.d;
import com.batch.android.h0.e;
import com.batch.android.h0.f;
import com.batch.android.h0.g;
import com.batch.android.h0.h;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.messaging.Size2D;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23489a = "PayloadParser";

    private static g a(JSONObject jSONObject, g gVar) throws JSONException, c {
        gVar.f23465i = jSONObject.reallyOptString("h1", null);
        gVar.f23466j = jSONObject.reallyOptString("h2", null);
        gVar.f23467k = jSONObject.reallyOptString("h3", null);
        gVar.m = jSONObject.reallyOptString("hero", null);
        gVar.n = jSONObject.reallyOptString("video", null);
        gVar.o = jSONObject.reallyOptString("hdesc", null);
        gVar.f23464h = jSONObject.getString("style");
        gVar.q = jSONObject.reallyOptBoolean("attach_cta_bottom", null);
        gVar.r = jSONObject.reallyOptBoolean("stack_cta_h", null);
        gVar.s = jSONObject.reallyOptBoolean("stretch_cta_h", null);
        gVar.t = jSONObject.reallyOptBoolean("flip_hero_v", null);
        gVar.u = jSONObject.reallyOptBoolean("flip_hero_h", null);
        gVar.p = jSONObject.reallyOptBoolean("close", null);
        gVar.v = jSONObject.reallyOptDouble("hero_split_ratio", null);
        gVar.w = jSONObject.reallyOptInteger("auto_close", 0).intValue();
        Double d = gVar.v;
        if (d != null && (d.doubleValue() <= 0.0d || gVar.v.doubleValue() >= 1.0d)) {
            t.c(f23489a, "Hero split ratio is <= 0 or >= 1. Ignoring.");
            gVar.v = null;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("cta");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    gVar.l.add(b(jSONObjectOptJSONObject));
                }
            }
        }
        try {
            if (new com.batch.android.a0.g(new com.batch.android.b0.a(), gVar.f23464h).b() != null) {
                return gVar;
            }
            throw new c("Style parsing exception (-23)");
        } catch (com.batch.android.a0.a e2) {
            t.c(f23489a, "Parsing exception", e2);
            throw new c("Style parsing exception (-24)");
        }
    }

    private static com.batch.android.f0.b b(JSONObject jSONObject) throws JSONException, c {
        String string = jSONObject.getString(com.batch.android.b.b.d);
        String strReallyOptString = jSONObject.reallyOptString("a", null);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("args");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        return new com.batch.android.f0.b(string, strReallyOptString, jSONObjectOptJSONObject);
    }

    public static com.batch.android.f0.c c(JSONObject jSONObject) throws JSONException, c {
        e eVarA = a(jSONObject.getString(com.batch.android.s.b.a.f24015b), jSONObject.getString(com.batch.android.s.b.a.d));
        Integer numReallyOptInteger = jSONObject.reallyOptInteger("minapi", null);
        if (numReallyOptInteger != null && numReallyOptInteger.intValue() > 0 && numReallyOptInteger.intValue() > a0.f23069k) {
            t.a(com.batch.android.v0.g.f24103i, "This SDK is too old to display this message. Please update it.");
            throw new c("SDK too old");
        }
        Integer numReallyOptInteger2 = jSONObject.reallyOptInteger("min_android_sdk", null);
        if (numReallyOptInteger2 != null && numReallyOptInteger2.intValue() > 0 && numReallyOptInteger2.intValue() > Build.VERSION.SDK_INT) {
            t.a(com.batch.android.v0.g.f24103i, "This device is too old to display this message. Please update it.");
            throw new c("Device too old");
        }
        eVarA.f23287c = jSONObject.reallyOptString("did", null);
        eVarA.f23463f = jSONObject.reallyOptString("body", null);
        eVarA.g = jSONObject.reallyOptString("body_html", null);
        eVarA.d = jSONObject.optJSONObject("ed");
        return eVarA;
    }

    public static com.batch.android.f0.c d(JSONObject jSONObject) throws c {
        if (jSONObject == null) {
            throw new c("The payload cannot be null");
        }
        try {
            com.batch.android.f0.c cVarC = c(jSONObject);
            if (cVarC instanceof com.batch.android.h0.a) {
                try {
                    return a(jSONObject, (com.batch.android.h0.a) cVarC);
                } catch (JSONException e2) {
                    throw new c("Error while decoding the JSON payload (code 3)", e2);
                }
            }
            if (cVarC instanceof g) {
                try {
                    return a(jSONObject, (g) cVarC);
                } catch (JSONException e3) {
                    throw new c("Error while decoding the JSON payload (code 4)", e3);
                }
            }
            if (cVarC instanceof com.batch.android.h0.b) {
                try {
                    return a(jSONObject, (com.batch.android.h0.b) cVarC);
                } catch (JSONException e4) {
                    throw new c("Error while decoding the JSON payload (code 6)", e4);
                }
            }
            if (cVarC instanceof f) {
                try {
                    return a(jSONObject, (f) cVarC);
                } catch (JSONException e5) {
                    throw new c("Error while decoding the JSON payload (code 7)", e5);
                }
            }
            if (cVarC instanceof d) {
                try {
                    return a(jSONObject, (d) cVarC);
                } catch (JSONException e6) {
                    throw new c("Error while decoding the JSON payload (code 8)", e6);
                }
            }
            if (!(cVarC instanceof h)) {
                return cVarC;
            }
            try {
                return a(jSONObject, (h) cVarC);
            } catch (JSONException e7) {
                throw new c("Error while decoding the JSON payload (code 9)", e7);
            }
        } catch (JSONException e8) {
            throw new c("Error while decoding the JSON payload (code 2)", e8);
        }
    }

    public static com.batch.android.f0.c e(JSONObject jSONObject) throws c {
        if (jSONObject.has("ld2")) {
            try {
                return a.g(new JSONObject(q.a(new com.batch.android.e.a().a(jSONObject.getString("ld2")))));
            } catch (com.batch.android.e.a.C0046a | JSONException e2) {
                throw new c(e2);
            }
        }
        if (!jSONObject.has("ld")) {
            throw new c("No mobile landing payload found");
        }
        try {
            return d(jSONObject.getJSONObject("ld"));
        } catch (JSONException e3) {
            throw new c(e3);
        }
    }

    public static com.batch.android.f0.c f(JSONObject jSONObject) throws c {
        com.batch.android.f0.c cVarD;
        try {
            cVarD = a.g(jSONObject);
        } catch (c unused) {
            cVarD = null;
        }
        if (cVarD != null) {
            return cVarD;
        }
        try {
            cVarD = d(jSONObject);
        } catch (c unused2) {
        }
        if (cVarD != null) {
            return cVarD;
        }
        throw new c("Failed parsing the landing message payload");
    }

    private static com.batch.android.h0.a a(JSONObject jSONObject, com.batch.android.h0.a aVar) throws JSONException, c {
        com.batch.android.f0.b bVarB;
        aVar.f23450h = jSONObject.reallyOptString("title", null);
        aVar.f23451i = jSONObject.getString("cancelLabel");
        if (TextUtils.isEmpty(aVar.f23450h) && TextUtils.isEmpty(aVar.f23463f)) {
            throw new c("Alert payload requires at least a title or a body");
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("cta");
        if (jSONObjectOptJSONObject != null && (bVarB = b(jSONObjectOptJSONObject)) != null) {
            aVar.f23452j = bVarB;
        }
        return aVar;
    }

    private static e a(String str, String str2) throws c {
        if ("alert".equalsIgnoreCase(str2)) {
            return new com.batch.android.h0.a(str);
        }
        if ("universal".equalsIgnoreCase(str2)) {
            return new g(str);
        }
        if ("banner".equalsIgnoreCase(str2)) {
            return new com.batch.android.h0.b(str);
        }
        if ("modal".equalsIgnoreCase(str2)) {
            return new f(str);
        }
        if ("image".equalsIgnoreCase(str2)) {
            return new d(str);
        }
        if ("webview".equalsIgnoreCase(str2)) {
            return new h(str);
        }
        throw new c("Unknown message kind");
    }

    private static com.batch.android.h0.b a(JSONObject jSONObject, com.batch.android.h0.b bVar) throws JSONException, c {
        a(jSONObject, (com.batch.android.h0.c) bVar);
        return bVar;
    }

    private static f a(JSONObject jSONObject, f fVar) throws JSONException, c {
        a(jSONObject, (com.batch.android.h0.c) fVar);
        return fVar;
    }

    private static void a(JSONObject jSONObject, com.batch.android.h0.c cVar) throws JSONException, c {
        cVar.f23453h = jSONObject.getString("style");
        cVar.f23454i = jSONObject.reallyOptString("title", null);
        cVar.f23456k = jSONObject.reallyOptInteger("global_tap_delay", 0).intValue();
        Boolean bool = Boolean.TRUE;
        cVar.l = jSONObject.reallyOptBoolean("swipe_dismiss", bool).booleanValue();
        cVar.m = jSONObject.reallyOptString("image", null);
        cVar.n = jSONObject.reallyOptString("image_description", null);
        cVar.p = jSONObject.reallyOptBoolean("close", bool).booleanValue();
        cVar.q = jSONObject.reallyOptInteger("auto_close", 0).intValue();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("cta");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    cVar.o.add(b(jSONObjectOptJSONObject));
                }
            }
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("action");
        if (jSONObjectOptJSONObject2 != null) {
            cVar.f23455j = a(jSONObjectOptJSONObject2);
        }
        String strReallyOptString = jSONObject.reallyOptString("cta_direction", null);
        if (strReallyOptString != null) {
            String lowerCase = strReallyOptString.toLowerCase(Locale.US);
            lowerCase.getClass();
            if (lowerCase.equals(NBSSpanMetricUnit.Hour)) {
                cVar.r = com.batch.android.h0.c.a.HORIZONTAL;
            } else if (!lowerCase.equals("v")) {
                t.c(f23489a, "Parsing error: base banner: \"cta_direction\" is neither 'h' or 'v': ignoring");
            } else {
                cVar.r = com.batch.android.h0.c.a.VERTICAL;
            }
        }
        try {
            if (new com.batch.android.a0.g(new com.batch.android.b0.a(), cVar.f23453h).b() == null) {
                throw new c("Style parsing exception (-23)");
            }
        } catch (com.batch.android.a0.a e2) {
            t.c(f23489a, "Parsing exception", e2);
            throw new c("Style parsing exception (-24)");
        }
    }

    private static d a(JSONObject jSONObject, d dVar) throws JSONException, c {
        dVar.p = jSONObject.optBoolean("fullscreen", true);
        dVar.f23462k = jSONObject.reallyOptBoolean("swipe_dismiss", Boolean.TRUE).booleanValue();
        dVar.l = jSONObject.getString("image");
        dVar.m = jSONObject.optString("image_description", null);
        int iOptInt = jSONObject.optInt("width", 0);
        int iOptInt2 = jSONObject.optInt("height", 0);
        if (iOptInt >= 0 && iOptInt2 >= 0) {
            if (iOptInt != 0 && iOptInt2 != 0) {
                dVar.n = new Size2D(iOptInt, iOptInt2);
            } else {
                dVar.n = new Size2D(2, 3);
            }
            dVar.f23459h = jSONObject.getString("style");
            try {
                if (new com.batch.android.a0.g(new com.batch.android.b0.a(), dVar.f23459h).b() != null) {
                    dVar.o = jSONObject.reallyOptInteger("auto_close", 0).intValue();
                    dVar.f23461j = jSONObject.reallyOptInteger("global_tap_delay", 0).intValue();
                    dVar.f23460i = a(jSONObject.getJSONObject("action"));
                    return dVar;
                }
                throw new c("Style parsing exception (-23)");
            } catch (com.batch.android.a0.a e2) {
                t.c(f23489a, "Parsing exception", e2);
                throw new c("Style parsing exception (-24)");
            }
        }
        throw new c("Image: invalid width or height");
    }

    private static h a(JSONObject jSONObject, h hVar) throws JSONException, c {
        hVar.f23469i = jSONObject.getString(ConfigurationName.DOWNLOAD_PLUGIN_URL);
        try {
            String lowerCase = new URL(hVar.f23469i).getProtocol().toLowerCase(Locale.US);
            if (!SecurityConstants.SECURITY_NONE.equals(lowerCase) && !SecurityConstants.SECURITY_HTTPS.equals(lowerCase)) {
                throw new c("URL isn't 'http' or 'https' (-31)");
            }
            Boolean bool = Boolean.FALSE;
            hVar.l = jSONObject.reallyOptBoolean("dev", bool).booleanValue();
            hVar.f23471k = jSONObject.reallyOptBoolean("inAppDeeplinks", bool).booleanValue();
            hVar.f23470j = jSONObject.reallyOptInteger("timeout", 0).intValue();
            hVar.f23468h = jSONObject.getString("style");
            try {
                if (new com.batch.android.a0.g(new com.batch.android.b0.a(), hVar.f23468h).b() != null) {
                    return hVar;
                }
                throw new c("Style parsing exception (-23)");
            } catch (com.batch.android.a0.a e2) {
                t.c(f23489a, "Parsing exception", e2);
                throw new c("Style parsing exception (-24)");
            }
        } catch (MalformedURLException e3) {
            t.c(f23489a, "Parsing exception", e3);
            throw new c("Could not parse URL (-30)");
        }
    }

    private static com.batch.android.f0.a a(JSONObject jSONObject) throws JSONException, c {
        String strReallyOptString = jSONObject.reallyOptString("a", null);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("args");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        return new com.batch.android.f0.a(strReallyOptString, jSONObjectOptJSONObject);
    }

    private static Spanned a(String str) {
        Spanned spannedFromHtml;
        if (str == null || (spannedFromHtml = Html.fromHtml(str, 0)) == null || spannedFromHtml.length() == 0) {
            return null;
        }
        return spannedFromHtml;
    }
}
