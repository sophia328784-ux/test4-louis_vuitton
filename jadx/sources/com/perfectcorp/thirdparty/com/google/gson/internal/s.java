package com.perfectcorp.thirdparty.com.google.gson.internal;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes3.dex */
public final class s extends Number {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f42536b;

    public s(String str) {
        this.f42536b = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f42536b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        Object obj2 = ((s) obj).f42536b;
        String str = this.f42536b;
        return str == obj2 || str.equals(obj2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f42536b);
    }

    public final int hashCode() {
        return this.f42536b.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        String str = this.f42536b;
        try {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(str);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(str).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        String str = this.f42536b;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return new BigDecimal(str).longValue();
        }
    }

    public final String toString() {
        return this.f42536b;
    }
}
