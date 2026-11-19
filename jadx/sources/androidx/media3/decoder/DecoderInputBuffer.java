package androidx.media3.decoder;

import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import defpackage.fc;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class DecoderInputBuffer extends Buffer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Format f14542c;
    public final CryptoInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ByteBuffer f14543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f14544f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ByteBuffer f14545h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f14546i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f14547j;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface BufferReplacementMode {
    }

    public static final class InsufficientCapacityException extends IllegalStateException {
        public InsufficientCapacityException(int i2, int i3) {
            super(fc.f(i2, i3, "Buffer too small (", " < ", ")"));
        }
    }

    static {
        MediaLibraryInfo.a("media3.decoder");
    }

    public DecoderInputBuffer(int i2, int i3) {
        this.d = new CryptoInfo();
        this.f14546i = i2;
        this.f14547j = i3;
    }

    public void g() {
        this.f14531b = 0;
        ByteBuffer byteBuffer = this.f14543e;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f14545h;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f14544f = false;
    }

    public final ByteBuffer h(int i2) {
        int i3 = this.f14546i;
        if (i3 == 1) {
            return ByteBuffer.allocate(i2);
        }
        if (i3 == 2) {
            return ByteBuffer.allocateDirect(i2);
        }
        ByteBuffer byteBuffer = this.f14543e;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i2);
    }

    public final void i(int i2) {
        int i3 = i2 + this.f14547j;
        ByteBuffer byteBuffer = this.f14543e;
        if (byteBuffer == null) {
            this.f14543e = h(i3);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i4 = i3 + iPosition;
        if (iCapacity >= i4) {
            this.f14543e = byteBuffer;
            return;
        }
        ByteBuffer byteBufferH = h(i4);
        byteBufferH.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferH.put(byteBuffer);
        }
        this.f14543e = byteBufferH;
    }

    public final void j() {
        ByteBuffer byteBuffer = this.f14543e;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f14545h;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public DecoderInputBuffer(int i2) {
        this(i2, 0);
    }
}
