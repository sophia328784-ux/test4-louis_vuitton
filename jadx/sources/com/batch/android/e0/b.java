package com.batch.android.e0;

import android.graphics.Bitmap;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public interface b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f23204a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f23205b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f23206c = 2;
    public static final int d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f23207e = 0;

    public interface a {
        Bitmap a(int i2, int i3, Bitmap.Config config);

        void a(Bitmap bitmap);

        void a(byte[] bArr);

        void a(int[] iArr);

        byte[] a(int i2);

        int[] b(int i2);
    }

    /* JADX INFO: renamed from: com.batch.android.e0.b$b, reason: collision with other inner class name */
    @Retention(RetentionPolicy.SOURCE)
    public @interface InterfaceC0047b {
    }

    int a();

    int a(int i2);

    int a(InputStream inputStream, int i2);

    void a(Bitmap.Config config);

    void a(e eVar, ByteBuffer byteBuffer);

    void a(e eVar, ByteBuffer byteBuffer, int i2);

    void a(e eVar, byte[] bArr);

    Bitmap b();

    void c();

    void clear();

    int d();

    int e();

    int f();

    ByteBuffer g();

    int h();

    int i();

    int j();

    int k();

    int l();

    @Deprecated
    int m();

    void n();

    int read(byte[] bArr);
}
