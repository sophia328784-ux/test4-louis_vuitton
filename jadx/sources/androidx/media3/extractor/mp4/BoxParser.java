package androidx.media3.extractor.mp4;

import android.util.Pair;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.DolbyVisionConfig;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4AlternateGroupData;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.Mp4LocationData;
import androidx.media3.container.Mp4TimestampData;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.OpusUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.Id3Util;
import androidx.media3.extractor.metadata.id3.InternalFrame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import androidx.media3.extractor.metadata.mp4.SmtaMetadataEntry;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.primitives.Ints;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.md;
import defpackage.pq0;
import defpackage.r81;
import defpackage.tr;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
public abstract class BoxParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f16500a;

    public static final class BtrtData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16501a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16502b;

        public BtrtData(long j2, long j3) {
            this.f16501a = j2;
            this.f16502b = j3;
        }
    }

    public static final class ChunkIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16505c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f16506e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ParsableByteArray f16507f;
        public final ParsableByteArray g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16508h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f16509i;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) throws ParserException {
            this.g = parsableByteArray;
            this.f16507f = parsableByteArray2;
            this.f16506e = z;
            parsableByteArray2.N(12);
            this.f16503a = parsableByteArray2.E();
            parsableByteArray.N(12);
            this.f16509i = parsableByteArray.E();
            ExtractorUtil.a("first_chunk must be 1", parsableByteArray.m() == 1);
            this.f16504b = -1;
        }

        public final boolean a() {
            int i2 = this.f16504b + 1;
            this.f16504b = i2;
            if (i2 == this.f16503a) {
                return false;
            }
            boolean z = this.f16506e;
            ParsableByteArray parsableByteArray = this.f16507f;
            this.d = z ? parsableByteArray.G() : parsableByteArray.C();
            if (this.f16504b == this.f16508h) {
                ParsableByteArray parsableByteArray2 = this.g;
                this.f16505c = parsableByteArray2.E();
                parsableByteArray2.O(4);
                int i3 = this.f16509i - 1;
                this.f16509i = i3;
                this.f16508h = i3 > 0 ? parsableByteArray2.E() - 1 : -1;
            }
            return true;
        }
    }

    public static final class EsdsData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f16510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f16511b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f16512c;
        public final long d;

        public EsdsData(String str, byte[] bArr, long j2, long j3) {
            this.f16510a = str;
            this.f16511b = bArr;
            this.f16512c = j2;
            this.d = j3;
        }
    }

    public static final class EyesData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StriData f16513a;

        public EyesData(StriData striData) {
            this.f16513a = striData;
        }
    }

    public static final class MdhdData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16514a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16515b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f16516c;

        public MdhdData(long j2, long j3, String str) {
            this.f16514a = j2;
            this.f16515b = j3;
            this.f16516c = str;
        }
    }

    public interface SampleSizeBox {
        int a();

        int b();

        int c();
    }

    public static final class StriData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f16517a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f16518b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f16519c;

        public StriData(boolean z, boolean z2, boolean z3) {
            this.f16517a = z;
            this.f16518b = z2;
            this.f16519c = z3;
        }
    }

    public static final class StsdData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackEncryptionBox[] f16520a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Format f16521b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16522c;
        public int d = 0;

        public StsdData(int i2) {
            this.f16520a = new TrackEncryptionBox[i2];
        }
    }

    public static final class StszSampleSizeBox implements SampleSizeBox {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16524b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ParsableByteArray f16525c;

        public StszSampleSizeBox(Mp4Box.LeafBox leafBox, Format format) {
            ParsableByteArray parsableByteArray = leafBox.f14280b;
            this.f16525c = parsableByteArray;
            parsableByteArray.N(12);
            int iE = parsableByteArray.E();
            if ("audio/raw".equals(format.o)) {
                int iU = Util.u(format.I) * format.G;
                if (iE % iU != 0) {
                    Log.g("Audio sample size mismatch. stsd sample size: " + iU + ", stsz sample size: " + iE);
                    iE = iU;
                }
            }
            this.f16523a = iE == 0 ? -1 : iE;
            this.f16524b = parsableByteArray.E();
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int a() {
            int i2 = this.f16523a;
            return i2 == -1 ? this.f16525c.E() : i2;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int b() {
            return this.f16523a;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int c() {
            return this.f16524b;
        }
    }

    public static final class Stz2SampleSizeBox implements SampleSizeBox {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ParsableByteArray f16526a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16527b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16528c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f16529e;

        public Stz2SampleSizeBox(Mp4Box.LeafBox leafBox) {
            ParsableByteArray parsableByteArray = leafBox.f14280b;
            this.f16526a = parsableByteArray;
            parsableByteArray.N(12);
            this.f16528c = parsableByteArray.E() & 255;
            this.f16527b = parsableByteArray.E();
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int a() {
            ParsableByteArray parsableByteArray = this.f16526a;
            int i2 = this.f16528c;
            if (i2 == 8) {
                return parsableByteArray.A();
            }
            if (i2 == 16) {
                return parsableByteArray.H();
            }
            int i3 = this.d;
            this.d = i3 + 1;
            if (i3 % 2 != 0) {
                return this.f16529e & 15;
            }
            int iA = parsableByteArray.A();
            this.f16529e = iA;
            return (iA & 240) >> 4;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int b() {
            return -1;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int c() {
            return this.f16527b;
        }
    }

    public static final class TkhdData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16530a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16531b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16532c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f16533e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f16534f;

        public TkhdData(int i2, long j2, int i3, int i4, int i5, int i6) {
            this.f16530a = i2;
            this.f16531b = j2;
            this.f16532c = i3;
            this.d = i4;
            this.f16533e = i5;
            this.f16534f = i6;
        }
    }

    public static final class VexuData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EyesData f16535a;

        public VexuData(EyesData eyesData) {
            this.f16535a = eyesData;
        }
    }

    static {
        String str = Util.f14242a;
        f16500a = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static void a(ParsableByteArray parsableByteArray) {
        int i2 = parsableByteArray.f14195b;
        parsableByteArray.O(4);
        if (parsableByteArray.m() != 1751411826) {
            i2 += 4;
        }
        parsableByteArray.N(i2);
    }

    public static EsdsData b(int i2, ParsableByteArray parsableByteArray) {
        parsableByteArray.N(i2 + 12);
        parsableByteArray.O(1);
        c(parsableByteArray);
        parsableByteArray.O(2);
        int iA = parsableByteArray.A();
        if ((iA & 128) != 0) {
            parsableByteArray.O(2);
        }
        if ((iA & 64) != 0) {
            parsableByteArray.O(parsableByteArray.A());
        }
        if ((iA & 32) != 0) {
            parsableByteArray.O(2);
        }
        parsableByteArray.O(1);
        c(parsableByteArray);
        String strF = MimeTypes.f(parsableByteArray.A());
        if ("audio/mpeg".equals(strF) || "audio/vnd.dts".equals(strF) || "audio/vnd.dts.hd".equals(strF)) {
            return new EsdsData(strF, null, -1L, -1L);
        }
        parsableByteArray.O(4);
        long jC = parsableByteArray.C();
        long jC2 = parsableByteArray.C();
        parsableByteArray.O(1);
        int iC = c(parsableByteArray);
        long j2 = jC2;
        byte[] bArr = new byte[iC];
        parsableByteArray.k(0, iC, bArr);
        if (j2 <= 0) {
            j2 = -1;
        }
        return new EsdsData(strF, bArr, j2, jC > 0 ? jC : -1L);
    }

    public static int c(ParsableByteArray parsableByteArray) {
        int iA = parsableByteArray.A();
        int i2 = iA & CertificateBody.profileType;
        while ((iA & 128) == 128) {
            iA = parsableByteArray.A();
            i2 = (i2 << 7) | (iA & CertificateBody.profileType);
        }
        return i2;
    }

    public static int d(int i2) {
        return (i2 >> 24) & 255;
    }

    public static Metadata e(Mp4Box.ContainerBox containerBox) {
        MdtaMetadataEntry mdtaMetadataEntry;
        Mp4Box.LeafBox leafBoxC = containerBox.c(1751411826);
        Mp4Box.LeafBox leafBoxC2 = containerBox.c(1801812339);
        Mp4Box.LeafBox leafBoxC3 = containerBox.c(1768715124);
        if (leafBoxC == null || leafBoxC2 == null || leafBoxC3 == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafBoxC.f14280b;
        parsableByteArray.N(16);
        if (parsableByteArray.m() != 1835299937) {
            return null;
        }
        ParsableByteArray parsableByteArray2 = leafBoxC2.f14280b;
        parsableByteArray2.N(12);
        int iM = parsableByteArray2.m();
        String[] strArr = new String[iM];
        for (int i2 = 0; i2 < iM; i2++) {
            int iM2 = parsableByteArray2.m();
            parsableByteArray2.O(4);
            strArr[i2] = parsableByteArray2.y(iM2 - 8, StandardCharsets.UTF_8);
        }
        ParsableByteArray parsableByteArray3 = leafBoxC3.f14280b;
        parsableByteArray3.N(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray3.a() > 8) {
            int i3 = parsableByteArray3.f14195b;
            int iM3 = parsableByteArray3.m();
            int iM4 = parsableByteArray3.m() - 1;
            if (iM4 < 0 || iM4 >= iM) {
                a.u(iM4, "Skipped metadata with unknown key index: ");
            } else {
                String str = strArr[iM4];
                int i4 = i3 + iM3;
                while (true) {
                    int i5 = parsableByteArray3.f14195b;
                    if (i5 < i4) {
                        int iM5 = parsableByteArray3.m();
                        if (parsableByteArray3.m() == 1684108385) {
                            int iM6 = parsableByteArray3.m();
                            int iM7 = parsableByteArray3.m();
                            int i6 = iM5 - 16;
                            byte[] bArr = new byte[i6];
                            parsableByteArray3.k(0, i6, bArr);
                            try {
                                mdtaMetadataEntry = new MdtaMetadataEntry(str, bArr, iM7, iM6);
                                break;
                            } catch (Exception unused) {
                                cj.y("Failed to parse metadata entry with key: ", str);
                                mdtaMetadataEntry = null;
                                break;
                            }
                        }
                        parsableByteArray3.N(i5 + iM5);
                    }
                    mdtaMetadataEntry = null;
                    break;
                }
                if (mdtaMetadataEntry != null) {
                    arrayList.add(mdtaMetadataEntry);
                }
            }
            parsableByteArray3.N(i3 + iM3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static Mp4TimestampData f(ParsableByteArray parsableByteArray) {
        long jU;
        long jU2;
        parsableByteArray.N(8);
        if (d(parsableByteArray.m()) == 0) {
            jU = parsableByteArray.C();
            jU2 = parsableByteArray.C();
        } else {
            jU = parsableByteArray.u();
            jU2 = parsableByteArray.u();
        }
        return new Mp4TimestampData(jU, jU2, parsableByteArray.C());
    }

    public static Pair g(ParsableByteArray parsableByteArray, int i2, int i3) throws ParserException {
        TrackEncryptionBox trackEncryptionBox;
        Pair pairCreate;
        int i4;
        int i5;
        int i6 = parsableByteArray.f14195b;
        while (i6 - i2 < i3) {
            parsableByteArray.N(i6);
            int iM = parsableByteArray.m();
            ExtractorUtil.a("childAtomSize must be positive", iM > 0);
            if (parsableByteArray.m() == 1936289382) {
                int i7 = i6 + 8;
                int i8 = 0;
                int i9 = -1;
                Integer numValueOf = null;
                String strY = null;
                while (i7 - i6 < iM) {
                    parsableByteArray.N(i7);
                    int iM2 = parsableByteArray.m();
                    int iM3 = parsableByteArray.m();
                    if (iM3 == 1718775137) {
                        numValueOf = Integer.valueOf(parsableByteArray.m());
                    } else if (iM3 == 1935894637) {
                        parsableByteArray.O(4);
                        strY = parsableByteArray.y(4, StandardCharsets.UTF_8);
                    } else if (iM3 == 1935894633) {
                        i9 = i7;
                        i8 = iM2;
                    }
                    i7 += iM2;
                }
                byte[] bArr = null;
                if ("cenc".equals(strY) || "cbc1".equals(strY) || "cens".equals(strY) || "cbcs".equals(strY)) {
                    ExtractorUtil.a("frma atom is mandatory", numValueOf != null);
                    ExtractorUtil.a("schi atom is mandatory", i9 != -1);
                    int i10 = i9 + 8;
                    while (true) {
                        if (i10 - i9 >= i8) {
                            trackEncryptionBox = null;
                            break;
                        }
                        parsableByteArray.N(i10);
                        int iM4 = parsableByteArray.m();
                        if (parsableByteArray.m() == 1952804451) {
                            int iD = d(parsableByteArray.m());
                            parsableByteArray.O(1);
                            if (iD == 0) {
                                parsableByteArray.O(1);
                                i5 = 0;
                                i4 = 0;
                            } else {
                                int iA = parsableByteArray.A();
                                i4 = iA & 15;
                                i5 = (iA & 240) >> 4;
                            }
                            boolean z = parsableByteArray.A() == 1;
                            int iA2 = parsableByteArray.A();
                            byte[] bArr2 = new byte[16];
                            parsableByteArray.k(0, 16, bArr2);
                            if (z && iA2 == 0) {
                                int iA3 = parsableByteArray.A();
                                byte[] bArr3 = new byte[iA3];
                                parsableByteArray.k(0, iA3, bArr3);
                                bArr = bArr3;
                            }
                            trackEncryptionBox = new TrackEncryptionBox(z, strY, iA2, bArr2, i5, i4, bArr);
                            break;
                        }
                        i10 += iM4;
                    }
                    ExtractorUtil.a("tenc atom is mandatory", trackEncryptionBox != null);
                    String str = Util.f14242a;
                    pairCreate = Pair.create(numValueOf, trackEncryptionBox);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            i6 += iM;
        }
        return null;
    }

    /* JADX WARN: Failed to calculate best type for var: r10v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v2 ??, new type: androidx.media3.extractor.mp4.BoxParser$ChunkIterator
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v2 ??, new type: androidx.media3.extractor.mp4.BoxParser$ChunkIterator
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r15v11 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v11 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r15v13 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v13 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r16v14 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r16v14 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r16v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r16v7 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r16v8 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r16v8 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r28v11 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r28v11 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r28v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r28v2 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r28v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r28v7 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r28v8 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r28v8 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r30v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r30v0 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r30v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r30v1 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r30v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r30v2 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r5v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v10 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r5v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v5 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r5v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v6 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r5v8 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v8 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r5v9 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v9 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r7v14 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v14 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r7v16 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v16 ??, new type: int[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v2 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public static androidx.media3.extractor.mp4.TrackSampleTable h(androidx.media3.extractor.mp4.Track r42, androidx.media3.container.Mp4Box.ContainerBox r43, androidx.media3.extractor.GaplessInfoHolder r44, boolean r45) {
        /*
            Method dump skipped, instruction units count: 1760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.mp4.BoxParser.h(androidx.media3.extractor.mp4.Track, androidx.media3.container.Mp4Box$ContainerBox, androidx.media3.extractor.GaplessInfoHolder, boolean):androidx.media3.extractor.mp4.TrackSampleTable");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:101:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:104:0x01f6 A[EDGE_INSN: B:104:0x01f6->B:108:0x0216 BREAK  A[LOOP:2: B:96:0x01dc->B:106:0x0209]] */
    /* JADX WARN: Code duplicated, block: B:105:0x01f9 A[EDGE_INSN: B:105:0x01f9->B:108:0x0216 BREAK  A[LOOP:2: B:96:0x01dc->B:106:0x0209]] */
    /* JADX WARN: Code duplicated, block: B:106:0x0209 A[LOOP:2: B:96:0x01dc->B:106:0x0209, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:111:0x023d  */
    /* JADX WARN: Code duplicated, block: B:121:0x0268  */
    /* JADX WARN: Code duplicated, block: B:122:0x026f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0285  */
    /* JADX WARN: Code duplicated, block: B:127:0x0291  */
    /* JADX WARN: Code duplicated, block: B:128:0x0294  */
    /* JADX WARN: Code duplicated, block: B:288:0x05b2  */
    /* JADX WARN: Code duplicated, block: B:334:0x066d  */
    /* JADX WARN: Code duplicated, block: B:395:0x0766  */
    /* JADX WARN: Code duplicated, block: B:500:0x09f5  */
    /* JADX WARN: Code duplicated, block: B:607:0x0cc0  */
    /* JADX WARN: Code duplicated, block: B:609:0x0cc8  */
    /* JADX WARN: Code duplicated, block: B:611:0x0ccc  */
    /* JADX WARN: Code duplicated, block: B:613:0x0ccf  */
    /* JADX WARN: Code duplicated, block: B:617:0x0cda  */
    /* JADX WARN: Code duplicated, block: B:619:0x0ce3  */
    /* JADX WARN: Code duplicated, block: B:621:0x0ce7  */
    /* JADX WARN: Code duplicated, block: B:625:0x0cf6 A[LOOP:14: B:615:0x0cd4->B:625:0x0cf6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:628:0x0d0e  */
    /* JADX WARN: Code duplicated, block: B:630:0x0d18  */
    /* JADX WARN: Code duplicated, block: B:632:0x0d20  */
    /* JADX WARN: Code duplicated, block: B:635:0x0d30  */
    /* JADX WARN: Code duplicated, block: B:637:0x0d3c A[LOOP:12: B:633:0x0d2a->B:637:0x0d3c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:642:0x0d57  */
    /* JADX WARN: Code duplicated, block: B:644:0x0d61 A[LOOP:13: B:640:0x0d51->B:644:0x0d61, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:649:0x0d91  */
    /* JADX WARN: Code duplicated, block: B:651:0x0da0  */
    /* JADX WARN: Code duplicated, block: B:652:0x0db0  */
    /* JADX WARN: Code duplicated, block: B:654:0x0db9  */
    /* JADX WARN: Code duplicated, block: B:656:0x0dc5  */
    /* JADX WARN: Code duplicated, block: B:675:0x0edb  */
    /* JADX WARN: Code duplicated, block: B:677:0x0ee6  */
    /* JADX WARN: Code duplicated, block: B:679:0x0eef  */
    /* JADX WARN: Code duplicated, block: B:680:0x0ef4  */
    /* JADX WARN: Code duplicated, block: B:682:0x0f0c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:683:0x0f0e  */
    /* JADX WARN: Code duplicated, block: B:684:0x0f13  */
    /* JADX WARN: Code duplicated, block: B:687:0x0f1b  */
    /* JADX WARN: Code duplicated, block: B:688:0x0f22  */
    /* JADX WARN: Code duplicated, block: B:691:0x0f33 A[LOOP:15: B:681:0x0f0a->B:691:0x0f33, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:696:0x0f4c  */
    /* JADX WARN: Code duplicated, block: B:697:0x0f5a  */
    /* JADX WARN: Code duplicated, block: B:698:0x0f5d  */
    /* JADX WARN: Code duplicated, block: B:702:0x0f69 A[EDGE_INSN: B:702:0x0f69->B:713:0x0fcc BREAK  A[LOOP:4: B:123:0x0281->B:672:0x0ea1]] */
    /* JADX WARN: Code duplicated, block: B:703:0x0f70  */
    /* JADX WARN: Code duplicated, block: B:705:0x0f76  */
    /* JADX WARN: Code duplicated, block: B:707:0x0f87  */
    /* JADX WARN: Code duplicated, block: B:708:0x0f92  */
    /* JADX WARN: Code duplicated, block: B:711:0x0fa8  */
    /* JADX WARN: Code duplicated, block: B:723:0x0f3e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:729:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:730:0x01e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:733:0x024d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:734:0x0ec4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:755:0x0d47 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:756:0x0d4b A[EDGE_INSN: B:756:0x0d4b->B:639:0x0d4b BREAK  A[LOOP:12: B:633:0x0d2a->B:637:0x0d3c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:757:0x0d6c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:758:0x0d6a A[EDGE_INSN: B:758:0x0d6a->B:645:0x0d6a BREAK  A[LOOP:13: B:640:0x0d51->B:644:0x0d61], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:759:0x0d05 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:760:0x0cc6 A[EDGE_INSN: B:760:0x0cc6->B:608:0x0cc6 BREAK  A[LOOP:14: B:615:0x0cd4->B:625:0x0cf6], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x016d  */
    /* JADX WARN: Code duplicated, block: B:81:0x0172  */
    /* JADX WARN: Code duplicated, block: B:84:0x0180  */
    /* JADX WARN: Code duplicated, block: B:86:0x0188  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:90:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:93:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:94:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:97:0x01de  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v101 */
    /* JADX WARN: Type inference failed for: r0v102 */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.media3.extractor.mp4.BoxParser$BtrtData] */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.media3.extractor.mp4.BoxParser$EsdsData] */
    /* JADX WARN: Type inference failed for: r0v76, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r10v45 */
    /* JADX WARN: Type inference failed for: r10v53 */
    /* JADX WARN: Type inference failed for: r10v54 */
    /* JADX WARN: Type inference failed for: r10v56 */
    /* JADX WARN: Type inference failed for: r10v85 */
    /* JADX WARN: Type inference failed for: r10v86 */
    /* JADX WARN: Type inference failed for: r10v87 */
    /* JADX WARN: Type inference failed for: r10v88 */
    /* JADX WARN: Type inference failed for: r1v108, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r33v2, types: [long[]] */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1, types: [long[]] */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22, types: [androidx.media3.common.DrmInitData] */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r52v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r54v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r54v1 */
    /* JADX WARN: Type inference failed for: r54v12 */
    /* JADX WARN: Type inference failed for: r54v13 */
    /* JADX WARN: Type inference failed for: r54v14 */
    /* JADX WARN: Type inference failed for: r54v15 */
    /* JADX WARN: Type inference failed for: r54v16 */
    /* JADX WARN: Type inference failed for: r54v17 */
    /* JADX WARN: Type inference failed for: r54v18 */
    /* JADX WARN: Type inference failed for: r54v19 */
    /* JADX WARN: Type inference failed for: r54v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r54v4 */
    /* JADX WARN: Type inference failed for: r54v5 */
    /* JADX WARN: Type inference failed for: r54v6 */
    /* JADX WARN: Type inference failed for: r54v7 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v60 */
    /* JADX WARN: Type inference failed for: r6v153 */
    /* JADX WARN: Type inference failed for: r6v24, types: [android.util.Pair] */
    /* JADX WARN: Type inference failed for: r6v27 */
    public static ArrayList i(Mp4Box.ContainerBox containerBox, GaplessInfoHolder gaplessInfoHolder, long j2, DrmInitData drmInitData, boolean z, boolean z2, Function function, boolean z3) {
        int i2;
        long jZ;
        long j3;
        int i3;
        int i4;
        TkhdData tkhdData;
        long j4;
        long j5;
        long j6;
        long j7;
        ParsableByteArray parsableByteArray;
        int iD;
        int i5;
        long jC;
        int i6;
        int i7;
        int i8;
        long j8;
        int i9;
        char[] cArr;
        int i10;
        byte b2;
        String str;
        MdhdData mdhdData;
        Mp4Box.LeafBox leafBoxC;
        ParsableByteArray parsableByteArray2;
        int iM;
        StsdData stsdData;
        int i11;
        TrackEncryptionBox[] trackEncryptionBoxArr;
        MdhdData mdhdData2;
        int i12;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i13;
        Mp4Box.ContainerBox containerBox2;
        int i14;
        TkhdData tkhdData2;
        Mp4Box.ContainerBox containerBox3;
        ?? r34;
        ?? r33;
        Format format;
        int i15;
        Mp4AlternateGroupData mp4AlternateGroupData;
        Metadata metadata;
        Metadata metadata2;
        Object obj;
        Mp4Box.ContainerBox containerBoxB;
        Mp4Box.LeafBox leafBoxC2;
        ParsableByteArray parsableByteArray3;
        int iD2;
        int iE;
        long[] jArr;
        long[] jArr2;
        int i16;
        long jC2;
        long jM;
        ?? Create;
        int i17;
        int iM2;
        ?? r5;
        int iM3;
        String str2;
        char c2;
        int i18;
        MdhdData mdhdData3;
        int iH;
        int iM4;
        int i19;
        int iE2;
        int i20;
        ParsableByteArray parsableByteArray4;
        TkhdData tkhdData3;
        int i21;
        ?? r3;
        Object obj2;
        String str3;
        String str4;
        ?? r54;
        Object obj3;
        int i22;
        String str5;
        int i23;
        boolean z4;
        int i24;
        String str6;
        int iM5;
        boolean z5;
        Object obj4;
        ?? r10;
        Object obj5;
        Object obj6;
        EsdsData esdsDataB;
        String str7;
        byte[] bArr;
        EsdsData esdsData;
        Object obj7;
        Object obj8;
        ImmutableList immutableListA;
        ParsableByteArray parsableByteArray5;
        int i25;
        int i26;
        int iC;
        int i27;
        ImmutableList immutableListA2;
        Object obj9;
        List listA;
        ?? r55;
        List list;
        String str8;
        List list2;
        ?? r56;
        List list3;
        ?? r57;
        Object obj10;
        Object obj11;
        int i28;
        int i29;
        List listA2;
        Object obj12;
        List listA3;
        Object obj13;
        long j9;
        ?? r0;
        char c3;
        long jG;
        ArrayList arrayList3;
        Mp4Box.ContainerBox containerBox4 = containerBox;
        ArrayList arrayList4 = containerBox4.d;
        ArrayList arrayList5 = new ArrayList();
        int i30 = 0;
        while (i30 < arrayList4.size()) {
            Mp4Box.ContainerBox containerBox5 = (Mp4Box.ContainerBox) arrayList4.get(i30);
            if (containerBox5.f14277a != 1953653099) {
                arrayList = arrayList4;
                arrayList3 = arrayList5;
                i13 = i30;
            } else {
                Mp4Box.LeafBox leafBoxC3 = containerBox4.c(1836476516);
                leafBoxC3.getClass();
                Mp4Box.ContainerBox containerBoxB2 = containerBox5.b(1835297121);
                containerBoxB2.getClass();
                Mp4Box.LeafBox leafBoxC4 = containerBoxB2.c(1751411826);
                leafBoxC4.getClass();
                ParsableByteArray parsableByteArray6 = leafBoxC4.f14280b;
                parsableByteArray6.N(16);
                int iM6 = parsableByteArray6.m();
                int i31 = 1;
                if (iM6 == 1936684398) {
                    i2 = 1;
                } else if (iM6 == 1986618469) {
                    i2 = 2;
                } else if (iM6 == 1952807028 || iM6 == 1935832172 || iM6 == 1937072756 || iM6 == 1668047728 || iM6 == 1937072752) {
                    i2 = 3;
                } else {
                    i2 = iM6 == 1835365473 ? 5 : -1;
                }
                ArrayList arrayList6 = null;
                Track track = null;
                int i32 = 0;
                if (i2 != -1) {
                    Mp4Box.LeafBox leafBoxC5 = containerBox5.c(1953196132);
                    leafBoxC5.getClass();
                    ParsableByteArray parsableByteArray7 = leafBoxC5.f14280b;
                    parsableByteArray7.N(8);
                    int iD3 = d(parsableByteArray7.m());
                    parsableByteArray7.O(iD3 != 0 ? 16 : 8);
                    int iM7 = parsableByteArray7.m();
                    parsableByteArray7.O(4);
                    int i33 = parsableByteArray7.f14195b;
                    int i34 = iD3 == 0 ? 4 : 8;
                    int i35 = 0;
                    while (true) {
                        jZ = -9223372036854775807L;
                        if (i35 >= i34) {
                            parsableByteArray7.O(i34);
                        } else {
                            if (parsableByteArray7.f14194a[i33 + i35] != -1) {
                                long jC3 = iD3 == 0 ? parsableByteArray7.C() : parsableByteArray7.G();
                                if (jC3 != 0) {
                                    j3 = jC3;
                                    break;
                                }
                                break;
                            }
                            i35++;
                        }
                        j3 = -9223372036854775807L;
                        break;
                    }
                    parsableByteArray7.O(10);
                    int iH2 = parsableByteArray7.H();
                    parsableByteArray7.O(4);
                    int iM8 = parsableByteArray7.m();
                    int iM9 = parsableByteArray7.m();
                    parsableByteArray7.O(4);
                    int iM10 = parsableByteArray7.m();
                    int iM11 = parsableByteArray7.m();
                    if (iM8 == 0 && iM9 == 65536 && ((iM10 == -65536 || iM10 == 65536) && iM11 == 0)) {
                        i3 = 90;
                    } else if (iM8 != 0 || iM9 != -65536 || ((iM10 != 65536 && iM10 != -65536) || iM11 != 0)) {
                        if ((iM8 == -65536 || iM8 == 65536) && iM9 == 0 && iM10 == 0 && iM11 == -65536) {
                            i3 = Sink.ORIENTATION_180;
                        } else {
                            i4 = 0;
                        }
                        parsableByteArray7.O(16);
                        short sX = parsableByteArray7.x();
                        parsableByteArray7.O(2);
                        tkhdData = new TkhdData(iM7, j3, iH2, i4, sX, parsableByteArray7.x());
                        if (j2 == -9223372036854775807L) {
                            j4 = tkhdData.f16531b;
                        } else {
                            j4 = j2;
                        }
                        j5 = f(leafBoxC3.f14280b).f14285c;
                        if (j4 == -9223372036854775807L) {
                            j6 = j5;
                            j7 = -9223372036854775807L;
                        } else {
                            String str9 = Util.f14242a;
                            long jZ2 = Util.Z(j4, 1000000L, j5, RoundingMode.DOWN);
                            j6 = j5;
                            j7 = jZ2;
                        }
                        Mp4Box.ContainerBox containerBoxB3 = containerBoxB2.b(1835626086);
                        containerBoxB3.getClass();
                        Mp4Box.ContainerBox containerBoxB4 = containerBoxB3.b(1937007212);
                        containerBoxB4.getClass();
                        Mp4Box.LeafBox leafBoxC6 = containerBoxB2.c(1835296868);
                        leafBoxC6.getClass();
                        parsableByteArray = leafBoxC6.f14280b;
                        parsableByteArray.N(8);
                        iD = d(parsableByteArray.m());
                        if (iD == 0) {
                            i5 = 8;
                        } else {
                            i5 = 16;
                        }
                        parsableByteArray.O(i5);
                        jC = parsableByteArray.C();
                        i6 = parsableByteArray.f14195b;
                        if (iD == 0) {
                            i7 = 4;
                        } else {
                            i7 = 8;
                        }
                        i8 = 0;
                        while (true) {
                            if (i8 < i7) {
                                j8 = jC;
                                parsableByteArray.O(i7);
                                break;
                            }
                            if (parsableByteArray.f14194a[i6 + i8] != -1) {
                                if (iD == 0) {
                                    jG = parsableByteArray.C();
                                } else {
                                    jG = parsableByteArray.G();
                                }
                                if (jG == 0) {
                                    String str10 = Util.f14242a;
                                    j8 = jC;
                                    jZ = Util.Z(jG, 1000000L, j8, RoundingMode.DOWN);
                                    break;
                                }
                                j8 = jC;
                                break;
                            }
                            i8++;
                        }
                        int iH3 = parsableByteArray.H();
                        i9 = 3;
                        cArr = new char[]{(char) (((iH3 >> 10) & 31) + 96), (char) (((iH3 >> 5) & 31) + 96), (char) ((iH3 & 31) + 96)};
                        i10 = 0;
                        while (true) {
                            b2 = 97;
                            if (i10 < i9) {
                                str = new String(cArr);
                                break;
                            }
                            c3 = cArr[i10];
                            if (c3 >= 'a' || c3 > 'z') {
                                str = null;
                                break;
                            }
                            i10++;
                            i9 = 3;
                        }
                        mdhdData = new MdhdData(j8, jZ, str);
                        leafBoxC = containerBoxB4.c(1937011556);
                        if (leafBoxC == null) {
                            parsableByteArray2 = leafBoxC.f14280b;
                            parsableByteArray2.N(12);
                            iM = parsableByteArray2.m();
                            stsdData = new StsdData(iM);
                            i11 = 0;
                            while (true) {
                                trackEncryptionBoxArr = stsdData.f16520a;
                                if (i11 < iM) {
                                    mdhdData2 = mdhdData;
                                    i12 = i2;
                                    arrayList = arrayList4;
                                    arrayList2 = arrayList5;
                                    i13 = i30;
                                    containerBox2 = containerBox5;
                                    i14 = i31;
                                    if (z) {
                                        tkhdData2 = tkhdData;
                                        containerBox3 = containerBox2;
                                    } else {
                                        containerBox3 = containerBox2;
                                        containerBoxB = containerBox3.b(1701082227);
                                        if (containerBoxB != null) {
                                            leafBoxC2 = containerBoxB.c(1701606260);
                                            if (leafBoxC2 == null) {
                                                tkhdData2 = tkhdData;
                                                Create = arrayList6;
                                            } else {
                                                parsableByteArray3 = leafBoxC2.f14280b;
                                                parsableByteArray3.N(8);
                                                iD2 = d(parsableByteArray3.m());
                                                iE = parsableByteArray3.E();
                                                jArr = new long[iE];
                                                jArr2 = new long[iE];
                                                i16 = 0;
                                                while (i16 < iE) {
                                                    if (iD2 == i14) {
                                                        jC2 = parsableByteArray3.G();
                                                    } else {
                                                        jC2 = parsableByteArray3.C();
                                                    }
                                                    jArr[i16] = jC2;
                                                    if (iD2 == i14) {
                                                        jM = parsableByteArray3.u();
                                                    } else {
                                                        jM = parsableByteArray3.m();
                                                    }
                                                    jArr2[i16] = jM;
                                                    if (parsableByteArray3.x() == i14) {
                                                        md.n("Unsupported media rate.");
                                                        return arrayList6;
                                                    }
                                                    parsableByteArray3.O(2);
                                                    i16++;
                                                    tkhdData = tkhdData;
                                                }
                                                tkhdData2 = tkhdData;
                                                Create = Pair.create(jArr, jArr2);
                                            }
                                            if (Create != 0) {
                                                r33 = (long[]) ((Pair) Create).first;
                                                r34 = (long[]) ((Pair) Create).second;
                                            }
                                            format = stsdData.f16521b;
                                            if (format == null) {
                                                TkhdData tkhdData4 = tkhdData2;
                                                i15 = tkhdData4.f16532c;
                                                if (i15 != 0) {
                                                    mp4AlternateGroupData = new Mp4AlternateGroupData(i15);
                                                    Format.Builder builderA = stsdData.f16521b.a();
                                                    metadata = stsdData.f16521b.l;
                                                    if (metadata != null) {
                                                        Metadata.Entry[] entryArr = new Metadata.Entry[i14];
                                                        entryArr[0] = mp4AlternateGroupData;
                                                        metadata2 = metadata.a(entryArr);
                                                    } else {
                                                        Metadata.Entry[] entryArr2 = new Metadata.Entry[i14];
                                                        entryArr2[0] = mp4AlternateGroupData;
                                                        metadata2 = new Metadata(entryArr2);
                                                    }
                                                    builderA.f13772k = metadata2;
                                                    format = new Format(builderA);
                                                }
                                                track = new Track(tkhdData4.f16530a, i12, mdhdData2.f16514a, j6, j7, mdhdData2.f16515b, format, stsdData.d, trackEncryptionBoxArr, stsdData.f16522c, r33, r34);
                                                obj = track;
                                                break;
                                            }
                                            function = function;
                                            obj = arrayList6;
                                            break;
                                        }
                                        tkhdData2 = tkhdData;
                                    }
                                    ArrayList arrayList7 = arrayList6;
                                    r34 = arrayList7;
                                    r33 = arrayList7;
                                    format = stsdData.f16521b;
                                    if (format == null) {
                                        TkhdData tkhdData5 = tkhdData2;
                                        i15 = tkhdData5.f16532c;
                                        if (i15 != 0) {
                                            mp4AlternateGroupData = new Mp4AlternateGroupData(i15);
                                            Format.Builder builderA2 = stsdData.f16521b.a();
                                            metadata = stsdData.f16521b.l;
                                            if (metadata != null) {
                                                Metadata.Entry[] entryArr3 = new Metadata.Entry[i14];
                                                entryArr3[0] = mp4AlternateGroupData;
                                                metadata2 = metadata.a(entryArr3);
                                            } else {
                                                Metadata.Entry[] entryArr4 = new Metadata.Entry[i14];
                                                entryArr4[0] = mp4AlternateGroupData;
                                                metadata2 = new Metadata(entryArr4);
                                            }
                                            builderA2.f13772k = metadata2;
                                            format = new Format(builderA2);
                                        }
                                        track = new Track(tkhdData5.f16530a, i12, mdhdData2.f16514a, j6, j7, mdhdData2.f16515b, format, stsdData.d, trackEncryptionBoxArr, stsdData.f16522c, r33, r34);
                                        obj = track;
                                        break;
                                    }
                                    function = function;
                                    obj = arrayList6;
                                    break;
                                }
                                byte b3 = b2;
                                i17 = parsableByteArray2.f14195b;
                                int i36 = i2;
                                iM2 = parsableByteArray2.m();
                                if (iM2 > 0) {
                                    r5 = i31;
                                } else {
                                    r5 = i32;
                                }
                                String str11 = "childAtomSize must be positive";
                                ExtractorUtil.a("childAtomSize must be positive", r5);
                                iM3 = parsableByteArray2.m();
                                int i37 = iM;
                                str2 = mdhdData.f16516c;
                                if (iM3 != 1635148593 || iM3 == 1635148595 || iM3 == 1701733238 || iM3 == 1831958048 || iM3 == 1836070006 || iM3 == 1752589105 || iM3 == 1751479857 || iM3 == 1987470129 || iM3 == 1987471665 || iM3 == 1932670515 || iM3 == 1211250227 || iM3 == 1748121139 || iM3 == 1987063864 || iM3 == 1987063865 || iM3 == 1635135537 || iM3 == 1685479798 || iM3 == 1685479729 || iM3 == 1685481573 || iM3 == 1685481521 || iM3 == 1634760241 || iM3 == 1684108849) {
                                    parsableByteArray2 = parsableByteArray2;
                                    mdhdData3 = mdhdData;
                                    i18 = 1;
                                    arrayList6 = null;
                                    c2 = 31;
                                    k(parsableByteArray2, iM3, i17, iM2, tkhdData.f16530a, str2, tkhdData.d, drmInitData, stsdData, i11);
                                } else {
                                    int i38 = tkhdData.f16530a;
                                    mdhdData3 = mdhdData;
                                    if (iM3 == 1836069985 || iM3 == 1701733217 || iM3 == 1633889587 || iM3 == 1700998451 || iM3 == 1633889588 || iM3 == 1835823201 || iM3 == 1685353315 || iM3 == 1685353317 || iM3 == 1685353320 || iM3 == 1685353324 || iM3 == 1685353336 || iM3 == 1935764850 || iM3 == 1935767394 || iM3 == 1819304813 || iM3 == 1936684916 || iM3 == 1953984371 || iM3 == 778924082 || iM3 == 778924083 || iM3 == 1835557169 || iM3 == 1835560241 || iM3 == 1634492771 || iM3 == 1634492791 || iM3 == 1970037111 || iM3 == 1332770163 || iM3 == 1716281667 || iM3 == 1767992678 || iM3 == 1768973165 || iM3 == 1718641517) {
                                        i11 = i11;
                                        arrayList4 = arrayList4;
                                        i30 = i30;
                                        parsableByteArray2.N(i17 + 16);
                                        if (z2) {
                                            iH = parsableByteArray2.H();
                                            parsableByteArray2.O(6);
                                        } else {
                                            parsableByteArray2.O(8);
                                            iH = 0;
                                        }
                                        if (iH == 0 || iH == 1) {
                                            int iH4 = parsableByteArray2.H();
                                            parsableByteArray2.O(6);
                                            int iB = parsableByteArray2.B();
                                            parsableByteArray2.N(parsableByteArray2.f14195b - 4);
                                            iM4 = parsableByteArray2.m();
                                            if (iH == 1) {
                                                parsableByteArray2.O(16);
                                            }
                                            i19 = iB;
                                            iE2 = iH4;
                                            i20 = -1;
                                        } else {
                                            if (iH == 2) {
                                                parsableByteArray2.O(16);
                                                int iRound = (int) Math.round(Double.longBitsToDouble(parsableByteArray2.u()));
                                                iE2 = parsableByteArray2.E();
                                                parsableByteArray2.O(4);
                                                int iE3 = parsableByteArray2.E();
                                                int iE4 = parsableByteArray2.E();
                                                boolean z6 = (iE4 & 1) != 0;
                                                boolean z7 = (iE4 & 2) != 0;
                                                if (z6) {
                                                    if (z7 || iE3 != 32) {
                                                        i28 = -1;
                                                    } else {
                                                        i28 = 4;
                                                    }
                                                    i29 = 8;
                                                } else {
                                                    i29 = 8;
                                                    if (iE3 == 8) {
                                                        i28 = 3;
                                                    } else {
                                                        if (iE3 == 16) {
                                                            i28 = z7 ? 268435456 : 2;
                                                        } else if (iE3 == 24) {
                                                            i28 = z7 ? 1342177280 : 21;
                                                        } else if (iE3 == 32) {
                                                            i28 = z7 ? 1610612736 : 22;
                                                        } else {
                                                            i28 = -1;
                                                        }
                                                        i29 = 8;
                                                    }
                                                }
                                                parsableByteArray2.O(i29);
                                                i19 = iRound;
                                                i20 = i28;
                                                iM4 = 0;
                                            } else {
                                                parsableByteArray4 = parsableByteArray2;
                                                i17 = i17;
                                                iM2 = iM2;
                                                arrayList5 = arrayList5;
                                                tkhdData3 = tkhdData;
                                                containerBox5 = containerBox5;
                                            }
                                            tkhdData = tkhdData3;
                                            parsableByteArray2 = parsableByteArray4;
                                            mdhdData3 = mdhdData3;
                                            i18 = 1;
                                            arrayList6 = null;
                                        }
                                        if (iM3 == 1767992678) {
                                            iE2 = -1;
                                            i19 = -1;
                                        } else {
                                            if (iM3 != 1935764850) {
                                                i21 = iM3 == 1935767394 ? 16000 : 8000;
                                                tkhdData = tkhdData3;
                                                parsableByteArray2 = parsableByteArray4;
                                                mdhdData3 = mdhdData3;
                                                i18 = 1;
                                                arrayList6 = null;
                                            }
                                            i19 = i21;
                                            iE2 = 1;
                                        }
                                        int i39 = parsableByteArray2.f14195b;
                                        String str12 = str2;
                                        if (iM3 == 1701733217) {
                                            Pair pairG = g(parsableByteArray2, i17, iM2);
                                            if (pairG != null) {
                                                iM3 = ((Integer) pairG.first).intValue();
                                                Object objA = drmInitData == null ? arrayList6 : drmInitData.a(((TrackEncryptionBox) pairG.second).f16601b);
                                                trackEncryptionBoxArr[i11] = (TrackEncryptionBox) pairG.second;
                                                obj11 = objA;
                                            } else {
                                                i17 = i17;
                                                obj11 = drmInitData;
                                            }
                                            parsableByteArray2.N(i39);
                                            r3 = obj11;
                                        } else {
                                            i17 = i17;
                                            r3 = drmInitData;
                                        }
                                        String str13 = "audio/mhm1";
                                        int i40 = iE2;
                                        if (iM3 == 1633889587) {
                                            obj2 = "audio/ac3";
                                        } else if (iM3 == 1700998451) {
                                            obj2 = "audio/eac3";
                                        } else if (iM3 == 1633889588) {
                                            obj2 = "audio/ac4";
                                        } else if (iM3 == 1685353315) {
                                            obj2 = "audio/vnd.dts";
                                        } else if (iM3 == 1685353320 || iM3 == 1685353324) {
                                            obj2 = "audio/vnd.dts.hd";
                                        } else if (iM3 == 1685353317) {
                                            obj2 = "audio/vnd.dts.hd;profile=lbr";
                                        } else if (iM3 == 1685353336) {
                                            obj2 = "audio/vnd.dts.uhd;profile=p2";
                                        } else if (iM3 == 1935764850) {
                                            obj2 = "audio/3gpp";
                                        } else if (iM3 == 1935767394) {
                                            obj2 = "audio/amr-wb";
                                        } else if (iM3 == 1936684916) {
                                            obj2 = "audio/raw";
                                            i20 = 2;
                                        } else if (iM3 == 1953984371) {
                                            obj2 = "audio/raw";
                                            i20 = 268435456;
                                        } else if (iM3 == 1819304813) {
                                            if (i20 == -1) {
                                                obj2 = "audio/raw";
                                                i20 = 2;
                                            } else {
                                                obj2 = "audio/raw";
                                            }
                                        } else if (iM3 == 778924082 || iM3 == 778924083) {
                                            obj2 = "audio/mpeg";
                                        } else if (iM3 == 1835557169) {
                                            obj2 = "audio/mha1";
                                        } else if (iM3 == 1835560241) {
                                            obj2 = "audio/mhm1";
                                        } else if (iM3 == 1634492771) {
                                            obj2 = "audio/alac";
                                        } else if (iM3 == 1634492791) {
                                            obj2 = "audio/g711-alaw";
                                        } else if (iM3 == 1970037111) {
                                            obj2 = "audio/g711-mlaw";
                                        } else if (iM3 == 1332770163) {
                                            obj2 = "audio/opus";
                                        } else if (iM3 == 1716281667) {
                                            obj2 = "audio/flac";
                                        } else if (iM3 == 1835823201) {
                                            obj2 = "audio/true-hd";
                                        } else {
                                            obj2 = iM3 == 1767992678 ? "audio/iamf" : arrayList6;
                                        }
                                        int i41 = i19;
                                        arrayList5 = arrayList5;
                                        tkhdData3 = tkhdData;
                                        containerBox5 = containerBox5;
                                        ArrayList arrayList8 = arrayList6;
                                        ArrayList arrayList9 = arrayList8;
                                        ArrayList arrayList10 = arrayList9;
                                        Object btrtData = arrayList10;
                                        int i42 = i39;
                                        ?? r11 = obj2;
                                        int i43 = i40;
                                        Object obj14 = arrayList8;
                                        List listD = arrayList9;
                                        Object obj15 = arrayList10;
                                        while (i42 - i17 < iM2) {
                                            parsableByteArray2.N(i42);
                                            int iM12 = parsableByteArray2.m();
                                            int i44 = iM2;
                                            ExtractorUtil.a(str11, iM12 > 0);
                                            int iM13 = parsableByteArray2.m();
                                            int iC2 = i20;
                                            if (iM13 == 1835557187) {
                                                parsableByteArray2.N(i42 + 8);
                                                parsableByteArray2.O(1);
                                                int iA = parsableByteArray2.A();
                                                parsableByteArray2.O(1);
                                                String str14 = Objects.equals(r11, str13) ? String.format("mhm1.%02X", Integer.valueOf(iA)) : String.format("mha1.%02X", Integer.valueOf(iA));
                                                int iH5 = parsableByteArray2.H();
                                                byte[] bArr2 = new byte[iH5];
                                                str3 = str13;
                                                parsableByteArray2.k(0, iH5, bArr2);
                                                if (listD == null) {
                                                    listD = ImmutableList.A(bArr2);
                                                    obj10 = str14;
                                                } else {
                                                    listD = ImmutableList.D(bArr2, (byte[]) listD.get(0));
                                                    obj10 = str14;
                                                }
                                            } else {
                                                str3 = str13;
                                                if (iM13 == 1835557200) {
                                                    parsableByteArray2.N(i42 + 8);
                                                    int iA2 = parsableByteArray2.A();
                                                    if (iA2 > 0) {
                                                        byte[] bArr3 = new byte[iA2];
                                                        parsableByteArray2.k(0, iA2, bArr3);
                                                        if (listD == null) {
                                                            obj10 = obj14;
                                                            listD = listD;
                                                            obj10 = obj14;
                                                            listD = ImmutableList.A(bArr3);
                                                        } else {
                                                            obj10 = obj14;
                                                            listD = listD;
                                                            obj10 = obj14;
                                                            listD = ImmutableList.D((byte[]) listD.get(0), bArr3);
                                                        }
                                                    }
                                                } else {
                                                    int i45 = 1702061171;
                                                    if (iM13 == 1702061171) {
                                                        str4 = str11;
                                                        r54 = r11;
                                                        obj3 = obj14;
                                                        i22 = iM12;
                                                        List list4 = listD;
                                                        str5 = str12;
                                                        if (iM13 == i45) {
                                                            i23 = parsableByteArray2.f14195b;
                                                            if (i23 >= i42) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            ExtractorUtil.a(null, z4);
                                                            while (true) {
                                                                i24 = i22;
                                                                if (i23 - i42 < i24) {
                                                                    str6 = str4;
                                                                    i23 = -1;
                                                                    break;
                                                                }
                                                                parsableByteArray2.N(i23);
                                                                iM5 = parsableByteArray2.m();
                                                                if (iM5 > 0) {
                                                                    z5 = true;
                                                                } else {
                                                                    z5 = false;
                                                                }
                                                                str6 = str4;
                                                                ExtractorUtil.a(str6, z5);
                                                                if (parsableByteArray2.m() == 1702061171) {
                                                                    break;
                                                                }
                                                                i23 += iM5;
                                                                i22 = i24;
                                                                str4 = str6;
                                                            }
                                                        } else {
                                                            i23 = i42;
                                                            i24 = i22;
                                                            str6 = str4;
                                                        }
                                                        if (i23 != -1) {
                                                            esdsDataB = b(i23, parsableByteArray2);
                                                            str7 = esdsDataB.f16510a;
                                                            bArr = esdsDataB.f16511b;
                                                            if (bArr != null) {
                                                                if ("audio/vorbis".equals(str7)) {
                                                                    parsableByteArray5 = new ParsableByteArray(bArr);
                                                                    parsableByteArray5.O(1);
                                                                    i25 = 0;
                                                                    while (true) {
                                                                        if (parsableByteArray5.a() > 0) {
                                                                            esdsData = esdsDataB;
                                                                            parsableByteArray2 = parsableByteArray2;
                                                                            break;
                                                                        }
                                                                        esdsData = esdsDataB;
                                                                        parsableByteArray2 = parsableByteArray2;
                                                                        if (parsableByteArray5.j() == 255) {
                                                                            break;
                                                                        }
                                                                        i25 += 255;
                                                                        parsableByteArray5.O(1);
                                                                        esdsDataB = esdsData;
                                                                        parsableByteArray2 = parsableByteArray2;
                                                                    }
                                                                    int iA3 = parsableByteArray5.A() + i25;
                                                                    i26 = 0;
                                                                    while (true) {
                                                                        if (parsableByteArray5.a() > 0) {
                                                                            iM3 = iM3;
                                                                            break;
                                                                        }
                                                                        iM3 = iM3;
                                                                        if (parsableByteArray5.j() == 255) {
                                                                            break;
                                                                        }
                                                                        i26 += 255;
                                                                        parsableByteArray5.O(1);
                                                                        iM3 = iM3;
                                                                    }
                                                                    int iA4 = parsableByteArray5.A() + i26;
                                                                    byte[] bArr4 = new byte[iA3];
                                                                    int i46 = parsableByteArray5.f14195b;
                                                                    System.arraycopy(bArr, i46, bArr4, 0, iA3);
                                                                    int i47 = i46 + iA3 + iA4;
                                                                    int length = bArr.length - i47;
                                                                    byte[] bArr5 = new byte[length];
                                                                    System.arraycopy(bArr, i47, bArr5, 0, length);
                                                                    immutableListA = ImmutableList.D(bArr4, bArr5);
                                                                    obj8 = obj3;
                                                                } else {
                                                                    esdsData = esdsDataB;
                                                                    parsableByteArray2 = parsableByteArray2;
                                                                    iM3 = iM3;
                                                                    if ("audio/mp4a-latm".equals(str7)) {
                                                                        AacUtil.Config configB = AacUtil.b(new ParsableBitArray(bArr), false);
                                                                        i41 = configB.f16066a;
                                                                        i43 = configB.f16067b;
                                                                        obj7 = configB.f16068c;
                                                                    } else {
                                                                        obj7 = obj3;
                                                                    }
                                                                    obj8 = obj7;
                                                                    immutableListA = ImmutableList.A(bArr);
                                                                }
                                                                i43 = i43;
                                                                obj6 = esdsData;
                                                                r11 = str7;
                                                                listD = immutableListA;
                                                                obj5 = obj8;
                                                            } else {
                                                                obj4 = esdsDataB;
                                                                r10 = str7;
                                                            }
                                                            i43 = i43;
                                                            obj15 = obj6;
                                                        } else {
                                                            obj4 = obj15;
                                                            r10 = r54;
                                                        }
                                                        listD = list4;
                                                        r11 = r10;
                                                        obj6 = obj4;
                                                        obj5 = obj3;
                                                        i43 = i43;
                                                        obj15 = obj6;
                                                    } else if (z2 && iM13 == 2002876005) {
                                                        i45 = 1702061171;
                                                        str4 = str11;
                                                        r54 = r11;
                                                        obj3 = obj14;
                                                        i22 = iM12;
                                                        List list5 = listD;
                                                        str5 = str12;
                                                        if (iM13 == i45) {
                                                            i23 = parsableByteArray2.f14195b;
                                                            if (i23 >= i42) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            ExtractorUtil.a(null, z4);
                                                            while (true) {
                                                                i24 = i22;
                                                                if (i23 - i42 < i24) {
                                                                    str6 = str4;
                                                                    i23 = -1;
                                                                    break;
                                                                }
                                                                parsableByteArray2.N(i23);
                                                                iM5 = parsableByteArray2.m();
                                                                if (iM5 > 0) {
                                                                    z5 = true;
                                                                } else {
                                                                    z5 = false;
                                                                }
                                                                str6 = str4;
                                                                ExtractorUtil.a(str6, z5);
                                                                if (parsableByteArray2.m() == 1702061171) {
                                                                    break;
                                                                    break;
                                                                }
                                                                i23 += iM5;
                                                                i22 = i24;
                                                                str4 = str6;
                                                            }
                                                        } else {
                                                            i23 = i42;
                                                            i24 = i22;
                                                            str6 = str4;
                                                        }
                                                        if (i23 != -1) {
                                                            esdsDataB = b(i23, parsableByteArray2);
                                                            str7 = esdsDataB.f16510a;
                                                            bArr = esdsDataB.f16511b;
                                                            if (bArr != null) {
                                                                if ("audio/vorbis".equals(str7)) {
                                                                    parsableByteArray5 = new ParsableByteArray(bArr);
                                                                    parsableByteArray5.O(1);
                                                                    i25 = 0;
                                                                    while (true) {
                                                                        if (parsableByteArray5.a() > 0) {
                                                                            esdsData = esdsDataB;
                                                                            parsableByteArray2 = parsableByteArray2;
                                                                            break;
                                                                        }
                                                                        esdsData = esdsDataB;
                                                                        parsableByteArray2 = parsableByteArray2;
                                                                        if (parsableByteArray5.j() == 255) {
                                                                            break;
                                                                            break;
                                                                        }
                                                                        i25 += 255;
                                                                        parsableByteArray5.O(1);
                                                                        esdsDataB = esdsData;
                                                                        parsableByteArray2 = parsableByteArray2;
                                                                    }
                                                                    int iA5 = parsableByteArray5.A() + i25;
                                                                    i26 = 0;
                                                                    while (true) {
                                                                        if (parsableByteArray5.a() > 0) {
                                                                            iM3 = iM3;
                                                                            break;
                                                                        }
                                                                        iM3 = iM3;
                                                                        if (parsableByteArray5.j() == 255) {
                                                                            break;
                                                                            break;
                                                                        }
                                                                        i26 += 255;
                                                                        parsableByteArray5.O(1);
                                                                        iM3 = iM3;
                                                                    }
                                                                    int iA6 = parsableByteArray5.A() + i26;
                                                                    byte[] bArr6 = new byte[iA5];
                                                                    int i48 = parsableByteArray5.f14195b;
                                                                    System.arraycopy(bArr, i48, bArr6, 0, iA5);
                                                                    int i49 = i48 + iA5 + iA6;
                                                                    int length2 = bArr.length - i49;
                                                                    byte[] bArr7 = new byte[length2];
                                                                    System.arraycopy(bArr, i49, bArr7, 0, length2);
                                                                    immutableListA = ImmutableList.D(bArr6, bArr7);
                                                                    obj8 = obj3;
                                                                } else {
                                                                    esdsData = esdsDataB;
                                                                    parsableByteArray2 = parsableByteArray2;
                                                                    iM3 = iM3;
                                                                    if ("audio/mp4a-latm".equals(str7)) {
                                                                        AacUtil.Config configB2 = AacUtil.b(new ParsableBitArray(bArr), false);
                                                                        i41 = configB2.f16066a;
                                                                        i43 = configB2.f16067b;
                                                                        obj7 = configB2.f16068c;
                                                                    } else {
                                                                        obj7 = obj3;
                                                                    }
                                                                    obj8 = obj7;
                                                                    immutableListA = ImmutableList.A(bArr);
                                                                }
                                                                i43 = i43;
                                                                obj6 = esdsData;
                                                                r11 = str7;
                                                                listD = immutableListA;
                                                                obj5 = obj8;
                                                            } else {
                                                                obj4 = esdsDataB;
                                                                r10 = str7;
                                                            }
                                                            i43 = i43;
                                                            obj15 = obj6;
                                                        } else {
                                                            obj4 = obj15;
                                                            r10 = r54;
                                                        }
                                                        listD = list5;
                                                        r11 = r10;
                                                        obj6 = obj4;
                                                        obj5 = obj3;
                                                        i43 = i43;
                                                        obj15 = obj6;
                                                    } else if (iM13 == 1651798644) {
                                                        parsableByteArray2.N(i42 + 8);
                                                        parsableByteArray2.O(4);
                                                        obj5 = obj14;
                                                        btrtData = new BtrtData(parsableByteArray2.C(), parsableByteArray2.C());
                                                        iM3 = iM3;
                                                        str6 = str11;
                                                        i24 = iM12;
                                                        str5 = str12;
                                                        parsableByteArray2 = parsableByteArray2;
                                                    } else {
                                                        String str15 = str11;
                                                        Object obj16 = obj14;
                                                        i24 = iM12;
                                                        int[] iArr = Ac3Util.d;
                                                        int[] iArr2 = Ac3Util.f16070b;
                                                        if (iM13 == 1684103987) {
                                                            parsableByteArray2.N(i42 + 8);
                                                            String string = Integer.toString(i38);
                                                            ParsableBitArray parsableBitArray = new ParsableBitArray();
                                                            parsableBitArray.l(parsableByteArray2);
                                                            int i50 = iArr2[parsableBitArray.g(2)];
                                                            parsableBitArray.o(8);
                                                            int i51 = iArr[parsableBitArray.g(3)];
                                                            if (parsableBitArray.g(1) != 0) {
                                                                i51++;
                                                            }
                                                            int i52 = Ac3Util.f16072e[parsableBitArray.g(5)] * 1000;
                                                            parsableBitArray.c();
                                                            parsableByteArray2.N(parsableBitArray.d());
                                                            Format.Builder builder = new Format.Builder();
                                                            builder.f13764a = string;
                                                            builder.n = MimeTypes.p("audio/ac3");
                                                            builder.F = i51;
                                                            builder.G = i50;
                                                            builder.r = r3;
                                                            str5 = str12;
                                                            builder.d = str5;
                                                            builder.f13769h = i52;
                                                            builder.f13770i = i52;
                                                            stsdData.f16521b = new Format(builder);
                                                            str6 = str15;
                                                            r55 = r11;
                                                            list = listD;
                                                        } else {
                                                            str5 = str12;
                                                            if (iM13 == 1684366131) {
                                                                parsableByteArray2.N(i42 + 8);
                                                                String string2 = Integer.toString(i38);
                                                                ParsableBitArray parsableBitArray2 = new ParsableBitArray();
                                                                parsableBitArray2.l(parsableByteArray2);
                                                                int iG = parsableBitArray2.g(13) * 1000;
                                                                str6 = str15;
                                                                parsableBitArray2.o(3);
                                                                int i53 = iArr2[parsableBitArray2.g(2)];
                                                                parsableBitArray2.o(10);
                                                                int i54 = iArr[parsableBitArray2.g(3)];
                                                                if (parsableBitArray2.g(1) != 0) {
                                                                    i54++;
                                                                }
                                                                int i55 = i54;
                                                                parsableBitArray2.o(3);
                                                                int iG2 = parsableBitArray2.g(4);
                                                                parsableBitArray2.o(1);
                                                                r55 = r11;
                                                                if (iG2 > 0) {
                                                                    parsableBitArray2.o(6);
                                                                    if (parsableBitArray2.g(1) != 0) {
                                                                        i55 += 2;
                                                                    }
                                                                    parsableBitArray2.o(1);
                                                                }
                                                                int i56 = i55;
                                                                list = listD;
                                                                if (parsableBitArray2.b() > 7) {
                                                                    parsableBitArray2.o(7);
                                                                    if (parsableBitArray2.g(1) != 0) {
                                                                        str8 = "audio/eac3-joc";
                                                                    } else {
                                                                        str8 = "audio/eac3";
                                                                    }
                                                                } else {
                                                                    str8 = "audio/eac3";
                                                                }
                                                                parsableBitArray2.c();
                                                                parsableByteArray2.N(parsableBitArray2.d());
                                                                Format.Builder builder2 = new Format.Builder();
                                                                builder2.f13764a = string2;
                                                                builder2.n = MimeTypes.p(str8);
                                                                builder2.F = i56;
                                                                builder2.G = i53;
                                                                builder2.r = r3;
                                                                builder2.d = str5;
                                                                builder2.f13770i = iG;
                                                                stsdData.f16521b = new Format(builder2);
                                                            } else {
                                                                str6 = str15;
                                                                ?? r58 = r11;
                                                                List list6 = listD;
                                                                if (iM13 == 1684103988) {
                                                                    parsableByteArray2.N(i42 + 8);
                                                                    stsdData.f16521b = Ac4Util.b(parsableByteArray2, Integer.toString(i38), str5, r3);
                                                                    r55 = r58;
                                                                    list = list6;
                                                                } else {
                                                                    if (iM13 != 1684892784) {
                                                                        if (iM13 == 1684305011 || iM13 == 1969517683) {
                                                                            Format.Builder builder3 = new Format.Builder();
                                                                            builder3.f13764a = Integer.toString(i38);
                                                                            builder3.n = MimeTypes.p(r58);
                                                                            builder3.F = i43;
                                                                            builder3.G = i41;
                                                                            builder3.r = r3;
                                                                            builder3.d = str5;
                                                                            stsdData.f16521b = new Format(builder3);
                                                                            r57 = r58;
                                                                            list3 = list6;
                                                                        } else if (iM13 == 1682927731) {
                                                                            int i57 = i24 - 8;
                                                                            byte[] bArr8 = f16500a;
                                                                            byte[] bArrCopyOf = Arrays.copyOf(bArr8, bArr8.length + i57);
                                                                            parsableByteArray2.N(i42 + 8);
                                                                            parsableByteArray2.k(bArr8.length, i57, bArrCopyOf);
                                                                            listA = OpusUtil.a(bArrCopyOf);
                                                                        } else {
                                                                            if (iM13 == 1684425825) {
                                                                                byte[] bArr9 = new byte[i24 - 8];
                                                                                bArr9[0] = 102;
                                                                                bArr9[1] = 76;
                                                                                bArr9[2] = b3;
                                                                                bArr9[3] = 67;
                                                                                parsableByteArray2.N(i42 + 12);
                                                                                parsableByteArray2.k(4, i24 - 12, bArr9);
                                                                                immutableListA2 = ImmutableList.A(bArr9);
                                                                                obj9 = obj16;
                                                                            } else if (iM13 == 1634492771) {
                                                                                int i58 = i24 - 12;
                                                                                byte[] bArr10 = new byte[i58];
                                                                                parsableByteArray2.N(i42 + 12);
                                                                                parsableByteArray2.k(0, i58, bArr10);
                                                                                byte[] bArr11 = CodecSpecificDataUtil.f14144a;
                                                                                ParsableByteArray parsableByteArray8 = new ParsableByteArray(bArr10);
                                                                                parsableByteArray8.N(5);
                                                                                int iA7 = parsableByteArray8.A();
                                                                                parsableByteArray8.N(9);
                                                                                int iA8 = parsableByteArray8.A();
                                                                                parsableByteArray8.N(20);
                                                                                int[] iArr3 = {parsableByteArray8.E(), iA8, iA7};
                                                                                int i59 = iArr3[0];
                                                                                int i60 = iArr3[1];
                                                                                int i61 = iArr3[2];
                                                                                String str16 = Util.f14242a;
                                                                                i41 = i59;
                                                                                i43 = i60;
                                                                                iC2 = Util.C(i61, ByteOrder.LITTLE_ENDIAN);
                                                                                immutableListA2 = ImmutableList.A(bArr10);
                                                                                obj9 = obj16;
                                                                            } else if (iM13 == 1767990114) {
                                                                                parsableByteArray2.N(i42 + 9);
                                                                                int iF = parsableByteArray2.F();
                                                                                byte[] bArr12 = new byte[iF];
                                                                                parsableByteArray2.k(0, iF, bArr12);
                                                                                byte[] bArr13 = CodecSpecificDataUtil.f14144a;
                                                                                ParsableByteArray parsableByteArray9 = new ParsableByteArray(bArr12);
                                                                                String str17 = null;
                                                                                String strY = null;
                                                                                while (parsableByteArray9.a() > 0 && (str17 == null || strY == null)) {
                                                                                    int iA9 = parsableByteArray9.A();
                                                                                    int i62 = iA9 >> 3;
                                                                                    boolean z8 = (iA9 & 2) != 0;
                                                                                    boolean z9 = (iA9 & 1) != 0;
                                                                                    int iF2 = parsableByteArray9.F();
                                                                                    if (i62 > 4 && i62 < 24 && z8) {
                                                                                        while ((parsableByteArray9.A() & 128) != 0) {
                                                                                        }
                                                                                        while ((parsableByteArray9.A() & 128) != 0) {
                                                                                        }
                                                                                    }
                                                                                    if (z9) {
                                                                                        parsableByteArray9.O(parsableByteArray9.F());
                                                                                    }
                                                                                    int i63 = parsableByteArray9.f14195b + iF2;
                                                                                    if (i62 == 31) {
                                                                                        parsableByteArray9.O(4);
                                                                                        Object[] objArr = {Integer.valueOf(parsableByteArray9.A()), Integer.valueOf(parsableByteArray9.A())};
                                                                                        String str18 = Util.f14242a;
                                                                                        str17 = String.format(Locale.US, "iamf.%03X.%03X", objArr);
                                                                                    } else {
                                                                                        if (i62 == 0) {
                                                                                            while ((parsableByteArray9.A() & 128) != 0) {
                                                                                            }
                                                                                            strY = parsableByteArray9.y(4, StandardCharsets.UTF_8);
                                                                                            if (strY.equals("mp4a")) {
                                                                                                while ((parsableByteArray9.A() & 128) != 0) {
                                                                                                }
                                                                                                parsableByteArray9.O(2);
                                                                                                ParsableBitArray parsableBitArray3 = new ParsableBitArray();
                                                                                                parsableBitArray3.l(parsableByteArray9);
                                                                                                int iG3 = parsableBitArray3.g(5);
                                                                                                if (iG3 == 31) {
                                                                                                    iG3 = parsableBitArray3.g(6) + 32;
                                                                                                }
                                                                                                strY = cj.e(iG3, strY, ".40.");
                                                                                            }
                                                                                        }
                                                                                        parsableByteArray9.N(i63);
                                                                                        bArr12 = bArr12;
                                                                                    }
                                                                                    parsableByteArray9.N(i63);
                                                                                    bArr12 = bArr12;
                                                                                }
                                                                                byte[] bArr14 = bArr12;
                                                                                String strH = (str17 == null || strY == null) ? null : tr.h(str17, FileUtils.HIDDEN_PREFIX, strY);
                                                                                immutableListA2 = ImmutableList.A(bArr14);
                                                                                obj9 = strH;
                                                                            } else if (iM13 == 1885564227) {
                                                                                parsableByteArray2.N(i42 + 12);
                                                                                ByteOrder byteOrder = (parsableByteArray2.A() & 1) != 0 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
                                                                                int iA10 = parsableByteArray2.A();
                                                                                if (iM3 == 1768973165) {
                                                                                    iC = Util.C(iA10, byteOrder);
                                                                                    i27 = -1;
                                                                                } else {
                                                                                    iC = (iM3 == 1718641517 && iA10 == 32 && byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) ? 4 : iC2;
                                                                                    i27 = -1;
                                                                                }
                                                                                iC2 = iC;
                                                                                i24 = i24;
                                                                                r56 = r58;
                                                                                list2 = list6;
                                                                                if (iC != i27) {
                                                                                    str6 = str6;
                                                                                    listD = list6;
                                                                                    r11 = "audio/raw";
                                                                                    obj5 = obj16;
                                                                                } else {
                                                                                    r11 = r56;
                                                                                    str6 = str6;
                                                                                    listD = list2;
                                                                                    obj5 = obj16;
                                                                                }
                                                                            } else {
                                                                                r57 = r58;
                                                                                list3 = list6;
                                                                            }
                                                                            i24 = i24;
                                                                            r11 = r58;
                                                                            str6 = str6;
                                                                            listD = immutableListA2;
                                                                            obj5 = obj9;
                                                                        }
                                                                        i24 = i24;
                                                                        r56 = r57;
                                                                        list2 = list3;
                                                                        r11 = r56;
                                                                        str6 = str6;
                                                                        listD = list2;
                                                                        obj5 = obj16;
                                                                    } else {
                                                                        if (iM4 <= 0) {
                                                                            throw ParserException.a(arrayList6, "Invalid sample rate for Dolby TrueHD MLP stream: " + iM4);
                                                                        }
                                                                        i41 = iM4;
                                                                        listA = list6;
                                                                        i43 = 2;
                                                                    }
                                                                    r11 = r58;
                                                                    listD = listA;
                                                                    obj5 = obj16;
                                                                }
                                                                parsableByteArray2 = parsableByteArray2;
                                                                iM3 = iM3;
                                                            }
                                                        }
                                                        r57 = r55;
                                                        list3 = list;
                                                        i24 = i24;
                                                        r56 = r57;
                                                        list2 = list3;
                                                        r11 = r56;
                                                        str6 = str6;
                                                        listD = list2;
                                                        obj5 = obj16;
                                                        parsableByteArray2 = parsableByteArray2;
                                                        iM3 = iM3;
                                                    }
                                                }
                                                i42 += i24;
                                                str12 = str5;
                                                str11 = str6;
                                                iM2 = i44;
                                                i20 = iC2;
                                                str13 = str3;
                                                parsableByteArray2 = parsableByteArray2;
                                                obj14 = obj5;
                                                iM3 = iM3;
                                                arrayList6 = null;
                                                r11 = r11;
                                                listD = listD;
                                                obj15 = obj15;
                                                btrtData = btrtData;
                                            }
                                            obj10 = obj14;
                                            listD = listD;
                                            parsableByteArray2 = parsableByteArray2;
                                            iM3 = iM3;
                                            obj5 = obj10;
                                            i24 = iM12;
                                            str6 = str11;
                                            str5 = str12;
                                            i42 += i24;
                                            str12 = str5;
                                            str11 = str6;
                                            iM2 = i44;
                                            i20 = iC2;
                                            str13 = str3;
                                            parsableByteArray2 = parsableByteArray2;
                                            obj14 = obj5;
                                            iM3 = iM3;
                                            arrayList6 = null;
                                            r11 = r11;
                                            listD = listD;
                                            obj15 = obj15;
                                            btrtData = btrtData;
                                        }
                                        parsableByteArray4 = parsableByteArray2;
                                        iM2 = iM2;
                                        int i64 = i20;
                                        ?? r59 = r11;
                                        ?? r52 = obj14;
                                        List list7 = listD;
                                        String str19 = str12;
                                        if (stsdData.f16521b == null && r59 != 0) {
                                            Format.Builder builder4 = new Format.Builder();
                                            builder4.f13764a = Integer.toString(i38);
                                            builder4.n = MimeTypes.p(r59);
                                            builder4.f13771j = r52;
                                            builder4.F = i43;
                                            builder4.G = i41;
                                            builder4.H = i64;
                                            builder4.q = list7;
                                            builder4.r = r3;
                                            builder4.d = str19;
                                            if (obj15 != null) {
                                                ?? r1 = obj15;
                                                builder4.f13769h = Ints.f(r1.f16512c);
                                                builder4.f13770i = Ints.f(r1.d);
                                            } else {
                                                ?? r2 = btrtData;
                                                if (r2 != 0) {
                                                    builder4.f13769h = Ints.f(r2.f16501a);
                                                    builder4.f13770i = Ints.f(r2.f16502b);
                                                }
                                            }
                                            stsdData.f16521b = new Format(builder4);
                                        }
                                        tkhdData = tkhdData3;
                                        parsableByteArray2 = parsableByteArray4;
                                        mdhdData3 = mdhdData3;
                                        i18 = 1;
                                        arrayList6 = null;
                                    } else if (iM3 == 1414810956 || iM3 == 1954034535 || iM3 == 2004251764 || iM3 == 1937010800 || iM3 == 1664495672 || iM3 == 1836070003) {
                                        parsableByteArray2.N(i17 + 16);
                                        String str20 = "application/ttml+xml";
                                        String str21 = str20;
                                        if (iM3 != 1414810956) {
                                            if (iM3 == 1954034535) {
                                                int i65 = iM2 - 16;
                                                byte[] bArr15 = new byte[i65];
                                                parsableByteArray2.k(i32, i65, bArr15);
                                                listA3 = ImmutableList.A(bArr15);
                                                obj13 = "application/x-quicktime-tx3g";
                                                i11 = i11;
                                                arrayList4 = arrayList4;
                                                i30 = i30;
                                            } else {
                                                if (iM3 == 2004251764) {
                                                    str21 = "application/x-mp4-vtt";
                                                } else if (iM3 == 1937010800) {
                                                    i11 = i11;
                                                    arrayList4 = arrayList4;
                                                    i30 = i30;
                                                    listA3 = arrayList6;
                                                    j9 = 0;
                                                    if (r0 != 0) {
                                                        r0 = str20;
                                                        Format.Builder builder5 = new Format.Builder();
                                                        builder5.f13764a = Integer.toString(i38);
                                                        builder5.n = MimeTypes.p(r0);
                                                        builder5.d = str2;
                                                        builder5.s = j9;
                                                        builder5.q = listA3;
                                                        stsdData.f16521b = new Format(builder5);
                                                    }
                                                } else if (iM3 == 1664495672) {
                                                    stsdData.d = i31;
                                                    str21 = "application/x-mp4-cea-608";
                                                } else {
                                                    if (iM3 != 1836070003) {
                                                        r81.b();
                                                        return arrayList6;
                                                    }
                                                    int i66 = parsableByteArray2.f14195b;
                                                    parsableByteArray2.O(4);
                                                    if (parsableByteArray2.m() == 1702061171) {
                                                        byte[] bArr16 = b(i66, parsableByteArray2).f16511b;
                                                        if (bArr16 == null || bArr16.length != 64) {
                                                            i11 = i11;
                                                            arrayList4 = arrayList4;
                                                            i30 = i30;
                                                        } else {
                                                            Preconditions.q(bArr16.length == 64);
                                                            ArrayList arrayList11 = new ArrayList(16);
                                                            int i67 = 0;
                                                            while (i67 < bArr16.length - 3) {
                                                                byte[] bArr17 = bArr16;
                                                                int i68 = i67;
                                                                int i69 = i11;
                                                                int iD4 = Ints.d(bArr16[i67], bArr17[i67 + 1], bArr17[i67 + 2], bArr17[i68 + 3]);
                                                                int i70 = (iD4 >> 16) & 255;
                                                                int i71 = ((iD4 >> 8) & 255) - 128;
                                                                int i72 = (iD4 & 255) - 128;
                                                                arrayList11.add(String.format("%06x", Integer.valueOf(Util.j(pq0.c(i72, 17790, 10000, i70), 0, 255) | (Util.j(pq0.c(i71, 14075, 10000, i70), 0, 255) << 16) | (Util.j((i70 - ((i72 * 3455) / 10000)) - ((i71 * 7169) / 10000), 0, 255) << 8))));
                                                                i67 = i68 + 4;
                                                                bArr16 = bArr17;
                                                                i11 = i69;
                                                                arrayList4 = arrayList4;
                                                                i30 = i30;
                                                            }
                                                            i11 = i11;
                                                            arrayList4 = arrayList4;
                                                            i30 = i30;
                                                            StringBuilder sbP = fc.p(tkhdData.f16533e, tkhdData.f16534f, "size: ", "x", "\npalette: ");
                                                            sbP.append(new Joiner(", ").b(arrayList11));
                                                            sbP.append("\n");
                                                            String string3 = sbP.toString();
                                                            String str22 = Util.f14242a;
                                                            listA2 = ImmutableList.A(string3.getBytes(StandardCharsets.UTF_8));
                                                            obj12 = "application/vobsub";
                                                        }
                                                    } else {
                                                        i11 = i11;
                                                        arrayList4 = arrayList4;
                                                        i30 = i30;
                                                        listA2 = arrayList6;
                                                        obj12 = listA2;
                                                    }
                                                    Object obj17 = obj12;
                                                    listA3 = listA2;
                                                    obj13 = obj17;
                                                }
                                                i11 = i11;
                                                arrayList4 = arrayList4;
                                                i30 = i30;
                                                listA3 = arrayList6;
                                                obj13 = str21;
                                            }
                                            j9 = Long.MAX_VALUE;
                                            r0 = obj13;
                                            if (r0 != 0) {
                                                r0 = str20;
                                                Format.Builder builder6 = new Format.Builder();
                                                builder6.f13764a = Integer.toString(i38);
                                                builder6.n = MimeTypes.p(r0);
                                                builder6.d = str2;
                                                builder6.s = j9;
                                                builder6.q = listA3;
                                                stsdData.f16521b = new Format(builder6);
                                            }
                                        } else {
                                            i11 = i11;
                                            arrayList4 = arrayList4;
                                            i30 = i30;
                                            listA3 = arrayList6;
                                            obj13 = str21;
                                            j9 = Long.MAX_VALUE;
                                            r0 = obj13;
                                            if (r0 != 0) {
                                                r0 = str20;
                                                Format.Builder builder7 = new Format.Builder();
                                                builder7.f13764a = Integer.toString(i38);
                                                builder7.n = MimeTypes.p(r0);
                                                builder7.d = str2;
                                                builder7.s = j9;
                                                builder7.q = listA3;
                                                stsdData.f16521b = new Format(builder7);
                                            }
                                        }
                                        r0 = str20;
                                        i18 = 1;
                                    } else {
                                        if (iM3 == 1835365492) {
                                            parsableByteArray2.N(i17 + 16);
                                            if (iM3 == 1835365492) {
                                                parsableByteArray2.v();
                                                String strV = parsableByteArray2.v();
                                                if (strV != null) {
                                                    Format.Builder builder8 = new Format.Builder();
                                                    builder8.f13764a = Integer.toString(i38);
                                                    builder8.n = MimeTypes.p(strV);
                                                    stsdData.f16521b = new Format(builder8);
                                                }
                                            }
                                        } else if (iM3 == 1667329389) {
                                            Format.Builder builder9 = new Format.Builder();
                                            builder9.f13764a = Integer.toString(i38);
                                            builder9.n = MimeTypes.p("application/x-camera-motion");
                                            stsdData.f16521b = new Format(builder9);
                                        }
                                        i11 = i11;
                                        arrayList4 = arrayList4;
                                        i30 = i30;
                                        i18 = i31;
                                    }
                                    c2 = 31;
                                }
                                parsableByteArray2.N(i17 + iM2);
                                i11++;
                                drmInitData = drmInitData;
                                parsableByteArray2 = parsableByteArray2;
                                i31 = i18;
                                b2 = b3;
                                i2 = i36;
                                iM = i37;
                                arrayList5 = arrayList5;
                                containerBox5 = containerBox5;
                                arrayList4 = arrayList4;
                                i30 = i30;
                                i32 = 0;
                                mdhdData = mdhdData3;
                            }
                        } else {
                            Log.g("Ignoring track where sample table (stbl) box is missing a sample description (stsd).");
                            arrayList = arrayList4;
                            arrayList2 = arrayList5;
                            i13 = i30;
                            containerBox3 = containerBox5;
                            obj = track;
                            break;
                        }
                    } else {
                        i3 = Sink.ORIENTATION_270;
                    }
                    i4 = i3;
                    parsableByteArray7.O(16);
                    short sX2 = parsableByteArray7.x();
                    parsableByteArray7.O(2);
                    tkhdData = new TkhdData(iM7, j3, iH2, i4, sX2, parsableByteArray7.x());
                    if (j2 == -9223372036854775807L) {
                        j4 = tkhdData.f16531b;
                    } else {
                        j4 = j2;
                    }
                    j5 = f(leafBoxC3.f14280b).f14285c;
                    if (j4 == -9223372036854775807L) {
                        j6 = j5;
                        j7 = -9223372036854775807L;
                    } else {
                        String str23 = Util.f14242a;
                        long jZ3 = Util.Z(j4, 1000000L, j5, RoundingMode.DOWN);
                        j6 = j5;
                        j7 = jZ3;
                    }
                    Mp4Box.ContainerBox containerBoxB5 = containerBoxB2.b(1835626086);
                    containerBoxB5.getClass();
                    Mp4Box.ContainerBox containerBoxB6 = containerBoxB5.b(1937007212);
                    containerBoxB6.getClass();
                    Mp4Box.LeafBox leafBoxC7 = containerBoxB2.c(1835296868);
                    leafBoxC7.getClass();
                    parsableByteArray = leafBoxC7.f14280b;
                    parsableByteArray.N(8);
                    iD = d(parsableByteArray.m());
                    if (iD == 0) {
                        i5 = 8;
                    } else {
                        i5 = 16;
                    }
                    parsableByteArray.O(i5);
                    jC = parsableByteArray.C();
                    i6 = parsableByteArray.f14195b;
                    if (iD == 0) {
                        i7 = 4;
                    } else {
                        i7 = 8;
                    }
                    i8 = 0;
                    while (true) {
                        if (i8 < i7) {
                            j8 = jC;
                            parsableByteArray.O(i7);
                            break;
                        }
                        if (parsableByteArray.f14194a[i6 + i8] != -1) {
                            if (iD == 0) {
                                jG = parsableByteArray.C();
                            } else {
                                jG = parsableByteArray.G();
                            }
                            if (jG == 0) {
                                String str110 = Util.f14242a;
                                j8 = jC;
                                jZ = Util.Z(jG, 1000000L, j8, RoundingMode.DOWN);
                                break;
                            }
                            j8 = jC;
                            break;
                        }
                        i8++;
                    }
                    int iH6 = parsableByteArray.H();
                    i9 = 3;
                    cArr = new char[]{(char) (((iH6 >> 10) & 31) + 96), (char) (((iH6 >> 5) & 31) + 96), (char) ((iH6 & 31) + 96)};
                    i10 = 0;
                    while (true) {
                        b2 = 97;
                        if (i10 < i9) {
                            str = new String(cArr);
                            break;
                        }
                        c3 = cArr[i10];
                        if (c3 >= 'a') {
                        }
                        str = null;
                        break;
                        i10++;
                        i9 = 3;
                    }
                    mdhdData = new MdhdData(j8, jZ, str);
                    leafBoxC = containerBoxB6.c(1937011556);
                    if (leafBoxC == null) {
                        parsableByteArray2 = leafBoxC.f14280b;
                        parsableByteArray2.N(12);
                        iM = parsableByteArray2.m();
                        stsdData = new StsdData(iM);
                        i11 = 0;
                        while (true) {
                            trackEncryptionBoxArr = stsdData.f16520a;
                            if (i11 < iM) {
                                mdhdData2 = mdhdData;
                                i12 = i2;
                                arrayList = arrayList4;
                                arrayList2 = arrayList5;
                                i13 = i30;
                                containerBox2 = containerBox5;
                                i14 = i31;
                                if (z) {
                                    containerBox3 = containerBox2;
                                    containerBoxB = containerBox3.b(1701082227);
                                    if (containerBoxB != null) {
                                        leafBoxC2 = containerBoxB.c(1701606260);
                                        if (leafBoxC2 == null) {
                                            tkhdData2 = tkhdData;
                                            Create = arrayList6;
                                        } else {
                                            parsableByteArray3 = leafBoxC2.f14280b;
                                            parsableByteArray3.N(8);
                                            iD2 = d(parsableByteArray3.m());
                                            iE = parsableByteArray3.E();
                                            jArr = new long[iE];
                                            jArr2 = new long[iE];
                                            i16 = 0;
                                            while (i16 < iE) {
                                                if (iD2 == i14) {
                                                    jC2 = parsableByteArray3.G();
                                                } else {
                                                    jC2 = parsableByteArray3.C();
                                                }
                                                jArr[i16] = jC2;
                                                if (iD2 == i14) {
                                                    jM = parsableByteArray3.u();
                                                } else {
                                                    jM = parsableByteArray3.m();
                                                }
                                                jArr2[i16] = jM;
                                                if (parsableByteArray3.x() == i14) {
                                                    md.n("Unsupported media rate.");
                                                    return arrayList6;
                                                }
                                                parsableByteArray3.O(2);
                                                i16++;
                                                tkhdData = tkhdData;
                                            }
                                            tkhdData2 = tkhdData;
                                            Create = Pair.create(jArr, jArr2);
                                        }
                                        if (Create != 0) {
                                            r33 = (long[]) ((Pair) Create).first;
                                            r34 = (long[]) ((Pair) Create).second;
                                        }
                                        format = stsdData.f16521b;
                                        if (format == null) {
                                            TkhdData tkhdData6 = tkhdData2;
                                            i15 = tkhdData6.f16532c;
                                            if (i15 != 0) {
                                                mp4AlternateGroupData = new Mp4AlternateGroupData(i15);
                                                Format.Builder builderA3 = stsdData.f16521b.a();
                                                metadata = stsdData.f16521b.l;
                                                if (metadata != null) {
                                                    Metadata.Entry[] entryArr5 = new Metadata.Entry[i14];
                                                    entryArr5[0] = mp4AlternateGroupData;
                                                    metadata2 = metadata.a(entryArr5);
                                                } else {
                                                    Metadata.Entry[] entryArr6 = new Metadata.Entry[i14];
                                                    entryArr6[0] = mp4AlternateGroupData;
                                                    metadata2 = new Metadata(entryArr6);
                                                }
                                                builderA3.f13772k = metadata2;
                                                format = new Format(builderA3);
                                            }
                                            track = new Track(tkhdData6.f16530a, i12, mdhdData2.f16514a, j6, j7, mdhdData2.f16515b, format, stsdData.d, trackEncryptionBoxArr, stsdData.f16522c, r33, r34);
                                            obj = track;
                                            break;
                                        }
                                        function = function;
                                        obj = arrayList6;
                                        break;
                                    }
                                    tkhdData2 = tkhdData;
                                } else {
                                    tkhdData2 = tkhdData;
                                    containerBox3 = containerBox2;
                                }
                                ArrayList arrayList12 = arrayList6;
                                r34 = arrayList12;
                                r33 = arrayList12;
                                format = stsdData.f16521b;
                                if (format == null) {
                                    TkhdData tkhdData7 = tkhdData2;
                                    i15 = tkhdData7.f16532c;
                                    if (i15 != 0) {
                                        mp4AlternateGroupData = new Mp4AlternateGroupData(i15);
                                        Format.Builder builderA4 = stsdData.f16521b.a();
                                        metadata = stsdData.f16521b.l;
                                        if (metadata != null) {
                                            Metadata.Entry[] entryArr7 = new Metadata.Entry[i14];
                                            entryArr7[0] = mp4AlternateGroupData;
                                            metadata2 = metadata.a(entryArr7);
                                        } else {
                                            Metadata.Entry[] entryArr8 = new Metadata.Entry[i14];
                                            entryArr8[0] = mp4AlternateGroupData;
                                            metadata2 = new Metadata(entryArr8);
                                        }
                                        builderA4.f13772k = metadata2;
                                        format = new Format(builderA4);
                                    }
                                    track = new Track(tkhdData7.f16530a, i12, mdhdData2.f16514a, j6, j7, mdhdData2.f16515b, format, stsdData.d, trackEncryptionBoxArr, stsdData.f16522c, r33, r34);
                                    obj = track;
                                    break;
                                }
                                function = function;
                                obj = arrayList6;
                                break;
                            }
                            byte b4 = b2;
                            i17 = parsableByteArray2.f14195b;
                            int i310 = i2;
                            iM2 = parsableByteArray2.m();
                            if (iM2 > 0) {
                                r5 = i31;
                            } else {
                                r5 = i32;
                            }
                            String str111 = "childAtomSize must be positive";
                            ExtractorUtil.a("childAtomSize must be positive", r5);
                            iM3 = parsableByteArray2.m();
                            int i311 = iM;
                            str2 = mdhdData.f16516c;
                            if (iM3 != 1635148593) {
                                parsableByteArray2 = parsableByteArray2;
                                mdhdData3 = mdhdData;
                                i18 = 1;
                                arrayList6 = null;
                                c2 = 31;
                                k(parsableByteArray2, iM3, i17, iM2, tkhdData.f16530a, str2, tkhdData.d, drmInitData, stsdData, i11);
                            } else {
                                parsableByteArray2 = parsableByteArray2;
                                mdhdData3 = mdhdData;
                                i18 = 1;
                                arrayList6 = null;
                                c2 = 31;
                                k(parsableByteArray2, iM3, i17, iM2, tkhdData.f16530a, str2, tkhdData.d, drmInitData, stsdData, i11);
                            }
                            parsableByteArray2.N(i17 + iM2);
                            i11++;
                            drmInitData = drmInitData;
                            parsableByteArray2 = parsableByteArray2;
                            i31 = i18;
                            b2 = b4;
                            i2 = i310;
                            iM = i311;
                            arrayList5 = arrayList5;
                            containerBox5 = containerBox5;
                            arrayList4 = arrayList4;
                            i30 = i30;
                            i32 = 0;
                            mdhdData = mdhdData3;
                        }
                    } else {
                        Log.g("Ignoring track where sample table (stbl) box is missing a sample description (stsd).");
                        arrayList = arrayList4;
                        arrayList2 = arrayList5;
                        i13 = i30;
                        containerBox3 = containerBox5;
                        obj = track;
                        break;
                    }
                } else {
                    arrayList = arrayList4;
                    arrayList2 = arrayList5;
                    i13 = i30;
                    containerBox3 = containerBox5;
                    obj = track;
                    break;
                }
                Track track2 = (Track) function.apply(obj);
                if (track2 == null) {
                    arrayList3 = arrayList2;
                } else {
                    Mp4Box.ContainerBox containerBoxB7 = containerBox3.b(1835297121);
                    containerBoxB7.getClass();
                    Mp4Box.ContainerBox containerBoxB8 = containerBoxB7.b(1835626086);
                    containerBoxB8.getClass();
                    Mp4Box.ContainerBox containerBoxB9 = containerBoxB8.b(1937007212);
                    containerBoxB9.getClass();
                    TrackSampleTable trackSampleTableH = h(track2, containerBoxB9, gaplessInfoHolder, z3);
                    arrayList3 = arrayList2;
                    arrayList3.add(trackSampleTableH);
                }
            }
            i30 = i13 + 1;
            containerBox4 = containerBox;
            arrayList5 = arrayList3;
            arrayList4 = arrayList;
        }
        return arrayList5;
    }

    /* JADX WARN: Code duplicated, block: B:200:0x034b  */
    /* JADX WARN: Code duplicated, block: B:203:0x0350 A[EDGE_INSN: B:203:0x0350->B:206:0x036e BREAK  A[LOOP:4: B:164:0x02dc->B:204:0x0360]] */
    public static Metadata j(Mp4Box.LeafBox leafBox) {
        int i2;
        Metadata metadata;
        Metadata metadataB;
        Metadata metadata2;
        int iB;
        Metadata metadata3;
        Object objE;
        ParsableByteArray parsableByteArray = leafBox.f14280b;
        int i3 = 8;
        parsableByteArray.N(8);
        Metadata metadata4 = new Metadata(new Metadata.Entry[0]);
        while (parsableByteArray.a() >= i3) {
            int i4 = parsableByteArray.f14195b;
            int iM = parsableByteArray.m();
            int iM2 = parsableByteArray.m();
            int i5 = 4;
            String str = null;
            if (iM2 == 1835365473) {
                parsableByteArray.N(i4);
                int i6 = i4 + iM;
                parsableByteArray.O(i3);
                a(parsableByteArray);
                while (true) {
                    int i7 = parsableByteArray.f14195b;
                    if (i7 < i6) {
                        int iM3 = parsableByteArray.m();
                        if (parsableByteArray.m() == 1768715124) {
                            parsableByteArray.N(i7);
                            int i8 = i7 + iM3;
                            parsableByteArray.O(i3);
                            ArrayList arrayList = new ArrayList();
                            while (true) {
                                int i9 = parsableByteArray.f14195b;
                                if (i9 >= i8) {
                                    break;
                                }
                                int iM4 = parsableByteArray.m() + i9;
                                int iM5 = parsableByteArray.m();
                                int i10 = (iM5 >> 24) & 255;
                                if (i10 == 169 || i10 == 253) {
                                    int i11 = 16777215 & iM5;
                                    if (i11 == 6516084) {
                                        int iM6 = parsableByteArray.m();
                                        if (parsableByteArray.m() == 1684108385) {
                                            parsableByteArray.O(8);
                                            String strW = parsableByteArray.w(iM6 - 16);
                                            objE = new CommentFrame("und", strW, strW);
                                        } else {
                                            Log.g("Failed to parse comment attribute: ".concat(Mp4Box.a(iM5)));
                                            objE = null;
                                        }
                                    } else if (i11 == 7233901 || i11 == 7631467) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TIT2");
                                    } else if (i11 == 6516589 || i11 == 7828084) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TCOM");
                                    } else if (i11 == 6578553) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TDRC");
                                    } else if (i11 == 4280916) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TPE1");
                                    } else if (i11 == 7630703) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TSSE");
                                    } else if (i11 == 6384738) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TALB");
                                    } else if (i11 == 7108978) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "USLT");
                                    } else if (i11 == 6776174) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TCON");
                                    } else if (i11 == 6779504) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TIT1");
                                    } else if (i11 == 7173742) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "MVNM");
                                    } else if (i11 == 7173737) {
                                        objE = MetadataUtil.d(iM5, "MVIN", parsableByteArray, true, false);
                                    } else {
                                        Log.b("Skipped unknown metadata entry: ".concat(Mp4Box.a(iM5)));
                                        parsableByteArray.N(iM4);
                                        objE = null;
                                    }
                                    parsableByteArray.N(iM4);
                                } else {
                                    if (iM5 == 1735291493) {
                                        try {
                                            String strA = Id3Util.a(MetadataUtil.c(parsableByteArray) - 1);
                                            if (strA != null) {
                                                objE = new TextInformationFrame("TCON", str, ImmutableList.A(strA));
                                            } else {
                                                Log.g("Failed to parse standard genre code");
                                                objE = str;
                                            }
                                        } catch (Throwable th) {
                                            parsableByteArray.N(iM4);
                                            throw th;
                                        }
                                    } else if (iM5 == 1684632427) {
                                        objE = MetadataUtil.b(iM5, parsableByteArray, "TPOS");
                                    } else if (iM5 == 1953655662) {
                                        objE = MetadataUtil.b(iM5, parsableByteArray, "TRCK");
                                    } else if (iM5 == 1953329263) {
                                        objE = MetadataUtil.d(iM5, "TBPM", parsableByteArray, true, false);
                                    } else if (iM5 == 1668311404) {
                                        objE = MetadataUtil.d(iM5, "TCMP", parsableByteArray, true, true);
                                    } else if (iM5 == 1668249202) {
                                        objE = MetadataUtil.a(parsableByteArray);
                                    } else if (iM5 == 1631670868) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TPE2");
                                    } else if (iM5 == 1936682605) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TSOT");
                                    } else if (iM5 == 1936679276) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TSOA");
                                    } else if (iM5 == 1936679282) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TSOP");
                                    } else if (iM5 == 1936679265) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TSO2");
                                    } else if (iM5 == 1936679791) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TSOC");
                                    } else if (iM5 == 1920233063) {
                                        objE = MetadataUtil.d(iM5, "ITUNESADVISORY", parsableByteArray, false, false);
                                    } else if (iM5 == 1885823344) {
                                        objE = MetadataUtil.d(iM5, "ITUNESGAPLESS", parsableByteArray, false, true);
                                    } else if (iM5 == 1936683886) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TVSHOWSORT");
                                    } else if (iM5 == 1953919848) {
                                        objE = MetadataUtil.e(iM5, parsableByteArray, "TVSHOW");
                                    } else if (iM5 == 757935405) {
                                        String strW2 = str;
                                        String strW3 = strW2;
                                        int i12 = -1;
                                        int i13 = -1;
                                        while (true) {
                                            int i14 = parsableByteArray.f14195b;
                                            if (i14 >= iM4) {
                                                break;
                                            }
                                            int iM7 = parsableByteArray.m();
                                            int iM8 = parsableByteArray.m();
                                            parsableByteArray.O(i5);
                                            if (iM8 == 1835360622) {
                                                strW2 = parsableByteArray.w(iM7 - 12);
                                            } else if (iM8 == 1851878757) {
                                                strW3 = parsableByteArray.w(iM7 - 12);
                                            } else {
                                                if (iM8 == 1684108385) {
                                                    i12 = i14;
                                                    i13 = iM7;
                                                }
                                                parsableByteArray.O(iM7 - 12);
                                            }
                                            i5 = 4;
                                        }
                                        if (strW2 == null || strW3 == null || i12 == -1) {
                                            objE = null;
                                        } else {
                                            parsableByteArray.N(i12);
                                            parsableByteArray.O(16);
                                            objE = new InternalFrame(strW2, strW3, parsableByteArray.w(i13 - 16));
                                        }
                                        parsableByteArray.N(iM4);
                                    } else {
                                        Log.b("Skipped unknown metadata entry: ".concat(Mp4Box.a(iM5)));
                                        parsableByteArray.N(iM4);
                                        objE = null;
                                    }
                                    parsableByteArray.N(iM4);
                                }
                                if (objE != null) {
                                    arrayList.add(objE);
                                }
                                i5 = 4;
                                str = null;
                            }
                            if (!arrayList.isEmpty()) {
                                metadata3 = new Metadata(arrayList);
                                break;
                            }
                            break;
                        }
                        parsableByteArray.N(i7 + iM3);
                        i3 = 8;
                        i5 = 4;
                        str = null;
                    }
                    metadata3 = null;
                    break;
                }
                metadata4 = metadata4.b(metadata3);
                i2 = 8;
            } else {
                if (iM2 == 1936553057) {
                    parsableByteArray.N(i4);
                    int i15 = i4 + iM;
                    parsableByteArray.O(12);
                    while (true) {
                        int i16 = parsableByteArray.f14195b;
                        if (i16 < i15) {
                            int iM9 = parsableByteArray.m();
                            if (parsableByteArray.m() == 1935766900) {
                                if (iM9 >= 16) {
                                    parsableByteArray.O(4);
                                    int i17 = 0;
                                    int i18 = -1;
                                    for (int i19 = 0; i19 < 2; i19++) {
                                        int iA = parsableByteArray.A();
                                        int iA2 = parsableByteArray.A();
                                        if (iA == 0) {
                                            i18 = iA2;
                                        } else if (iA == 1) {
                                            i17 = iA2;
                                        }
                                    }
                                    if (i18 != 12) {
                                        if (i18 != 13) {
                                            if (i18 != 21) {
                                                iB = -2147483647;
                                            } else {
                                                i2 = 8;
                                                if (parsableByteArray.a() < 8 || parsableByteArray.f14195b + 8 > i15) {
                                                    iB = -2147483647;
                                                } else {
                                                    int iM10 = parsableByteArray.m();
                                                    int iM11 = parsableByteArray.m();
                                                    if (iM10 < 12 || iM11 != 1936877170) {
                                                        iB = -2147483647;
                                                    } else {
                                                        iB = parsableByteArray.B();
                                                    }
                                                }
                                            }
                                            if (iB == -2147483647) {
                                                metadata2 = new Metadata(new SmtaMetadataEntry(iB, i17));
                                                break;
                                            }
                                            break;
                                        }
                                        iB = 120;
                                    } else {
                                        iB = 240;
                                    }
                                    i2 = 8;
                                    if (iB == -2147483647) {
                                        metadata2 = new Metadata(new SmtaMetadataEntry(iB, i17));
                                        break;
                                    }
                                    break;
                                }
                                metadata2 = null;
                                i2 = 8;
                                break;
                            }
                            parsableByteArray.N(i16 + iM9);
                        } else {
                            i2 = 8;
                        }
                        metadata2 = null;
                        break;
                    }
                    metadataB = metadata4.b(metadata2);
                } else {
                    i2 = 8;
                    if (iM2 == -1451722374) {
                        short sX = parsableByteArray.x();
                        parsableByteArray.O(2);
                        String strY = parsableByteArray.y(sX, StandardCharsets.UTF_8);
                        int iMax = Math.max(strY.lastIndexOf(43), strY.lastIndexOf(45));
                        try {
                            metadata = new Metadata(new Mp4LocationData(Float.parseFloat(strY.substring(0, iMax)), Float.parseFloat(strY.substring(iMax, strY.length() - 1))));
                        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
                            metadata = null;
                        }
                        metadataB = metadata4.b(metadata);
                    }
                }
                metadata4 = metadataB;
            }
            parsableByteArray.N(i4 + iM);
            i3 = i2;
        }
        return metadata4;
    }

    /* JADX WARN: Code duplicated, block: B:272:0x061d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:273:0x061f  */
    /* JADX WARN: Code duplicated, block: B:274:0x0621  */
    /* JADX WARN: Code duplicated, block: B:278:0x0628  */
    /* JADX WARN: Code duplicated, block: B:413:0x0926  */
    public static void k(ParsableByteArray parsableByteArray, int i2, int i3, int i4, int i5, String str, int i6, DrmInitData drmInitData, StsdData stsdData, int i7) throws ParserException {
        String str2;
        String str3;
        float f2;
        DrmInitData drmInitData2;
        byte[] bArrArray;
        int i8;
        int i9;
        int iG;
        float fE;
        NalUnitUtil.H265VpsData h265VpsData;
        String str4;
        int i10;
        int i11;
        int i12;
        int i13;
        int iG2;
        int i14;
        ColorInfo colorInfoA;
        int i15;
        EyesData eyesData;
        EyesData eyesData2;
        int i16;
        int iA;
        int iA2;
        int i17;
        int i18 = i3;
        int i19 = i4;
        DrmInitData drmInitDataA = drmInitData;
        parsableByteArray.N(i18 + 16);
        parsableByteArray.O(16);
        int iH = parsableByteArray.H();
        int iH2 = parsableByteArray.H();
        parsableByteArray.O(50);
        int i20 = parsableByteArray.f14195b;
        int iIntValue = i2;
        if (iIntValue == 1701733238) {
            Pair pairG = g(parsableByteArray, i18, i19);
            if (pairG != null) {
                iIntValue = ((Integer) pairG.first).intValue();
                drmInitDataA = drmInitDataA == null ? null : drmInitDataA.a(((TrackEncryptionBox) pairG.second).f16601b);
                stsdData.f16520a[i7] = (TrackEncryptionBox) pairG.second;
            }
            parsableByteArray.N(i20);
        }
        String str5 = "video/3gpp";
        String str6 = iIntValue == 1831958048 ? "video/mpeg" : iIntValue == 1211250227 ? "video/3gpp" : null;
        float f3 = 1.0f;
        int i21 = 8;
        List listA = null;
        ByteBuffer byteBuffer = null;
        DolbyVisionConfig dolbyVisionConfigA = null;
        String string = null;
        byte[] bArrCopyOfRange = null;
        int i22 = -1;
        int i23 = -1;
        int i24 = -1;
        int i25 = -1;
        int i26 = -1;
        int iF = -1;
        int i27 = -1;
        int i28 = -1;
        int i29 = 8;
        int i30 = 8;
        BtrtData btrtData = null;
        EsdsData esdsData = null;
        NalUnitUtil.H265VpsData h265VpsData2 = null;
        boolean z = false;
        while (i20 - i18 < i19) {
            parsableByteArray.N(i20);
            int i31 = parsableByteArray.f14195b;
            int iM = parsableByteArray.m();
            if (iM == 0 && parsableByteArray.f14195b - i18 == i19) {
                break;
            }
            String str7 = "childAtomSize must be positive";
            ExtractorUtil.a("childAtomSize must be positive", iM > 0);
            int iM2 = parsableByteArray.m();
            if (iM2 == 1635148611) {
                ExtractorUtil.a(null, str6 == null);
                parsableByteArray.N(i31 + 8);
                AvcConfig avcConfigA = AvcConfig.a(parsableByteArray);
                listA = avcConfigA.f16083a;
                stsdData.f16522c = avcConfigA.f16084b;
                if (!z) {
                    f3 = avcConfigA.f16091k;
                }
                String str8 = avcConfigA.l;
                int i32 = avcConfigA.f16090j;
                int i33 = avcConfigA.g;
                int i34 = avcConfigA.f16088h;
                string = str8;
                int i35 = avcConfigA.f16089i;
                int i36 = avcConfigA.f16086e;
                i30 = avcConfigA.f16087f;
                i29 = i36;
                i8 = i20;
                i9 = i34;
                fE = f3;
                iG = i35;
                str4 = "video/avc";
                i23 = i32;
                iF = i33;
            } else {
                i8 = i20;
                if (iM2 == 1752589123) {
                    ExtractorUtil.a(null, str6 == null);
                    parsableByteArray.N(i31 + 8);
                    HevcConfig hevcConfigA = HevcConfig.a(parsableByteArray, false, null);
                    List list = hevcConfigA.f16167a;
                    stsdData.f16522c = hevcConfigA.f16168b;
                    if (!z) {
                        f3 = hevcConfigA.l;
                    }
                    int i37 = hevcConfigA.m;
                    int i38 = hevcConfigA.f16169c;
                    String str9 = hevcConfigA.n;
                    int i39 = hevcConfigA.f16175k;
                    if (i39 != -1) {
                        i22 = i39;
                    }
                    int i40 = hevcConfigA.d;
                    int i41 = hevcConfigA.f16170e;
                    int i42 = hevcConfigA.f16172h;
                    int i43 = hevcConfigA.f16173i;
                    int i44 = hevcConfigA.f16174j;
                    int i45 = hevcConfigA.f16171f;
                    i30 = hevcConfigA.g;
                    h265VpsData2 = hevcConfigA.o;
                    str4 = "video/hevc";
                    fE = f3;
                    listA = list;
                    i9 = i43;
                    iG = i44;
                    i29 = i45;
                    string = str9;
                    i26 = i41;
                    i25 = i40;
                    iF = i42;
                    i23 = i37;
                    i24 = i38;
                } else {
                    str5 = str5;
                    if (iM2 == 1818785347) {
                        ExtractorUtil.a("lhvC must follow hvcC atom", "video/hevc".equals(str6));
                        NalUnitUtil.H265VpsData h265VpsData3 = h265VpsData2;
                        ExtractorUtil.a("must have at least two layers", h265VpsData3 != null && h265VpsData3.f14322a.size() >= 2);
                        parsableByteArray.N(i31 + 8);
                        h265VpsData3.getClass();
                        HevcConfig hevcConfigA2 = HevcConfig.a(parsableByteArray, true, h265VpsData3);
                        ExtractorUtil.a("nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms", stsdData.f16522c == hevcConfigA2.f16168b);
                        int i46 = hevcConfigA2.f16172h;
                        int i47 = iF;
                        if (i46 != -1) {
                            ExtractorUtil.a("colorSpace must be the same for both views", i47 == i46);
                        }
                        int i48 = hevcConfigA2.f16173i;
                        int i49 = i27;
                        if (i48 != -1) {
                            ExtractorUtil.a("colorRange must be the same for both views", i49 == i48);
                        }
                        int i50 = hevcConfigA2.f16174j;
                        if (i50 != -1) {
                            i17 = i28;
                            ExtractorUtil.a("colorTransfer must be the same for both views", i17 == i50);
                        } else {
                            i17 = i28;
                        }
                        int i51 = i29;
                        int i52 = i17;
                        ExtractorUtil.a("bitdepthLuma must be the same for both views", i51 == hevcConfigA2.f16171f);
                        int i53 = i30;
                        ExtractorUtil.a("bitdepthChroma must be the same for both views", i53 == hevcConfigA2.g);
                        if (listA != null) {
                            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                            ImmutableList.Builder builder = new ImmutableList.Builder();
                            builder.g(listA);
                            builder.g(hevcConfigA2.f16167a);
                            listA = builder.j();
                        } else {
                            ExtractorUtil.a("initializationData must be already set from hvcC atom", false);
                        }
                        h265VpsData2 = h265VpsData3;
                        drmInitDataA = drmInitDataA;
                        iH = iH;
                        iH2 = iH2;
                        str4 = "video/mv-hevc";
                        iIntValue = iIntValue;
                        i9 = i49;
                        i29 = i51;
                        fE = f3;
                        iG = i52;
                        i30 = i53;
                        i21 = i21;
                        string = hevcConfigA2.n;
                        iF = i47;
                    } else {
                        iF = iF;
                        i9 = i27;
                        iG = i28;
                        int i54 = i29;
                        int i55 = i30;
                        h265VpsData2 = h265VpsData2;
                        int i56 = 7;
                        int i57 = 4;
                        if (iM2 == 1987470147) {
                            ExtractorUtil.a(null, str6 == null);
                            parsableByteArray.N(i31 + 8);
                            try {
                                if (parsableByteArray.m() != 0) {
                                    throw ParserException.a(null, "Unsupported VVC version");
                                }
                                int iA3 = parsableByteArray.A();
                                int i58 = ((iA3 >> 1) & 3) + 1;
                                String str10 = "L";
                                if ((iA3 & 1) != 0) {
                                    parsableByteArray.O(1);
                                    int iA4 = (parsableByteArray.A() >> 4) & 7;
                                    iA = (parsableByteArray.A() >> 5) & 7;
                                    int iA5 = parsableByteArray.A() & 63;
                                    int iA6 = parsableByteArray.A();
                                    int i59 = (iA6 >> 1) & CertificateBody.profileType;
                                    str10 = (iA6 & 1) != 0 ? "H" : "L";
                                    iA2 = parsableByteArray.A();
                                    parsableByteArray.O(iA5);
                                    if (iA4 > 1) {
                                        int iA7 = parsableByteArray.A();
                                        int i60 = 1;
                                        int i61 = 0;
                                        while (true) {
                                            int i62 = iA4;
                                            if (i61 >= i62 - 1) {
                                                break;
                                            }
                                            if (((iA7 >> (7 - i61)) & 1) != 0) {
                                                parsableByteArray.O(i60);
                                            }
                                            i61++;
                                            iA4 = i62;
                                            i60 = 1;
                                        }
                                    }
                                    parsableByteArray.O(parsableByteArray.A() * 4);
                                    parsableByteArray.O(6);
                                    i16 = i59;
                                } else {
                                    i16 = 0;
                                    iA = 0;
                                    iA2 = 0;
                                }
                                int iA8 = parsableByteArray.A();
                                int i63 = iA;
                                int i64 = parsableByteArray.f14195b;
                                drmInitDataA = drmInitDataA;
                                fE = f3;
                                int i65 = 0;
                                int i66 = 0;
                                while (i65 < iA8) {
                                    int i67 = i65;
                                    int iA9 = parsableByteArray.A() & 31;
                                    int i68 = iH2;
                                    int iH3 = (iA9 == 13 || iA9 == 12) ? 1 : parsableByteArray.H();
                                    int i69 = 0;
                                    while (i69 < iH3) {
                                        int i70 = iH3;
                                        int iH4 = parsableByteArray.H();
                                        i66 = iH4 + 4 + i66;
                                        parsableByteArray.O(iH4);
                                        i69++;
                                        iH3 = i70;
                                    }
                                    i65 = i67 + 1;
                                    iH2 = i68;
                                }
                                iH2 = iH2;
                                parsableByteArray.N(i64);
                                byte[] bArr = new byte[i66];
                                int i71 = 0;
                                int i72 = 0;
                                while (i71 < iA8) {
                                    int iA10 = parsableByteArray.A() & 31;
                                    int i73 = i71;
                                    int iH5 = (iA10 == 13 || iA10 == 12) ? 1 : parsableByteArray.H();
                                    int i74 = i72;
                                    int i75 = 0;
                                    while (i75 < iH5) {
                                        int i76 = iH5;
                                        int iH6 = parsableByteArray.H();
                                        System.arraycopy(NalUnitUtil.f14286a, 0, bArr, i74, i57);
                                        int i77 = i74 + 4;
                                        parsableByteArray.k(i77, iH6, bArr);
                                        i74 = i77 + iH6;
                                        i75++;
                                        iH5 = i76;
                                        iA8 = iA8;
                                        iH = iH;
                                        i57 = 4;
                                    }
                                    i71 = i73 + 1;
                                    i72 = i74;
                                    i57 = 4;
                                }
                                iH = iH;
                                Locale locale = Locale.US;
                                String str11 = "vvc1." + i16 + FileUtils.HIDDEN_PREFIX + str10 + iA2;
                                ImmutableList immutableListA = ImmutableList.A(bArr);
                                i29 = i63 + 8;
                                stsdData.f16522c = i58;
                                i21 = i21;
                                string = str11;
                                h265VpsData2 = h265VpsData2;
                                str4 = "video/vvc";
                                iF = iF;
                                iIntValue = iIntValue;
                                i30 = i29;
                                i23 = 16;
                                listA = immutableListA;
                            } catch (ArrayIndexOutOfBoundsException e2) {
                                throw ParserException.a(e2, "Error parsing VVC configuration");
                            }
                        } else {
                            drmInitDataA = drmInitDataA;
                            iH = iH;
                            iH2 = iH2;
                            fE = f3;
                            if (iM2 == 1986361461) {
                                parsableByteArray.N(i31 + 8);
                                int i78 = parsableByteArray.f14195b;
                                EyesData eyesData3 = null;
                                while (i78 - i31 < iM) {
                                    parsableByteArray.N(i78);
                                    int iM3 = parsableByteArray.m();
                                    ExtractorUtil.a(str7, iM3 > 0);
                                    if (parsableByteArray.m() == 1702454643) {
                                        parsableByteArray.N(i78 + 8);
                                        int i79 = parsableByteArray.f14195b;
                                        while (true) {
                                            if (i79 - i78 >= iM3) {
                                                eyesData2 = null;
                                                break;
                                            }
                                            parsableByteArray.N(i79);
                                            int iM4 = parsableByteArray.m();
                                            ExtractorUtil.a(str7, iM4 > 0);
                                            if (parsableByteArray.m() == 1937011305) {
                                                parsableByteArray.O(4);
                                                int iA11 = parsableByteArray.A();
                                                eyesData2 = new EyesData(new StriData((iA11 & 1) == 1, (iA11 & 2) == 2, (iA11 & 8) == i21));
                                                break;
                                            }
                                            i79 += iM4;
                                            i21 = 8;
                                        }
                                        eyesData3 = eyesData2;
                                    } else {
                                        str7 = str7;
                                        i78 = i78;
                                    }
                                    i78 += iM3;
                                    str7 = str7;
                                    i21 = 8;
                                }
                                VexuData vexuData = eyesData3 == null ? null : new VexuData(eyesData3);
                                if (vexuData == null || (eyesData = vexuData.f16535a) == null) {
                                    i15 = i22;
                                } else {
                                    StriData striData = eyesData.f16513a;
                                    if (h265VpsData2 == null || h265VpsData2.f14322a.size() < 2) {
                                        i15 = i22;
                                        i22 = i15 == -1 ? striData.f16519c ? 5 : 4 : i15;
                                    } else {
                                        ExtractorUtil.a("both eye views must be marked as available", striData.f16517a && striData.f16518b);
                                        ExtractorUtil.a("for MV-HEVC, eye_views_reversed must be set to false", !striData.f16519c);
                                        i15 = i22;
                                    }
                                }
                            } else {
                                int i80 = i22;
                                if (iM2 == 1685480259 || iM2 == 1685485123 || iM2 == 1685485379) {
                                    h265VpsData = h265VpsData2;
                                    str4 = str6;
                                    iIntValue = iIntValue;
                                    i10 = iG;
                                    i21 = 8;
                                    dolbyVisionConfigA = DolbyVisionConfig.a(parsableByteArray);
                                } else if (iM2 == 1987076931) {
                                    ExtractorUtil.a(null, str6 == null);
                                    String str12 = iIntValue == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                                    parsableByteArray.N(i31 + 12);
                                    byte bA = (byte) parsableByteArray.A();
                                    byte bA2 = (byte) parsableByteArray.A();
                                    int iA12 = parsableByteArray.A();
                                    int i81 = iA12 >> 4;
                                    byte b2 = (byte) ((iA12 >> 1) & 7);
                                    if (str12.equals("video/x-vnd.on2.vp9")) {
                                        byte[] bArr2 = CodecSpecificDataUtil.f14144a;
                                        listA = ImmutableList.A(new byte[]{1, 1, bA, 2, 1, bA2, 3, 1, (byte) i81, 4, 1, b2});
                                    }
                                    boolean z2 = (iA12 & 1) != 0;
                                    int iA13 = parsableByteArray.A();
                                    int iA14 = parsableByteArray.A();
                                    int iF2 = ColorInfo.f(iA13);
                                    h265VpsData2 = h265VpsData2;
                                    i22 = i80;
                                    iIntValue = iIntValue;
                                    i29 = i81;
                                    i30 = i29;
                                    i9 = z2 ? 1 : 2;
                                    iG = ColorInfo.g(iA14);
                                    i21 = 8;
                                    str4 = str12;
                                    iF = iF2;
                                } else if (iM2 == 1635135811) {
                                    int i82 = iM - 8;
                                    byte[] bArr3 = new byte[i82];
                                    parsableByteArray.k(0, i82, bArr3);
                                    listA = ImmutableList.A(bArr3);
                                    parsableByteArray.N(i31 + 8);
                                    ColorInfo.Builder builder2 = new ColorInfo.Builder();
                                    ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.f14194a);
                                    parsableBitArray.m(parsableByteArray.f14195b * 8);
                                    parsableBitArray.p(1);
                                    int iG3 = parsableBitArray.g(3);
                                    parsableBitArray.o(6);
                                    boolean zF = parsableBitArray.f();
                                    boolean zF2 = parsableBitArray.f();
                                    int i83 = 2;
                                    if (iG3 != 2) {
                                        if (iG3 <= i83) {
                                            if (zF) {
                                                i11 = 10;
                                            } else {
                                                i11 = 8;
                                            }
                                            builder2.f13733e = i11;
                                            builder2.f13734f = zF ? 10 : 8;
                                        }
                                    } else if (zF) {
                                        builder2.f13733e = zF2 ? 12 : 10;
                                        builder2.f13734f = zF2 ? 12 : 10;
                                    } else {
                                        i83 = 2;
                                        if (iG3 <= i83) {
                                            if (zF) {
                                                i11 = 10;
                                            } else {
                                                i11 = 8;
                                            }
                                            builder2.f13733e = i11;
                                            builder2.f13734f = zF ? 10 : 8;
                                        }
                                    }
                                    parsableBitArray.o(13);
                                    parsableBitArray.n();
                                    int iG4 = parsableBitArray.g(4);
                                    if (iG4 != 1) {
                                        Log.f("Unsupported obu_type: " + iG4);
                                        colorInfoA = builder2.a();
                                    } else if (parsableBitArray.f()) {
                                        Log.f("Unsupported obu_extension_flag");
                                        colorInfoA = builder2.a();
                                    } else {
                                        boolean zF3 = parsableBitArray.f();
                                        parsableBitArray.n();
                                        if (!zF3 || parsableBitArray.g(8) <= 127) {
                                            int iG5 = parsableBitArray.g(3);
                                            parsableBitArray.n();
                                            if (parsableBitArray.f()) {
                                                Log.f("Unsupported reduced_still_picture_header");
                                                colorInfoA = builder2.a();
                                            } else if (parsableBitArray.f()) {
                                                Log.f("Unsupported timing_info_present_flag");
                                                colorInfoA = builder2.a();
                                            } else if (parsableBitArray.f()) {
                                                Log.f("Unsupported initial_display_delay_present_flag");
                                                colorInfoA = builder2.a();
                                            } else {
                                                int i84 = 5;
                                                int iG6 = parsableBitArray.g(5);
                                                int i85 = 0;
                                                while (i85 <= iG6) {
                                                    parsableBitArray.o(12);
                                                    if (parsableBitArray.g(i84) > i56) {
                                                        parsableBitArray.n();
                                                    }
                                                    i85++;
                                                    i84 = 5;
                                                    i56 = 7;
                                                }
                                                int iG7 = parsableBitArray.g(4);
                                                int iG8 = parsableBitArray.g(4);
                                                parsableBitArray.o(iG7 + 1);
                                                parsableBitArray.o(iG8 + 1);
                                                if (parsableBitArray.f()) {
                                                    i12 = 7;
                                                    parsableBitArray.o(7);
                                                } else {
                                                    i12 = 7;
                                                }
                                                parsableBitArray.o(i12);
                                                boolean zF4 = parsableBitArray.f();
                                                if (zF4) {
                                                    parsableBitArray.o(2);
                                                }
                                                if (parsableBitArray.f()) {
                                                    i13 = 1;
                                                    iG2 = 2;
                                                } else {
                                                    i13 = 1;
                                                    iG2 = parsableBitArray.g(1);
                                                }
                                                if (iG2 > 0 && !parsableBitArray.f()) {
                                                    parsableBitArray.o(i13);
                                                }
                                                if (zF4) {
                                                    i14 = 3;
                                                    parsableBitArray.o(3);
                                                } else {
                                                    i14 = 3;
                                                }
                                                parsableBitArray.o(i14);
                                                boolean zF5 = parsableBitArray.f();
                                                if (iG5 == 2 && zF5) {
                                                    parsableBitArray.n();
                                                }
                                                boolean z3 = iG5 != 1 && parsableBitArray.f();
                                                if (parsableBitArray.f()) {
                                                    int iG9 = parsableBitArray.g(8);
                                                    int iG10 = parsableBitArray.g(8);
                                                    int iG11 = (!z3 && iG9 == 1 && iG10 == 13 && parsableBitArray.g(8) == 0) ? 1 : parsableBitArray.g(1);
                                                    builder2.f13730a = ColorInfo.f(iG9);
                                                    builder2.f13731b = iG11 == 1 ? 1 : 2;
                                                    builder2.f13732c = ColorInfo.g(iG10);
                                                }
                                                colorInfoA = builder2.a();
                                            }
                                        } else {
                                            Log.f("Excessive obu_size");
                                            colorInfoA = builder2.a();
                                        }
                                    }
                                    int i86 = colorInfoA.f13728e;
                                    int i87 = colorInfoA.f13729f;
                                    int i88 = colorInfoA.f13725a;
                                    int i89 = colorInfoA.f13726b;
                                    iG = colorInfoA.f13727c;
                                    h265VpsData2 = h265VpsData2;
                                    i22 = i80;
                                    i29 = i86;
                                    i30 = i87;
                                    iF = i88;
                                    i9 = i89;
                                    str4 = "video/av01";
                                    i21 = 8;
                                } else if (iM2 == 1668050025) {
                                    ByteBuffer byteBufferOrder = byteBuffer == null ? ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN) : byteBuffer;
                                    byteBufferOrder.position(21);
                                    byteBufferOrder.putShort(parsableByteArray.x());
                                    byteBufferOrder.putShort(parsableByteArray.x());
                                    byteBuffer = byteBufferOrder;
                                    i22 = i80;
                                } else {
                                    if (iM2 == 1835295606) {
                                        ByteBuffer byteBufferOrder2 = byteBuffer == null ? ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN) : byteBuffer;
                                        short sX = parsableByteArray.x();
                                        short sX2 = parsableByteArray.x();
                                        short sX3 = parsableByteArray.x();
                                        short sX4 = parsableByteArray.x();
                                        short sX5 = parsableByteArray.x();
                                        short sX6 = parsableByteArray.x();
                                        h265VpsData = h265VpsData2;
                                        short sX7 = parsableByteArray.x();
                                        str4 = str6;
                                        short sX8 = parsableByteArray.x();
                                        long jC = parsableByteArray.C();
                                        long jC2 = parsableByteArray.C();
                                        iIntValue = iIntValue;
                                        byteBufferOrder2.position(1);
                                        byteBufferOrder2.putShort(sX5);
                                        byteBufferOrder2.putShort(sX6);
                                        byteBufferOrder2.putShort(sX);
                                        byteBufferOrder2.putShort(sX2);
                                        byteBufferOrder2.putShort(sX3);
                                        byteBufferOrder2.putShort(sX4);
                                        byteBufferOrder2.putShort(sX7);
                                        byteBufferOrder2.putShort(sX8);
                                        byteBufferOrder2.putShort((short) (jC / 10000));
                                        byteBufferOrder2.putShort((short) (jC2 / 10000));
                                        byteBuffer = byteBufferOrder2;
                                    } else {
                                        h265VpsData = h265VpsData2;
                                        str4 = str6;
                                        iIntValue = iIntValue;
                                        if (iM2 == 1681012275) {
                                            ExtractorUtil.a(null, str4 == null);
                                            h265VpsData2 = h265VpsData;
                                            str4 = str5;
                                            i29 = i54;
                                            i30 = i55;
                                            i21 = 8;
                                            i22 = i80;
                                        } else if (iM2 == 1702061171) {
                                            ExtractorUtil.a(null, str4 == null);
                                            EsdsData esdsDataB = b(i31, parsableByteArray);
                                            String str13 = esdsDataB.f16510a;
                                            byte[] bArr4 = esdsDataB.f16511b;
                                            if (bArr4 != null) {
                                                listA = ImmutableList.A(bArr4);
                                            }
                                            esdsData = esdsDataB;
                                            str4 = str13;
                                        } else if (iM2 == 1651798644) {
                                            parsableByteArray.N(i31 + 8);
                                            parsableByteArray.O(4);
                                            btrtData = new BtrtData(parsableByteArray.C(), parsableByteArray.C());
                                        } else {
                                            if (iM2 == 1885434736) {
                                                parsableByteArray.N(i31 + 8);
                                                fE = parsableByteArray.E() / parsableByteArray.E();
                                                iF = iF;
                                                h265VpsData2 = h265VpsData;
                                                i29 = i54;
                                                i30 = i55;
                                                i21 = 8;
                                                z = true;
                                            } else if (iM2 == 1937126244) {
                                                int i90 = i31 + 8;
                                                while (true) {
                                                    if (i90 - i31 >= iM) {
                                                        bArrCopyOfRange = null;
                                                        break;
                                                    }
                                                    parsableByteArray.N(i90);
                                                    int iM5 = parsableByteArray.m();
                                                    if (parsableByteArray.m() == 1886547818) {
                                                        bArrCopyOfRange = Arrays.copyOfRange(parsableByteArray.f14194a, i90, iM5 + i90);
                                                        break;
                                                    }
                                                    i90 += iM5;
                                                }
                                            } else if (iM2 == 1936995172) {
                                                int iA15 = parsableByteArray.A();
                                                int i91 = 3;
                                                parsableByteArray.O(3);
                                                if (iA15 != 0) {
                                                    i91 = i80;
                                                } else {
                                                    int iA16 = parsableByteArray.A();
                                                    if (iA16 == 0) {
                                                        i91 = 0;
                                                    } else if (iA16 == 1) {
                                                        i91 = 1;
                                                    } else if (iA16 == 2) {
                                                        i91 = 2;
                                                    } else if (iA16 != 3) {
                                                        i91 = i80;
                                                    }
                                                }
                                                iF = iF;
                                                h265VpsData2 = h265VpsData;
                                                i29 = i54;
                                                i30 = i55;
                                                i21 = 8;
                                                i22 = i91;
                                            } else if (iM2 == 1634760259) {
                                                int i92 = iM - 12;
                                                byte[] bArr5 = new byte[i92];
                                                parsableByteArray.N(i31 + 12);
                                                parsableByteArray.k(0, i92, bArr5);
                                                byte[] bArr6 = CodecSpecificDataUtil.f14144a;
                                                Preconditions.b(i92, "Invalid APV CSD length: %s", i92 >= 17);
                                                byte b3 = bArr5[0];
                                                Preconditions.b(b3, "Invalid APV CSD version: %s", b3 == 1);
                                                int unsignedInt = Byte.toUnsignedInt(bArr5[5]);
                                                int unsignedInt2 = Byte.toUnsignedInt(bArr5[6]);
                                                int unsignedInt3 = Byte.toUnsignedInt(bArr5[7]);
                                                String str14 = Util.f14242a;
                                                Locale locale2 = Locale.US;
                                                StringBuilder sbP = fc.p(unsignedInt, unsignedInt2, "apv1.apvf", ".apvl", ".apvb");
                                                sbP.append(unsignedInt3);
                                                string = sbP.toString();
                                                ImmutableList immutableListA2 = ImmutableList.A(bArr5);
                                                ParsableByteArray parsableByteArray2 = new ParsableByteArray(bArr5);
                                                ColorInfo.Builder builder3 = new ColorInfo.Builder();
                                                ParsableBitArray parsableBitArray2 = new ParsableBitArray(parsableByteArray2.f14194a);
                                                i21 = 8;
                                                parsableBitArray2.m(parsableByteArray2.f14195b * 8);
                                                int i93 = 1;
                                                parsableBitArray2.p(1);
                                                int iG12 = parsableBitArray2.g(8);
                                                int i94 = 0;
                                                while (i94 < iG12) {
                                                    parsableBitArray2.p(i93);
                                                    int iG13 = parsableBitArray2.g(8);
                                                    for (int i95 = 0; i95 < iG13; i95++) {
                                                        parsableBitArray2.o(6);
                                                        boolean zF6 = parsableBitArray2.f();
                                                        parsableBitArray2.n();
                                                        parsableBitArray2.p(11);
                                                        parsableBitArray2.o(4);
                                                        int iG14 = parsableBitArray2.g(4) + 8;
                                                        builder3.f13733e = iG14;
                                                        builder3.f13734f = iG14;
                                                        parsableBitArray2.p(1);
                                                        if (zF6) {
                                                            int iG15 = parsableBitArray2.g(8);
                                                            int iG16 = parsableBitArray2.g(8);
                                                            parsableBitArray2.p(1);
                                                            boolean zF7 = parsableBitArray2.f();
                                                            builder3.f13730a = ColorInfo.f(iG15);
                                                            builder3.f13731b = zF7 ? 1 : 2;
                                                            builder3.f13732c = ColorInfo.g(iG16);
                                                        }
                                                    }
                                                    i94++;
                                                    i93 = 1;
                                                }
                                                ColorInfo colorInfoA2 = builder3.a();
                                                int i96 = colorInfoA2.f13728e;
                                                int i97 = colorInfoA2.f13729f;
                                                int i98 = colorInfoA2.f13725a;
                                                int i99 = colorInfoA2.f13726b;
                                                iG = colorInfoA2.f13727c;
                                                i29 = i96;
                                                i30 = i97;
                                                iF = i98;
                                                i9 = i99;
                                                str4 = "video/apv";
                                                h265VpsData2 = h265VpsData;
                                                listA = immutableListA2;
                                            } else {
                                                i21 = 8;
                                                if (iM2 == 1668246642) {
                                                    i10 = iG;
                                                    if (iF == -1 && i10 == -1) {
                                                        int iM6 = parsableByteArray.m();
                                                        if (iM6 == 1852009592 || iM6 == 1852009571) {
                                                            int iH7 = parsableByteArray.H();
                                                            int iH8 = parsableByteArray.H();
                                                            parsableByteArray.O(2);
                                                            boolean z4 = iM == 19 && (parsableByteArray.A() & 128) != 0;
                                                            iF = ColorInfo.f(iH7);
                                                            int i100 = z4 ? 1 : 2;
                                                            iG = ColorInfo.g(iH8);
                                                            i9 = i100;
                                                        } else {
                                                            Log.g("Unsupported color type: ".concat(Mp4Box.a(iM6)));
                                                        }
                                                    }
                                                    h265VpsData2 = h265VpsData;
                                                    i29 = i54;
                                                    i30 = i55;
                                                } else {
                                                    i10 = iG;
                                                }
                                            }
                                            i22 = i80;
                                        }
                                    }
                                    h265VpsData2 = h265VpsData;
                                    i29 = i54;
                                    i30 = i55;
                                    i21 = 8;
                                    i22 = i80;
                                }
                                iF = iF;
                                iG = i10;
                                h265VpsData2 = h265VpsData;
                                i29 = i54;
                                i30 = i55;
                                i22 = i80;
                            }
                            iF = iF;
                            str4 = str6;
                            i29 = i54;
                            i30 = i55;
                            i21 = 8;
                        }
                    }
                }
                i20 = i8 + iM;
                i18 = i3;
                i19 = i4;
                i21 = i21;
                drmInitDataA = drmInitDataA;
                str6 = str4;
                str5 = str5;
                i27 = i9;
                i28 = iG;
                iIntValue = iIntValue;
                f3 = fE;
                iH2 = iH2;
                iH = iH;
            }
            i20 = i8 + iM;
            i18 = i3;
            i19 = i4;
            i21 = i21;
            drmInitDataA = drmInitDataA;
            str6 = str4;
            str5 = str5;
            i27 = i9;
            i28 = iG;
            iIntValue = iIntValue;
            f3 = fE;
            iH2 = iH2;
            iH = iH;
        }
        if (dolbyVisionConfigA != 0) {
            str2 = dolbyVisionConfigA.f14272a;
            str3 = "video/dolby-vision";
        } else {
            str2 = string;
        }
        if (str3 == null) {
            str3 = str6;
            return;
        }
        str3 = str6;
        Format.Builder builder4 = new Format.Builder();
        builder4.f13764a = Integer.toString(i5);
        builder4.n = MimeTypes.p(str3);
        builder4.f13771j = str2;
        builder4.u = iH;
        builder4.v = iH2;
        builder4.w = i25;
        builder4.x = i26;
        builder4.A = f2;
        builder4.z = i6;
        builder4.B = bArrCopyOfRange;
        builder4.C = i22;
        builder4.q = listA;
        builder4.p = i23;
        builder4.E = i24;
        builder4.r = drmInitData2;
        builder4.d = str;
        ColorInfo.Builder builder5 = new ColorInfo.Builder();
        builder5.f13730a = iF;
        builder5.f13731b = i27;
        builder5.f13732c = i28;
        if (byteBuffer != null) {
            f2 = f3;
            drmInitData2 = drmInitDataA;
            bArrArray = byteBuffer.array();
        } else {
            f2 = f3;
            drmInitData2 = drmInitDataA;
            bArrArray = null;
        }
        builder5.d = bArrArray;
        builder5.f13733e = i29;
        builder5.f13734f = i30;
        builder4.D = builder5.a();
        BtrtData btrtData2 = btrtData;
        if (btrtData2 != null) {
            builder4.f13769h = Ints.f(btrtData2.f16501a);
            builder4.f13770i = Ints.f(btrtData2.f16502b);
        } else {
            EsdsData esdsData2 = esdsData;
            if (esdsData2 != null) {
                builder4.f13769h = Ints.f(esdsData2.f16512c);
                builder4.f13770i = Ints.f(esdsData2.d);
            }
        }
        stsdData.f16521b = new Format(builder4);
    }
}
