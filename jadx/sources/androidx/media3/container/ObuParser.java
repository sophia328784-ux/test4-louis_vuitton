package androidx.media3.container;

import androidx.media3.common.util.ParsableBitArray;
import com.google.common.base.Preconditions;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class ObuParser {

    public static final class FrameHeader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f14337a;

        public FrameHeader(SequenceHeader sequenceHeader, Obu obu) throws NotYetImplementedException {
            int i2 = obu.f14338a;
            ByteBuffer byteBuffer = obu.f14339b;
            Preconditions.g(i2 == 6 || i2 == 3);
            byte[] bArr = new byte[Math.min(4, byteBuffer.remaining())];
            byteBuffer.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            if (sequenceHeader.f14340a) {
                throw new NotYetImplementedException();
            }
            if (parsableBitArray.f()) {
                this.f14337a = false;
                return;
            }
            int iG = parsableBitArray.g(2);
            boolean zF = parsableBitArray.f();
            if (sequenceHeader.f14341b) {
                throw new NotYetImplementedException();
            }
            if (!zF) {
                this.f14337a = true;
                return;
            }
            boolean zF2 = (iG == 3 || iG == 0) ? true : parsableBitArray.f();
            parsableBitArray.n();
            if (!sequenceHeader.d) {
                throw new NotYetImplementedException();
            }
            if (parsableBitArray.f()) {
                if (!sequenceHeader.f14343e) {
                    throw new NotYetImplementedException();
                }
                parsableBitArray.n();
            }
            if (sequenceHeader.f14342c) {
                throw new NotYetImplementedException();
            }
            if (iG != 3) {
                parsableBitArray.n();
            }
            parsableBitArray.o(sequenceHeader.f14344f);
            if (iG != 2 && iG != 0 && !zF2) {
                parsableBitArray.o(3);
            }
            this.f14337a = ((iG == 3 || iG == 0) ? 255 : parsableBitArray.g(8)) != 0;
        }
    }

    public static class NotYetImplementedException extends Exception {
    }

    public static final class Obu {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14338a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteBuffer f14339b;

        public Obu(int i2, ByteBuffer byteBuffer) {
            this.f14338a = i2;
            this.f14339b = byteBuffer;
        }
    }

    public static final class SequenceHeader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f14340a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f14341b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f14342c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f14343e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f14344f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f14345h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f14346i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f14347j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f14348k;
        public final boolean l;
        public final byte m;
        public final byte n;
        public final byte o;

        public SequenceHeader(Obu obu) {
            int i2 = obu.f14338a;
            ByteBuffer byteBuffer = obu.f14339b;
            Preconditions.g(i2 == 1);
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            this.g = parsableBitArray.g(3);
            parsableBitArray.n();
            boolean zF = parsableBitArray.f();
            this.f14340a = zF;
            if (zF) {
                parsableBitArray.g(5);
                this.f14341b = false;
                this.f14345h = false;
            } else {
                if (parsableBitArray.f()) {
                    parsableBitArray.o(64);
                    if (parsableBitArray.f()) {
                        int i3 = 0;
                        while (!parsableBitArray.f()) {
                            i3++;
                        }
                        if (i3 < 32) {
                            parsableBitArray.o(i3);
                        }
                    }
                    boolean zF2 = parsableBitArray.f();
                    this.f14341b = zF2;
                    if (zF2) {
                        parsableBitArray.o(47);
                    }
                } else {
                    this.f14341b = false;
                }
                this.f14345h = parsableBitArray.f();
                int iG = parsableBitArray.g(5);
                for (int i4 = 0; i4 <= iG; i4++) {
                    parsableBitArray.o(12);
                    if (i4 == 0) {
                        if (parsableBitArray.g(5) > 7) {
                            parsableBitArray.f();
                        }
                    } else if (parsableBitArray.g(5) > 7) {
                        parsableBitArray.n();
                    }
                    if (this.f14341b) {
                        parsableBitArray.n();
                    }
                    if (this.f14345h && parsableBitArray.f()) {
                        if (i4 == 0) {
                            parsableBitArray.g(4);
                        } else {
                            parsableBitArray.o(4);
                        }
                    }
                }
            }
            int iG2 = parsableBitArray.g(4);
            int iG3 = parsableBitArray.g(4);
            parsableBitArray.o(iG2 + 1);
            parsableBitArray.o(iG3 + 1);
            if (this.f14340a) {
                this.f14342c = false;
            } else {
                this.f14342c = parsableBitArray.f();
            }
            if (this.f14342c) {
                parsableBitArray.o(4);
                parsableBitArray.o(3);
            }
            parsableBitArray.o(3);
            if (this.f14340a) {
                this.f14343e = true;
                this.d = true;
                this.f14344f = 0;
            } else {
                parsableBitArray.o(4);
                boolean zF3 = parsableBitArray.f();
                if (zF3) {
                    parsableBitArray.o(2);
                }
                if (parsableBitArray.f()) {
                    this.d = true;
                } else {
                    this.d = parsableBitArray.f();
                }
                if (!this.d || parsableBitArray.f()) {
                    this.f14343e = true;
                } else {
                    this.f14343e = parsableBitArray.f();
                }
                if (zF3) {
                    this.f14344f = parsableBitArray.g(3) + 1;
                } else {
                    this.f14344f = 0;
                }
            }
            parsableBitArray.o(3);
            boolean zF4 = parsableBitArray.f();
            if (this.g == 2 && zF4) {
                this.f14346i = parsableBitArray.f();
            } else {
                this.f14346i = false;
            }
            if (this.g != 1) {
                this.f14347j = parsableBitArray.f();
            } else {
                this.f14347j = false;
            }
            if (parsableBitArray.f()) {
                this.m = (byte) parsableBitArray.g(8);
                this.n = (byte) parsableBitArray.g(8);
                this.o = (byte) parsableBitArray.g(8);
            } else {
                this.m = (byte) 0;
                this.n = (byte) 0;
                this.o = (byte) 0;
            }
            if (this.f14347j) {
                parsableBitArray.n();
                this.f14348k = false;
                this.l = false;
            } else if (this.m == 1 && this.n == 13 && this.o == 0) {
                this.f14348k = false;
                this.l = false;
            } else {
                parsableBitArray.n();
                int i5 = this.g;
                if (i5 == 0) {
                    this.f14348k = true;
                    this.l = true;
                } else if (i5 == 1) {
                    this.f14348k = false;
                    this.l = false;
                } else if (this.f14346i) {
                    boolean zF5 = parsableBitArray.f();
                    this.f14348k = zF5;
                    if (zF5) {
                        this.l = parsableBitArray.f();
                    } else {
                        this.l = false;
                    }
                } else {
                    this.f14348k = true;
                    this.l = false;
                }
                if (this.f14348k && this.l) {
                    parsableBitArray.g(2);
                }
            }
            parsableBitArray.n();
        }
    }

    public static ArrayList a(ByteBuffer byteBuffer) {
        int iRemaining;
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (byteBufferAsReadOnlyBuffer.hasRemaining()) {
            try {
                byte b2 = byteBufferAsReadOnlyBuffer.get();
                int i2 = (b2 >> 3) & 15;
                if (((b2 >> 2) & 1) != 0) {
                    byteBufferAsReadOnlyBuffer.get();
                }
                if (((b2 >> 1) & 1) != 0) {
                    iRemaining = 0;
                    for (int i3 = 0; i3 < 8; i3++) {
                        byte b3 = byteBufferAsReadOnlyBuffer.get();
                        iRemaining |= (b3 & 127) << (i3 * 7);
                        if ((b3 & 128) == 0) {
                            break;
                        }
                    }
                } else {
                    iRemaining = byteBufferAsReadOnlyBuffer.remaining();
                }
                if (byteBufferAsReadOnlyBuffer.position() + iRemaining > byteBufferAsReadOnlyBuffer.limit()) {
                    break;
                }
                ByteBuffer byteBufferDuplicate = byteBufferAsReadOnlyBuffer.duplicate();
                byteBufferDuplicate.limit(byteBufferAsReadOnlyBuffer.position() + iRemaining);
                arrayList.add(new Obu(i2, byteBufferDuplicate));
                byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + iRemaining);
            } catch (BufferUnderflowException unused) {
            }
        }
        return arrayList;
    }
}
