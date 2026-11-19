package androidx.camera.core.impl.utils;

import androidx.core.util.Preconditions;
import defpackage.az;
import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes.dex */
public final class ExifOutputStream extends FilterOutputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f2414h = "Exif\u0000\u0000".getBytes(ExifAttribute.d);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExifData f2415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f2416c;
    public final ByteBuffer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2418f;
    public int g;

    public ExifOutputStream(OutputStream outputStream, ExifData exifData) {
        super(new BufferedOutputStream(outputStream, 65536));
        this.f2416c = new byte[1];
        this.d = ByteBuffer.allocate(4);
        this.f2417e = 0;
        this.f2415b = exifData;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        ExifData exifData;
        int i4 = i2;
        int i5 = i3;
        while (true) {
            int i6 = this.f2418f;
            if ((i6 <= 0 && this.g <= 0 && this.f2417e == 2) || i5 <= 0) {
                break;
            }
            if (i6 > 0) {
                int iMin = Math.min(i5, i6);
                i5 -= iMin;
                this.f2418f -= iMin;
                i4 += iMin;
            }
            int i7 = this.g;
            if (i7 > 0) {
                int iMin2 = Math.min(i5, i7);
                ((FilterOutputStream) this).out.write(bArr, i4, iMin2);
                i5 -= iMin2;
                this.g -= iMin2;
                i4 += iMin2;
            }
            if (i5 == 0) {
                return;
            }
            int i8 = this.f2417e;
            int i9 = 4;
            ByteBuffer byteBuffer = this.d;
            if (i8 == 0) {
                int iMin3 = Math.min(i5, 2 - byteBuffer.position());
                byteBuffer.put(bArr, i4, iMin3);
                i4 += iMin3;
                i5 -= iMin3;
                if (byteBuffer.position() < 2) {
                    return;
                }
                byteBuffer.rewind();
                if (byteBuffer.getShort() != -40) {
                    az.o("Not a valid jpeg image, cannot write exif");
                    return;
                }
                ((FilterOutputStream) this).out.write(byteBuffer.array(), 0, 2);
                this.f2417e = 1;
                byteBuffer.rewind();
                OutputStream outputStream = ((FilterOutputStream) this).out;
                ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(outputStream);
                byteOrderedDataOutputStream.d((short) -31);
                int[] iArr = new int[4];
                int[] iArr2 = new int[4];
                ExifTag[] exifTagArr = ExifData.f2400c;
                int i10 = 0;
                while (true) {
                    exifData = this.f2415b;
                    if (i10 >= i9) {
                        break;
                    }
                    ExifTag exifTag = exifTagArr[i10];
                    int i11 = 0;
                    while (true) {
                        ExifTag[] exifTagArr2 = ExifData.f2400c;
                        if (i11 < i9) {
                            exifData.b(i11).remove(exifTag.f2420b);
                            i11++;
                            i9 = 4;
                        }
                    }
                    i10++;
                    i9 = 4;
                }
                Map mapB = exifData.b(1);
                ByteOrder byteOrder2 = exifData.f2404b;
                if (!mapB.isEmpty()) {
                    exifData.b(0).put(ExifData.f2400c[1].f2420b, ExifAttribute.a(0L, byteOrder2));
                }
                if (!exifData.b(2).isEmpty()) {
                    exifData.b(0).put(ExifData.f2400c[2].f2420b, ExifAttribute.a(0L, byteOrder2));
                }
                if (!exifData.b(3).isEmpty()) {
                    exifData.b(1).put(ExifData.f2400c[3].f2420b, ExifAttribute.a(0L, byteOrder2));
                }
                int i12 = 0;
                while (true) {
                    ExifTag[] exifTagArr3 = ExifData.f2400c;
                    if (i12 >= 4) {
                        break;
                    }
                    Iterator it = exifData.b(i12).entrySet().iterator();
                    int i13 = 0;
                    while (it.hasNext()) {
                        ExifAttribute exifAttribute = (ExifAttribute) ((Map.Entry) it.next()).getValue();
                        int i14 = ExifAttribute.f2396f[exifAttribute.f2397a] * exifAttribute.f2398b;
                        if (i14 > 4) {
                            i13 += i14;
                        }
                    }
                    iArr2[i12] = iArr2[i12] + i13;
                    i12++;
                }
                int i15 = 0;
                int size = 8;
                while (true) {
                    ExifTag[] exifTagArr4 = ExifData.f2400c;
                    if (i15 >= 4) {
                        break;
                    }
                    if (!exifData.b(i15).isEmpty()) {
                        iArr[i15] = size;
                        size += (exifData.b(i15).size() * 12) + 6 + iArr2[i15];
                    }
                    i15++;
                }
                int i16 = size + 8;
                if (!exifData.b(1).isEmpty()) {
                    exifData.b(0).put(ExifData.f2400c[1].f2420b, ExifAttribute.a(iArr[1], byteOrder2));
                }
                if (!exifData.b(2).isEmpty()) {
                    exifData.b(0).put(ExifData.f2400c[2].f2420b, ExifAttribute.a(iArr[2], byteOrder2));
                }
                if (!exifData.b(3).isEmpty()) {
                    exifData.b(1).put(ExifData.f2400c[3].f2420b, ExifAttribute.a(iArr[3], byteOrder2));
                }
                byteOrderedDataOutputStream.d((short) i16);
                byteOrderedDataOutputStream.write(f2414h);
                byteOrderedDataOutputStream.d(byteOrder2 == ByteOrder.BIG_ENDIAN ? (short) 19789 : (short) 18761);
                byteOrderedDataOutputStream.f2386c = byteOrder2;
                byteOrderedDataOutputStream.d((short) 42);
                byteOrderedDataOutputStream.c(8);
                int i17 = 0;
                while (true) {
                    ExifTag[] exifTagArr5 = ExifData.f2400c;
                    if (i17 >= 4) {
                        break;
                    }
                    if (!exifData.b(i17).isEmpty()) {
                        byteOrderedDataOutputStream.d((short) exifData.b(i17).size());
                        int size2 = (exifData.b(i17).size() * 12) + iArr[i17] + 2 + 4;
                        for (Map.Entry entry : exifData.b(i17).entrySet()) {
                            ExifTag exifTag2 = (ExifTag) ((HashMap) ExifData.Builder.f2408f.get(i17)).get(entry.getKey());
                            Preconditions.e(exifTag2, "Tag not supported: " + ((String) entry.getKey()) + ". Tag needs to be ported from ExifInterface to ExifData.");
                            int i18 = exifTag2.f2419a;
                            ExifAttribute exifAttribute2 = (ExifAttribute) entry.getValue();
                            int[] iArr3 = ExifAttribute.f2396f;
                            int i19 = exifAttribute2.f2397a;
                            int i20 = exifAttribute2.f2398b;
                            int i21 = iArr3[i19] * i20;
                            byteOrderedDataOutputStream.d((short) i18);
                            byteOrderedDataOutputStream.d((short) exifAttribute2.f2397a);
                            byteOrderedDataOutputStream.c(i20);
                            if (i21 > 4) {
                                byteOrderedDataOutputStream.c(size2);
                                size2 += i21;
                            } else {
                                byteOrderedDataOutputStream.write(exifAttribute2.f2399c);
                                if (i21 < 4) {
                                    for (int i22 = 4; i21 < i22; i22 = 4) {
                                        byteOrderedDataOutputStream.f2385b.write(0);
                                        i21++;
                                    }
                                }
                            }
                        }
                        byteOrderedDataOutputStream.c(0);
                        Iterator it2 = exifData.b(i17).entrySet().iterator();
                        while (it2.hasNext()) {
                            byte[] bArr2 = ((ExifAttribute) ((Map.Entry) it2.next()).getValue()).f2399c;
                            if (bArr2.length > 4) {
                                byteOrderedDataOutputStream.write(bArr2, 0, bArr2.length);
                            }
                        }
                    }
                    i17++;
                }
                byteOrderedDataOutputStream.f2386c = ByteOrder.BIG_ENDIAN;
            } else if (i8 != 1) {
                continue;
            } else {
                int iMin4 = Math.min(i5, 4 - byteBuffer.position());
                byteBuffer.put(bArr, i4, iMin4);
                i4 += iMin4;
                i5 -= iMin4;
                if (byteBuffer.position() == 2 && byteBuffer.getShort() == -39) {
                    ((FilterOutputStream) this).out.write(byteBuffer.array(), 0, 2);
                    byteBuffer.rewind();
                }
                if (byteBuffer.position() < 4) {
                    return;
                }
                byteBuffer.rewind();
                short s = byteBuffer.getShort();
                if (s == -31) {
                    this.f2418f = (byteBuffer.getShort() & HPKE.aead_EXPORT_ONLY) - 2;
                    this.f2417e = 2;
                } else if (s < -64 || s > -49 || s == -60 || s == -56 || s == -52) {
                    ((FilterOutputStream) this).out.write(byteBuffer.array(), 0, 4);
                    this.g = (byteBuffer.getShort() & HPKE.aead_EXPORT_ONLY) - 2;
                } else {
                    ((FilterOutputStream) this).out.write(byteBuffer.array(), 0, 4);
                    this.f2417e = 2;
                }
                byteBuffer.rewind();
            }
        }
        if (i5 > 0) {
            ((FilterOutputStream) this).out.write(bArr, i4, i5);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i2) throws IOException {
        byte[] bArr = this.f2416c;
        bArr[0] = (byte) (i2 & 255);
        write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }
}
