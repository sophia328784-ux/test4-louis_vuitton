package com.squareup.moshi;

import defpackage.md;
import java.io.Closeable;
import java.io.Flushable;
import java.util.Arrays;
import okio.Buffer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class JsonWriter implements Closeable, Flushable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f43378f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f43379h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f43380i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43375b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f43376c = new int[32];
    public String[] d = new String[32];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f43377e = new int[32];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f43381j = -1;

    public static JsonWriter s(Buffer buffer) {
        return new JsonUtf8Writer(buffer);
    }

    public abstract JsonWriter B(Float f2);

    public abstract JsonWriter C(String str);

    public abstract JsonWriter E(boolean z);

    public abstract JsonWriter h();

    public final int j() {
        int iT = t();
        if (iT != 5 && iT != 3 && iT != 2 && iT != 1) {
            md.k("Nesting problem.");
            return 0;
        }
        int i2 = this.f43381j;
        this.f43381j = this.f43375b;
        return i2;
    }

    public abstract JsonWriter k();

    public final void m() {
        int i2 = this.f43375b;
        int[] iArr = this.f43376c;
        if (i2 != iArr.length) {
            return;
        }
        if (i2 == 256) {
            throw new JsonDataException("Nesting too deep at " + p() + ": circular reference?");
        }
        this.f43376c = Arrays.copyOf(iArr, iArr.length * 2);
        String[] strArr = this.d;
        this.d = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        int[] iArr2 = this.f43377e;
        this.f43377e = Arrays.copyOf(iArr2, iArr2.length * 2);
        if (this instanceof JsonValueWriter) {
            JsonValueWriter jsonValueWriter = (JsonValueWriter) this;
            Object[] objArr = jsonValueWriter.f43374k;
            jsonValueWriter.f43374k = Arrays.copyOf(objArr, objArr.length * 2);
        }
    }

    public abstract JsonWriter n();

    public abstract JsonWriter o();

    public final String p() {
        return JsonScope.a(this.f43375b, this.f43376c, this.d, this.f43377e);
    }

    public abstract JsonWriter q(String str);

    public abstract JsonWriter r();

    public final int t() {
        int i2 = this.f43375b;
        if (i2 != 0) {
            return this.f43376c[i2 - 1];
        }
        md.k("JsonWriter is closed.");
        return 0;
    }

    public final void u(int i2) {
        int[] iArr = this.f43376c;
        int i3 = this.f43375b;
        this.f43375b = i3 + 1;
        iArr[i3] = i2;
    }

    public void w(String str) {
        if (str.isEmpty()) {
            str = null;
        }
        this.f43378f = str;
    }

    public abstract JsonWriter y(double d);

    public abstract JsonWriter z(long j2);
}
