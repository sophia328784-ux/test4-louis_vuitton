package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;

/* JADX INFO: loaded from: classes.dex */
final class TsDurationReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17154a;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17158f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimestampAdjuster f17155b = new TimestampAdjuster(0);
    public long g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f17159h = -9223372036854775807L;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f17160i = -9223372036854775807L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f17156c = new ParsableByteArray();

    public TsDurationReader(int i2) {
        this.f17154a = i2;
    }

    public final void a(ExtractorInput extractorInput) {
        byte[] bArr = Util.f14243b;
        ParsableByteArray parsableByteArray = this.f17156c;
        parsableByteArray.getClass();
        parsableByteArray.L(bArr.length, bArr);
        this.d = true;
        extractorInput.g();
    }
}
