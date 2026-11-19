package com.batch.android.json;

import defpackage.fc;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class JSONArray {
    private final List<Object> values;

    public JSONArray(Object obj) throws JSONException {
        if (!obj.getClass().isArray()) {
            throw new JSONException("Not a primitive array: " + obj.getClass());
        }
        int length = Array.getLength(obj);
        this.values = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            put(JSONObject.wrap(Array.get(obj, i2)));
        }
    }

    public void checkedPut(Object obj) throws JSONException {
        if (obj instanceof Number) {
            JSON.checkDouble(((Number) obj).doubleValue());
        }
        put(obj);
    }

    public boolean equals(Object obj) {
        return (obj instanceof JSONArray) && ((JSONArray) obj).values.equals(this.values);
    }

    public Object get(int i2) throws JSONException {
        try {
            Object obj = this.values.get(i2);
            if (obj != null) {
                return obj;
            }
            throw new JSONException("Value at " + i2 + " is null.");
        } catch (IndexOutOfBoundsException unused) {
            StringBuilder sbQ = fc.q(i2, "Index ", " out of range [0..");
            sbQ.append(this.values.size());
            sbQ.append(")");
            throw new JSONException(sbQ.toString());
        }
    }

    public boolean getBoolean(int i2) throws JSONException {
        Object obj = get(i2);
        Boolean bool = JSON.toBoolean(obj);
        if (bool != null) {
            return bool.booleanValue();
        }
        throw JSON.typeMismatch(Integer.valueOf(i2), obj, "boolean");
    }

    public double getDouble(int i2) throws JSONException {
        Object obj = get(i2);
        Double d = JSON.toDouble(obj);
        if (d != null) {
            return d.doubleValue();
        }
        throw JSON.typeMismatch(Integer.valueOf(i2), obj, "double");
    }

    public int getInt(int i2) throws JSONException {
        Object obj = get(i2);
        Integer integer = JSON.toInteger(obj);
        if (integer != null) {
            return integer.intValue();
        }
        throw JSON.typeMismatch(Integer.valueOf(i2), obj, "int");
    }

    public JSONArray getJSONArray(int i2) throws JSONException {
        Object obj = get(i2);
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        throw JSON.typeMismatch(Integer.valueOf(i2), obj, "JSONArray");
    }

    public JSONObject getJSONObject(int i2) throws JSONException {
        Object obj = get(i2);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        throw JSON.typeMismatch(Integer.valueOf(i2), obj, "JSONObject");
    }

    public long getLong(int i2) throws JSONException {
        Object obj = get(i2);
        Long l = JSON.toLong(obj);
        if (l != null) {
            return l.longValue();
        }
        throw JSON.typeMismatch(Integer.valueOf(i2), obj, "long");
    }

    public String getString(int i2) throws JSONException {
        Object obj = get(i2);
        String string = JSON.toString(obj);
        if (string != null) {
            return string;
        }
        throw JSON.typeMismatch(Integer.valueOf(i2), obj, "String");
    }

    public int hashCode() {
        return this.values.hashCode();
    }

    public boolean isNull(int i2) {
        Object objOpt = opt(i2);
        return objOpt == null || objOpt == JSONObject.NULL;
    }

    public String join(String str) throws JSONException {
        JSONStringer jSONStringer = new JSONStringer();
        jSONStringer.open(JSONStringer.a.NULL, "");
        int size = this.values.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                jSONStringer.out.append(str);
            }
            jSONStringer.value(this.values.get(i2));
        }
        JSONStringer.a aVar = JSONStringer.a.NULL;
        jSONStringer.close(aVar, aVar, "");
        return jSONStringer.out.toString();
    }

    public int length() {
        return this.values.size();
    }

    public Object opt(int i2) {
        if (i2 < 0 || i2 >= this.values.size()) {
            return null;
        }
        return this.values.get(i2);
    }

    public boolean optBoolean(int i2, boolean z) {
        Boolean bool = JSON.toBoolean(opt(i2));
        return bool != null ? bool.booleanValue() : z;
    }

    public double optDouble(int i2, double d) {
        Double d2 = JSON.toDouble(opt(i2));
        return d2 != null ? d2.doubleValue() : d;
    }

    public int optInt(int i2, int i3) {
        Integer integer = JSON.toInteger(opt(i2));
        return integer != null ? integer.intValue() : i3;
    }

    public JSONArray optJSONArray(int i2) {
        Object objOpt = opt(i2);
        if (objOpt instanceof JSONArray) {
            return (JSONArray) objOpt;
        }
        return null;
    }

    public JSONObject optJSONObject(int i2) {
        Object objOpt = opt(i2);
        if (objOpt instanceof JSONObject) {
            return (JSONObject) objOpt;
        }
        return null;
    }

    public long optLong(int i2, long j2) {
        Long l = JSON.toLong(opt(i2));
        return l != null ? l.longValue() : j2;
    }

    public String optString(int i2, String str) {
        String string = JSON.toString(opt(i2));
        return string != null ? string : str;
    }

    public JSONArray put(int i2, Object obj) throws JSONException {
        if (obj instanceof Number) {
            JSON.checkDouble(((Number) obj).doubleValue());
        }
        while (true) {
            int size = this.values.size();
            List<Object> list = this.values;
            if (size > i2) {
                list.set(i2, obj);
                return this;
            }
            list.add(null);
        }
    }

    public Object remove(int i2) {
        if (i2 < 0 || i2 >= this.values.size()) {
            return null;
        }
        return this.values.remove(i2);
    }

    public JSONObject toJSONObject(JSONArray jSONArray) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        int iMin = Math.min(jSONArray.length(), this.values.size());
        if (iMin == 0) {
            return null;
        }
        for (int i2 = 0; i2 < iMin; i2++) {
            jSONObject.put(JSON.toString(jSONArray.opt(i2)), opt(i2));
        }
        return jSONObject;
    }

    public String toString() {
        try {
            JSONStringer jSONStringer = new JSONStringer();
            writeTo(jSONStringer);
            return jSONStringer.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public void writeTo(JSONStringer jSONStringer) throws JSONException {
        jSONStringer.array();
        Iterator<Object> it = this.values.iterator();
        while (it.hasNext()) {
            jSONStringer.value(it.next());
        }
        jSONStringer.endArray();
    }

    public String optString(int i2) {
        return optString(i2, "");
    }

    public String toString(int i2) throws JSONException {
        JSONStringer jSONStringer = new JSONStringer(i2);
        writeTo(jSONStringer);
        return jSONStringer.toString();
    }

    public boolean optBoolean(int i2) {
        return optBoolean(i2, false);
    }

    public double optDouble(int i2) {
        return optDouble(i2, Double.NaN);
    }

    public int optInt(int i2) {
        return optInt(i2, 0);
    }

    public long optLong(int i2) {
        return optLong(i2, 0L);
    }

    public JSONArray put(double d) throws JSONException {
        this.values.add(Double.valueOf(JSON.checkDouble(d)));
        return this;
    }

    public JSONArray put(int i2) {
        this.values.add(Integer.valueOf(i2));
        return this;
    }

    public JSONArray put(long j2) {
        this.values.add(Long.valueOf(j2));
        return this;
    }

    public JSONArray put(Object obj) {
        this.values.add(obj);
        return this;
    }

    public JSONArray put(int i2, boolean z) throws JSONException {
        return put(i2, Boolean.valueOf(z));
    }

    public JSONArray put(int i2, double d) throws JSONException {
        return put(i2, Double.valueOf(d));
    }

    public JSONArray put(int i2, int i3) throws JSONException {
        return put(i2, Integer.valueOf(i3));
    }

    public JSONArray put(int i2, long j2) throws JSONException {
        return put(i2, Long.valueOf(j2));
    }

    public JSONArray put(boolean z) {
        this.values.add(Boolean.valueOf(z));
        return this;
    }

    public JSONArray(Collection collection) {
        this();
        if (collection != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                put(JSONObject.wrap(it.next()));
            }
        }
    }

    public JSONArray(JSONTokener jSONTokener) throws JSONException {
        Object objNextValue = jSONTokener.nextValue();
        if (objNextValue instanceof JSONArray) {
            this.values = ((JSONArray) objNextValue).values;
            return;
        }
        throw JSON.typeMismatch(objNextValue, "JSONArray");
    }

    public JSONArray(String str) throws JSONException {
        this(new JSONTokener(str));
    }

    public JSONArray() {
        this.values = new ArrayList();
    }
}
