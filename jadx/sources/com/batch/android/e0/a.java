package com.batch.android.e0;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes2.dex */
public class a implements b.a {
    @Override // com.batch.android.e0.b.a
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        return Bitmap.createBitmap(i2, i3, config);
    }

    @Override // com.batch.android.e0.b.a
    public int[] b(int i2) {
        return new int[i2];
    }

    @Override // com.batch.android.e0.b.a
    public void a(int[] iArr) {
    }

    @Override // com.batch.android.e0.b.a
    public void a(byte[] bArr) {
    }

    @Override // com.batch.android.e0.b.a
    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.batch.android.e0.b.a
    public byte[] a(int i2) {
        return new byte[i2];
    }
}
