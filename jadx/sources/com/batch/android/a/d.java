package com.batch.android.a;

import android.content.Context;
import android.text.TextUtils;
import com.batch.android.e.o0;
import com.batch.android.e.q0;
import com.batch.android.e.t;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONObject;
import com.batch.android.n.c0;
import com.batch.android.n.f0;
import com.batch.android.n.w;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.r81;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends o0 {
    private static final String o = "BatchWebservice";
    protected int m;
    protected q0 n;

    public d(Context context, o0.c cVar, String str, String... strArr) throws MalformedURLException {
        super(context, cVar, str, o0.a(strArr));
        this.m = 0;
        G();
    }

    private void G() {
        String strA;
        try {
            String strH = H();
            if (strH != null && !strH.isEmpty() && (strA = w.a(this.f23130e).a(strH)) != null && !strA.isEmpty()) {
                ArrayList arrayList = new ArrayList(Arrays.asList(strA.split(",")));
                if (arrayList.isEmpty()) {
                    return;
                }
                com.batch.android.h.c cVarA = c0.a(this.f23130e);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    String str = (String) obj;
                    String strA2 = w.a(this.f23130e).a(str);
                    if (strA2 == null || strA2.isEmpty()) {
                        com.batch.android.h.a aVarA = cVarA.a(str);
                        if (aVarA != null) {
                            strA2 = aVarA.b();
                        }
                    }
                    if (strA2 == null || strA2.isEmpty()) {
                        t.c(o, "Unable to find parameter value for key " + str);
                    } else {
                        a(str, strA2);
                    }
                }
            }
        } catch (Exception e2) {
            t.a(o, "Error while building property parameters", e2);
        }
    }

    private static String b(Context context) {
        try {
            String strC = com.batch.android.h.b.c(context);
            String strA = com.batch.android.h.b.a(context);
            String strI = com.batch.android.h.b.i();
            String strF = com.batch.android.h.b.f();
            String strTrim = (com.batch.android.h.b.j() + " " + com.batch.android.h.b.a()).trim();
            if (strTrim.length() > 0) {
                strTrim = strTrim.concat(" ");
            }
            return strTrim + "com.batch.android/3.1.1 " + strC + "/" + strA + " (" + strF + ";" + strI + ")";
        } catch (Exception e2) {
            t.c(o, "Error while building User Agent header", e2);
            return null;
        }
    }

    public abstract String H();

    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            r81.d("Null body json");
            return;
        }
        try {
            if (!jSONObject.has("parameters") || jSONObject.isNull("parameters")) {
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("parameters");
            if (jSONArray.length() <= 0) {
                return;
            }
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    w.a(this.f23130e).a(jSONObject2.getString("n"), jSONObject2.getString("v"), (!jSONObject2.has(NBSSpanMetricUnit.Second) || jSONObject2.isNull(NBSSpanMetricUnit.Second)) ? false : jSONObject2.getBoolean(NBSSpanMetricUnit.Second));
                } catch (Exception e2) {
                    t.c(o, "Error while reading parameter #" + i2, e2);
                }
            }
        } catch (Exception e3) {
            t.c(o, "Error while reading parameters into WS response", e3);
        }
    }

    @Override // com.batch.android.e.o0
    public com.batch.android.b1.g<JSONObject> w() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ids", n.b(this.f23130e));
        } catch (Exception e2) {
            t.c(o, "Error while adding ids object to global post params", e2);
        }
        try {
            jSONObject.put("rc", this.m);
            if (this.n != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("cause", this.n.toString());
                jSONObject.put("lastFail", jSONObject2);
            }
        } catch (Exception e3) {
            t.c(o, "Error while adding retry count data to global post params", e3);
        }
        try {
            com.batch.android.v0.l lVarA = f0.a();
            String strC = lVarA.c(this.f23130e);
            String strD = lVarA.d(this.f23130e);
            if (!TextUtils.isEmpty(strC) || !TextUtils.isEmpty(strD)) {
                JSONObject jSONObject3 = new JSONObject();
                if (!TextUtils.isEmpty(strC)) {
                    jSONObject3.put("ula", strC);
                }
                if (!TextUtils.isEmpty(strD)) {
                    jSONObject3.put("ure", strD);
                }
                jSONObject3.put("upv", lVarA.e(this.f23130e));
                jSONObject.put("upr", jSONObject3);
            }
        } catch (Exception e4) {
            t.c(o, "Error while adding upr to body", e4);
        }
        return new com.batch.android.b1.b(jSONObject);
    }

    @Override // com.batch.android.e.o0
    public void b() {
        super.b();
        String strB = b(this.f23130e);
        if (strB != null) {
            this.d.put("UserAgent", strB);
            this.d.put("x-UserAgent", strB);
        }
        String strA = a(this.f23130e);
        if (strA != null) {
            this.d.put("Accept-Language", strA);
        }
        int i2 = this.m;
        if (i2 > 0) {
            this.d.put("X-RetryCount", Integer.toString(i2));
        }
    }

    @Override // com.batch.android.e.o0
    public void a(q0 q0Var) {
        super.a(q0Var);
        this.m++;
        this.n = q0Var;
    }

    private static String a(Context context) {
        try {
            return com.batch.android.h.b.e() + "-" + com.batch.android.h.b.c();
        } catch (Exception e2) {
            t.c(o, "Error while building Accept Language header", e2);
            return null;
        }
    }
}
