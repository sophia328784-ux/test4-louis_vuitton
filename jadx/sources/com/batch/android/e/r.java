package com.batch.android.e;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.batch.android.BatchNotificationAction;
import com.batch.android.BatchNotificationSource;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONHelper;
import com.batch.android.json.JSONObject;
import com.google.firebase.messaging.RemoteMessage;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.md;
import defpackage.r81;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23157c = "l";
    private static final String d = "i";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f23158e = "di";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23159f = "s";
    private static final String g = "lcr";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f23160h = "ld";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f23161i = "ld2";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f23162j = "bi";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f23163k = "bp";
    private static final String l = "a";
    private static final String m = "pr";
    private static final String n = "gr";
    private static final String o = "grs";
    private static final String p = "od";
    private static final String q = "t";
    private static final String r = "ex";
    private static final String s = "va";
    private static final String t = "ch";
    private static final String u = "vis";
    private static final String v = "fmt";
    private static final String w = "fmt_args";
    private static final String x = "r";
    private static final String y = "old_bp_icnhandling";
    public static final String z = "com.batch";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JSONObject f23164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f23165b;

    /* JADX INFO: loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23166a;

        static {
            int[] iArr = new int[c.values().length];
            f23166a = iArr;
            try {
                iArr[c.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23166a[c.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23166a[c.MIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23166a[c.LOW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23166a[c.HIGH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f23166a[c.MAX.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum b {
        DEFAULT,
        APEN;

        public static b a(String str) {
            return "apen".equals(str) ? APEN : DEFAULT;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public enum c {
        UNDEFINED,
        DEFAULT,
        MIN,
        LOW,
        HIGH,
        MAX;

        public int b() {
            int i2 = a.f23166a[ordinal()];
            if (i2 == 3) {
                return -2;
            }
            if (i2 == 4) {
                return -1;
            }
            if (i2 != 5) {
                return i2 != 6 ? 0 : 2;
            }
            return 1;
        }
    }

    public enum d {
        DEFAULT,
        DISPLAY,
        FORCE
    }

    public r(String str) {
        if (str == null || str.isEmpty()) {
            r81.d("Cannot init PushData without the associated JSON data");
            throw null;
        }
        try {
            this.f23164a = new JSONObject(str);
        } catch (JSONException e2) {
            r81.j("Error while parsing JSON data", e2);
            throw null;
        }
    }

    private JSONObject b() {
        JSONObject jSONObject = this.f23165b;
        if (jSONObject != null) {
            return jSONObject;
        }
        String strC = c(f23161i);
        if (strC == null) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(q.a(new com.batch.android.e.a().a(strC)));
            this.f23165b = jSONObject2;
            return jSONObject2;
        } catch (Exception e2) {
            t.a("Decoding landing message has failed", e2);
            return null;
        }
    }

    private JSONObject l() {
        return b(f23160h);
    }

    public boolean A() {
        return (b(f23160h) == null && c(f23161i) == null) ? false : true;
    }

    public boolean B() {
        return this.f23164a.has("l") && !this.f23164a.isNull("l");
    }

    public boolean C() {
        return this.f23164a.optBoolean(o, false);
    }

    public boolean D() {
        try {
            return this.f23164a.has(g) && this.f23164a.getBoolean(g);
        } catch (JSONException unused) {
        }
    }

    public boolean E() {
        String strC = c("l");
        return strC == null || strC.trim().isEmpty();
    }

    public boolean F() {
        try {
            return this.f23164a.has("s") && this.f23164a.getBoolean("s");
        } catch (JSONException unused) {
        }
    }

    public boolean G() {
        return this.f23164a.reallyOptBoolean(y, Boolean.FALSE).booleanValue();
    }

    public List<BatchNotificationAction> a() {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArrayA = a(l);
        if (jSONArrayA != null) {
            for (int i2 = 0; i2 < jSONArrayA.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayA.optJSONObject(i2);
                if (jSONObjectOptJSONObject == null) {
                    t.c(com.batch.android.v0.j.m, "InternalPushData - getActions: Invalid action json array object. Skipping.");
                } else {
                    BatchNotificationAction batchNotificationAction = new BatchNotificationAction();
                    batchNotificationAction.label = jSONObjectOptJSONObject.reallyOptString("l", null);
                    batchNotificationAction.drawableName = jSONObjectOptJSONObject.reallyOptString(d, null);
                    Boolean bool = Boolean.TRUE;
                    batchNotificationAction.hasUserInterface = jSONObjectOptJSONObject.reallyOptBoolean("ui", bool).booleanValue();
                    batchNotificationAction.actionIdentifier = jSONObjectOptJSONObject.reallyOptString(l, null);
                    batchNotificationAction.actionArguments = jSONObjectOptJSONObject.optJSONObject("args");
                    batchNotificationAction.shouldDismissNotification = jSONObjectOptJSONObject.reallyOptBoolean(NBSSpanMetricUnit.Day, bool).booleanValue();
                    if (batchNotificationAction.actionArguments == null) {
                        batchNotificationAction.actionArguments = new JSONObject();
                    }
                    if (TextUtils.isEmpty(batchNotificationAction.label)) {
                        t.c(com.batch.android.v0.j.m, "InternalPushData - getActions: Empty or null label. Skipping.");
                    } else if (TextUtils.isEmpty(batchNotificationAction.actionIdentifier)) {
                        t.c(com.batch.android.v0.j.m, "InternalPushData - getActions: Empty or null action identifier. Skipping.");
                    } else {
                        arrayList.add(batchNotificationAction);
                    }
                }
            }
        }
        return arrayList;
    }

    public String c() {
        return c(t);
    }

    public List<Double> d() {
        JSONObject jSONObjectB = b(f23162j);
        if (jSONObjectB != null && jSONObjectB.has(NBSSpanMetricUnit.Day) && !jSONObjectB.isNull(NBSSpanMetricUnit.Day)) {
            try {
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray = jSONObjectB.getJSONArray(NBSSpanMetricUnit.Day);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(Double.valueOf(jSONArray.getDouble(i2)));
                }
                return arrayList;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public String e() {
        JSONObject jSONObjectB = b(f23162j);
        if (jSONObjectB == null) {
            return null;
        }
        return a(jSONObjectB, "u");
    }

    public List<Double> f() {
        JSONObject jSONObjectB = b(f23163k);
        if (jSONObjectB != null && jSONObjectB.has(NBSSpanMetricUnit.Day) && !jSONObjectB.isNull(NBSSpanMetricUnit.Day)) {
            try {
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray = jSONObjectB.getJSONArray(NBSSpanMetricUnit.Day);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(Double.valueOf(jSONArray.getDouble(i2)));
                }
                return arrayList;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public String g() {
        JSONObject jSONObjectB = b(f23163k);
        if (jSONObjectB == null) {
            return null;
        }
        return a(jSONObjectB, "u");
    }

    public Map<String, Object> h() {
        try {
            return JSONHelper.jsonObjectToMap(new JSONObject(this.f23164a, new String[]{d, p, r, s, q}));
        } catch (JSONException e2) {
            t.c(com.batch.android.v0.j.m, "Error while deserializing the PushData extra parameters.", e2);
            return null;
        }
    }

    public String i() {
        String strC = c(n);
        if (TextUtils.isEmpty(strC)) {
            return null;
        }
        return strC;
    }

    public String j() {
        return c(f23158e);
    }

    public JSONObject k() {
        JSONObject jSONObjectB = b();
        return jSONObjectB != null ? jSONObjectB : l();
    }

    public b m() {
        return b.a(this.f23164a.reallyOptString(v, null));
    }

    public JSONObject n() {
        return this.f23164a.optJSONObject(w);
    }

    public Map<String, Object> o() {
        try {
            return JSONHelper.jsonObjectToMap(new JSONObject(this.f23164a, new String[]{p}));
        } catch (JSONException e2) {
            t.c(com.batch.android.v0.j.m, "Error while deserializing the PushData open data.", e2);
            return null;
        }
    }

    public JSONObject p() {
        return this.f23164a;
    }

    public c q() {
        String strC = c(m);
        if (!TextUtils.isEmpty(strC)) {
            String lowerCase = strC.toLowerCase(Locale.US);
            try {
                int i2 = Integer.parseInt(lowerCase);
                if (i2 == -2) {
                    return c.MIN;
                }
                if (i2 == -1) {
                    return c.LOW;
                }
                if (i2 != 1) {
                    return i2 != 2 ? c.DEFAULT : c.MAX;
                }
                return c.HIGH;
            } catch (NumberFormatException e2) {
                t.c(com.batch.android.v0.j.m, "Error while reading the priority number " + lowerCase, e2);
            }
        }
        return c.UNDEFINED;
    }

    public String r() {
        return c(d);
    }

    public long s() {
        JSONObject jSONObjectB = b(x);
        if (jSONObjectB == null) {
            return 0L;
        }
        return jSONObjectB.optLong("dma", 0L);
    }

    public long t() {
        JSONObject jSONObjectB = b(x);
        if (jSONObjectB == null) {
            return 0L;
        }
        return jSONObjectB.optLong("dmi", 0L);
    }

    public d u() {
        JSONObject jSONObjectB = b(x);
        if (jSONObjectB == null) {
            return d.DEFAULT;
        }
        int iOptInt = jSONObjectB.optInt(NBSSpanMetricUnit.Minute, 1);
        if (iOptInt != 1) {
            return iOptInt != 2 ? d.DEFAULT : d.FORCE;
        }
        return d.DISPLAY;
    }

    public String v() {
        return c("l");
    }

    public BatchNotificationSource w() {
        String strC = c(q);
        if ("c".equalsIgnoreCase(strC)) {
            return BatchNotificationSource.CAMPAIGN;
        }
        if (q.equalsIgnoreCase(strC)) {
            return BatchNotificationSource.TRANSACTIONAL;
        }
        return "tc".equalsIgnoreCase(strC) ? BatchNotificationSource.TRIGGER : BatchNotificationSource.UNKNOWN;
    }

    public int x() {
        int iOptInt = this.f23164a.optInt(u, 1);
        if (iOptInt != -1) {
            return iOptInt != 0 ? 1 : 0;
        }
        return -1;
    }

    public boolean y() {
        String strA;
        JSONObject jSONObjectB = b(f23162j);
        return (jSONObjectB == null || (strA = a(jSONObjectB, "u")) == null || strA.trim().isEmpty()) ? false : true;
    }

    public boolean z() {
        String strA;
        JSONObject jSONObjectB = b(f23163k);
        return (jSONObjectB == null || (strA = a(jSONObjectB, "u")) == null || strA.trim().isEmpty()) ? false : true;
    }

    private String c(String str) {
        return a(this.f23164a, str);
    }

    public r(JSONObject jSONObject) {
        if (jSONObject != null && !jSONObject.keySet().isEmpty()) {
            this.f23164a = jSONObject;
        } else {
            r81.d("Cannot init PushData without the associated JSON data");
            throw null;
        }
    }

    private JSONObject b(String str) {
        try {
            if (this.f23164a.isNull(str)) {
                return null;
            }
            return this.f23164a.getJSONObject(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static r a(Bundle bundle) {
        String string;
        if (bundle == null || bundle.isEmpty() || (string = bundle.getString(z)) == null) {
            return null;
        }
        return new r(string);
    }

    public static r a(RemoteMessage remoteMessage) {
        String str;
        if (remoteMessage == null) {
            return null;
        }
        HashMap mapW1 = remoteMessage.W1();
        if (mapW1.isEmpty() || (str = (String) mapW1.get(z)) == null) {
            return null;
        }
        return new r(str);
    }

    public static r a(Intent intent) {
        if (intent != null) {
            return a(intent.getExtras());
        }
        md.n("intent cannot be null");
        return null;
    }

    private String a(JSONObject jSONObject, String str) {
        try {
            if (jSONObject.isNull(str)) {
                return null;
            }
            return jSONObject.getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    private JSONArray a(String str) {
        try {
            if (this.f23164a.isNull(str)) {
                return null;
            }
            return this.f23164a.getJSONArray(str);
        } catch (JSONException unused) {
            return null;
        }
    }
}
