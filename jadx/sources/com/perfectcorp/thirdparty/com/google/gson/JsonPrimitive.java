package com.perfectcorp.thirdparty.com.google.gson;

import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.perfectcorp.thirdparty.com.google.gson.internal.s;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonPrimitive extends JsonElement {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class[] f42455c = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f42456b;

    public JsonPrimitive(Boolean bool) {
        p(bool);
    }

    public static boolean q(JsonPrimitive jsonPrimitive) {
        Object obj = jsonPrimitive.f42456b;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || JsonPrimitive.class != obj.getClass()) {
            return false;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
        if (this.f42456b == null) {
            return jsonPrimitive.f42456b == null;
        }
        if (q(this) && q(jsonPrimitive)) {
            return o().longValue() == jsonPrimitive.o().longValue();
        }
        Object obj2 = this.f42456b;
        if (!(obj2 instanceof Number) || !(jsonPrimitive.f42456b instanceof Number)) {
            return obj2.equals(jsonPrimitive.f42456b);
        }
        double dDoubleValue = o().doubleValue();
        double dDoubleValue2 = jsonPrimitive.o().doubleValue();
        return dDoubleValue == dDoubleValue2 || (Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2));
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    public final float f() {
        return this.f42456b instanceof Number ? o().floatValue() : Float.parseFloat(n());
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    public final /* bridge */ /* synthetic */ JsonElement h() {
        return this;
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        if (this.f42456b == null) {
            return 31;
        }
        if (q(this)) {
            jDoubleToLongBits = o().longValue();
        } else {
            Object obj = this.f42456b;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(o().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    public final int i() {
        return this.f42456b instanceof Number ? o().intValue() : Integer.parseInt(n());
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    public final String n() {
        Object obj = this.f42456b;
        if (obj instanceof Number) {
            return o().toString();
        }
        return obj instanceof Boolean ? ((Boolean) obj).toString() : (String) obj;
    }

    public final Number o() {
        Object obj = this.f42456b;
        return obj instanceof String ? new s((String) obj) : (Number) obj;
    }

    public final void p(Object obj) {
        boolean z;
        if (obj instanceof Character) {
            this.f42456b = String.valueOf(((Character) obj).charValue());
            return;
        }
        if ((obj instanceof Number) || (obj instanceof String)) {
            z = true;
            break;
        }
        Class<?> cls = obj.getClass();
        z = false;
        for (int i2 = 0; i2 < 16; i2++) {
            if (f42455c[i2].isAssignableFrom(cls)) {
                z = true;
                break;
            }
        }
        CLShare3DRelatedClasses.c(z);
        this.f42456b = obj;
    }

    public final boolean r() {
        Object obj = this.f42456b;
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(n());
    }

    public JsonPrimitive(Number number) {
        p(number);
    }

    public JsonPrimitive(String str) {
        p(str);
    }
}
