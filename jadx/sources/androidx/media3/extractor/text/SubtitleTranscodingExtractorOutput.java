package androidx.media3.extractor.text;

import android.util.SparseArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes.dex */
public final class SubtitleTranscodingExtractorOutput implements ExtractorOutput {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExtractorOutput f16687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SubtitleParser.Factory f16688c;
    public final SparseArray d = new SparseArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16689e;

    public SubtitleTranscodingExtractorOutput(ExtractorOutput extractorOutput, SubtitleParser.Factory factory) {
        this.f16687b = extractorOutput;
        this.f16688c = factory;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void j(SeekMap seekMap) {
        this.f16687b.j(seekMap);
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void n() {
        this.f16687b.n();
        if (!this.f16689e) {
            return;
        }
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.d;
            if (i2 >= sparseArray.size()) {
                return;
            }
            ((SubtitleTranscodingTrackOutput) sparseArray.valueAt(i2)).f16697j = true;
            i2++;
        }
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final TrackOutput r(int i2, int i3) {
        if (i3 != 3 && i3 != 5) {
            this.f16689e = true;
        }
        ExtractorOutput extractorOutput = this.f16687b;
        if (i3 != 3) {
            return extractorOutput.r(i2, i3);
        }
        SparseArray sparseArray = this.d;
        SubtitleTranscodingTrackOutput subtitleTranscodingTrackOutput = (SubtitleTranscodingTrackOutput) sparseArray.get(i2);
        if (subtitleTranscodingTrackOutput != null) {
            return subtitleTranscodingTrackOutput;
        }
        SubtitleTranscodingTrackOutput subtitleTranscodingTrackOutput2 = new SubtitleTranscodingTrackOutput(extractorOutput.r(i2, i3), this.f16688c);
        sparseArray.put(i2, subtitleTranscodingTrackOutput2);
        return subtitleTranscodingTrackOutput2;
    }
}
