package androidx.media3.decoder;

/* JADX INFO: loaded from: classes.dex */
public class VideoDecoderOutputBuffer extends DecoderOutputBuffer {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DecoderOutputBuffer.Owner f14558e;

    public VideoDecoderOutputBuffer(DecoderOutputBuffer.Owner<VideoDecoderOutputBuffer> owner) {
        this.f14558e = owner;
    }

    @Override // androidx.media3.decoder.DecoderOutputBuffer
    public final void h() {
        this.f14558e.a(this);
    }
}
