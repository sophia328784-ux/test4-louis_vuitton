package androidx.media3.common.audio;

import androidx.media3.common.util.Util;
import defpackage.r81;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class ToInt16PcmAudioProcessor extends BaseAudioProcessor {
    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int i2 = audioFormat.f14055c;
        if (i2 == 3 || i2 == 2 || i2 == 268435456 || i2 == 21 || i2 == 1342177280 || i2 == 22 || i2 == 1610612736 || i2 == 4 || i2 == 1879048192) {
            return i2 != 2 ? new AudioProcessor.AudioFormat(audioFormat.f14053a, audioFormat.f14054b, 2) : AudioProcessor.AudioFormat.f14052e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    @Override // androidx.media3.common.audio.AudioProcessor
    public final void g(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i2 = iLimit - iPosition;
        int i3 = this.f14058b.f14055c;
        if (i3 == 3) {
            i2 *= 2;
        } else if (i3 == 4) {
            i2 /= 2;
        } else {
            if (i3 != 21) {
                if (i3 == 22) {
                    i2 /= 2;
                } else if (i3 != 268435456) {
                    if (i3 != 1342177280) {
                        if (i3 == 1610612736) {
                            i2 /= 2;
                        } else {
                            if (i3 != 1879048192) {
                                r81.b();
                                return;
                            }
                            i2 /= 4;
                        }
                    }
                }
            }
            i2 /= 3;
            i2 *= 2;
        }
        ByteBuffer byteBufferL = l(i2);
        int i4 = this.f14058b.f14055c;
        if (i4 == 3) {
            while (iPosition < iLimit) {
                byteBufferL.put((byte) 0);
                byteBufferL.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                iPosition++;
            }
        } else if (i4 == 4) {
            while (iPosition < iLimit) {
                short sI = (short) (Util.i(byteBuffer.getFloat(iPosition), -1.0f, 1.0f) * 32767.0f);
                byteBufferL.put((byte) (sI & 255));
                byteBufferL.put((byte) ((sI >> 8) & 255));
                iPosition += 4;
            }
        } else if (i4 == 21) {
            while (iPosition < iLimit) {
                byteBufferL.put(byteBuffer.get(iPosition + 1));
                byteBufferL.put(byteBuffer.get(iPosition + 2));
                iPosition += 3;
            }
        } else if (i4 == 22) {
            while (iPosition < iLimit) {
                byteBufferL.put(byteBuffer.get(iPosition + 2));
                byteBufferL.put(byteBuffer.get(iPosition + 3));
                iPosition += 4;
            }
        } else if (i4 == 268435456) {
            while (iPosition < iLimit) {
                byteBufferL.put(byteBuffer.get(iPosition + 1));
                byteBufferL.put(byteBuffer.get(iPosition));
                iPosition += 2;
            }
        } else if (i4 == 1342177280) {
            while (iPosition < iLimit) {
                byteBufferL.put(byteBuffer.get(iPosition + 1));
                byteBufferL.put(byteBuffer.get(iPosition));
                iPosition += 3;
            }
        } else if (i4 == 1610612736) {
            while (iPosition < iLimit) {
                byteBufferL.put(byteBuffer.get(iPosition + 1));
                byteBufferL.put(byteBuffer.get(iPosition));
                iPosition += 4;
            }
        } else {
            if (i4 != 1879048192) {
                r81.b();
                return;
            }
            while (iPosition < iLimit) {
                double d = byteBuffer.getDouble(iPosition);
                String str = Util.f14242a;
                short sMax = (short) (Math.max(-1.0d, Math.min(d, 1.0d)) * 32767.0d);
                byteBufferL.put((byte) (sMax & 255));
                byteBufferL.put((byte) ((sMax >> 8) & 255));
                iPosition += 8;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferL.flip();
    }
}
