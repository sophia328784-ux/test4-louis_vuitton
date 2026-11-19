package androidx.media3.exoplayer.source;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class SampleDataQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Allocator f15575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f15577c;
    public AllocationNode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AllocationNode f15578e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AllocationNode f15579f;
    public long g;

    public static final class AllocationNode implements Allocator.AllocationNode {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f15580a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f15581b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Allocation f15582c;
        public AllocationNode d;

        public AllocationNode(long j2, int i2) {
            Preconditions.q(this.f15582c == null);
            this.f15580a = j2;
            this.f15581b = j2 + ((long) i2);
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator.AllocationNode
        public final Allocation a() {
            Allocation allocation = this.f15582c;
            allocation.getClass();
            return allocation;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator.AllocationNode
        public final Allocator.AllocationNode next() {
            AllocationNode allocationNode = this.d;
            if (allocationNode == null || allocationNode.f15582c == null) {
                return null;
            }
            return allocationNode;
        }
    }

    public SampleDataQueue(Allocator allocator) {
        this.f15575a = allocator;
        int iE = allocator.e();
        this.f15576b = iE;
        this.f15577c = new ParsableByteArray(32);
        AllocationNode allocationNode = new AllocationNode(0L, iE);
        this.d = allocationNode;
        this.f15578e = allocationNode;
        this.f15579f = allocationNode;
    }

    public static AllocationNode c(AllocationNode allocationNode, long j2, ByteBuffer byteBuffer, int i2) {
        while (j2 >= allocationNode.f15581b) {
            allocationNode = allocationNode.d;
        }
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (allocationNode.f15581b - j2));
            Allocation allocation = allocationNode.f15582c;
            byteBuffer.put(allocation.f15749a, ((int) (j2 - allocationNode.f15580a)) + allocation.f15750b, iMin);
            i2 -= iMin;
            j2 += (long) iMin;
            if (j2 == allocationNode.f15581b) {
                allocationNode = allocationNode.d;
            }
        }
        return allocationNode;
    }

    public static AllocationNode d(AllocationNode allocationNode, long j2, byte[] bArr, int i2) {
        while (j2 >= allocationNode.f15581b) {
            allocationNode = allocationNode.d;
        }
        int i3 = i2;
        while (i3 > 0) {
            int iMin = Math.min(i3, (int) (allocationNode.f15581b - j2));
            Allocation allocation = allocationNode.f15582c;
            System.arraycopy(allocation.f15749a, ((int) (j2 - allocationNode.f15580a)) + allocation.f15750b, bArr, i2 - i3, iMin);
            i3 -= iMin;
            j2 += (long) iMin;
            if (j2 == allocationNode.f15581b) {
                allocationNode = allocationNode.d;
            }
        }
        return allocationNode;
    }

    public static AllocationNode e(AllocationNode allocationNode, DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder, ParsableByteArray parsableByteArray) {
        AllocationNode allocationNodeD;
        if (decoderInputBuffer.f(1073741824)) {
            long j2 = sampleExtrasHolder.f15593b;
            int iH = 1;
            parsableByteArray.K(1);
            AllocationNode allocationNodeD2 = d(allocationNode, j2, parsableByteArray.f14194a, 1);
            long j3 = j2 + 1;
            byte b2 = parsableByteArray.f14194a[0];
            boolean z = (b2 & 128) != 0;
            int i2 = b2 & 127;
            CryptoInfo cryptoInfo = decoderInputBuffer.d;
            byte[] bArr = cryptoInfo.f14532a;
            if (bArr == null) {
                cryptoInfo.f14532a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            allocationNodeD = d(allocationNodeD2, j3, cryptoInfo.f14532a, i2);
            long j4 = j3 + ((long) i2);
            if (z) {
                parsableByteArray.K(2);
                allocationNodeD = d(allocationNodeD, j4, parsableByteArray.f14194a, 2);
                j4 += 2;
                iH = parsableByteArray.H();
            }
            int i3 = iH;
            int[] iArr = cryptoInfo.d;
            if (iArr == null || iArr.length < i3) {
                iArr = new int[i3];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = cryptoInfo.f14535e;
            if (iArr3 == null || iArr3.length < i3) {
                iArr3 = new int[i3];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i4 = i3 * 6;
                parsableByteArray.K(i4);
                allocationNodeD = d(allocationNodeD, j4, parsableByteArray.f14194a, i4);
                j4 += (long) i4;
                parsableByteArray.N(0);
                for (int i5 = 0; i5 < i3; i5++) {
                    iArr2[i5] = parsableByteArray.H();
                    iArr4[i5] = parsableByteArray.E();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = sampleExtrasHolder.f15592a - ((int) (j4 - sampleExtrasHolder.f15593b));
            }
            TrackOutput.CryptoData cryptoData = sampleExtrasHolder.f15594c;
            String str = Util.f14242a;
            cryptoInfo.a(i3, iArr2, iArr4, cryptoData.f16211b, cryptoInfo.f14532a, cryptoData.f16210a, cryptoData.f16212c, cryptoData.d);
            long j5 = sampleExtrasHolder.f15593b;
            int i6 = (int) (j4 - j5);
            sampleExtrasHolder.f15593b = j5 + ((long) i6);
            sampleExtrasHolder.f15592a -= i6;
        } else {
            allocationNodeD = allocationNode;
        }
        if (!decoderInputBuffer.f(268435456)) {
            decoderInputBuffer.i(sampleExtrasHolder.f15592a);
            return c(allocationNodeD, sampleExtrasHolder.f15593b, decoderInputBuffer.f14543e, sampleExtrasHolder.f15592a);
        }
        parsableByteArray.K(4);
        AllocationNode allocationNodeD3 = d(allocationNodeD, sampleExtrasHolder.f15593b, parsableByteArray.f14194a, 4);
        int iE = parsableByteArray.E();
        sampleExtrasHolder.f15593b += 4;
        sampleExtrasHolder.f15592a -= 4;
        decoderInputBuffer.i(iE);
        AllocationNode allocationNodeC = c(allocationNodeD3, sampleExtrasHolder.f15593b, decoderInputBuffer.f14543e, iE);
        sampleExtrasHolder.f15593b += (long) iE;
        int i7 = sampleExtrasHolder.f15592a - iE;
        sampleExtrasHolder.f15592a = i7;
        ByteBuffer byteBuffer = decoderInputBuffer.f14545h;
        if (byteBuffer == null || byteBuffer.capacity() < i7) {
            decoderInputBuffer.f14545h = ByteBuffer.allocate(i7);
        } else {
            decoderInputBuffer.f14545h.clear();
        }
        return c(allocationNodeC, sampleExtrasHolder.f15593b, decoderInputBuffer.f14545h, sampleExtrasHolder.f15592a);
    }

    public final void a(long j2) {
        AllocationNode allocationNode;
        if (j2 == -1) {
            return;
        }
        while (true) {
            allocationNode = this.d;
            if (j2 < allocationNode.f15581b) {
                break;
            }
            this.f15575a.c(allocationNode.f15582c);
            AllocationNode allocationNode2 = this.d;
            allocationNode2.f15582c = null;
            AllocationNode allocationNode3 = allocationNode2.d;
            allocationNode2.d = null;
            this.d = allocationNode3;
        }
        if (this.f15578e.f15580a < allocationNode.f15580a) {
            this.f15578e = allocationNode;
        }
    }

    public final int b(int i2) {
        AllocationNode allocationNode = this.f15579f;
        if (allocationNode.f15582c == null) {
            Allocation allocationB = this.f15575a.b();
            AllocationNode allocationNode2 = new AllocationNode(this.f15579f.f15581b, this.f15576b);
            allocationNode.f15582c = allocationB;
            allocationNode.d = allocationNode2;
        }
        return Math.min(i2, (int) (this.f15579f.f15581b - this.g));
    }
}
