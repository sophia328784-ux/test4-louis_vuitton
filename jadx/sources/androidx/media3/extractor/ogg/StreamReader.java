package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes.dex */
abstract class StreamReader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TrackOutput f16649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ExtractorOutput f16650c;
    public OggSeeker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f16651e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f16652f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16653h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16654i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f16656k;
    public boolean l;
    public boolean m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OggPacket f16648a = new OggPacket();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SetupData f16655j = new SetupData();

    public static class SetupData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Format f16657a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public FlacReader.FlacOggSeeker f16658b;
    }

    public static final class UnseekableOggSeeker implements OggSeeker {
        @Override // androidx.media3.extractor.ogg.OggSeeker
        public final long a(ExtractorInput extractorInput) {
            return -1L;
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public final SeekMap b() {
            return new SeekMap.Unseekable(-9223372036854775807L);
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public final void c(long j2) {
        }
    }

    public void a(long j2) {
        this.g = j2;
    }

    public abstract long b(ParsableByteArray parsableByteArray);

    public abstract boolean c(ParsableByteArray parsableByteArray, long j2, SetupData setupData);

    public void d(boolean z) {
        if (z) {
            this.f16655j = new SetupData();
            this.f16652f = 0L;
            this.f16653h = 0;
        } else {
            this.f16653h = 1;
        }
        this.f16651e = -1L;
        this.g = 0L;
    }
}
