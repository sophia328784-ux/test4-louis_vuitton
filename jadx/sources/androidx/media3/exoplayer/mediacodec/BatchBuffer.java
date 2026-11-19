package androidx.media3.exoplayer.mediacodec;

import androidx.media3.decoder.DecoderInputBuffer;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class BatchBuffer extends DecoderInputBuffer {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f15359k;
    public int l;
    public int m;

    public BatchBuffer() {
        super(2);
        this.m = 32;
    }

    @Override // androidx.media3.decoder.DecoderInputBuffer
    public final void g() {
        super.g();
        this.l = 0;
    }

    public final boolean k(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        Preconditions.g(!decoderInputBuffer.f(1073741824));
        Preconditions.g(!decoderInputBuffer.f(268435456));
        Preconditions.g(!decoderInputBuffer.f(4));
        if (l()) {
            if (this.l >= this.m) {
                return false;
            }
            ByteBuffer byteBuffer2 = decoderInputBuffer.f14543e;
            if (byteBuffer2 != null && (byteBuffer = this.f14543e) != null) {
                if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                    return false;
                }
            }
        }
        int i2 = this.l;
        this.l = i2 + 1;
        if (i2 == 0) {
            this.g = decoderInputBuffer.g;
            if (decoderInputBuffer.f(1)) {
                this.f14531b = 1;
            }
        }
        ByteBuffer byteBuffer3 = decoderInputBuffer.f14543e;
        if (byteBuffer3 != null) {
            i(byteBuffer3.remaining());
            this.f14543e.put(byteBuffer3);
        }
        this.f15359k = decoderInputBuffer.g;
        return true;
    }

    public final boolean l() {
        return this.l > 0;
    }
}
