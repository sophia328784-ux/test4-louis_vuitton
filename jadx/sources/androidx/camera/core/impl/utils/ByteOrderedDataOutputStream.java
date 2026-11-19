package androidx.camera.core.impl.utils;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
class ByteOrderedDataOutputStream extends FilterOutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OutputStream f2385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteOrder f2386c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteOrderedDataOutputStream(OutputStream outputStream) {
        super(outputStream);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        this.f2385b = outputStream;
        this.f2386c = byteOrder;
    }

    public final void c(int i2) throws IOException {
        ByteOrder byteOrder = this.f2386c;
        ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
        OutputStream outputStream = this.f2385b;
        if (byteOrder == byteOrder2) {
            outputStream.write(i2 & 255);
            outputStream.write((i2 >>> 8) & 255);
            outputStream.write((i2 >>> 16) & 255);
            outputStream.write((i2 >>> 24) & 255);
            return;
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            outputStream.write((i2 >>> 24) & 255);
            outputStream.write((i2 >>> 16) & 255);
            outputStream.write((i2 >>> 8) & 255);
            outputStream.write(i2 & 255);
        }
    }

    public final void d(short s) throws IOException {
        ByteOrder byteOrder = this.f2386c;
        ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
        OutputStream outputStream = this.f2385b;
        if (byteOrder == byteOrder2) {
            outputStream.write(s & 255);
            outputStream.write((s >>> 8) & 255);
        } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
            outputStream.write((s >>> 8) & 255);
            outputStream.write(s & 255);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.f2385b.write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        this.f2385b.write(bArr, i2, i3);
    }
}
