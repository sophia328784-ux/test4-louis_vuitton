package com.otaliastudios.cameraview.frame;

import com.otaliastudios.cameraview.engine.offset.Angles;
import com.otaliastudios.cameraview.size.Size;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes3.dex */
public class ByteBufferFrameManager extends FrameManager<byte[]> {
    public final LinkedBlockingQueue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BufferCallback f38967h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f38968i;

    public interface BufferCallback {
        void b(byte[] bArr);
    }

    public ByteBufferFrameManager(int i2, BufferCallback bufferCallback) {
        super(i2, byte[].class);
        if (bufferCallback != null) {
            this.f38967h = bufferCallback;
            this.f38968i = 0;
        } else {
            this.g = new LinkedBlockingQueue(i2);
            this.f38968i = 1;
        }
    }

    @Override // com.otaliastudios.cameraview.frame.FrameManager
    public final void b(Object obj, boolean z) {
        byte[] bArr = (byte[]) obj;
        if (z && bArr.length == this.f38975b) {
            if (this.f38968i == 0) {
                this.f38967h.b(bArr);
            } else {
                this.g.offer(bArr);
            }
        }
    }

    @Override // com.otaliastudios.cameraview.frame.FrameManager
    public final void c() {
        super.c();
        if (this.f38968i == 1) {
            this.g.clear();
        }
    }

    @Override // com.otaliastudios.cameraview.frame.FrameManager
    public final void d(int i2, Size size, Angles angles) {
        super.d(i2, size, angles);
        int i3 = this.f38975b;
        for (int i4 = 0; i4 < this.f38974a; i4++) {
            if (this.f38968i == 0) {
                this.f38967h.b(new byte[i3]);
            } else {
                this.g.offer(new byte[i3]);
            }
        }
    }
}
