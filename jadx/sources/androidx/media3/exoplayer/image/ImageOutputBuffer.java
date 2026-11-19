package androidx.media3.exoplayer.image;

import android.graphics.Bitmap;
import androidx.media3.decoder.DecoderOutputBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImageOutputBuffer extends DecoderOutputBuffer {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Bitmap f15318e;

    @Override // androidx.media3.decoder.DecoderOutputBuffer
    public final void g() {
        this.f15318e = null;
        super.g();
    }
}
