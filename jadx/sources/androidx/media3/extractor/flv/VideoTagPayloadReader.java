package androidx.media3.extractor.flv;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes.dex */
final class VideoTagPayloadReader extends TagPayloadReader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f16303c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f16305f;
    public int g;

    public VideoTagPayloadReader(TrackOutput trackOutput) {
        super(trackOutput);
        this.f16302b = new ParsableByteArray(NalUnitUtil.f14286a);
        this.f16303c = new ParsableByteArray(4);
    }
}
