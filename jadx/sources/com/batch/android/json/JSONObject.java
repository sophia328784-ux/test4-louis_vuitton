package com.batch.android.json;

import defpackage.a61;
import defpackage.az;
import defpackage.fc;
import defpackage.r81;
import defpackage.tr;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class JSONObject implements Serializable {
    private static final Double NEGATIVE_ZERO = Double.valueOf(-0.0d);
    public static final Object NULL = new a();
    private LinkedHashMap<String, Object> nameValuePairs;

    public class a {
        public boolean equals(Object obj) {
            return obj == this || obj == null;
        }

        public String toString() {
            return "null";
        }
    }

    public JSONObject(Map map) {
        this();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str == null) {
                r81.d("key == null");
                throw null;
            }
            this.nameValuePairs.put(str, wrap(entry.getValue()));
        }
    }

    public static String numberToString(Number number) throws JSONException {
        if (number == null) {
            a61.o("Number must be non-null");
            return null;
        }
        double dDoubleValue = number.doubleValue();
        JSON.checkDouble(dDoubleValue);
        if (number.equals(NEGATIVE_ZERO)) {
            return "-0";
        }
        long jLongValue = number.longValue();
        return dDoubleValue == ((double) jLongValue) ? Long.toString(jLongValue) : number.toString();
    }

    public static String quote(String str) {
        if (str == null) {
            return "\"\"";
        }
        try {
            JSONStringer jSONStringer = new JSONStringer();
            JSONStringer.a aVar = JSONStringer.a.NULL;
            jSONStringer.open(aVar, "");
            jSONStringer.value(str);
            jSONStringer.close(aVar, aVar, "");
            return jSONStringer.toString();
        } catch (JSONException unused) {
            a61.h();
            return null;
        }
    }

    private void readFromTokener(JSONTokener jSONTokener) throws JSONException {
        Object objNextValue = jSONTokener.nextValue();
        if (!(objNextValue instanceof JSONObject)) {
            throw JSON.typeMismatch(objNextValue, "JSONObject");
        }
        this.nameValuePairs = ((JSONObject) objNextValue).nameValuePairs;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        Object object = objectInputStream.readObject();
        if (!(object instanceof String)) {
            az.o("Error while deserializing JSONObject: unable to find JSON string");
            return;
        }
        try {
            readFromTokener(new JSONTokener((String) object));
        } catch (JSONException e2) {
            throw new IOException("Error while deserializing JSONObject: Bad JSON string", e2);
        }
    }

    public static Object wrap(Object obj) {
        if (obj == null) {
            return NULL;
        }
        if ((obj instanceof JSONArray) || (obj instanceof JSONObject) || obj.equals(NULL)) {
            return obj;
        }
        try {
            if (obj instanceof Collection) {
                return new JSONArray((Collection) obj);
            }
            if (obj.getClass().isArray()) {
                return new JSONArray(obj);
            }
            if (obj instanceof Map) {
                return new JSONObject((Map) obj);
            }
            if ((obj instanceof Boolean) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof String)) {
                return obj;
            }
            if (obj.getClass().getPackage().getName().startsWith("java.")) {
                return obj.toString();
            }
            return null;
        } catch (Exception unused) {
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        String string = toString();
        if (string != null) {
            objectOutputStream.writeObject(string);
        } else {
            az.o("Error while serializing JSONObject: NULL JSON string");
        }
    }

    public JSONObject accumulate(String str, Object obj) throws JSONException {
        Object obj2 = this.nameValuePairs.get(checkName(str));
        if (obj2 == null) {
            return put(str, obj);
        }
        if (obj2 instanceof JSONArray) {
            ((JSONArray) obj2).checkedPut(obj);
            return this;
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.checkedPut(obj2);
        jSONArray.checkedPut(obj);
        this.nameValuePairs.put(str, jSONArray);
        return this;
    }

    public JSONObject append(String str, Object obj) throws JSONException {
        JSONArray jSONArray;
        Object obj2 = this.nameValuePairs.get(checkName(str));
        if (obj2 instanceof JSONArray) {
            jSONArray = (JSONArray) obj2;
        } else {
            if (obj2 != null) {
                throw new JSONException(fc.h("Key ", str, " is not a JSONArray"));
            }
            jSONArray = new JSONArray();
            this.nameValuePairs.put(str, jSONArray);
        }
        jSONArray.checkedPut(obj);
        return this;
    }

    public String checkName(String str) throws JSONException {
        if (str != null) {
            return str;
        }
        a61.o("Names must be non-null");
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.nameValuePairs, ((JSONObject) obj).nameValuePairs);
    }

    public Object get(String str) throws JSONException {
        Object obj = this.nameValuePairs.get(str);
        if (obj != null) {
            return obj;
        }
        throw new JSONException(tr.g("No value for ", str));
    }

    public boolean getBoolean(String str) throws JSONException {
        Object obj = get(str);
        Boolean bool = JSON.toBoolean(obj);
        if (bool != null) {
            return bool.booleanValue();
        }
        throw JSON.typeMismatch(str, obj, "boolean");
    }

    public double getDouble(String str) throws JSONException {
        Object obj = get(str);
        Double d = JSON.toDouble(obj);
        if (d != null) {
            return d.doubleValue();
        }
        throw JSON.typeMismatch(str, obj, "double");
    }

    public int getInt(String str) throws JSONException {
        Object obj = get(str);
        Integer integer = JSON.toInteger(obj);
        if (integer != null) {
            return integer.intValue();
        }
        throw JSON.typeMismatch(str, obj, "int");
    }

    public JSONArray getJSONArray(String str) throws JSONException {
        Object obj = get(str);
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        throw JSON.typeMismatch(str, obj, "JSONArray");
    }

    public JSONObject getJSONObject(String str) throws JSONException {
        Object obj = get(str);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        throw JSON.typeMismatch(str, obj, "JSONObject");
    }

    public long getLong(String str) throws JSONException {
        Object obj = get(str);
        Long l = JSON.toLong(obj);
        if (l != null) {
            return l.longValue();
        }
        throw JSON.typeMismatch(str, obj, "long");
    }

    public String getString(String str) throws JSONException {
        Object obj = get(str);
        String string = JSON.toString(obj);
        if (string != null) {
            return string;
        }
        throw JSON.typeMismatch(str, obj, "String");
    }

    public boolean has(String str) {
        return this.nameValuePairs.containsKey(str);
    }

    public boolean hasNonNull(String str) {
        return has(str) && !isNull(str);
    }

    public int hashCode() {
        return Objects.hashCode(this.nameValuePairs);
    }

    public boolean isNull(String str) {
        Object obj = this.nameValuePairs.get(str);
        return obj == null || obj == NULL;
    }

    public Set<String> keySet() {
        return this.nameValuePairs.keySet();
    }

    public Iterator<String> keys() {
        return this.nameValuePairs.keySet().iterator();
    }

    public int length() {
        return this.nameValuePairs.size();
    }

    public JSONArray names() {
        if (this.nameValuePairs.isEmpty()) {
            return null;
        }
        return new JSONArray((Collection) new ArrayList(this.nameValuePairs.keySet()));
    }

    public Object opt(String str) {
        return this.nameValuePairs.get(str);
    }

    public boolean optBoolean(String str, boolean z) {
        Boolean bool = JSON.toBoolean(opt(str));
        return bool != null ? bool.booleanValue() : z;
    }

    public double optDouble(String str, double d) {
        Double d2 = JSON.toDouble(opt(str));
        return d2 != null ? d2.doubleValue() : d;
    }

    public int optInt(String str, int i2) {
        Integer integer = JSON.toInteger(opt(str));
        return integer != null ? integer.intValue() : i2;
    }

    public JSONArray optJSONArray(String str) {
        Object objOpt = opt(str);
        if (objOpt instanceof JSONArray) {
            return (JSONArray) objOpt;
        }
        return null;
    }

    public JSONObject optJSONObject(String str) {
        Object objOpt = opt(str);
        if (objOpt instanceof JSONObject) {
            return (JSONObject) objOpt;
        }
        return null;
    }

    public long optLong(String str, long j2) {
        Long l = JSON.toLong(opt(str));
        return l != null ? l.longValue() : j2;
    }

    public String optString(String str, String str2) {
        String string = JSON.toString(opt(str));
        return string != null ? string : str2;
    }

    public JSONObject put(String str, Object obj) throws JSONException {
        if (obj == null) {
            this.nameValuePairs.remove(str);
            return this;
        }
        if (obj instanceof Number) {
            JSON.checkDouble(((Number) obj).doubleValue());
        }
        this.nameValuePairs.put(checkName(str), obj);
        return this;
    }

    public JSONObject putOpt(String str, Object obj) throws JSONException {
        return (str == null || obj == null) ? this : put(str, obj);
    }

    public Boolean reallyOptBoolean(String str, Boolean bool) {
        Object objOpt = opt(str);
        Boolean bool2 = objOpt != NULL ? JSON.toBoolean(objOpt) : null;
        return bool2 != null ? bool2 : bool;
    }

    public Double reallyOptDouble(String str, Double d) {
        Object objOpt = opt(str);
        Double d2 = objOpt != NULL ? JSON.toDouble(objOpt) : null;
        return d2 != null ? d2 : d;
    }

    public Integer reallyOptInteger(String str, Integer num) {
        Object objOpt = opt(str);
        Integer integer = objOpt != NULL ? JSON.toInteger(objOpt) : null;
        return integer != null ? integer : num;
    }

    public Long reallyOptLong(String str, Long l) {
        Object objOpt = opt(str);
        Long l2 = objOpt != NULL ? JSON.toLong(objOpt) : null;
        return l2 != null ? l2 : l;
    }

    public String reallyOptString(String str, String str2) {
        Object objOpt = opt(str);
        String string = objOpt != NULL ? JSON.toString(objOpt) : null;
        return string != null ? string : str2;
    }

    public Object remove(String str) {
        return this.nameValuePairs.remove(str);
    }

    public JSONArray toJSONArray(JSONArray jSONArray) throws JSONException {
        int length;
        JSONArray jSONArray2 = new JSONArray();
        if (jSONArray == null || (length = jSONArray.length()) == 0) {
            return null;
        }
        for (int i2 = 0; i2 < length; i2++) {
            jSONArray2.put(opt(JSON.toString(jSONArray.opt(i2))));
        }
        return jSONArray2;
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
        jSONStringer.object();
        for (Map.Entry<String, Object> entry : this.nameValuePairs.entrySet()) {
            jSONStringer.key(entry.getKey()).value(entry.getValue());
        }
        jSONStringer.endObject();
    }

    public String optString(String str) {
        return optString(str, "");
    }

    public String toString(int i2) throws JSONException {
        JSONStringer jSONStringer = new JSONStringer(i2);
        writeTo(jSONStringer);
        return jSONStringer.toString();
    }

    public boolean optBoolean(String str) {
        return optBoolean(str, false);
    }

    public double optDouble(String str) {
        return optDouble(str, Double.NaN);
    }

    public int optInt(String str) {
        return optInt(str, 0);
    }

    public long optLong(String str) {
        return optLong(str, 0L);
    }

    public JSONObject put(String str, double d) throws JSONException {
        this.nameValuePairs.put(checkName(str), Double.valueOf(JSON.checkDouble(d)));
        return this;
    }

    public JSONObject put(String str, int i2) throws JSONException {
        this.nameValuePairs.put(checkName(str), Integer.valueOf(i2));
        return this;
    }

    public JSONObject put(String str, long j2) throws JSONException {
        this.nameValuePairs.put(checkName(str), Long.valueOf(j2));
        return this;
    }

    public JSONObject put(String str, boolean z) throws JSONException {
        this.nameValuePairs.put(checkName(str), Boolean.valueOf(z));
        return this;
    }

    public JSONObject() {
        this.nameValuePairs = new LinkedHashMap<>();
    }

    public JSONObject(JSONTokener jSONTokener) throws JSONException {
        readFromTokener(jSONTokener);
    }

    public JSONObject(String str) throws JSONException {
        this(new JSONTokener(str));
    }

    public JSONObject(JSONObject jSONObject, String[] strArr) throws JSONException {
        this();
        for (String str : strArr) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt != null) {
                this.nameValuePairs.put(str, objOpt);
            }
        }
    }

    public JSONObject(JSONObject jSONObject) throws JSONException {
        this();
        for (String str : jSONObject.keySet()) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt != null) {
                this.nameValuePairs.put(str, objOpt);
            }
        }
    }
}
