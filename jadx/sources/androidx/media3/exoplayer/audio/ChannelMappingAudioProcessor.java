package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.r81;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ChannelMappingAudioProcessor extends BaseAudioProcessor {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f14984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f14985j;

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int i2 = audioFormat.f14055c;
        int[] iArr = this.f14984i;
        if (iArr == null) {
            return AudioProcessor.AudioFormat.f14052e;
        }
        int i3 = audioFormat.f14054b;
        if (!Util.K(i2)) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        boolean z = i3 != iArr.length;
        int i4 = 0;
        while (i4 < iArr.length) {
            int i5 = iArr[i4];
            if (i5 >= i3) {
                throw new AudioProcessor.UnhandledAudioFormatException("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", audioFormat);
            }
            z |= i5 != i4;
            i4++;
        }
        return z ? new AudioProcessor.AudioFormat(audioFormat.f14053a, iArr.length, i2) : AudioProcessor.AudioFormat.f14052e;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void b() {
        this.f14985j = this.f14984i;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void d() {
        this.f14985j = null;
        this.f14984i = null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x007c  */
    /* JADX WARN: Code duplicated, block: B:31:0x007e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0090  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:45:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00db  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:59:0x010d  */
    @Override // androidx.media3.common.audio.AudioProcessor
    public final void g(ByteBuffer byteBuffer) {
        ByteOrder byteOrderOrder;
        ByteOrder byteOrder;
        int i2;
        int i3;
        boolean z;
        int i4;
        int i5;
        int[] iArr = this.f14985j;
        iArr.getClass();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferL = l(((iLimit - iPosition) / this.f14058b.d) * this.f14059c.d);
        while (iPosition < iLimit) {
            for (int i6 : iArr) {
                int iU = (Util.u(this.f14058b.f14055c) * i6) + iPosition;
                int i7 = this.f14058b.f14055c;
                if (i7 == 2) {
                    byteBufferL.putShort(byteBuffer.getShort(iU));
                } else if (i7 == 3) {
                    byteBufferL.put(byteBuffer.get(iU));
                } else if (i7 == 4) {
                    byteBufferL.putFloat(byteBuffer.getFloat(iU));
                } else if (i7 == 21) {
                    byteOrderOrder = byteBuffer.order();
                    byteOrder = ByteOrder.BIG_ENDIAN;
                    if (byteOrderOrder == byteOrder) {
                        i2 = iU;
                    } else {
                        i2 = iU + 2;
                    }
                    byte b2 = byteBuffer.get(i2);
                    byte b3 = byteBuffer.get(iU + 1);
                    if (byteBuffer.order() == byteOrder) {
                        iU += 2;
                    }
                    i3 = ((((b2 << 24) & com.batch.android.q0.b.v) | ((b3 << 16) & 16711680)) | ((byteBuffer.get(iU) << 8) & 65280)) >> 8;
                    if ((i3 & com.batch.android.q0.b.v) != 0 || (i3 & (-8388608)) == -8388608) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.e(Integer.toHexString(i3), "Value out of range of 24-bit integer: %s", z);
                    Preconditions.g(byteBufferL.remaining() >= 3);
                    if (byteBufferL.order() == byteOrder) {
                        i4 = (i3 & 16711680) >> 16;
                    } else {
                        i4 = i3 & 255;
                    }
                    byte b4 = (byte) i4;
                    byte b5 = (byte) ((i3 & 65280) >> 8);
                    if (byteBufferL.order() == byteOrder) {
                        i5 = i3 & 255;
                    } else {
                        i5 = (i3 & 16711680) >> 16;
                    }
                    byteBufferL.put(b4).put(b5).put((byte) i5);
                } else if (i7 == 22) {
                    byteBufferL.putInt(byteBuffer.getInt(iU));
                } else if (i7 == 268435456) {
                    byteBufferL.putShort(byteBuffer.getShort(iU));
                } else if (i7 == 1342177280) {
                    byteOrderOrder = byteBuffer.order();
                    byteOrder = ByteOrder.BIG_ENDIAN;
                    if (byteOrderOrder == byteOrder) {
                        i2 = iU;
                    } else {
                        i2 = iU + 2;
                    }
                    byte b6 = byteBuffer.get(i2);
                    byte b7 = byteBuffer.get(iU + 1);
                    if (byteBuffer.order() == byteOrder) {
                        iU += 2;
                    }
                    i3 = ((((b6 << 24) & com.batch.android.q0.b.v) | ((b7 << 16) & 16711680)) | ((byteBuffer.get(iU) << 8) & 65280)) >> 8;
                    if ((i3 & com.batch.android.q0.b.v) != 0) {
                        z = true;
                    } else {
                        z = true;
                    }
                    Preconditions.e(Integer.toHexString(i3), "Value out of range of 24-bit integer: %s", z);
                    Preconditions.g(byteBufferL.remaining() >= 3);
                    if (byteBufferL.order() == byteOrder) {
                        i4 = (i3 & 16711680) >> 16;
                    } else {
                        i4 = i3 & 255;
                    }
                    byte b8 = (byte) i4;
                    byte b9 = (byte) ((i3 & 65280) >> 8);
                    if (byteBufferL.order() == byteOrder) {
                        i5 = i3 & 255;
                    } else {
                        i5 = (i3 & 16711680) >> 16;
                    }
                    byteBufferL.put(b8).put(b9).put((byte) i5);
                } else if (i7 == 1610612736) {
                    byteBufferL.putInt(byteBuffer.getInt(iU));
                } else {
                    if (i7 != 1879048192) {
                        r81.c(this.f14058b.f14055c, "Unexpected encoding: ");
                        return;
                    }
                    byteBufferL.putDouble(byteBuffer.getDouble(iU));
                }
            }
            iPosition += this.f14058b.d;
        }
        byteBuffer.position(iLimit);
        byteBufferL.flip();
    }
}
