package androidx.media3.extractor;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class FlacStreamMetadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16150a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16152c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16154f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16155h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f16156i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f16157j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SeekTable f16158k;
    public final Metadata l;

    public static class SeekTable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long[] f16159a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long[] f16160b;

        public SeekTable(long[] jArr, long[] jArr2) {
            this.f16159a = jArr;
            this.f16160b = jArr2;
        }
    }

    public FlacStreamMetadata(byte[] bArr, int i2) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        parsableBitArray.m(i2 * 8);
        this.f16150a = parsableBitArray.g(16);
        this.f16151b = parsableBitArray.g(16);
        this.f16152c = parsableBitArray.g(24);
        this.d = parsableBitArray.g(24);
        int iG = parsableBitArray.g(20);
        this.f16153e = iG;
        this.f16154f = d(iG);
        this.g = parsableBitArray.g(3) + 1;
        int iG2 = parsableBitArray.g(5) + 1;
        this.f16155h = iG2;
        this.f16156i = a(iG2);
        this.f16157j = parsableBitArray.i(36);
        this.f16158k = null;
        this.l = null;
    }

    public static int a(int i2) {
        if (i2 == 8) {
            return 1;
        }
        if (i2 == 12) {
            return 2;
        }
        if (i2 == 16) {
            return 4;
        }
        if (i2 == 20) {
            return 5;
        }
        if (i2 != 24) {
            return i2 != 32 ? -1 : 7;
        }
        return 6;
    }

    public static int d(int i2) {
        switch (i2) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final long b() {
        long j2 = this.f16157j;
        if (j2 == 0) {
            return -9223372036854775807L;
        }
        return (j2 * 1000000) / ((long) this.f16153e);
    }

    public final Format c(byte[] bArr, Metadata metadata) {
        bArr[4] = -128;
        int i2 = this.d;
        if (i2 <= 0) {
            i2 = -1;
        }
        Metadata metadata2 = this.l;
        if (metadata2 != null) {
            metadata = metadata2.b(metadata);
        }
        Format.Builder builder = new Format.Builder();
        builder.n = MimeTypes.p("audio/flac");
        builder.o = i2;
        builder.F = this.g;
        builder.G = this.f16153e;
        String str = Util.f14242a;
        builder.H = Util.C(this.f16155h, ByteOrder.LITTLE_ENDIAN);
        builder.q = Collections.singletonList(bArr);
        builder.f13772k = metadata;
        return new Format(builder);
    }

    public FlacStreamMetadata(int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, SeekTable seekTable, Metadata metadata) {
        this.f16150a = i2;
        this.f16151b = i3;
        this.f16152c = i4;
        this.d = i5;
        this.f16153e = i6;
        this.f16154f = d(i6);
        this.g = i7;
        this.f16155h = i8;
        this.f16156i = a(i8);
        this.f16157j = j2;
        this.f16158k = seekTable;
        this.l = metadata;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FlacStreamMetadata(int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, ArrayList<String> arrayList, ArrayList<PictureFrame> arrayList2) {
        Metadata metadataA = VorbisUtil.a(arrayList);
        this(i2, i3, i4, i5, i6, i7, i8, j2, (SeekTable) null, (metadataA == null && arrayList2.isEmpty()) ? null : new Metadata(arrayList2).b(metadataA));
    }
}
