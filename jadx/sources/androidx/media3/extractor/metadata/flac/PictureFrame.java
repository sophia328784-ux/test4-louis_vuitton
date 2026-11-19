package androidx.media3.extractor.metadata.flac;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import defpackage.fc;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class PictureFrame implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16347c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16349f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f16350h;

    public PictureFrame(int i2, String str, String str2, int i3, int i4, int i5, int i6, byte[] bArr) {
        this.f16345a = i2;
        this.f16346b = str;
        this.f16347c = str2;
        this.d = i3;
        this.f16348e = i4;
        this.f16349f = i5;
        this.g = i6;
        this.f16350h = bArr;
    }

    public static PictureFrame d(ParsableByteArray parsableByteArray) {
        int iM = parsableByteArray.m();
        String strP = MimeTypes.p(parsableByteArray.y(parsableByteArray.m(), StandardCharsets.US_ASCII));
        String strY = parsableByteArray.y(parsableByteArray.m(), StandardCharsets.UTF_8);
        int iM2 = parsableByteArray.m();
        int iM3 = parsableByteArray.m();
        int iM4 = parsableByteArray.m();
        int iM5 = parsableByteArray.m();
        int iM6 = parsableByteArray.m();
        byte[] bArr = new byte[iM6];
        parsableByteArray.k(0, iM6, bArr);
        return new PictureFrame(iM, strP, strY, iM2, iM3, iM4, iM5, bArr);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        builder.a(this.f16345a, this.f16350h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && PictureFrame.class == obj.getClass()) {
            PictureFrame pictureFrame = (PictureFrame) obj;
            if (this.f16345a == pictureFrame.f16345a && this.f16346b.equals(pictureFrame.f16346b) && this.f16347c.equals(pictureFrame.f16347c) && this.d == pictureFrame.d && this.f16348e == pictureFrame.f16348e && this.f16349f == pictureFrame.f16349f && this.g == pictureFrame.g && Arrays.equals(this.f16350h, pictureFrame.f16350h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f16350h) + ((((((((fc.b(fc.b((527 + this.f16345a) * 31, 31, this.f16346b), 31, this.f16347c) + this.d) * 31) + this.f16348e) * 31) + this.f16349f) * 31) + this.g) * 31);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.f16346b + ", description=" + this.f16347c;
    }
}
