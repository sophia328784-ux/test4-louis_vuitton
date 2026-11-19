package com.batch.android.i0;

import com.batch.android.e.a0;
import com.batch.android.e.t;
import com.batch.android.g0.d;
import com.batch.android.g0.f;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.v0.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f23481a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f23482b = "#FFFFFFFF";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f23483c = "#000000FF";
    private static final int d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f23484e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f23485f = 0;
    private static final int g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f23486h = 12;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f23487i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f23488j = 10;

    private a() {
    }

    @JvmStatic
    public static final com.batch.android.f0.c g(JSONObject jSONObject) throws c {
        jSONObject.getClass();
        try {
            Integer numReallyOptInteger = jSONObject.reallyOptInteger("minMLvl", null);
            if (numReallyOptInteger != null && numReallyOptInteger.intValue() > a0.f23069k) {
                t.a(g.f24103i, "This SDK is too old to display this message. Please update it.");
                throw new c("SDK too old");
            }
            String string = jSONObject.getString("format");
            string.getClass();
            Locale locale = Locale.ROOT;
            String upperCase = string.toUpperCase(locale);
            upperCase.getClass();
            d.EnumC0052d enumC0052dValueOf = d.EnumC0052d.valueOf(upperCase);
            a aVar = f23481a;
            f fVarD = aVar.d(jSONObject.getJSONObject("root"), enumC0052dValueOf);
            String strReallyOptString = jSONObject.reallyOptString("position", "center");
            strReallyOptString.getClass();
            String upperCase2 = strReallyOptString.toUpperCase(locale);
            upperCase2.getClass();
            com.batch.android.g0.a aVar2 = new com.batch.android.g0.a(enumC0052dValueOf, fVarD, d.i.valueOf(upperCase2), aVar.d(jSONObject.optJSONObject("closeOptions")), aVar.f(jSONObject.optJSONObject("texts")), aVar.f(jSONObject.optJSONObject("urls")), aVar.a(jSONObject.optJSONObject("actions")));
            aVar2.f23287c = jSONObject.reallyOptString("trackingId", null);
            aVar2.d = jSONObject.optJSONObject("eventData");
            return aVar2;
        } catch (Exception e2) {
            throw new c("Failed parsing mobile landing.", e2);
        }
    }

    public final List<com.batch.android.g0.c.b> a(JSONArray jSONArray, d.EnumC0052d enumC0052d) throws JSONException, c {
        enumC0052d.getClass();
        if (jSONArray == null || jSONArray.length() == 0) {
            throw new c("children cannot be null or empty");
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (jSONArray.isNull(i2)) {
                arrayList.add(new com.batch.android.g0.c.e(false, 1, null));
            } else {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                if (Intrinsics.c(jSONObject.getString("type"), "columns")) {
                    throw new c("Columns component cannot have columns children");
                }
                Object objB = b(jSONObject, enumC0052d);
                objB.getClass();
                arrayList.add((com.batch.android.g0.c.b) objB);
            }
        }
        return CollectionsKt.y0(arrayList);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final com.batch.android.g0.c b(JSONObject jSONObject, d.EnumC0052d enumC0052d) throws JSONException, c {
        enumC0052d.getClass();
        if (jSONObject == null) {
            throw new c("Component cannot be null");
        }
        String string = jSONObject.getString("type");
        if (string != null) {
            switch (string.hashCode()) {
                case -1377687758:
                    if (string.equals("button")) {
                        return c(jSONObject);
                    }
                    break;
                case -896192468:
                    if (string.equals("spacer")) {
                        return e(jSONObject, enumC0052d);
                    }
                    break;
                case 3556653:
                    if (string.equals("text")) {
                        return h(jSONObject);
                    }
                    break;
                case 100313435:
                    if (string.equals("image")) {
                        return c(jSONObject, enumC0052d);
                    }
                    break;
                case 949721053:
                    if (string.equals("columns")) {
                        return a(jSONObject, enumC0052d);
                    }
                    break;
                case 1224424441:
                    if (string.equals("webview")) {
                        return i(jSONObject);
                    }
                    break;
                case 1674318617:
                    if (string.equals("divider")) {
                        return e(jSONObject);
                    }
                    break;
            }
        }
        throw new c("Unknown component type: " + jSONObject.getString("type"));
    }

    public final com.batch.android.g0.c.a c(JSONObject jSONObject) throws JSONException, c {
        if (jSONObject == null) {
            throw new c("Button cannot be null");
        }
        String string = jSONObject.getString(com.batch.android.s.b.a.f24015b);
        string.getClass();
        d.h hVarA = a(jSONObject.optJSONArray("backgroundColor"));
        d.h hVarA2 = a(jSONObject.optJSONArray("textColor"));
        d.f fVarD = d(jSONObject.optJSONArray("margin"));
        d.f fVarD2 = d(jSONObject.optJSONArray("padding"));
        String strReallyOptString = jSONObject.reallyOptString("width", "100%");
        strReallyOptString.getClass();
        d.g gVar = new d.g(strReallyOptString);
        String strReallyOptString2 = jSONObject.reallyOptString("align", "center");
        strReallyOptString2.getClass();
        Locale locale = Locale.ROOT;
        String upperCase = strReallyOptString2.toUpperCase(locale);
        upperCase.getClass();
        d.e eVarValueOf = d.e.valueOf(upperCase);
        d.b bVarE = e(jSONObject.optJSONArray("radius"));
        d.a aVarB = b(jSONObject);
        String strReallyOptString3 = jSONObject.reallyOptString("textAlign", "center");
        strReallyOptString3.getClass();
        String upperCase2 = strReallyOptString3.toUpperCase(locale);
        upperCase2.getClass();
        d.e eVarValueOf2 = d.e.valueOf(upperCase2);
        Set<d.c> setC = c(jSONObject.optJSONArray("fontDecoration"));
        Integer numReallyOptInteger = jSONObject.reallyOptInteger("fontSize", 12);
        numReallyOptInteger.getClass();
        int iIntValue = numReallyOptInteger.intValue();
        Integer numReallyOptInteger2 = jSONObject.reallyOptInteger("maxLines", 0);
        numReallyOptInteger2.getClass();
        return new com.batch.android.g0.c.a(string, hVarA, hVarA2, fVarD, fVarD2, gVar, eVarValueOf, bVarE, aVarB, eVarValueOf2, setC, iIntValue, numReallyOptInteger2.intValue());
    }

    public final d.f d(JSONArray jSONArray) throws c {
        int length;
        if (jSONArray != null && (length = jSONArray.length()) != 0) {
            if (length == 1) {
                return new d.f(jSONArray.getInt(0));
            }
            if (length == 2) {
                return new d.f(jSONArray.getInt(0), jSONArray.getInt(1));
            }
            if (length == 3) {
                throw new c("Cannot parse margin array with 3 values");
            }
            if (length == 4) {
                return new d.f(jSONArray.getInt(0), jSONArray.getInt(1), jSONArray.getInt(2), jSONArray.getInt(3));
            }
            throw new c("Cannot parse margin array with more than 4 values");
        }
        return new d.f(0);
    }

    public final d.b e(JSONArray jSONArray) throws c {
        int length;
        if (jSONArray != null && (length = jSONArray.length()) != 0) {
            if (length == 1) {
                return new d.b(jSONArray.getInt(0));
            }
            if (length == 2) {
                return new d.b(jSONArray.getInt(0), jSONArray.getInt(1));
            }
            if (length == 3) {
                throw new c("Cannot parse radius array with 3 values");
            }
            if (length == 4) {
                return new d.b(jSONArray.getInt(0), jSONArray.getInt(1), jSONArray.getInt(2), jSONArray.getInt(3));
            }
            throw new c("Cannot parse radius array with more than 4 values");
        }
        return new d.b(4);
    }

    public final Map<String, String> f(JSONObject jSONObject) throws JSONException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (jSONObject == null) {
            return MapsKt.c();
        }
        Iterator<String> itKeys = jSONObject.keys();
        itKeys.getClass();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String string = jSONObject.getString(next);
            next.getClass();
            string.getClass();
            linkedHashMap.put(next, string);
        }
        return linkedHashMap;
    }

    public final com.batch.android.g0.c.i h(JSONObject jSONObject) throws JSONException, c {
        if (jSONObject == null) {
            throw new c("Text cannot be null");
        }
        String string = jSONObject.getString(com.batch.android.s.b.a.f24015b);
        string.getClass();
        d.h hVarA = a(jSONObject.getJSONArray("color"));
        d.f fVarD = d(jSONObject.optJSONArray("margin"));
        String strReallyOptString = jSONObject.reallyOptString("textAlign", "center");
        strReallyOptString.getClass();
        String upperCase = strReallyOptString.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        d.e eVarValueOf = d.e.valueOf(upperCase);
        Set<d.c> setC = c(jSONObject.optJSONArray("fontDecoration"));
        Integer numReallyOptInteger = jSONObject.reallyOptInteger("fontSize", 12);
        numReallyOptInteger.getClass();
        int iIntValue = numReallyOptInteger.intValue();
        Integer numReallyOptInteger2 = jSONObject.reallyOptInteger("maxLines", 0);
        numReallyOptInteger2.getClass();
        return new com.batch.android.g0.c.i(string, hVarA, fVarD, eVarValueOf, setC, iIntValue, numReallyOptInteger2.intValue());
    }

    public final com.batch.android.g0.c.k i(JSONObject jSONObject) throws JSONException, c {
        if (jSONObject == null) {
            throw new c("WebView cannot be null");
        }
        String string = jSONObject.getString(com.batch.android.s.b.a.f24015b);
        string.getClass();
        Integer numReallyOptInteger = jSONObject.reallyOptInteger("timeout", 10);
        numReallyOptInteger.getClass();
        return new com.batch.android.g0.c.k(string, numReallyOptInteger.intValue(), jSONObject.optBoolean("inAppDeeplinks", true), jSONObject.optBoolean("devMode", false));
    }

    public static /* synthetic */ void a() {
    }

    public final com.batch.android.g0.b d(JSONObject jSONObject) throws JSONException {
        com.batch.android.g0.b.C0049b c0049b = null;
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("auto");
        com.batch.android.g0.b.a aVar = jSONObjectOptJSONObject == null ? null : new com.batch.android.g0.b.a(jSONObjectOptJSONObject.getInt("delay"), f23481a.a(jSONObjectOptJSONObject.getJSONArray("color")));
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("button");
        if (jSONObjectOptJSONObject2 != null) {
            a aVar2 = f23481a;
            d.h hVarA = aVar2.a(jSONObjectOptJSONObject2.optJSONArray("color"));
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("backgroundColor");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray().put("#00000000");
            }
            c0049b = new com.batch.android.g0.b.C0049b(hVarA, aVar2.a(jSONArrayOptJSONArray));
        }
        return new com.batch.android.g0.b(aVar, c0049b);
    }

    public final com.batch.android.g0.c.h e(JSONObject jSONObject, d.EnumC0052d enumC0052d) throws JSONException, c {
        enumC0052d.getClass();
        if (jSONObject != null) {
            String string = jSONObject.getString("height");
            string.getClass();
            d.g gVar = new d.g(string);
            if (enumC0052d == d.EnumC0052d.MODAL && gVar.f()) {
                throw new c("Spacer cannot have fill value in a Modal format");
            }
            return new com.batch.android.g0.c.h(gVar);
        }
        throw new c("Columns cannot be null");
    }

    public final com.batch.android.g0.c.C0050c a(JSONObject jSONObject, d.EnumC0052d enumC0052d) throws c {
        enumC0052d.getClass();
        if (jSONObject != null) {
            float[] fArrB = b(jSONObject.optJSONArray("ratios"));
            int iOptInt = jSONObject.optInt("spacing");
            d.f fVarD = d(jSONObject.optJSONArray("margin"));
            String strReallyOptString = jSONObject.reallyOptString("contentAlign", "center");
            strReallyOptString.getClass();
            String upperCase = strReallyOptString.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            return new com.batch.android.g0.c.C0050c(fArrB, iOptInt, fVarD, d.i.valueOf(upperCase), a(jSONObject.optJSONArray("children"), enumC0052d));
        }
        throw new c("Columns cannot be null");
    }

    public final com.batch.android.g0.c.d e(JSONObject jSONObject) throws JSONException, c {
        if (jSONObject != null) {
            Integer numReallyOptInteger = jSONObject.reallyOptInteger("thickness", 0);
            numReallyOptInteger.getClass();
            int iIntValue = numReallyOptInteger.intValue();
            d.h hVarA = a(jSONObject.optJSONArray("color"));
            String strReallyOptString = jSONObject.reallyOptString("width", "100%");
            strReallyOptString.getClass();
            d.g gVar = new d.g(strReallyOptString);
            String strReallyOptString2 = jSONObject.reallyOptString("align", "center");
            strReallyOptString2.getClass();
            String upperCase = strReallyOptString2.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            return new com.batch.android.g0.c.d(iIntValue, hVarA, gVar, d.e.valueOf(upperCase), d(jSONObject.optJSONArray("margin")));
        }
        throw new c("Divider cannot be null");
    }

    public final f d(JSONObject jSONObject, d.EnumC0052d enumC0052d) throws c {
        enumC0052d.getClass();
        if (jSONObject != null) {
            return new f(b(jSONObject.getJSONArray("children"), enumC0052d), a(jSONObject.optJSONArray("backgroundColor")), d(jSONObject.optJSONArray("margin")), e(jSONObject.optJSONArray("radius")), b(jSONObject));
        }
        throw new c("Root container cannot be null");
    }

    public final Map<String, com.batch.android.f0.a> a(JSONObject jSONObject) throws JSONException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (jSONObject == null) {
            return linkedHashMap;
        }
        Iterator<String> itKeys = jSONObject.keys();
        itKeys.getClass();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
            next.getClass();
            linkedHashMap.put(next, new com.batch.android.f0.a(jSONObject2.getString("action"), jSONObject2.optJSONObject("params")));
        }
        return MapsKt.o(linkedHashMap);
    }

    public final d.h a(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null) {
            return new d.h(f23482b, f23483c);
        }
        int length = jSONArray.length();
        if (length == 0) {
            return new d.h(f23482b, f23483c);
        }
        if (length != 1) {
            String string = jSONArray.getString(0);
            string.getClass();
            String string2 = jSONArray.getString(1);
            string2.getClass();
            return new d.h(string, string2);
        }
        String string3 = jSONArray.getString(0);
        string3.getClass();
        String string4 = jSONArray.getString(0);
        string4.getClass();
        return new d.h(string3, string4);
    }

    public final List<com.batch.android.g0.c> b(JSONArray jSONArray, d.EnumC0052d enumC0052d) throws c {
        enumC0052d.getClass();
        if (jSONArray != null && jSONArray.length() != 0) {
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(b(jSONArray.getJSONObject(i2), enumC0052d));
            }
            return CollectionsKt.y0(arrayList);
        }
        throw new c("children cannot be null or empty");
    }

    public static /* synthetic */ void b() {
    }

    public final d.a b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        if (!jSONObject.has("borderWidth") && !jSONObject.has("borderColor")) {
            return null;
        }
        Integer numReallyOptInteger = jSONObject.reallyOptInteger("borderWidth", 0);
        numReallyOptInteger.getClass();
        return new d.a(numReallyOptInteger.intValue(), a(jSONObject.optJSONArray("borderColor")));
    }

    public final float[] b(JSONArray jSONArray) throws c {
        if (jSONArray != null) {
            int length = jSONArray.length();
            float[] fArr = new float[length];
            int length2 = jSONArray.length();
            for (int i2 = 0; i2 < length2; i2++) {
                fArr[i2] = (float) jSONArray.getDouble(i2);
            }
            List listP = CollectionsKt.P(Float.valueOf(1.0f), Float.valueOf(100.0f));
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            for (int i3 = 0; i3 < length; i3++) {
                f2 += fArr[i3];
            }
            if (listP.contains(Float.valueOf(f2))) {
                return fArr;
            }
            throw new c("Sum of columns ratio must be 1 or 100");
        }
        throw new c("Columns ratio cannot be null");
    }

    public final com.batch.android.g0.c.g c(JSONObject jSONObject, d.EnumC0052d enumC0052d) throws JSONException, c {
        enumC0052d.getClass();
        if (jSONObject != null) {
            String string = jSONObject.getString("height");
            string.getClass();
            d.g gVar = new d.g(string);
            if (enumC0052d == d.EnumC0052d.MODAL && gVar.f()) {
                throw new c("Image cannot have fill value in a Modal format");
            }
            String string2 = jSONObject.getString(com.batch.android.s.b.a.f24015b);
            string2.getClass();
            d.f fVarD = d(jSONObject.optJSONArray("margin"));
            String strReallyOptString = jSONObject.reallyOptString("aspect", com.batch.android.g0.c.g.a.FILL.toString());
            strReallyOptString.getClass();
            String upperCase = strReallyOptString.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            return new com.batch.android.g0.c.g(string2, gVar, fVarD, com.batch.android.g0.c.g.a.valueOf(upperCase), e(jSONObject.optJSONArray("radius")));
        }
        throw new c("Image cannot be null");
    }

    public final Set<d.c> c(JSONArray jSONArray) throws JSONException {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (jSONArray == null) {
            return EmptySet.f71770b;
        }
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            String string = jSONArray.getString(i2);
            string.getClass();
            String upperCase = string.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            linkedHashSet.add(d.c.valueOf(upperCase));
        }
        return CollectionsKt.B0(linkedHashSet);
    }
}
