package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.perfectcorp.thirdparty.com.google.gson.JsonArray;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import defpackage.a61;
import defpackage.az;
import defpackage.md;
import io.jsonwebtoken.JwtParser;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends com.perfectcorp.thirdparty.com.google.gson.stream.a {
    public static final Reader v = new e();
    public static final Object w = new Object();
    public Object[] r;
    public int s;
    public String[] t;
    public int[] u;

    public d(JsonElement jsonElement) {
        super(v);
        this.r = new Object[32];
        this.s = 0;
        this.t = new String[32];
        this.u = new int[32];
        q0(jsonElement);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final boolean B() {
        p0(com.perfectcorp.thirdparty.com.google.gson.stream.c.f42571h);
        boolean zR = ((JsonPrimitive) E0()).r();
        int i2 = this.s;
        if (i2 > 0) {
            int[] iArr = this.u;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return zR;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final void C() {
        p0(com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i);
        E0();
        int i2 = this.s;
        if (i2 > 0) {
            int[] iArr = this.u;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final double E() {
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVarW = w();
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVar = com.perfectcorp.thirdparty.com.google.gson.stream.c.g;
        if (cVarW != cVar && cVarW != com.perfectcorp.thirdparty.com.google.gson.stream.c.f42570f) {
            StringBuilder sb = new StringBuilder("Expected ");
            sb.append(cVar);
            sb.append(" but was ");
            sb.append(cVarW);
            az.n(" at path ".concat(i0()), sb);
            return 0.0d;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) v0();
        double dDoubleValue = jsonPrimitive.f42456b instanceof Number ? jsonPrimitive.o().doubleValue() : Double.parseDouble(jsonPrimitive.n());
        if (!this.f42559c && (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + dDoubleValue);
        }
        E0();
        int i2 = this.s;
        if (i2 > 0) {
            int[] iArr = this.u;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return dDoubleValue;
    }

    public final Object E0() {
        Object[] objArr = this.r;
        int i2 = this.s - 1;
        this.s = i2;
        Object obj = objArr[i2];
        objArr[i2] = null;
        return obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final long F() {
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVarW = w();
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVar = com.perfectcorp.thirdparty.com.google.gson.stream.c.g;
        if (cVarW != cVar && cVarW != com.perfectcorp.thirdparty.com.google.gson.stream.c.f42570f) {
            StringBuilder sb = new StringBuilder("Expected ");
            sb.append(cVar);
            sb.append(" but was ");
            sb.append(cVarW);
            az.n(" at path ".concat(i0()), sb);
            return 0L;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) v0();
        long jLongValue = jsonPrimitive.f42456b instanceof Number ? jsonPrimitive.o().longValue() : Long.parseLong(jsonPrimitive.n());
        E0();
        int i2 = this.s;
        if (i2 > 0) {
            int[] iArr = this.u;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return jLongValue;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final int G() {
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVarW = w();
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVar = com.perfectcorp.thirdparty.com.google.gson.stream.c.g;
        if (cVarW != cVar && cVarW != com.perfectcorp.thirdparty.com.google.gson.stream.c.f42570f) {
            StringBuilder sb = new StringBuilder("Expected ");
            sb.append(cVar);
            sb.append(" but was ");
            sb.append(cVarW);
            az.n(" at path ".concat(i0()), sb);
            return 0;
        }
        int i2 = ((JsonPrimitive) v0()).i();
        E0();
        int i3 = this.s;
        if (i3 > 0) {
            int[] iArr = this.u;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
        }
        return i2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final void H() {
        if (w() == com.perfectcorp.thirdparty.com.google.gson.stream.c.f42569e) {
            y();
            this.t[this.s - 2] = "null";
        } else {
            E0();
            this.t[this.s - 1] = "null";
        }
        int[] iArr = this.u;
        int i2 = this.s - 1;
        iArr[i2] = iArr[i2] + 1;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.r = new Object[]{w};
        this.s = 1;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final void h() {
        p0(com.perfectcorp.thirdparty.com.google.gson.stream.c.f42566a);
        q0(((JsonArray) v0()).f42452b.iterator());
        this.u[this.s - 1] = 0;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final String i0() {
        StringBuilder sb = new StringBuilder("$");
        int i2 = 0;
        while (i2 < this.s) {
            Object[] objArr = this.r;
            Object obj = objArr[i2];
            if (obj instanceof JsonArray) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.u[i2]);
                    sb.append(']');
                }
            } else if (obj instanceof JsonObject) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append(JwtParser.SEPARATOR_CHAR);
                    String str = this.t[i2];
                    if (str != null) {
                        sb.append(str);
                    }
                }
            }
            i2++;
        }
        return sb.toString();
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final void o() {
        p0(com.perfectcorp.thirdparty.com.google.gson.stream.c.f42567b);
        E0();
        E0();
        int i2 = this.s;
        if (i2 > 0) {
            int[] iArr = this.u;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public final void p0(com.perfectcorp.thirdparty.com.google.gson.stream.c cVar) {
        if (w() == cVar) {
            return;
        }
        StringBuilder sb = new StringBuilder("Expected ");
        sb.append(cVar);
        sb.append(" but was ");
        sb.append(w());
        az.n(" at path ".concat(i0()), sb);
    }

    public final void q0(Object obj) {
        int i2 = this.s;
        Object[] objArr = this.r;
        if (i2 == objArr.length) {
            Object[] objArr2 = new Object[i2 << 1];
            int[] iArr = new int[i2 << 1];
            String[] strArr = new String[i2 << 1];
            System.arraycopy(objArr, 0, objArr2, 0, i2);
            System.arraycopy(this.u, 0, iArr, 0, this.s);
            System.arraycopy(this.t, 0, strArr, 0, this.s);
            this.r = objArr2;
            this.u = iArr;
            this.t = strArr;
        }
        Object[] objArr3 = this.r;
        int i3 = this.s;
        this.s = i3 + 1;
        objArr3[i3] = obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final void r() {
        p0(com.perfectcorp.thirdparty.com.google.gson.stream.c.f42568c);
        q0(((JsonObject) v0()).f42454b.entrySet().iterator());
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final void t() {
        p0(com.perfectcorp.thirdparty.com.google.gson.stream.c.d);
        E0();
        E0();
        int i2 = this.s;
        if (i2 > 0) {
            int[] iArr = this.u;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final String toString() {
        return NBSSpanMetricUnit.Day;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final boolean u() {
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVarW = w();
        return (cVarW == com.perfectcorp.thirdparty.com.google.gson.stream.c.d || cVarW == com.perfectcorp.thirdparty.com.google.gson.stream.c.f42567b) ? false : true;
    }

    public final Object v0() {
        return this.r[this.s - 1];
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final com.perfectcorp.thirdparty.com.google.gson.stream.c w() {
        while (this.s != 0) {
            Object objV0 = v0();
            if (!(objV0 instanceof Iterator)) {
                if (objV0 instanceof JsonObject) {
                    return com.perfectcorp.thirdparty.com.google.gson.stream.c.f42568c;
                }
                if (objV0 instanceof JsonArray) {
                    return com.perfectcorp.thirdparty.com.google.gson.stream.c.f42566a;
                }
                if (!(objV0 instanceof JsonPrimitive)) {
                    if (objV0 instanceof JsonNull) {
                        return com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i;
                    }
                    if (objV0 == w) {
                        md.k("JsonReader is closed");
                        return null;
                    }
                    a61.h();
                    return null;
                }
                Object obj = ((JsonPrimitive) objV0).f42456b;
                if (obj instanceof String) {
                    return com.perfectcorp.thirdparty.com.google.gson.stream.c.f42570f;
                }
                if (obj instanceof Boolean) {
                    return com.perfectcorp.thirdparty.com.google.gson.stream.c.f42571h;
                }
                if (obj instanceof Number) {
                    return com.perfectcorp.thirdparty.com.google.gson.stream.c.g;
                }
                a61.h();
                return null;
            }
            boolean z = this.r[this.s - 2] instanceof JsonObject;
            Iterator it = (Iterator) objV0;
            if (!it.hasNext()) {
                return z ? com.perfectcorp.thirdparty.com.google.gson.stream.c.d : com.perfectcorp.thirdparty.com.google.gson.stream.c.f42567b;
            }
            if (z) {
                return com.perfectcorp.thirdparty.com.google.gson.stream.c.f42569e;
            }
            q0(it.next());
        }
        return com.perfectcorp.thirdparty.com.google.gson.stream.c.f42573j;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final String y() {
        p0(com.perfectcorp.thirdparty.com.google.gson.stream.c.f42569e);
        Map.Entry entry = (Map.Entry) ((Iterator) v0()).next();
        String str = (String) entry.getKey();
        this.t[this.s - 1] = str;
        q0(entry.getValue());
        return str;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.stream.a
    public final String z() {
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVarW = w();
        com.perfectcorp.thirdparty.com.google.gson.stream.c cVar = com.perfectcorp.thirdparty.com.google.gson.stream.c.f42570f;
        if (cVarW != cVar && cVarW != com.perfectcorp.thirdparty.com.google.gson.stream.c.g) {
            StringBuilder sb = new StringBuilder("Expected ");
            sb.append(cVar);
            sb.append(" but was ");
            sb.append(cVarW);
            az.n(" at path ".concat(i0()), sb);
            return null;
        }
        String strN = ((JsonPrimitive) E0()).n();
        int i2 = this.s;
        if (i2 > 0) {
            int[] iArr = this.u;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return strN;
    }
}
