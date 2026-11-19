package androidx.media3.extractor.flv;

import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes.dex */
final class AudioTagPayloadReader extends TagPayloadReader {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f16287e = {5512, 11025, 22050, 44100};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16289c;
    public int d;

    public AudioTagPayloadReader(TrackOutput trackOutput) {
        super(trackOutput);
    }
}
