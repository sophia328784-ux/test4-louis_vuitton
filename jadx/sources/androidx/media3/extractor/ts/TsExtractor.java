package androidx.media3.extractor.ts;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.base.Preconditions;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TsExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17163c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ParsableByteArray f17164e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SparseIntArray f17165f;
    public final TsPayloadReader.Factory g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SubtitleParser.Factory f17166h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SparseArray f17167i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SparseBooleanArray f17168j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SparseBooleanArray f17169k;
    public final TsDurationReader l;
    public TsBinarySearchSeeker m;
    public ExtractorOutput n;
    public int o;
    public boolean p;
    public boolean q;
    public boolean r;
    public TsPayloadReader s;
    public int t;
    public int u;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public class PatReader implements SectionPayloadReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ParsableBitArray f17170a = new ParsableBitArray(new byte[4]);

        public PatReader() {
        }

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public final void a(ParsableByteArray parsableByteArray) {
            TsExtractor tsExtractor;
            if (parsableByteArray.A() == 0 && (parsableByteArray.A() & 128) != 0) {
                parsableByteArray.O(6);
                int iA = parsableByteArray.a() / 4;
                int i2 = 0;
                while (true) {
                    tsExtractor = TsExtractor.this;
                    if (i2 >= iA) {
                        break;
                    }
                    ParsableBitArray parsableBitArray = this.f17170a;
                    parsableByteArray.k(0, 4, parsableBitArray.f14189a);
                    parsableBitArray.m(0);
                    int iG = parsableBitArray.g(16);
                    parsableBitArray.o(3);
                    if (iG == 0) {
                        parsableBitArray.o(13);
                    } else {
                        int iG2 = parsableBitArray.g(13);
                        if (tsExtractor.f17167i.get(iG2) == null) {
                            tsExtractor.f17167i.put(iG2, new SectionReader(tsExtractor.new PmtReader(iG2)));
                            tsExtractor.o++;
                        }
                    }
                    i2++;
                }
                if (tsExtractor.f17161a != 2) {
                    tsExtractor.f17167i.remove(0);
                }
            }
        }

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public final void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    public class PmtReader implements SectionPayloadReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ParsableBitArray f17172a = new ParsableBitArray(new byte[5]);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SparseArray f17173b = new SparseArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseIntArray f17174c = new SparseIntArray();
        public final int d;

        public PmtReader(int i2) {
            this.d = i2;
        }

        /* JADX WARN: Code duplicated, block: B:41:0x0139  */
        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public final void a(ParsableByteArray parsableByteArray) {
            TimestampAdjuster timestampAdjuster;
            int i2;
            SparseArray sparseArray;
            TimestampAdjuster timestampAdjuster2;
            char c2;
            if (parsableByteArray.A() != 2) {
                return;
            }
            TsExtractor tsExtractor = TsExtractor.this;
            int i3 = tsExtractor.f17161a;
            SparseArray sparseArray2 = tsExtractor.f17167i;
            SparseBooleanArray sparseBooleanArray = tsExtractor.f17168j;
            TsPayloadReader.Factory factory = tsExtractor.g;
            List list = tsExtractor.d;
            int i4 = tsExtractor.f17161a;
            int i5 = 0;
            if (i3 == 1 || i3 == 2 || tsExtractor.o == 1) {
                timestampAdjuster = (TimestampAdjuster) list.get(0);
            } else {
                timestampAdjuster = new TimestampAdjuster(((TimestampAdjuster) list.get(0)).d());
                list.add(timestampAdjuster);
            }
            if ((parsableByteArray.A() & 128) == 0) {
                return;
            }
            parsableByteArray.O(1);
            int iH = parsableByteArray.H();
            parsableByteArray.O(3);
            ParsableBitArray parsableBitArray = this.f17172a;
            parsableByteArray.k(0, 2, parsableBitArray.f14189a);
            parsableBitArray.m(0);
            parsableBitArray.o(3);
            tsExtractor.u = parsableBitArray.g(13);
            parsableByteArray.k(0, 2, parsableBitArray.f14189a);
            parsableBitArray.m(0);
            parsableBitArray.o(4);
            parsableByteArray.O(parsableBitArray.g(12));
            if (i4 == 2 && tsExtractor.s == null) {
                TsPayloadReader tsPayloadReaderA = factory.a(21, new TsPayloadReader.EsInfo(21, null, 0, null, Util.f14243b));
                tsExtractor.s = tsPayloadReaderA;
                if (tsPayloadReaderA != null) {
                    tsPayloadReaderA.b(timestampAdjuster, tsExtractor.n, new TsPayloadReader.TrackIdGenerator(iH, 21, 8192));
                }
            }
            SparseArray sparseArray3 = this.f17173b;
            sparseArray3.clear();
            SparseIntArray sparseIntArray = this.f17174c;
            sparseIntArray.clear();
            int iA = parsableByteArray.a();
            while (iA > 0) {
                parsableByteArray.k(i5, 5, parsableBitArray.f14189a);
                parsableBitArray.m(i5);
                int iG = parsableBitArray.g(8);
                parsableBitArray.o(3);
                int iG2 = parsableBitArray.g(13);
                parsableBitArray.o(4);
                int iG3 = parsableBitArray.g(12);
                int i6 = parsableByteArray.f14195b;
                ParsableBitArray parsableBitArray2 = parsableBitArray;
                int i7 = i6 + iG3;
                int i8 = -1;
                String str = null;
                ArrayList arrayList = null;
                int iA2 = 0;
                int i9 = iA;
                while (parsableByteArray.f14195b < i7) {
                    int iA3 = parsableByteArray.A();
                    int iA4 = parsableByteArray.f14195b + parsableByteArray.A();
                    if (iA4 > i7) {
                        break;
                    }
                    SparseArray sparseArray4 = sparseArray2;
                    if (iA3 == 5) {
                        long jC = parsableByteArray.C();
                        if (jC == 1094921523) {
                            i8 = 129;
                        } else if (jC == 1161904947) {
                            i8 = 135;
                        } else if (jC == 1094921524) {
                            i8 = 172;
                        } else if (jC == 1212503619) {
                            i8 = 36;
                        }
                    } else if (iA3 == 106) {
                        iA4 = iA4;
                        sparseArray3 = sparseArray3;
                        timestampAdjuster = timestampAdjuster;
                        i8 = 129;
                    } else if (iA3 == 122) {
                        sparseArray3 = sparseArray3;
                        timestampAdjuster = timestampAdjuster;
                        iH = iH;
                        i8 = 135;
                        iA4 = iA4;
                    } else if (iA3 == 127) {
                        int iA5 = parsableByteArray.A();
                        if (iA5 == 21) {
                            i8 = 172;
                        } else if (iA5 == 14) {
                            i8 = 136;
                        } else if (iA5 == 33) {
                            i8 = 139;
                        }
                    } else if (iA3 == 123) {
                        i8 = 138;
                    } else if (iA3 == 10) {
                        String strTrim = parsableByteArray.y(3, StandardCharsets.UTF_8).trim();
                        iA2 = parsableByteArray.A();
                        str = strTrim;
                    } else if (iA3 == 89) {
                        ArrayList arrayList2 = new ArrayList();
                        while (parsableByteArray.f14195b < iA4) {
                            int i10 = iA4;
                            String strTrim2 = parsableByteArray.y(3, StandardCharsets.UTF_8).trim();
                            int iA6 = parsableByteArray.A();
                            int i11 = iH;
                            byte[] bArr = new byte[4];
                            parsableByteArray.k(0, 4, bArr);
                            arrayList2.add(new TsPayloadReader.DvbSubtitleInfo(strTrim2, iA6, bArr));
                            iH = i11;
                            iA4 = i10;
                            timestampAdjuster = timestampAdjuster;
                            sparseArray3 = sparseArray3;
                        }
                        iA4 = iA4;
                        sparseArray3 = sparseArray3;
                        timestampAdjuster = timestampAdjuster;
                        iH = iH;
                        arrayList = arrayList2;
                        i8 = 89;
                    } else {
                        iA4 = iA4;
                        sparseArray3 = sparseArray3;
                        timestampAdjuster = timestampAdjuster;
                        iH = iH;
                        if (iA3 == 111) {
                            i8 = 257;
                        }
                    }
                    parsableByteArray.O(iA4 - parsableByteArray.f14195b);
                    iH = iH;
                    sparseArray2 = sparseArray4;
                    timestampAdjuster = timestampAdjuster;
                    sparseArray3 = sparseArray3;
                }
                SparseArray sparseArray5 = sparseArray3;
                TimestampAdjuster timestampAdjuster3 = timestampAdjuster;
                SparseArray sparseArray6 = sparseArray2;
                int i12 = iH;
                parsableByteArray.N(i7);
                TsPayloadReader.EsInfo esInfo = new TsPayloadReader.EsInfo(i8, str, iA2, arrayList, Arrays.copyOfRange(parsableByteArray.f14194a, i6, i7));
                if (iG == 6 || iG == 5) {
                    iG = esInfo.f17178a;
                }
                iA = i9 - (iG3 + 5);
                int i13 = i4 == 2 ? iG : iG2;
                if (sparseBooleanArray.get(i13)) {
                    sparseArray3 = sparseArray5;
                    c2 = 21;
                } else {
                    c2 = 21;
                    TsPayloadReader tsPayloadReaderA2 = (i4 == 2 && iG == 21) ? tsExtractor.s : factory.a(iG, esInfo);
                    if (i4 != 2 || iG2 < sparseIntArray.get(i13, 8192)) {
                        sparseIntArray.put(i13, iG2);
                        sparseArray3 = sparseArray5;
                        sparseArray3.put(i13, tsPayloadReaderA2);
                    } else {
                        sparseArray3 = sparseArray5;
                    }
                }
                iH = i12;
                parsableBitArray = parsableBitArray2;
                sparseArray2 = sparseArray6;
                timestampAdjuster = timestampAdjuster3;
                i5 = 0;
            }
            TimestampAdjuster timestampAdjuster4 = timestampAdjuster;
            SparseArray sparseArray7 = sparseArray2;
            int i14 = iH;
            int size = sparseIntArray.size();
            int i15 = 0;
            while (i15 < size) {
                int iKeyAt = sparseIntArray.keyAt(i15);
                int iValueAt = sparseIntArray.valueAt(i15);
                sparseBooleanArray.put(iKeyAt, true);
                tsExtractor.f17169k.put(iValueAt, true);
                TsPayloadReader tsPayloadReader = (TsPayloadReader) sparseArray3.valueAt(i15);
                if (tsPayloadReader != null) {
                    if (tsPayloadReader != tsExtractor.s) {
                        ExtractorOutput extractorOutput = tsExtractor.n;
                        i2 = i14;
                        TsPayloadReader.TrackIdGenerator trackIdGenerator = new TsPayloadReader.TrackIdGenerator(i2, iKeyAt, 8192);
                        timestampAdjuster2 = timestampAdjuster4;
                        tsPayloadReader.b(timestampAdjuster2, extractorOutput, trackIdGenerator);
                    } else {
                        i2 = i14;
                        timestampAdjuster2 = timestampAdjuster4;
                    }
                    sparseArray = sparseArray7;
                    sparseArray.put(iValueAt, tsPayloadReader);
                } else {
                    i2 = i14;
                    sparseArray = sparseArray7;
                    timestampAdjuster2 = timestampAdjuster4;
                }
                i15++;
                timestampAdjuster4 = timestampAdjuster2;
                sparseArray7 = sparseArray;
                i14 = i2;
            }
            SparseArray sparseArray8 = sparseArray7;
            if (i4 == 2) {
                if (tsExtractor.p) {
                    return;
                }
                tsExtractor.n.n();
                tsExtractor.o = 0;
                tsExtractor.p = true;
                return;
            }
            sparseArray8.remove(this.d);
            int i16 = i4 == 1 ? 0 : tsExtractor.o - 1;
            tsExtractor.o = i16;
            if (i16 == 0) {
                tsExtractor.n.n();
                tsExtractor.p = true;
            }
        }

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public final void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    public TsExtractor(int i2, int i3, SubtitleParser.Factory factory, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory2, int i4) {
        factory2.getClass();
        this.g = factory2;
        this.f17163c = i4;
        this.f17161a = i2;
        this.f17162b = i3;
        this.f17166h = factory;
        if (i2 == 1 || i2 == 2) {
            this.d = Collections.singletonList(timestampAdjuster);
        } else {
            ArrayList arrayList = new ArrayList();
            this.d = arrayList;
            arrayList.add(timestampAdjuster);
        }
        this.f17164e = new ParsableByteArray(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f17168j = sparseBooleanArray;
        this.f17169k = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.f17167i = sparseArray;
        this.f17165f = new SparseIntArray();
        this.l = new TsDurationReader(i4);
        this.n = ExtractorOutput.g0;
        this.u = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArrayB = factory2.b();
        int size = sparseArrayB.size();
        for (int i5 = 0; i5 < size; i5++) {
            sparseArray.put(sparseArrayB.keyAt(i5), (TsPayloadReader) sparseArrayB.valueAt(i5));
        }
        sparseArray.put(0, new SectionReader(new PatReader()));
        this.s = null;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        TsBinarySearchSeeker tsBinarySearchSeeker;
        long j4;
        SparseArray sparseArray = this.f17167i;
        List list = this.d;
        Preconditions.q(this.f17161a != 2);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            TimestampAdjuster timestampAdjuster = (TimestampAdjuster) list.get(i2);
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
        }
        if (j3 != 0 && (tsBinarySearchSeeker = this.m) != null) {
            tsBinarySearchSeeker.c(j3);
        }
        this.f17164e.K(0);
        this.f17165f.clear();
        for (int i3 = 0; i3 < sparseArray.size(); i3++) {
            ((TsPayloadReader) sparseArray.valueAt(i3)).c();
        }
        this.t = 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        if ((this.f17162b & 1) == 0) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.f17166h);
        }
        this.n = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws EOFException, InterruptedIOException {
        byte[] bArr = this.f17164e.f14194a;
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        defaultExtractorInput.i(false, 0, 940, bArr);
        for (int i2 = 0; i2 < 188; i2++) {
            int i3 = 0;
            while (true) {
                if (i3 >= 5) {
                    defaultExtractorInput.e(i2, false);
                    return true;
                }
                if (bArr[(i3 * 188) + i2] != 71) {
                    break;
                }
                i3++;
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        byte b2;
        boolean z;
        int i2;
        long jA;
        long jA2;
        long length = extractorInput.getLength();
        int i3 = this.f17161a;
        boolean z2 = i3 == 2;
        if (this.p) {
            TsDurationReader tsDurationReader = this.l;
            z = z2;
            if (length != -1 && !z && !tsDurationReader.d) {
                int i4 = this.u;
                TimestampAdjuster timestampAdjuster = tsDurationReader.f17155b;
                int i5 = tsDurationReader.f17154a;
                ParsableByteArray parsableByteArray = tsDurationReader.f17156c;
                if (i4 <= 0) {
                    tsDurationReader.a(extractorInput);
                    return 0;
                }
                if (tsDurationReader.f17158f) {
                    if (tsDurationReader.f17159h == -9223372036854775807L) {
                        tsDurationReader.a(extractorInput);
                        return 0;
                    }
                    if (tsDurationReader.f17157e) {
                        long j2 = tsDurationReader.g;
                        if (j2 == -9223372036854775807L) {
                            tsDurationReader.a(extractorInput);
                            return 0;
                        }
                        tsDurationReader.f17160i = timestampAdjuster.c(tsDurationReader.f17159h) - timestampAdjuster.b(j2);
                        tsDurationReader.a(extractorInput);
                        return 0;
                    }
                    int iMin = (int) Math.min(i5, extractorInput.getLength());
                    if (extractorInput.getPosition() != 0) {
                        positionHolder.f16190a = 0L;
                        return 1;
                    }
                    parsableByteArray.K(iMin);
                    extractorInput.g();
                    extractorInput.b(0, iMin, parsableByteArray.f14194a);
                    int i6 = parsableByteArray.f14196c;
                    for (int i7 = parsableByteArray.f14195b; i7 < i6; i7++) {
                        if (parsableByteArray.f14194a[i7] == 71) {
                            jA = TsUtil.a(parsableByteArray, i7, i4);
                            if (jA != -9223372036854775807L) {
                                tsDurationReader.g = jA;
                                tsDurationReader.f17157e = true;
                                return 0;
                            }
                        }
                    }
                    jA = -9223372036854775807L;
                    tsDurationReader.g = jA;
                    tsDurationReader.f17157e = true;
                    return 0;
                }
                long length2 = extractorInput.getLength();
                int iMin2 = (int) Math.min(i5, length2);
                long j3 = length2 - ((long) iMin2);
                if (extractorInput.getPosition() != j3) {
                    positionHolder.f16190a = j3;
                    return 1;
                }
                parsableByteArray.K(iMin2);
                extractorInput.g();
                extractorInput.b(0, iMin2, parsableByteArray.f14194a);
                int i8 = parsableByteArray.f14195b;
                int i9 = parsableByteArray.f14196c;
                for (int i10 = i9 - 188; i10 >= i8; i10--) {
                    byte[] bArr = parsableByteArray.f14194a;
                    int i11 = 0;
                    for (int i12 = -4; i12 <= 4; i12++) {
                        int i13 = (i12 * 188) + i10;
                        if (i13 < i8 || i13 >= i9 || bArr[i13] != 71) {
                            i11 = 0;
                        } else {
                            i11++;
                            if (i11 == 5) {
                                jA2 = TsUtil.a(parsableByteArray, i10, i4);
                                if (jA2 == -9223372036854775807L) {
                                    break;
                                }
                                tsDurationReader.f17159h = jA2;
                                tsDurationReader.f17158f = true;
                                return 0;
                            }
                        }
                    }
                }
                jA2 = -9223372036854775807L;
                tsDurationReader.f17159h = jA2;
                tsDurationReader.f17158f = true;
                return 0;
            }
            if (this.q) {
                b2 = 71;
            } else {
                this.q = true;
                long j4 = tsDurationReader.f17160i;
                if (j4 != -9223372036854775807L) {
                    b2 = 71;
                    TsBinarySearchSeeker tsBinarySearchSeeker = new TsBinarySearchSeeker(tsDurationReader.f17155b, j4, length, this.u, this.f17163c);
                    this.m = tsBinarySearchSeeker;
                    this.n.j(tsBinarySearchSeeker.f16092a);
                } else {
                    b2 = 71;
                    this.n.j(new SeekMap.Unseekable(j4));
                }
            }
            if (this.r) {
                this.r = false;
                a(0L, 0L);
                if (extractorInput.getPosition() != 0) {
                    positionHolder.f16190a = 0L;
                    return 1;
                }
            }
            TsBinarySearchSeeker tsBinarySearchSeeker2 = this.m;
            if (tsBinarySearchSeeker2 != null && tsBinarySearchSeeker2.f16094c != null) {
                return tsBinarySearchSeeker2.a(extractorInput, positionHolder);
            }
        } else {
            b2 = 71;
            z = z2;
        }
        ParsableByteArray parsableByteArray2 = this.f17164e;
        byte[] bArr2 = parsableByteArray2.f14194a;
        if (9400 - parsableByteArray2.f14195b < 188) {
            int iA = parsableByteArray2.a();
            if (iA > 0) {
                System.arraycopy(bArr2, parsableByteArray2.f14195b, bArr2, 0, iA);
            }
            parsableByteArray2.L(iA, bArr2);
        }
        while (true) {
            int iA2 = parsableByteArray2.a();
            SparseArray sparseArray = this.f17167i;
            if (iA2 >= 188) {
                int i14 = parsableByteArray2.f14195b;
                int i15 = parsableByteArray2.f14196c;
                byte[] bArr3 = parsableByteArray2.f14194a;
                int i16 = i14;
                while (i16 < i15 && bArr3[i16] != b2) {
                    i16++;
                }
                parsableByteArray2.N(i16);
                int i17 = i16 + 188;
                if (i17 > i15) {
                    int i18 = (i16 - i14) + this.t;
                    this.t = i18;
                    if (i3 == 2 && i18 > 376) {
                        throw ParserException.a(null, "Cannot find sync byte. Most likely not a Transport Stream.");
                    }
                    i2 = 0;
                } else {
                    i2 = 0;
                    this.t = 0;
                }
                int i19 = parsableByteArray2.f14196c;
                if (i17 > i19) {
                    return i2;
                }
                int iM = parsableByteArray2.m();
                if ((8388608 & iM) != 0) {
                    parsableByteArray2.N(i17);
                    return i2;
                }
                int i20 = (4194304 & iM) != 0 ? 1 : 0;
                int i21 = (2096896 & iM) >> 8;
                boolean z3 = (iM & 32) != 0;
                TsPayloadReader tsPayloadReader = (iM & 16) != 0 ? (TsPayloadReader) sparseArray.get(i21) : null;
                if (tsPayloadReader == null) {
                    parsableByteArray2.N(i17);
                    return 0;
                }
                if (i3 != 2) {
                    int i22 = iM & 15;
                    SparseIntArray sparseIntArray = this.f17165f;
                    int i23 = sparseIntArray.get(i21, i22 - 1);
                    sparseIntArray.put(i21, i22);
                    if (i23 == i22) {
                        parsableByteArray2.N(i17);
                        return 0;
                    }
                    if (i22 != ((i23 + 1) & 15)) {
                        tsPayloadReader.c();
                    }
                }
                if (z3) {
                    int iA3 = parsableByteArray2.A();
                    i20 |= (parsableByteArray2.A() & 64) != 0 ? 2 : 0;
                    parsableByteArray2.O(iA3 - 1);
                }
                boolean z4 = this.p;
                if (i3 == 2 || z4 || !this.f17169k.get(i21, false)) {
                    parsableByteArray2.M(i17);
                    tsPayloadReader.a(i20, parsableByteArray2);
                    parsableByteArray2.M(i19);
                }
                if (i3 != 2 && !z4 && this.p && length != -1) {
                    this.r = true;
                }
                parsableByteArray2.N(i17);
                return 0;
            }
            int i24 = parsableByteArray2.f14196c;
            int i25 = extractorInput.read(bArr2, i24, 9400 - i24);
            if (i25 == -1) {
                for (int i26 = 0; i26 < sparseArray.size(); i26++) {
                    TsPayloadReader tsPayloadReader2 = (TsPayloadReader) sparseArray.valueAt(i26);
                    if (tsPayloadReader2 instanceof PesReader) {
                        PesReader pesReader = (PesReader) tsPayloadReader2;
                        boolean z5 = !z || pesReader.e();
                        if (pesReader.f17114c == 3 && pesReader.f17119j == -1 && ((!z || !(pesReader.f17112a instanceof H262Reader)) && z5)) {
                            pesReader.a(1, new ParsableByteArray());
                        }
                    }
                }
                return -1;
            }
            parsableByteArray2.M(i24 + i25);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    public TsExtractor(SubtitleParser.Factory factory) {
        this(1, 0, factory, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(0), 112800);
    }

    public TsExtractor(int i2, SubtitleParser.Factory factory) {
        this(1, i2, factory, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(0), 112800);
    }

    @Deprecated
    public TsExtractor(int i2) {
        this(1, 1, SubtitleParser.Factory.f16683a, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(i2), 112800);
    }

    @Deprecated
    public TsExtractor(int i2, int i3, int i4) {
        this(i2, 1, SubtitleParser.Factory.f16683a, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(i3), i4);
    }

    @Deprecated
    public TsExtractor(int i2, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory) {
        this(i2, 1, SubtitleParser.Factory.f16683a, timestampAdjuster, factory, 112800);
    }

    @Deprecated
    public TsExtractor(int i2, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory, int i3) {
        this(i2, 1, SubtitleParser.Factory.f16683a, timestampAdjuster, factory, i3);
    }

    @Deprecated
    public TsExtractor() {
        this(1, 1, SubtitleParser.Factory.f16683a, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(0), 112800);
    }
}
