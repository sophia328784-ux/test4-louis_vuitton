package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class BitWriterBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteBuffer f35715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f35716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f35717c = 0;

    public BitWriterBuffer(ByteBuffer byteBuffer) {
        this.f35715a = byteBuffer;
        this.f35716b = byteBuffer.position();
    }

    public final void a(int i2, int i3) {
        int i4 = this.f35717c;
        int i5 = 8 - (i4 % 8);
        int i6 = this.f35716b;
        ByteBuffer byteBuffer = this.f35715a;
        if (i3 <= i5) {
            int i7 = byteBuffer.get((i4 / 8) + i6);
            if (i7 < 0) {
                i7 += 256;
            }
            int i8 = i7 + (i2 << (i5 - i3));
            int i9 = (this.f35717c / 8) + i6;
            if (i8 > 127) {
                i8 -= 256;
            }
            byteBuffer.put(i9, (byte) i8);
            this.f35717c += i3;
        } else {
            int i10 = i3 - i5;
            a(i2 >> i10, i5);
            a(i2 & ((1 << i10) - 1), i10);
        }
        int i11 = this.f35717c;
        byteBuffer.position((i11 / 8) + i6 + (i11 % 8 <= 0 ? 0 : 1));
    }
}
