package com.batch.android.x0;

import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte f24159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f24160b;

    public a(byte b2, int i2) {
        p.a(i2 >= 0, "length must be >= 0");
        this.f24159a = b2;
        this.f24160b = i2;
    }

    public static byte a(int i2) {
        p.a(-128 <= i2 && i2 <= 127, "Extension type code must be within the range of byte");
        return (byte) i2;
    }

    public byte b() {
        return this.f24159a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f24159a == aVar.f24159a && this.f24160b == aVar.f24160b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f24159a + 31) * 31) + this.f24160b;
    }

    public String toString() {
        return String.format(Locale.US, "ExtensionTypeHeader(type:%d, length:%,d)", Byte.valueOf(this.f24159a), Integer.valueOf(this.f24160b));
    }

    public int a() {
        return this.f24160b;
    }
}
