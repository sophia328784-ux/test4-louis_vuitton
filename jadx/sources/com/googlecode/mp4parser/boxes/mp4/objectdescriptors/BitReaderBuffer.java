package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class BitReaderBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteBuffer f35712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f35713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f35714c;

    public BitReaderBuffer(ByteBuffer byteBuffer) {
        this.f35712a = byteBuffer;
        this.f35713b = byteBuffer.position();
    }

    public final int a(int i2) {
        int iA;
        int i3 = this.f35714c / 8;
        int i4 = this.f35713b;
        ByteBuffer byteBuffer = this.f35712a;
        int i5 = byteBuffer.get(i3 + i4);
        if (i5 < 0) {
            i5 += 256;
        }
        int i6 = this.f35714c;
        int i7 = 8 - (i6 % 8);
        if (i2 <= i7) {
            iA = ((i5 << (i6 % 8)) & 255) >> ((i7 - i2) + (i6 % 8));
            this.f35714c = i6 + i2;
        } else {
            int i8 = i2 - i7;
            iA = (a(i7) << i8) + a(i8);
        }
        byteBuffer.position(i4 + ((int) Math.ceil(((double) this.f35714c) / 8.0d)));
        return iA;
    }

    public final boolean b() {
        return a(1) == 1;
    }
}
