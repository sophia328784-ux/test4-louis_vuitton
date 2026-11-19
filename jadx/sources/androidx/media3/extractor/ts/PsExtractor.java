package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import com.batch.android.x0.h;
import com.networkbench.agent.impl.util.r;
import java.io.EOFException;
import java.io.InterruptedIOException;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes.dex */
public final class PsExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimestampAdjuster f17129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f17130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f17131c;
    public final PsDurationReader d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17133f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f17134h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PsBinarySearchSeeker f17135i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ExtractorOutput f17136j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17137k;

    public static final class PesReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ElementaryStreamReader f17138a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TimestampAdjuster f17139b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ParsableBitArray f17140c = new ParsableBitArray(new byte[64]);
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f17141e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f17142f;
        public long g;

        public PesReader(ElementaryStreamReader elementaryStreamReader, TimestampAdjuster timestampAdjuster) {
            this.f17138a = elementaryStreamReader;
            this.f17139b = timestampAdjuster;
        }
    }

    public PsExtractor(TimestampAdjuster timestampAdjuster) {
        this.f17129a = timestampAdjuster;
        this.f17131c = new ParsableByteArray(4096);
        this.f17130b = new SparseArray();
        this.d = new PsDurationReader();
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        long j4;
        SparseArray sparseArray = this.f17130b;
        TimestampAdjuster timestampAdjuster = this.f17129a;
        synchronized (timestampAdjuster) {
            j4 = timestampAdjuster.f14240b;
        }
        boolean z = j4 == -9223372036854775807L;
        if (!z) {
            long jD = timestampAdjuster.d();
            z = (jD == -9223372036854775807L || jD == 0 || jD == j3) ? false : true;
        }
        if (z) {
            timestampAdjuster.f(j3);
        }
        PsBinarySearchSeeker psBinarySearchSeeker = this.f17135i;
        if (psBinarySearchSeeker != null) {
            psBinarySearchSeeker.c(j3);
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            PesReader pesReader = (PesReader) sparseArray.valueAt(i2);
            pesReader.f17142f = false;
            pesReader.f17138a.c();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f17136j = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws EOFException, InterruptedIOException {
        byte[] bArr = new byte[14];
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        defaultExtractorInput.i(false, 0, 14, bArr);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & h.a.f24179i) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            defaultExtractorInput.n(bArr[13] & 7, false);
            defaultExtractorInput.i(false, 0, 3, bArr);
            if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        long j2;
        ElementaryStreamReader h262Reader;
        long jC;
        long jC2;
        this.f17136j.getClass();
        long length = extractorInput.getLength();
        PsDurationReader psDurationReader = this.d;
        if (length != -1) {
            j2 = -9223372036854775807L;
            if (!psDurationReader.f17125c) {
                TimestampAdjuster timestampAdjuster = psDurationReader.f17123a;
                ParsableByteArray parsableByteArray = psDurationReader.f17124b;
                if (!psDurationReader.f17126e) {
                    long length2 = extractorInput.getLength();
                    int iMin = (int) Math.min(r.x, length2);
                    long j3 = length2 - ((long) iMin);
                    if (extractorInput.getPosition() != j3) {
                        positionHolder.f16190a = j3;
                        return 1;
                    }
                    parsableByteArray.K(iMin);
                    extractorInput.g();
                    extractorInput.b(0, iMin, parsableByteArray.f14194a);
                    int i2 = parsableByteArray.f14195b;
                    for (int i3 = parsableByteArray.f14196c - 4; i3 >= i2; i3--) {
                        if (PsDurationReader.b(i3, parsableByteArray.f14194a) == 442) {
                            parsableByteArray.N(i3 + 4);
                            jC2 = PsDurationReader.c(parsableByteArray);
                            if (jC2 != -9223372036854775807L) {
                                psDurationReader.g = jC2;
                                psDurationReader.f17126e = true;
                                return 0;
                            }
                        }
                    }
                    jC2 = -9223372036854775807L;
                    psDurationReader.g = jC2;
                    psDurationReader.f17126e = true;
                    return 0;
                }
                if (psDurationReader.g == -9223372036854775807L) {
                    psDurationReader.a(extractorInput);
                    return 0;
                }
                if (psDurationReader.d) {
                    long j4 = psDurationReader.f17127f;
                    if (j4 == -9223372036854775807L) {
                        psDurationReader.a(extractorInput);
                        return 0;
                    }
                    psDurationReader.f17128h = timestampAdjuster.c(psDurationReader.g) - timestampAdjuster.b(j4);
                    psDurationReader.a(extractorInput);
                    return 0;
                }
                int iMin2 = (int) Math.min(r.x, extractorInput.getLength());
                if (extractorInput.getPosition() != 0) {
                    positionHolder.f16190a = 0L;
                    return 1;
                }
                parsableByteArray.K(iMin2);
                extractorInput.g();
                extractorInput.b(0, iMin2, parsableByteArray.f14194a);
                int i4 = parsableByteArray.f14196c;
                for (int i5 = parsableByteArray.f14195b; i5 < i4 - 3; i5++) {
                    if (PsDurationReader.b(i5, parsableByteArray.f14194a) == 442) {
                        parsableByteArray.N(i5 + 4);
                        jC = PsDurationReader.c(parsableByteArray);
                        if (jC != -9223372036854775807L) {
                            psDurationReader.f17127f = jC;
                            psDurationReader.d = true;
                            return 0;
                        }
                    }
                }
                jC = -9223372036854775807L;
                psDurationReader.f17127f = jC;
                psDurationReader.d = true;
                return 0;
            }
        } else {
            j2 = -9223372036854775807L;
        }
        if (!this.f17137k) {
            this.f17137k = true;
            long j5 = psDurationReader.f17128h;
            if (j5 != j2) {
                PsBinarySearchSeeker psBinarySearchSeeker = new PsBinarySearchSeeker(psDurationReader.f17123a, j5, length);
                this.f17135i = psBinarySearchSeeker;
                this.f17136j.j(psBinarySearchSeeker.f16092a);
            } else {
                this.f17136j.j(new SeekMap.Unseekable(j5));
            }
        }
        PsBinarySearchSeeker psBinarySearchSeeker2 = this.f17135i;
        if (psBinarySearchSeeker2 != null && psBinarySearchSeeker2.f16094c != null) {
            return psBinarySearchSeeker2.a(extractorInput, positionHolder);
        }
        extractorInput.g();
        long j6 = length != -1 ? length - extractorInput.j() : -1L;
        if (j6 != -1 && j6 < 4) {
            return -1;
        }
        ParsableByteArray parsableByteArray2 = this.f17131c;
        if (!extractorInput.i(true, 0, 4, parsableByteArray2.f14194a)) {
            return -1;
        }
        parsableByteArray2.N(0);
        int iM = parsableByteArray2.m();
        if (iM == 441) {
            return -1;
        }
        if (iM == 442) {
            extractorInput.b(0, 10, parsableByteArray2.f14194a);
            parsableByteArray2.N(9);
            extractorInput.m((parsableByteArray2.A() & 7) + 14);
            return 0;
        }
        if (iM == 443) {
            extractorInput.b(0, 2, parsableByteArray2.f14194a);
            parsableByteArray2.N(0);
            extractorInput.m(parsableByteArray2.H() + 6);
            return 0;
        }
        if (((iM & (-256)) >> 8) != 1) {
            extractorInput.m(1);
            return 0;
        }
        int i6 = iM & 255;
        SparseArray sparseArray = this.f17130b;
        PesReader pesReader = (PesReader) sparseArray.get(i6);
        if (!this.f17132e) {
            if (pesReader == null) {
                if (i6 == 189) {
                    h262Reader = new Ac3Reader("video/mp2p");
                    this.f17133f = true;
                    this.f17134h = extractorInput.getPosition();
                } else if ((iM & BERTags.FLAGS) == 192) {
                    h262Reader = new MpegAudioReader("video/mp2p");
                    this.f17133f = true;
                    this.f17134h = extractorInput.getPosition();
                } else if ((iM & 240) == 224) {
                    h262Reader = new H262Reader("video/mp2p");
                    this.g = true;
                    this.f17134h = extractorInput.getPosition();
                } else {
                    h262Reader = null;
                }
                if (h262Reader != null) {
                    h262Reader.e(this.f17136j, new TsPayloadReader.TrackIdGenerator(i6, 256));
                    pesReader = new PesReader(h262Reader, this.f17129a);
                    sparseArray.put(i6, pesReader);
                }
            }
            if (extractorInput.getPosition() > ((this.f17133f && this.g) ? this.f17134h + 8192 : 1048576L)) {
                this.f17132e = true;
                this.f17136j.n();
            }
        }
        extractorInput.b(0, 2, parsableByteArray2.f14194a);
        parsableByteArray2.N(0);
        int iH = parsableByteArray2.H() + 6;
        if (pesReader == null) {
            extractorInput.m(iH);
            return 0;
        }
        parsableByteArray2.K(iH);
        extractorInput.readFully(parsableByteArray2.f14194a, 0, iH);
        parsableByteArray2.N(6);
        ElementaryStreamReader elementaryStreamReader = pesReader.f17138a;
        ParsableBitArray parsableBitArray = pesReader.f17140c;
        parsableByteArray2.k(0, 3, parsableBitArray.f14189a);
        parsableBitArray.m(0);
        parsableBitArray.o(8);
        pesReader.d = parsableBitArray.f();
        pesReader.f17141e = parsableBitArray.f();
        parsableBitArray.o(6);
        parsableByteArray2.k(0, parsableBitArray.g(8), parsableBitArray.f14189a);
        parsableBitArray.m(0);
        TimestampAdjuster timestampAdjuster2 = pesReader.f17139b;
        pesReader.g = 0L;
        if (pesReader.d) {
            parsableBitArray.o(4);
            long jG = ((long) parsableBitArray.g(3)) << 30;
            parsableBitArray.o(1);
            long jG2 = jG | ((long) (parsableBitArray.g(15) << 15));
            parsableBitArray.o(1);
            long jG3 = jG2 | ((long) parsableBitArray.g(15));
            parsableBitArray.o(1);
            if (!pesReader.f17142f && pesReader.f17141e) {
                parsableBitArray.o(4);
                long jG4 = ((long) parsableBitArray.g(3)) << 30;
                parsableBitArray.o(1);
                long jG5 = jG4 | ((long) (parsableBitArray.g(15) << 15));
                parsableBitArray.o(1);
                long jG6 = ((long) parsableBitArray.g(15)) | jG5;
                parsableBitArray.o(1);
                timestampAdjuster2.b(jG6);
                pesReader.f17142f = true;
            }
            pesReader.g = timestampAdjuster2.b(jG3);
        }
        elementaryStreamReader.f(4, pesReader.g);
        elementaryStreamReader.a(parsableByteArray2);
        elementaryStreamReader.d(false);
        parsableByteArray2.M(parsableByteArray2.f14194a.length);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    public PsExtractor() {
        this(new TimestampAdjuster(0L));
    }
}
