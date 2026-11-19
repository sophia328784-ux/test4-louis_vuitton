package androidx.media3.extractor.mkv;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.DolbyVisionConfig;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.metadata.ThumbnailMetadata;
import com.github.druk.dnssd.NSType;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes.dex */
final class DefaultEbmlReader implements EbmlReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16422a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f16423b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VarintReader f16424c = new VarintReader();
    public EbmlProcessor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16426f;
    public long g;

    public static final class MasterElement {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16427a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16428b;

        public MasterElement(int i2, long j2) {
            this.f16427a = i2;
            this.f16428b = j2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:182:0x036d  */
    /* JADX WARN: Code duplicated, block: B:323:0x052f  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:53:0x0113  */
    /* JADX WARN: Code duplicated, block: B:55:0x011b  */
    /* JADX WARN: Code duplicated, block: B:57:0x012e  */
    /* JADX WARN: Code duplicated, block: B:60:0x014b  */
    /* JADX WARN: Code duplicated, block: B:625:0x0b13  */
    /* JADX WARN: Code duplicated, block: B:62:0x0153  */
    /* JADX WARN: Code duplicated, block: B:630:0x0b2c  */
    /* JADX WARN: Code duplicated, block: B:631:0x0b2f  */
    /* JADX WARN: Code duplicated, block: B:634:0x0b3e  */
    /* JADX WARN: Code duplicated, block: B:635:0x0b4a  */
    /* JADX WARN: Code duplicated, block: B:637:0x0b50  */
    /* JADX WARN: Code duplicated, block: B:639:0x0b54  */
    /* JADX WARN: Code duplicated, block: B:63:0x0174  */
    /* JADX WARN: Code duplicated, block: B:641:0x0b59  */
    /* JADX WARN: Code duplicated, block: B:644:0x0b61  */
    /* JADX WARN: Code duplicated, block: B:646:0x0b66  */
    /* JADX WARN: Code duplicated, block: B:649:0x0b6d  */
    /* JADX WARN: Code duplicated, block: B:652:0x0b7b  */
    /* JADX WARN: Code duplicated, block: B:655:0x0b80  */
    /* JADX WARN: Code duplicated, block: B:657:0x0b86  */
    /* JADX WARN: Code duplicated, block: B:66:0x0189  */
    /* JADX WARN: Code duplicated, block: B:677:0x0c44  */
    /* JADX WARN: Code duplicated, block: B:679:0x0c63  */
    /* JADX WARN: Code duplicated, block: B:682:0x0c68  */
    /* JADX WARN: Code duplicated, block: B:685:0x0c7b  */
    /* JADX WARN: Code duplicated, block: B:688:0x0c80  */
    /* JADX WARN: Code duplicated, block: B:68:0x0190  */
    /* JADX WARN: Code duplicated, block: B:707:0x0ccd  */
    /* JADX WARN: Code duplicated, block: B:709:0x0ce5  */
    /* JADX WARN: Code duplicated, block: B:711:0x0ceb  */
    /* JADX WARN: Code duplicated, block: B:726:0x0d18  */
    /* JADX WARN: Code duplicated, block: B:72:0x019e  */
    /* JADX WARN: Code duplicated, block: B:732:0x0d2d  */
    /* JADX WARN: Code duplicated, block: B:75:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:82:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:913:0x01f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:915:0x0149 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:917:0x0193 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:918:0x0193 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v61 */
    /* JADX WARN: Type inference failed for: r1v48, types: [androidx.media3.extractor.mkv.MatroskaExtractor$Track, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v52, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.media3.extractor.mkv.VarintReader] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r7v19, types: [long] */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v38 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean a(ExtractorInput extractorInput) {
        int i2;
        String str;
        int i3;
        int iA;
        byte b2;
        int i4;
        int i5;
        String str2;
        List list;
        ?? R;
        Pair pair;
        String str3;
        String str4;
        List list2;
        String str5;
        List list3;
        String str6;
        List list4;
        List list5;
        List listSingletonList;
        List listA;
        String str7;
        int i6;
        Format.Builder builder;
        int i7;
        int i8;
        float f2;
        ColorInfo colorInfoA;
        String str8;
        int iIntValue;
        int i9;
        byte[] bArr;
        int i10;
        int i11;
        int i12;
        String str9;
        DolbyVisionConfig dolbyVisionConfigA;
        List list6;
        int i13;
        SparseArray sparseArray;
        int i14;
        MatroskaExtractor.Track track;
        long j2;
        long j3;
        int i15;
        int i16;
        long j4;
        List list7;
        int i17;
        int iMin;
        double d;
        int i18;
        int i19;
        int i20;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        long j12;
        double d2;
        Metadata metadata;
        ThumbnailMetadata thumbnailMetadata;
        Metadata metadataA;
        this.d.getClass();
        while (true) {
            ArrayDeque arrayDeque = this.f16423b;
            MasterElement masterElement = (MasterElement) arrayDeque.peek();
            int i21 = 2;
            int i22 = 0;
            int i23 = 1;
            if (masterElement != null && extractorInput.getPosition() >= masterElement.f16428b) {
                EbmlProcessor ebmlProcessor = this.d;
                int i24 = ((MasterElement) arrayDeque.pop()).f16427a;
                MatroskaExtractor matroskaExtractor = MatroskaExtractor.this;
                Map map = MatroskaExtractor.p0;
                SparseArray sparseArray2 = matroskaExtractor.C;
                SparseArray sparseArray3 = matroskaExtractor.f16431c;
                matroskaExtractor.j0.getClass();
                if (i24 == 160) {
                    if (matroskaExtractor.O != 2) {
                        return true;
                    }
                    MatroskaExtractor.Track track2 = (MatroskaExtractor.Track) sparseArray3.get(matroskaExtractor.U);
                    track2.a0.getClass();
                    if (matroskaExtractor.Z > 0 && "A_OPUS".equals(track2.f16446c)) {
                        ParsableByteArray parsableByteArray = matroskaExtractor.p;
                        byte[] bArrArray = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(matroskaExtractor.Z).array();
                        parsableByteArray.getClass();
                        parsableByteArray.L(bArrArray.length, bArrArray);
                    }
                    int i25 = 0;
                    for (int i26 = 0; i26 < matroskaExtractor.S; i26++) {
                        i25 += matroskaExtractor.T[i26];
                    }
                    int i27 = 0;
                    while (i27 < matroskaExtractor.S) {
                        long j13 = matroskaExtractor.P + ((long) ((track2.f16448f * i27) / 1000));
                        int i28 = matroskaExtractor.W;
                        if (i27 == 0 && !matroskaExtractor.Y) {
                            i28 |= 1;
                        }
                        int i29 = matroskaExtractor.T[i27];
                        int i30 = i25 - i29;
                        matroskaExtractor.i(track2, j13, i28, i29, i30);
                        i27++;
                        i25 = i30;
                    }
                    matroskaExtractor.O = 0;
                    return true;
                }
                int i31 = 20;
                String str10 = "video/webm";
                if (i24 != 174) {
                    if (i24 != 183) {
                        if (i24 == 19899) {
                            int i32 = matroskaExtractor.A;
                            if (i32 != -1) {
                                long j14 = matroskaExtractor.B;
                                if (j14 != -1) {
                                    if (i32 == 475249515) {
                                        matroskaExtractor.K = j14;
                                        return true;
                                    }
                                }
                            }
                            throw ParserException.a(null, "Mandatory element SeekID or SeekPosition not found");
                        }
                        if (i24 == 25152) {
                            matroskaExtractor.h(i24);
                            MatroskaExtractor.Track track3 = matroskaExtractor.y;
                            if (track3.f16450i) {
                                TrackOutput.CryptoData cryptoData = track3.f16452k;
                                if (cryptoData == null) {
                                    throw ParserException.a(null, "Encrypted Track found but ContentEncKeyID was not found");
                                }
                                track3.m = new DrmInitData(new DrmInitData.SchemeData(C.f13717b, "video/webm", cryptoData.f16211b));
                                return true;
                            }
                        } else if (i24 == 28032) {
                            matroskaExtractor.h(i24);
                            MatroskaExtractor.Track track4 = matroskaExtractor.y;
                            if (track4.f16450i && track4.f16451j != null) {
                                throw ParserException.a(null, "Combining encryption and compression is not supported");
                            }
                        } else if (i24 == 357149030) {
                            if (matroskaExtractor.t == -9223372036854775807L) {
                                matroskaExtractor.t = 1000000L;
                            }
                            long j15 = matroskaExtractor.u;
                            if (j15 != -9223372036854775807L) {
                                matroskaExtractor.v = matroskaExtractor.n(j15);
                                return true;
                            }
                        } else {
                            if (i24 != 374648427) {
                                if (i24 != 475249515 || matroskaExtractor.z) {
                                    return true;
                                }
                                int i33 = 0;
                                while (true) {
                                    if (i33 < sparseArray2.size()) {
                                        if (!((List) sparseArray2.valueAt(i33)).isEmpty()) {
                                            if (matroskaExtractor.v != -9223372036854775807L) {
                                                for (int i34 = 0; i34 < sparseArray2.size(); i34++) {
                                                    Collections.sort((List) sparseArray2.valueAt(i34));
                                                }
                                                sparseArray = sparseArray2;
                                                matroskaExtractor.j0.j(new MatroskaExtractor.MatroskaSeekMap(sparseArray2, matroskaExtractor.v, matroskaExtractor.I, matroskaExtractor.s, matroskaExtractor.r));
                                            }
                                            matroskaExtractor.z = true;
                                            matroskaExtractor.D = false;
                                            i14 = 0;
                                            while (i14 < sparseArray3.size()) {
                                                track = (MatroskaExtractor.Track) sparseArray3.valueAt(i14);
                                                j2 = matroskaExtractor.v;
                                                j3 = matroskaExtractor.s;
                                                i15 = i22;
                                                i16 = i23;
                                                j4 = matroskaExtractor.r;
                                                if (track.f16447e == i21 || (list7 = (List) sparseArray.get(track.d)) == null || list7.isEmpty()) {
                                                    i17 = i15;
                                                    i18 = i31;
                                                } else {
                                                    if (list7.isEmpty()) {
                                                        i17 = i15;
                                                        i18 = i31;
                                                    } else {
                                                        i17 = i15;
                                                        iMin = Math.min(list7.size(), i31);
                                                        d = 0.0d;
                                                        i18 = i31;
                                                        i19 = -1;
                                                        i20 = i17;
                                                        while (i20 < iMin) {
                                                            MatroskaExtractor.MatroskaSeekMap.CuePointData cuePointData = (MatroskaExtractor.MatroskaSeekMap.CuePointData) list7.get(i20);
                                                            j6 = j2;
                                                            j7 = cuePointData.f16442b;
                                                            j8 = cuePointData.d;
                                                            j9 = cuePointData.f16443c;
                                                            if (j7 > 10000000) {
                                                                if (i19 == -1) {
                                                                    j5 = ((MatroskaExtractor.MatroskaSeekMap.CuePointData) list7.get(i19)).f16442b;
                                                                }
                                                                if (j5 != -9223372036854775807L) {
                                                                    Format format = track.b0;
                                                                    format.getClass();
                                                                    metadata = format.l;
                                                                    thumbnailMetadata = new ThumbnailMetadata(j5);
                                                                    if (metadata == null) {
                                                                        Metadata.Entry[] entryArr = new Metadata.Entry[i16];
                                                                        entryArr[i17] = thumbnailMetadata;
                                                                        metadataA = new Metadata(entryArr);
                                                                    } else {
                                                                        Metadata.Entry[] entryArr2 = new Metadata.Entry[i16];
                                                                        entryArr2[i17] = thumbnailMetadata;
                                                                        metadataA = metadata.a(entryArr2);
                                                                    }
                                                                    Format.Builder builderA = track.b0.a();
                                                                    builderA.f13772k = metadataA;
                                                                    track.b0 = new Format(builderA);
                                                                }
                                                            } else {
                                                                if (i20 < list7.size() - 1) {
                                                                    MatroskaExtractor.MatroskaSeekMap.CuePointData cuePointData2 = (MatroskaExtractor.MatroskaSeekMap.CuePointData) list7.get(i20 + 1);
                                                                    long j16 = (cuePointData2.f16443c + cuePointData2.d) - (j9 + j8);
                                                                    j11 = cuePointData2.f16442b - j7;
                                                                    j12 = j3;
                                                                    j10 = j16;
                                                                } else {
                                                                    long j17 = j3;
                                                                    j10 = (j3 + j4) - (j9 + j8);
                                                                    j11 = j6 - j7;
                                                                    j12 = j17;
                                                                }
                                                                if (j11 > 0) {
                                                                    d2 = j10 / j11;
                                                                    if (d2 > d) {
                                                                        d = d2;
                                                                        i19 = i20;
                                                                    }
                                                                }
                                                                i20++;
                                                                j2 = j6;
                                                                j3 = j12;
                                                            }
                                                        }
                                                        if (i19 == -1) {
                                                            j5 = ((MatroskaExtractor.MatroskaSeekMap.CuePointData) list7.get(i19)).f16442b;
                                                        }
                                                        if (j5 != -9223372036854775807L) {
                                                            Format format2 = track.b0;
                                                            format2.getClass();
                                                            metadata = format2.l;
                                                            thumbnailMetadata = new ThumbnailMetadata(j5);
                                                            if (metadata == null) {
                                                                Metadata.Entry[] entryArr3 = new Metadata.Entry[i16];
                                                                entryArr3[i17] = thumbnailMetadata;
                                                                metadataA = new Metadata(entryArr3);
                                                            } else {
                                                                Metadata.Entry[] entryArr4 = new Metadata.Entry[i16];
                                                                entryArr4[i17] = thumbnailMetadata;
                                                                metadataA = metadata.a(entryArr4);
                                                            }
                                                            Format.Builder builderA2 = track.b0.a();
                                                            builderA2.f13772k = metadataA;
                                                            track.b0 = new Format(builderA2);
                                                        }
                                                    }
                                                    j5 = -9223372036854775807L;
                                                    if (j5 != -9223372036854775807L) {
                                                        Format format3 = track.b0;
                                                        format3.getClass();
                                                        metadata = format3.l;
                                                        thumbnailMetadata = new ThumbnailMetadata(j5);
                                                        if (metadata == null) {
                                                            Metadata.Entry[] entryArr5 = new Metadata.Entry[i16];
                                                            entryArr5[i17] = thumbnailMetadata;
                                                            metadataA = new Metadata(entryArr5);
                                                        } else {
                                                            Metadata.Entry[] entryArr6 = new Metadata.Entry[i16];
                                                            entryArr6[i17] = thumbnailMetadata;
                                                            metadataA = metadata.a(entryArr6);
                                                        }
                                                        Format.Builder builderA3 = track.b0.a();
                                                        builderA3.f13772k = metadataA;
                                                        track.b0 = new Format(builderA3);
                                                    }
                                                }
                                                if (!track.W) {
                                                    track.a0.getClass();
                                                    TrackOutput trackOutput = track.a0;
                                                    Format format4 = track.b0;
                                                    format4.getClass();
                                                    trackOutput.b(format4);
                                                }
                                                i14++;
                                                i22 = i17;
                                                i31 = i18;
                                                i23 = 1;
                                                i21 = 2;
                                            }
                                            matroskaExtractor.k();
                                            return true;
                                        }
                                        i33++;
                                    }
                                    sparseArray = sparseArray2;
                                    matroskaExtractor.j0.j(new SeekMap.Unseekable(matroskaExtractor.v));
                                    matroskaExtractor.z = true;
                                    matroskaExtractor.D = false;
                                    i14 = 0;
                                    while (i14 < sparseArray3.size()) {
                                        track = (MatroskaExtractor.Track) sparseArray3.valueAt(i14);
                                        j2 = matroskaExtractor.v;
                                        j3 = matroskaExtractor.s;
                                        i15 = i22;
                                        i16 = i23;
                                        j4 = matroskaExtractor.r;
                                        if (track.f16447e == i21) {
                                            i17 = i15;
                                            i18 = i31;
                                        } else {
                                            if (list7.isEmpty()) {
                                                i17 = i15;
                                                i18 = i31;
                                            } else {
                                                i17 = i15;
                                                iMin = Math.min(list7.size(), i31);
                                                d = 0.0d;
                                                i18 = i31;
                                                i19 = -1;
                                                i20 = i17;
                                                while (i20 < iMin) {
                                                    MatroskaExtractor.MatroskaSeekMap.CuePointData cuePointData3 = (MatroskaExtractor.MatroskaSeekMap.CuePointData) list7.get(i20);
                                                    j6 = j2;
                                                    j7 = cuePointData3.f16442b;
                                                    j8 = cuePointData3.d;
                                                    j9 = cuePointData3.f16443c;
                                                    if (j7 > 10000000) {
                                                        if (i19 == -1) {
                                                            j5 = ((MatroskaExtractor.MatroskaSeekMap.CuePointData) list7.get(i19)).f16442b;
                                                        }
                                                        if (j5 != -9223372036854775807L) {
                                                            Format format5 = track.b0;
                                                            format5.getClass();
                                                            metadata = format5.l;
                                                            thumbnailMetadata = new ThumbnailMetadata(j5);
                                                            if (metadata == null) {
                                                                Metadata.Entry[] entryArr7 = new Metadata.Entry[i16];
                                                                entryArr7[i17] = thumbnailMetadata;
                                                                metadataA = new Metadata(entryArr7);
                                                            } else {
                                                                Metadata.Entry[] entryArr8 = new Metadata.Entry[i16];
                                                                entryArr8[i17] = thumbnailMetadata;
                                                                metadataA = metadata.a(entryArr8);
                                                            }
                                                            Format.Builder builderA4 = track.b0.a();
                                                            builderA4.f13772k = metadataA;
                                                            track.b0 = new Format(builderA4);
                                                        }
                                                    } else {
                                                        if (i20 < list7.size() - 1) {
                                                            MatroskaExtractor.MatroskaSeekMap.CuePointData cuePointData4 = (MatroskaExtractor.MatroskaSeekMap.CuePointData) list7.get(i20 + 1);
                                                            long j18 = (cuePointData4.f16443c + cuePointData4.d) - (j9 + j8);
                                                            j11 = cuePointData4.f16442b - j7;
                                                            j12 = j3;
                                                            j10 = j18;
                                                        } else {
                                                            long j19 = j3;
                                                            j10 = (j3 + j4) - (j9 + j8);
                                                            j11 = j6 - j7;
                                                            j12 = j19;
                                                        }
                                                        if (j11 > 0) {
                                                            d2 = j10 / j11;
                                                            if (d2 > d) {
                                                                d = d2;
                                                                i19 = i20;
                                                            }
                                                        }
                                                        i20++;
                                                        j2 = j6;
                                                        j3 = j12;
                                                    }
                                                }
                                                if (i19 == -1) {
                                                    j5 = ((MatroskaExtractor.MatroskaSeekMap.CuePointData) list7.get(i19)).f16442b;
                                                }
                                                if (j5 != -9223372036854775807L) {
                                                    Format format6 = track.b0;
                                                    format6.getClass();
                                                    metadata = format6.l;
                                                    thumbnailMetadata = new ThumbnailMetadata(j5);
                                                    if (metadata == null) {
                                                        Metadata.Entry[] entryArr9 = new Metadata.Entry[i16];
                                                        entryArr9[i17] = thumbnailMetadata;
                                                        metadataA = new Metadata(entryArr9);
                                                    } else {
                                                        Metadata.Entry[] entryArr10 = new Metadata.Entry[i16];
                                                        entryArr10[i17] = thumbnailMetadata;
                                                        metadataA = metadata.a(entryArr10);
                                                    }
                                                    Format.Builder builderA5 = track.b0.a();
                                                    builderA5.f13772k = metadataA;
                                                    track.b0 = new Format(builderA5);
                                                }
                                            }
                                            j5 = -9223372036854775807L;
                                            if (j5 != -9223372036854775807L) {
                                                Format format7 = track.b0;
                                                format7.getClass();
                                                metadata = format7.l;
                                                thumbnailMetadata = new ThumbnailMetadata(j5);
                                                if (metadata == null) {
                                                    Metadata.Entry[] entryArr11 = new Metadata.Entry[i16];
                                                    entryArr11[i17] = thumbnailMetadata;
                                                    metadataA = new Metadata(entryArr11);
                                                } else {
                                                    Metadata.Entry[] entryArr12 = new Metadata.Entry[i16];
                                                    entryArr12[i17] = thumbnailMetadata;
                                                    metadataA = metadata.a(entryArr12);
                                                }
                                                Format.Builder builderA6 = track.b0.a();
                                                builderA6.f13772k = metadataA;
                                                track.b0 = new Format(builderA6);
                                            }
                                        }
                                        if (!track.W) {
                                            track.a0.getClass();
                                            TrackOutput trackOutput2 = track.a0;
                                            Format format8 = track.b0;
                                            format8.getClass();
                                            trackOutput2.b(format8);
                                        }
                                        i14++;
                                        i22 = i17;
                                        i31 = i18;
                                        i23 = 1;
                                        i21 = 2;
                                    }
                                    matroskaExtractor.k();
                                    return true;
                                }
                            }
                            if (sparseArray3.size() == 0) {
                                throw ParserException.a(null, "No valid tracks were found");
                            }
                            boolean z = !matroskaExtractor.d || matroskaExtractor.K == -1;
                            int i35 = -1;
                            int i36 = -1;
                            int i37 = -1;
                            int i38 = -1;
                            for (int i39 = 0; i39 < sparseArray3.size(); i39++) {
                                MatroskaExtractor.Track track5 = (MatroskaExtractor.Track) sparseArray3.valueAt(i39);
                                int i40 = track5.f16447e;
                                if (i40 == 2) {
                                    if (track5.Y) {
                                        i35 = track5.d;
                                    }
                                    if (i36 == -1) {
                                        i36 = track5.d;
                                    }
                                } else if (i40 == 1) {
                                    if (track5.Y) {
                                        i37 = track5.d;
                                    }
                                    if (i38 == -1) {
                                        i38 = track5.d;
                                    }
                                }
                                if (z) {
                                    track5.a0.getClass();
                                    if (!track5.W) {
                                        TrackOutput trackOutput3 = track5.a0;
                                        Format format9 = track5.b0;
                                        format9.getClass();
                                        trackOutput3.b(format9);
                                    }
                                }
                            }
                            if (i35 != -1) {
                                matroskaExtractor.I = i35;
                            } else if (i36 != -1) {
                                matroskaExtractor.I = i36;
                            } else if (i37 != -1) {
                                matroskaExtractor.I = i37;
                            } else if (i38 != -1) {
                                matroskaExtractor.I = i38;
                            } else {
                                matroskaExtractor.I = sparseArray3.size() > 0 ? ((MatroskaExtractor.Track) sparseArray3.valueAt(0)).d : -1;
                            }
                            if (z) {
                                matroskaExtractor.k();
                                return true;
                            }
                        }
                    } else if (!matroskaExtractor.z) {
                        matroskaExtractor.g(i24);
                        if (matroskaExtractor.E != -9223372036854775807L && (i13 = matroskaExtractor.F) != -1 && matroskaExtractor.G != -1) {
                            List arrayList = (List) sparseArray2.get(i13);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                sparseArray2.put(matroskaExtractor.F, arrayList);
                            }
                            arrayList.add(new MatroskaExtractor.MatroskaSeekMap.CuePointData(matroskaExtractor.E, matroskaExtractor.s + matroskaExtractor.G, matroskaExtractor.H));
                            return true;
                        }
                    }
                    return true;
                }
                ?? r1 = matroskaExtractor.y;
                r1.getClass();
                String str11 = r1.f16446c;
                if (str11 == null) {
                    throw ParserException.a(null, "CodecId is missing in TrackEntry element");
                }
                switch (str11) {
                    case "V_MPEG4/ISO/AP":
                    case "V_MPEG4/ISO/SP":
                    case "A_MS/ACM":
                    case "A_TRUEHD":
                    case "A_VORBIS":
                    case "A_MPEG/L2":
                    case "A_MPEG/L3":
                    case "V_MS/VFW/FOURCC":
                    case "S_DVBSUB":
                    case "V_MPEG4/ISO/ASP":
                    case "V_MPEG4/ISO/AVC":
                    case "S_VOBSUB":
                    case "A_DTS/LOSSLESS":
                    case "A_AAC":
                    case "A_AC3":
                    case "A_DTS":
                    case "V_AV1":
                    case "V_VP8":
                    case "V_VP9":
                    case "S_HDMV/PGS":
                    case "V_THEORA":
                    case "A_DTS/EXPRESS":
                    case "A_PCM/FLOAT/IEEE":
                    case "A_PCM/INT/BIG":
                    case "A_PCM/INT/LIT":
                    case "S_TEXT/ASS":
                    case "S_TEXT/SSA":
                    case "V_MPEGH/ISO/HEVC":
                    case "S_TEXT/WEBVTT":
                    case "S_TEXT/UTF8":
                    case "V_MPEG2":
                    case "A_EAC3":
                    case "A_FLAC":
                    case "A_OPUS":
                        int i41 = r1.d;
                        switch (str11) {
                            case "V_MPEG4/ISO/AP":
                                b2 = 0;
                                break;
                            case "V_MPEG4/ISO/SP":
                                b2 = 1;
                                break;
                            case "A_MS/ACM":
                                b2 = 2;
                                break;
                            case "A_TRUEHD":
                                b2 = 3;
                                break;
                            case "A_VORBIS":
                                b2 = 4;
                                break;
                            case "A_MPEG/L2":
                                b2 = 5;
                                break;
                            case "A_MPEG/L3":
                                b2 = 6;
                                break;
                            case "V_MS/VFW/FOURCC":
                                b2 = 7;
                                break;
                            case "S_DVBSUB":
                                b2 = 8;
                                break;
                            case "V_MPEG4/ISO/ASP":
                                b2 = 9;
                                break;
                            case "V_MPEG4/ISO/AVC":
                                b2 = 10;
                                break;
                            case "S_VOBSUB":
                                b2 = 11;
                                break;
                            case "A_DTS/LOSSLESS":
                                b2 = 12;
                                break;
                            case "A_AAC":
                                b2 = 13;
                                break;
                            case "A_AC3":
                                b2 = 14;
                                break;
                            case "A_DTS":
                                b2 = 15;
                                break;
                            case "V_AV1":
                                b2 = 16;
                                break;
                            case "V_VP8":
                                b2 = 17;
                                break;
                            case "V_VP9":
                                b2 = 18;
                                break;
                            case "S_HDMV/PGS":
                                b2 = 19;
                                break;
                            case "V_THEORA":
                                b2 = 20;
                                break;
                            case "A_DTS/EXPRESS":
                                b2 = 21;
                                break;
                            case "A_PCM/FLOAT/IEEE":
                                b2 = 22;
                                break;
                            case "A_PCM/INT/BIG":
                                b2 = 23;
                                break;
                            case "A_PCM/INT/LIT":
                                b2 = 24;
                                break;
                            case "S_TEXT/ASS":
                                b2 = 25;
                                break;
                            case "S_TEXT/SSA":
                                b2 = 26;
                                break;
                            case "V_MPEGH/ISO/HEVC":
                                b2 = 27;
                                break;
                            case "S_TEXT/WEBVTT":
                                b2 = 28;
                                break;
                            case "S_TEXT/UTF8":
                                b2 = 29;
                                break;
                            case "V_MPEG2":
                                b2 = 30;
                                break;
                            case "A_EAC3":
                                b2 = 31;
                                break;
                            case "A_FLAC":
                                b2 = 32;
                                break;
                            case "A_OPUS":
                                b2 = 33;
                                break;
                            default:
                                b2 = -1;
                                break;
                        }
                        String str12 = "application/dvbsubs";
                        String str13 = "video/x-unknown";
                        String str14 = "audio/raw";
                        switch (b2) {
                            case 0:
                            case 1:
                            case 9:
                                i41 = i41;
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                byte[] bArr2 = r1.l;
                                str14 = "video/mp4v-es";
                                listSingletonList = bArr2 == null ? null : Collections.singletonList(bArr2);
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null && (dolbyVisionConfigA = DolbyVisionConfig.a(new ParsableByteArray(r1.P))) != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z2 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i42 = (z2 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7 || (i10 = r1.r) == i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = (r1.o * i8) / (r1.n * i10);
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f || r1.G == -1.0f || r1.H == -1.0f || r1.I == -1.0f || r1.J == -1.0f || r1.K == -1.0f || r1.L == -1.0f || r1.M == -1.0f || r1.N == -1.0f || r1.O == -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = new byte[25];
                                            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                            byteBufferOrder.put((byte) 0);
                                            byteBufferOrder.putShort((short) ((r1.F * 50000.0f) + 0.5f));
                                            byteBufferOrder.putShort((short) ((r1.G * 50000.0f) + 0.5f));
                                            byteBufferOrder.putShort((short) ((r1.H * 50000.0f) + 0.5f));
                                            byteBufferOrder.putShort((short) ((r1.I * 50000.0f) + 0.5f));
                                            byteBufferOrder.putShort((short) ((r1.J * 50000.0f) + 0.5f));
                                            byteBufferOrder.putShort((short) ((r1.K * 50000.0f) + 0.5f));
                                            byteBufferOrder.putShort((short) ((r1.L * 50000.0f) + 0.5f));
                                            byteBufferOrder.putShort((short) ((r1.M * 50000.0f) + 0.5f));
                                            byteBufferOrder.putShort((short) (r1.N + 0.5f));
                                            byteBufferOrder.putShort((short) (r1.O + 0.5f));
                                            byteBufferOrder.putShort((short) r1.D);
                                            byteBufferOrder.putShort((short) r1.E);
                                        }
                                        ColorInfo.Builder builder2 = new ColorInfo.Builder();
                                        builder2.f13730a = r1.A;
                                        builder2.f13731b = r1.C;
                                        builder2.f13732c = r1.B;
                                        builder2.d = bArr;
                                        int i43 = r1.p;
                                        builder2.f13733e = i43;
                                        builder2.f13734f = i43;
                                        colorInfoA = builder2.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null && map.containsKey(str8)) {
                                        iIntValue = ((Integer) map.get(r1.f16445b)).intValue();
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0 || Float.compare(r1.u, Call.Parameters.DEFAULT_CAMERA_ZOOM) != 0 || Float.compare(r1.v, Call.Parameters.DEFAULT_CAMERA_ZOOM) != 0) {
                                        i9 = iIntValue;
                                    } else if (Float.compare(r1.w, Call.Parameters.DEFAULT_CAMERA_ZOOM) == 0) {
                                        i9 = 0;
                                    } else if (Float.compare(r1.w, 90.0f) == 0) {
                                        i9 = 90;
                                    } else if (Float.compare(r1.w, -180.0f) == 0 || Float.compare(r1.w, 180.0f) == 0) {
                                        i9 = Sink.ORIENTATION_180;
                                    } else if (Float.compare(r1.w, -90.0f) == 0) {
                                        i9 = Sink.ORIENTATION_270;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7) && !"text/x-ssa".equals(str7) && !"text/vtt".equals(str7) && !"application/vobsub".equals(str7) && !"application/pgs".equals(str7) && !str12.equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null && !map.containsKey(str9)) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i42;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 2:
                                i41 = i41;
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                ParsableByteArray parsableByteArray2 = new ParsableByteArray(r1.a(r1.f16446c));
                                try {
                                    int iT = parsableByteArray2.t();
                                    if (iT != 1) {
                                        if (iT == 65534) {
                                            parsableByteArray2.N(24);
                                            long jU = parsableByteArray2.u();
                                            UUID uuid = MatroskaExtractor.o0;
                                            if (jU != uuid.getMostSignificantBits() || parsableByteArray2.u() != uuid.getLeastSignificantBits()) {
                                            }
                                            str14 = "audio/x-unknown";
                                            listSingletonList = null;
                                            i5 = -1;
                                            list = listSingletonList;
                                            str4 = null;
                                            list6 = list;
                                            i4 = -1;
                                            list4 = list6;
                                            if (r1.P != null) {
                                                str4 = dolbyVisionConfigA.f14272a;
                                                str14 = "video/dolby-vision";
                                            }
                                            str7 = str14;
                                            boolean z3 = r1.Y;
                                            if (r1.X) {
                                                i6 = 2;
                                            } else {
                                                i6 = 0;
                                            }
                                            int i44 = (z3 ? 1 : 0) | i6;
                                            builder = new Format.Builder();
                                            if (MimeTypes.k(str7)) {
                                                builder.F = r1.Q;
                                                builder.G = r1.S;
                                                builder.H = i4;
                                            } else if (MimeTypes.o(str7)) {
                                                if (r1.s == 0) {
                                                    i11 = r1.q;
                                                    i7 = -1;
                                                    if (i11 == -1) {
                                                        i11 = r1.n;
                                                    }
                                                    r1.q = i11;
                                                    i12 = r1.r;
                                                    if (i12 == -1) {
                                                        i12 = r1.o;
                                                    }
                                                    r1.r = i12;
                                                } else {
                                                    i7 = -1;
                                                }
                                                i8 = r1.q;
                                                if (i8 != i7) {
                                                    f2 = -1.0f;
                                                } else {
                                                    f2 = -1.0f;
                                                }
                                                if (r1.z) {
                                                    if (r1.F != -1.0f) {
                                                        bArr = null;
                                                    } else {
                                                        bArr = null;
                                                    }
                                                    ColorInfo.Builder builder3 = new ColorInfo.Builder();
                                                    builder3.f13730a = r1.A;
                                                    builder3.f13731b = r1.C;
                                                    builder3.f13732c = r1.B;
                                                    builder3.d = bArr;
                                                    int i45 = r1.p;
                                                    builder3.f13733e = i45;
                                                    builder3.f13734f = i45;
                                                    colorInfoA = builder3.a();
                                                } else {
                                                    colorInfoA = null;
                                                }
                                                str8 = r1.f16445b;
                                                if (str8 == null) {
                                                    iIntValue = -1;
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (r1.t == 0) {
                                                    i9 = iIntValue;
                                                } else {
                                                    i9 = iIntValue;
                                                }
                                                builder.u = r1.n;
                                                builder.v = r1.o;
                                                builder.A = f2;
                                                builder.z = i9;
                                                builder.B = r1.x;
                                                builder.C = r1.y;
                                                builder.D = colorInfoA;
                                            } else if (!"application/x-subrip".equals(str7)) {
                                                throw ParserException.a(null, "Unexpected MIME type.");
                                            }
                                            str9 = r1.f16445b;
                                            if (str9 != null) {
                                                builder.f13765b = r1.f16445b;
                                            }
                                            builder.f13764a = Integer.toString(i41);
                                            if (!r1.f16444a) {
                                                str10 = "video/x-matroska";
                                            }
                                            builder.m = MimeTypes.p(str10);
                                            builder.n = MimeTypes.p(str7);
                                            builder.o = i5;
                                            builder.d = r1.Z;
                                            builder.f13767e = i44;
                                            builder.q = list4;
                                            builder.f13771j = str4;
                                            builder.r = r1.m;
                                            r1.b0 = new Format(builder);
                                            r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                            sparseArray3.put(r1.d, r1);
                                        }
                                        Log.g("Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                                        str14 = "audio/x-unknown";
                                        listSingletonList = null;
                                        i5 = -1;
                                        list = listSingletonList;
                                        str4 = null;
                                        list6 = list;
                                        i4 = -1;
                                        list4 = list6;
                                        if (r1.P != null) {
                                            str4 = dolbyVisionConfigA.f14272a;
                                            str14 = "video/dolby-vision";
                                        }
                                        str7 = str14;
                                        boolean z4 = r1.Y;
                                        if (r1.X) {
                                            i6 = 2;
                                        } else {
                                            i6 = 0;
                                        }
                                        int i46 = (z4 ? 1 : 0) | i6;
                                        builder = new Format.Builder();
                                        if (MimeTypes.k(str7)) {
                                            builder.F = r1.Q;
                                            builder.G = r1.S;
                                            builder.H = i4;
                                        } else if (MimeTypes.o(str7)) {
                                            if (r1.s == 0) {
                                                i11 = r1.q;
                                                i7 = -1;
                                                if (i11 == -1) {
                                                    i11 = r1.n;
                                                }
                                                r1.q = i11;
                                                i12 = r1.r;
                                                if (i12 == -1) {
                                                    i12 = r1.o;
                                                }
                                                r1.r = i12;
                                            } else {
                                                i7 = -1;
                                            }
                                            i8 = r1.q;
                                            if (i8 != i7) {
                                                f2 = -1.0f;
                                            } else {
                                                f2 = -1.0f;
                                            }
                                            if (r1.z) {
                                                if (r1.F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                ColorInfo.Builder builder4 = new ColorInfo.Builder();
                                                builder4.f13730a = r1.A;
                                                builder4.f13731b = r1.C;
                                                builder4.f13732c = r1.B;
                                                builder4.d = bArr;
                                                int i47 = r1.p;
                                                builder4.f13733e = i47;
                                                builder4.f13734f = i47;
                                                colorInfoA = builder4.a();
                                            } else {
                                                colorInfoA = null;
                                            }
                                            str8 = r1.f16445b;
                                            if (str8 == null) {
                                                iIntValue = -1;
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (r1.t == 0) {
                                                i9 = iIntValue;
                                            } else {
                                                i9 = iIntValue;
                                            }
                                            builder.u = r1.n;
                                            builder.v = r1.o;
                                            builder.A = f2;
                                            builder.z = i9;
                                            builder.B = r1.x;
                                            builder.C = r1.y;
                                            builder.D = colorInfoA;
                                        } else if (!"application/x-subrip".equals(str7)) {
                                            throw ParserException.a(null, "Unexpected MIME type.");
                                        }
                                        str9 = r1.f16445b;
                                        if (str9 != null) {
                                            builder.f13765b = r1.f16445b;
                                        }
                                        builder.f13764a = Integer.toString(i41);
                                        if (!r1.f16444a) {
                                            str10 = "video/x-matroska";
                                        }
                                        builder.m = MimeTypes.p(str10);
                                        builder.n = MimeTypes.p(str7);
                                        builder.o = i5;
                                        builder.d = r1.Z;
                                        builder.f13767e = i46;
                                        builder.q = list4;
                                        builder.f13771j = str4;
                                        builder.r = r1.m;
                                        r1.b0 = new Format(builder);
                                        r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                        sparseArray3.put(r1.d, r1);
                                        break;
                                    }
                                    int i48 = r1.R;
                                    String str15 = Util.f14242a;
                                    int iC = Util.C(i48, ByteOrder.LITTLE_ENDIAN);
                                    if (iC == 0) {
                                        Log.g("Unsupported PCM bit depth: " + r1.R + ". Setting mimeType to audio/x-unknown");
                                        str14 = "audio/x-unknown";
                                        listSingletonList = null;
                                        i5 = -1;
                                        list = listSingletonList;
                                        str4 = null;
                                        list6 = list;
                                        i4 = -1;
                                        list4 = list6;
                                        if (r1.P != null) {
                                            str4 = dolbyVisionConfigA.f14272a;
                                            str14 = "video/dolby-vision";
                                        }
                                        str7 = str14;
                                        boolean z5 = r1.Y;
                                        if (r1.X) {
                                            i6 = 2;
                                        } else {
                                            i6 = 0;
                                        }
                                        int i49 = (z5 ? 1 : 0) | i6;
                                        builder = new Format.Builder();
                                        if (MimeTypes.k(str7)) {
                                            builder.F = r1.Q;
                                            builder.G = r1.S;
                                            builder.H = i4;
                                        } else if (MimeTypes.o(str7)) {
                                            if (r1.s == 0) {
                                                i11 = r1.q;
                                                i7 = -1;
                                                if (i11 == -1) {
                                                    i11 = r1.n;
                                                }
                                                r1.q = i11;
                                                i12 = r1.r;
                                                if (i12 == -1) {
                                                    i12 = r1.o;
                                                }
                                                r1.r = i12;
                                            } else {
                                                i7 = -1;
                                            }
                                            i8 = r1.q;
                                            if (i8 != i7) {
                                                f2 = -1.0f;
                                            } else {
                                                f2 = -1.0f;
                                            }
                                            if (r1.z) {
                                                if (r1.F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                ColorInfo.Builder builder5 = new ColorInfo.Builder();
                                                builder5.f13730a = r1.A;
                                                builder5.f13731b = r1.C;
                                                builder5.f13732c = r1.B;
                                                builder5.d = bArr;
                                                int i410 = r1.p;
                                                builder5.f13733e = i410;
                                                builder5.f13734f = i410;
                                                colorInfoA = builder5.a();
                                            } else {
                                                colorInfoA = null;
                                            }
                                            str8 = r1.f16445b;
                                            if (str8 == null) {
                                                iIntValue = -1;
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (r1.t == 0) {
                                                i9 = iIntValue;
                                            } else {
                                                i9 = iIntValue;
                                            }
                                            builder.u = r1.n;
                                            builder.v = r1.o;
                                            builder.A = f2;
                                            builder.z = i9;
                                            builder.B = r1.x;
                                            builder.C = r1.y;
                                            builder.D = colorInfoA;
                                        } else if (!"application/x-subrip".equals(str7)) {
                                            throw ParserException.a(null, "Unexpected MIME type.");
                                        }
                                        str9 = r1.f16445b;
                                        if (str9 != null) {
                                            builder.f13765b = r1.f16445b;
                                        }
                                        builder.f13764a = Integer.toString(i41);
                                        if (!r1.f16444a) {
                                            str10 = "video/x-matroska";
                                        }
                                        builder.m = MimeTypes.p(str10);
                                        builder.n = MimeTypes.p(str7);
                                        builder.o = i5;
                                        builder.d = r1.Z;
                                        builder.f13767e = i49;
                                        builder.q = list4;
                                        builder.f13771j = str4;
                                        builder.r = r1.m;
                                        r1.b0 = new Format(builder);
                                        r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                        sparseArray3.put(r1.d, r1);
                                    } else {
                                        i4 = iC;
                                        list4 = null;
                                        i5 = -1;
                                        str4 = null;
                                        if (r1.P != null) {
                                            str4 = dolbyVisionConfigA.f14272a;
                                            str14 = "video/dolby-vision";
                                        }
                                        str7 = str14;
                                        boolean z6 = r1.Y;
                                        if (r1.X) {
                                            i6 = 2;
                                        } else {
                                            i6 = 0;
                                        }
                                        int i411 = (z6 ? 1 : 0) | i6;
                                        builder = new Format.Builder();
                                        if (MimeTypes.k(str7)) {
                                            builder.F = r1.Q;
                                            builder.G = r1.S;
                                            builder.H = i4;
                                        } else if (MimeTypes.o(str7)) {
                                            if (r1.s == 0) {
                                                i11 = r1.q;
                                                i7 = -1;
                                                if (i11 == -1) {
                                                    i11 = r1.n;
                                                }
                                                r1.q = i11;
                                                i12 = r1.r;
                                                if (i12 == -1) {
                                                    i12 = r1.o;
                                                }
                                                r1.r = i12;
                                            } else {
                                                i7 = -1;
                                            }
                                            i8 = r1.q;
                                            if (i8 != i7) {
                                                f2 = -1.0f;
                                            } else {
                                                f2 = -1.0f;
                                            }
                                            if (r1.z) {
                                                if (r1.F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                ColorInfo.Builder builder6 = new ColorInfo.Builder();
                                                builder6.f13730a = r1.A;
                                                builder6.f13731b = r1.C;
                                                builder6.f13732c = r1.B;
                                                builder6.d = bArr;
                                                int i412 = r1.p;
                                                builder6.f13733e = i412;
                                                builder6.f13734f = i412;
                                                colorInfoA = builder6.a();
                                            } else {
                                                colorInfoA = null;
                                            }
                                            str8 = r1.f16445b;
                                            if (str8 == null) {
                                                iIntValue = -1;
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (r1.t == 0) {
                                                i9 = iIntValue;
                                            } else {
                                                i9 = iIntValue;
                                            }
                                            builder.u = r1.n;
                                            builder.v = r1.o;
                                            builder.A = f2;
                                            builder.z = i9;
                                            builder.B = r1.x;
                                            builder.C = r1.y;
                                            builder.D = colorInfoA;
                                        } else if (!"application/x-subrip".equals(str7)) {
                                            throw ParserException.a(null, "Unexpected MIME type.");
                                        }
                                        str9 = r1.f16445b;
                                        if (str9 != null) {
                                            builder.f13765b = r1.f16445b;
                                        }
                                        builder.f13764a = Integer.toString(i41);
                                        if (!r1.f16444a) {
                                            str10 = "video/x-matroska";
                                        }
                                        builder.m = MimeTypes.p(str10);
                                        builder.n = MimeTypes.p(str7);
                                        builder.o = i5;
                                        builder.d = r1.Z;
                                        builder.f13767e = i411;
                                        builder.q = list4;
                                        builder.f13771j = str4;
                                        builder.r = r1.m;
                                        r1.b0 = new Format(builder);
                                        r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                        sparseArray3.put(r1.d, r1);
                                    }
                                } catch (ArrayIndexOutOfBoundsException unused) {
                                    throw ParserException.a(null, "Error parsing MS/ACM codec private");
                                }
                                break;
                            case 3:
                                i41 = i41;
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                r1.V = new TrueHdSampleRechunker();
                                str14 = "audio/true-hd";
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z7 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i413 = (z7 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder7 = new ColorInfo.Builder();
                                        builder7.f13730a = r1.A;
                                        builder7.f13731b = r1.C;
                                        builder7.f13732c = r1.B;
                                        builder7.d = bArr;
                                        int i414 = r1.p;
                                        builder7.f13733e = i414;
                                        builder7.f13734f = i414;
                                        colorInfoA = builder7.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i413;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 4:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                byte[] bArrA = r1.a(str11);
                                try {
                                    try {
                                        if (bArrA[0] != 2) {
                                            throw ParserException.a(null, "Error parsing vorbis codec private");
                                        }
                                        int i50 = 0;
                                        int i51 = 1;
                                        while (true) {
                                            int i52 = bArrA[i51] & 255;
                                            if (i52 != 255) {
                                                int i53 = i51 + 1;
                                                int i54 = i50 + i52;
                                                i41 = i41;
                                                int i55 = 0;
                                                while (true) {
                                                    int i56 = bArrA[i53] & 255;
                                                    if (i56 != 255) {
                                                        int i57 = i53 + 1;
                                                        int i58 = i55 + i56;
                                                        if (bArrA[i57] != 1) {
                                                            throw ParserException.a(null, "Error parsing vorbis codec private");
                                                        }
                                                        byte[] bArr3 = new byte[i54];
                                                        System.arraycopy(bArrA, i57, bArr3, 0, i54);
                                                        int i59 = i57 + i54;
                                                        if (bArrA[i59] != 3) {
                                                            throw ParserException.a(null, "Error parsing vorbis codec private");
                                                        }
                                                        int i60 = i59 + i58;
                                                        if (bArrA[i60] != 5) {
                                                            throw ParserException.a(null, "Error parsing vorbis codec private");
                                                        }
                                                        byte[] bArr4 = new byte[bArrA.length - i60];
                                                        System.arraycopy(bArrA, i60, bArr4, 0, bArrA.length - i60);
                                                        ArrayList arrayList2 = new ArrayList(2);
                                                        arrayList2.add(bArr3);
                                                        arrayList2.add(bArr4);
                                                        str14 = "audio/vorbis";
                                                        i5 = 8192;
                                                        list = arrayList2;
                                                        str4 = null;
                                                        list6 = list;
                                                        i4 = -1;
                                                        list4 = list6;
                                                        if (r1.P != null) {
                                                            str4 = dolbyVisionConfigA.f14272a;
                                                            str14 = "video/dolby-vision";
                                                        }
                                                        str7 = str14;
                                                        boolean z8 = r1.Y;
                                                        if (r1.X) {
                                                            i6 = 2;
                                                        } else {
                                                            i6 = 0;
                                                        }
                                                        int i415 = (z8 ? 1 : 0) | i6;
                                                        builder = new Format.Builder();
                                                        if (MimeTypes.k(str7)) {
                                                            builder.F = r1.Q;
                                                            builder.G = r1.S;
                                                            builder.H = i4;
                                                        } else if (MimeTypes.o(str7)) {
                                                            if (r1.s == 0) {
                                                                i11 = r1.q;
                                                                i7 = -1;
                                                                if (i11 == -1) {
                                                                    i11 = r1.n;
                                                                }
                                                                r1.q = i11;
                                                                i12 = r1.r;
                                                                if (i12 == -1) {
                                                                    i12 = r1.o;
                                                                }
                                                                r1.r = i12;
                                                            } else {
                                                                i7 = -1;
                                                            }
                                                            i8 = r1.q;
                                                            if (i8 != i7) {
                                                                f2 = -1.0f;
                                                            } else {
                                                                f2 = -1.0f;
                                                            }
                                                            if (r1.z) {
                                                                if (r1.F != -1.0f) {
                                                                    bArr = null;
                                                                } else {
                                                                    bArr = null;
                                                                }
                                                                ColorInfo.Builder builder8 = new ColorInfo.Builder();
                                                                builder8.f13730a = r1.A;
                                                                builder8.f13731b = r1.C;
                                                                builder8.f13732c = r1.B;
                                                                builder8.d = bArr;
                                                                int i416 = r1.p;
                                                                builder8.f13733e = i416;
                                                                builder8.f13734f = i416;
                                                                colorInfoA = builder8.a();
                                                            } else {
                                                                colorInfoA = null;
                                                            }
                                                            str8 = r1.f16445b;
                                                            if (str8 == null) {
                                                                iIntValue = -1;
                                                            } else {
                                                                iIntValue = -1;
                                                            }
                                                            if (r1.t == 0) {
                                                                i9 = iIntValue;
                                                            } else {
                                                                i9 = iIntValue;
                                                            }
                                                            builder.u = r1.n;
                                                            builder.v = r1.o;
                                                            builder.A = f2;
                                                            builder.z = i9;
                                                            builder.B = r1.x;
                                                            builder.C = r1.y;
                                                            builder.D = colorInfoA;
                                                        } else if (!"application/x-subrip".equals(str7)) {
                                                            throw ParserException.a(null, "Unexpected MIME type.");
                                                        }
                                                        str9 = r1.f16445b;
                                                        if (str9 != null) {
                                                            builder.f13765b = r1.f16445b;
                                                        }
                                                        builder.f13764a = Integer.toString(i41);
                                                        if (!r1.f16444a) {
                                                            str10 = "video/x-matroska";
                                                        }
                                                        builder.m = MimeTypes.p(str10);
                                                        builder.n = MimeTypes.p(str7);
                                                        builder.o = i5;
                                                        builder.d = r1.Z;
                                                        builder.f13767e = i415;
                                                        builder.q = list4;
                                                        builder.f13771j = str4;
                                                        builder.r = r1.m;
                                                        r1.b0 = new Format(builder);
                                                        r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                                        sparseArray3.put(r1.d, r1);
                                                    } else {
                                                        i55 += 255;
                                                        i53++;
                                                    }
                                                }
                                            } else {
                                                i50 += 255;
                                                i51++;
                                            }
                                            break;
                                        }
                                    } catch (ArrayIndexOutOfBoundsException unused2) {
                                    }
                                } catch (ArrayIndexOutOfBoundsException unused3) {
                                    r1 = 0;
                                }
                                throw ParserException.a(r1, "Error parsing vorbis codec private");
                            case 5:
                                str2 = "audio/mpeg-L2";
                                i41 = i41;
                                str14 = str2;
                                list = null;
                                i5 = 4096;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z9 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i417 = (z9 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder9 = new ColorInfo.Builder();
                                        builder9.f13730a = r1.A;
                                        builder9.f13731b = r1.C;
                                        builder9.f13732c = r1.B;
                                        builder9.d = bArr;
                                        int i418 = r1.p;
                                        builder9.f13733e = i418;
                                        builder9.f13734f = i418;
                                        colorInfoA = builder9.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i417;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 6:
                                str2 = "audio/mpeg";
                                i41 = i41;
                                str14 = str2;
                                list = null;
                                i5 = 4096;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z10 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i419 = (z10 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder10 = new ColorInfo.Builder();
                                        builder10.f13730a = r1.A;
                                        builder10.f13731b = r1.C;
                                        builder10.f13732c = r1.B;
                                        builder10.d = bArr;
                                        int i4110 = r1.p;
                                        builder10.f13733e = i4110;
                                        builder10.f13734f = i4110;
                                        colorInfoA = builder10.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i419;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 7:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                ParsableByteArray parsableByteArray3 = new ParsableByteArray(r1.a(r1.f16446c));
                                try {
                                    parsableByteArray3.O(16);
                                    R = parsableByteArray3.r();
                                    try {
                                        if (R != 1482049860) {
                                            if (R == 859189832) {
                                                R = 0;
                                                pair = new Pair("video/3gpp", null);
                                            } else if (R == 826496599) {
                                                int i61 = parsableByteArray3.f14195b + 20;
                                                byte[] bArr5 = parsableByteArray3.f14194a;
                                                while (true) {
                                                    if (i61 >= bArr5.length - 4) {
                                                        try {
                                                            throw ParserException.a(null, "Failed to find FourCC VC1 initialization data");
                                                        } catch (ArrayIndexOutOfBoundsException unused4) {
                                                            R = 0;
                                                            throw ParserException.a(R, "Error parsing FourCC private data");
                                                        }
                                                    }
                                                    if (bArr5[i61] == 0 && bArr5[i61 + 1] == 0 && bArr5[i61 + 2] == 1) {
                                                        if (bArr5[i61 + 3] == 15) {
                                                            pair = new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr5, i61, bArr5.length)));
                                                        }
                                                    }
                                                    i61++;
                                                }
                                                str3 = null;
                                            } else {
                                                Log.g("Unknown FourCC. Setting mimeType to video/x-unknown");
                                                str3 = null;
                                                pair = new Pair("video/x-unknown", null);
                                            }
                                            i41 = i41;
                                            str4 = str3;
                                            str14 = (String) pair.first;
                                            list2 = (List) pair.second;
                                            i5 = -1;
                                            list6 = list2;
                                            i4 = -1;
                                            list4 = list6;
                                            if (r1.P != null) {
                                                str4 = dolbyVisionConfigA.f14272a;
                                                str14 = "video/dolby-vision";
                                            }
                                            str7 = str14;
                                            boolean z11 = r1.Y;
                                            if (r1.X) {
                                                i6 = 2;
                                            } else {
                                                i6 = 0;
                                            }
                                            int i4111 = (z11 ? 1 : 0) | i6;
                                            builder = new Format.Builder();
                                            if (MimeTypes.k(str7)) {
                                                builder.F = r1.Q;
                                                builder.G = r1.S;
                                                builder.H = i4;
                                            } else if (MimeTypes.o(str7)) {
                                                if (r1.s == 0) {
                                                    i11 = r1.q;
                                                    i7 = -1;
                                                    if (i11 == -1) {
                                                        i11 = r1.n;
                                                    }
                                                    r1.q = i11;
                                                    i12 = r1.r;
                                                    if (i12 == -1) {
                                                        i12 = r1.o;
                                                    }
                                                    r1.r = i12;
                                                } else {
                                                    i7 = -1;
                                                }
                                                i8 = r1.q;
                                                if (i8 != i7) {
                                                    f2 = -1.0f;
                                                } else {
                                                    f2 = -1.0f;
                                                }
                                                if (r1.z) {
                                                    if (r1.F != -1.0f) {
                                                        bArr = null;
                                                    } else {
                                                        bArr = null;
                                                    }
                                                    ColorInfo.Builder builder11 = new ColorInfo.Builder();
                                                    builder11.f13730a = r1.A;
                                                    builder11.f13731b = r1.C;
                                                    builder11.f13732c = r1.B;
                                                    builder11.d = bArr;
                                                    int i4112 = r1.p;
                                                    builder11.f13733e = i4112;
                                                    builder11.f13734f = i4112;
                                                    colorInfoA = builder11.a();
                                                } else {
                                                    colorInfoA = null;
                                                }
                                                str8 = r1.f16445b;
                                                if (str8 == null) {
                                                    iIntValue = -1;
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (r1.t == 0) {
                                                    i9 = iIntValue;
                                                } else {
                                                    i9 = iIntValue;
                                                }
                                                builder.u = r1.n;
                                                builder.v = r1.o;
                                                builder.A = f2;
                                                builder.z = i9;
                                                builder.B = r1.x;
                                                builder.C = r1.y;
                                                builder.D = colorInfoA;
                                            } else if (!"application/x-subrip".equals(str7)) {
                                                throw ParserException.a(null, "Unexpected MIME type.");
                                            }
                                            str9 = r1.f16445b;
                                            if (str9 != null) {
                                                builder.f13765b = r1.f16445b;
                                            }
                                            builder.f13764a = Integer.toString(i41);
                                            if (!r1.f16444a) {
                                                str10 = "video/x-matroska";
                                            }
                                            builder.m = MimeTypes.p(str10);
                                            builder.n = MimeTypes.p(str7);
                                            builder.o = i5;
                                            builder.d = r1.Z;
                                            builder.f13767e = i4111;
                                            builder.q = list4;
                                            builder.f13771j = str4;
                                            builder.r = r1.m;
                                            r1.b0 = new Format(builder);
                                            r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                            sparseArray3.put(r1.d, r1);
                                        } else {
                                            R = 0;
                                            pair = new Pair("video/divx", null);
                                        }
                                        str3 = null;
                                        i41 = i41;
                                        str4 = str3;
                                        str14 = (String) pair.first;
                                        list2 = (List) pair.second;
                                        i5 = -1;
                                        list6 = list2;
                                        i4 = -1;
                                        list4 = list6;
                                        if (r1.P != null) {
                                            str4 = dolbyVisionConfigA.f14272a;
                                            str14 = "video/dolby-vision";
                                        }
                                        str7 = str14;
                                        boolean z12 = r1.Y;
                                        if (r1.X) {
                                            i6 = 2;
                                        } else {
                                            i6 = 0;
                                        }
                                        int i4113 = (z12 ? 1 : 0) | i6;
                                        builder = new Format.Builder();
                                        if (MimeTypes.k(str7)) {
                                            builder.F = r1.Q;
                                            builder.G = r1.S;
                                            builder.H = i4;
                                        } else if (MimeTypes.o(str7)) {
                                            if (r1.s == 0) {
                                                i11 = r1.q;
                                                i7 = -1;
                                                if (i11 == -1) {
                                                    i11 = r1.n;
                                                }
                                                r1.q = i11;
                                                i12 = r1.r;
                                                if (i12 == -1) {
                                                    i12 = r1.o;
                                                }
                                                r1.r = i12;
                                            } else {
                                                i7 = -1;
                                            }
                                            i8 = r1.q;
                                            if (i8 != i7) {
                                                f2 = -1.0f;
                                            } else {
                                                f2 = -1.0f;
                                            }
                                            if (r1.z) {
                                                if (r1.F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                ColorInfo.Builder builder12 = new ColorInfo.Builder();
                                                builder12.f13730a = r1.A;
                                                builder12.f13731b = r1.C;
                                                builder12.f13732c = r1.B;
                                                builder12.d = bArr;
                                                int i4114 = r1.p;
                                                builder12.f13733e = i4114;
                                                builder12.f13734f = i4114;
                                                colorInfoA = builder12.a();
                                            } else {
                                                colorInfoA = null;
                                            }
                                            str8 = r1.f16445b;
                                            if (str8 == null) {
                                                iIntValue = -1;
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (r1.t == 0) {
                                                i9 = iIntValue;
                                            } else {
                                                i9 = iIntValue;
                                            }
                                            builder.u = r1.n;
                                            builder.v = r1.o;
                                            builder.A = f2;
                                            builder.z = i9;
                                            builder.B = r1.x;
                                            builder.C = r1.y;
                                            builder.D = colorInfoA;
                                        } else if (!"application/x-subrip".equals(str7)) {
                                            throw ParserException.a(null, "Unexpected MIME type.");
                                        }
                                        str9 = r1.f16445b;
                                        if (str9 != null) {
                                            builder.f13765b = r1.f16445b;
                                        }
                                        builder.f13764a = Integer.toString(i41);
                                        if (!r1.f16444a) {
                                            str10 = "video/x-matroska";
                                        }
                                        builder.m = MimeTypes.p(str10);
                                        builder.n = MimeTypes.p(str7);
                                        builder.o = i5;
                                        builder.d = r1.Z;
                                        builder.f13767e = i4113;
                                        builder.q = list4;
                                        builder.f13771j = str4;
                                        builder.r = r1.m;
                                        r1.b0 = new Format(builder);
                                        r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                        sparseArray3.put(r1.d, r1);
                                        break;
                                    } catch (ArrayIndexOutOfBoundsException unused5) {
                                    }
                                } catch (ArrayIndexOutOfBoundsException unused6) {
                                    R = 0;
                                }
                                break;
                            case 8:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                byte[] bArr6 = new byte[4];
                                System.arraycopy(r1.a(str11), 0, bArr6, 0, 4);
                                i41 = i41;
                                str14 = str12;
                                listSingletonList = ImmutableList.A(bArr6);
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z13 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i4115 = (z13 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder13 = new ColorInfo.Builder();
                                        builder13.f13730a = r1.A;
                                        builder13.f13731b = r1.C;
                                        builder13.f13732c = r1.B;
                                        builder13.d = bArr;
                                        int i4116 = r1.p;
                                        builder13.f13733e = i4116;
                                        builder13.f13734f = i4116;
                                        colorInfoA = builder13.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i4115;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 10:
                                AvcConfig avcConfigA = AvcConfig.a(new ParsableByteArray(r1.a(r1.f16446c)));
                                ArrayList arrayList3 = avcConfigA.f16083a;
                                r1.c0 = avcConfigA.f16084b;
                                str5 = "video/avc";
                                str4 = avcConfigA.l;
                                list3 = arrayList3;
                                list5 = list3;
                                str14 = str5;
                                list2 = list5;
                                i5 = -1;
                                list6 = list2;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z14 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i4117 = (z14 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder14 = new ColorInfo.Builder();
                                        builder14.f13730a = r1.A;
                                        builder14.f13731b = r1.C;
                                        builder14.f13732c = r1.B;
                                        builder14.d = bArr;
                                        int i4118 = r1.p;
                                        builder14.f13733e = i4118;
                                        builder14.f13734f = i4118;
                                        colorInfoA = builder14.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i4117;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 11:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                i41 = i41;
                                str14 = "application/vobsub";
                                listSingletonList = ImmutableList.A(r1.a(str11));
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z15 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i4119 = (z15 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder15 = new ColorInfo.Builder();
                                        builder15.f13730a = r1.A;
                                        builder15.f13731b = r1.C;
                                        builder15.f13732c = r1.B;
                                        builder15.d = bArr;
                                        int i41110 = r1.p;
                                        builder15.f13733e = i41110;
                                        builder15.f13734f = i41110;
                                        colorInfoA = builder15.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i4119;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 12:
                                str13 = "audio/vnd.dts.hd";
                                i41 = i41;
                                str14 = str13;
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z16 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41111 = (z16 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder16 = new ColorInfo.Builder();
                                        builder16.f13730a = r1.A;
                                        builder16.f13731b = r1.C;
                                        builder16.f13732c = r1.B;
                                        builder16.d = bArr;
                                        int i41112 = r1.p;
                                        builder16.f13733e = i41112;
                                        builder16.f13734f = i41112;
                                        colorInfoA = builder16.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41111;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 13:
                                List listSingletonList2 = Collections.singletonList(r1.a(str11));
                                AacUtil.Config configB = AacUtil.b(new ParsableBitArray(r1.l), false);
                                r1.S = configB.f16066a;
                                r1.Q = configB.f16067b;
                                str4 = configB.f16068c;
                                str5 = "audio/mp4a-latm";
                                list3 = listSingletonList2;
                                list5 = list3;
                                str14 = str5;
                                list2 = list5;
                                i5 = -1;
                                list6 = list2;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z17 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41113 = (z17 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder17 = new ColorInfo.Builder();
                                        builder17.f13730a = r1.A;
                                        builder17.f13731b = r1.C;
                                        builder17.f13732c = r1.B;
                                        builder17.d = bArr;
                                        int i41114 = r1.p;
                                        builder17.f13733e = i41114;
                                        builder17.f13734f = i41114;
                                        colorInfoA = builder17.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41113;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 14:
                                str13 = "audio/ac3";
                                i41 = i41;
                                str14 = str13;
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z18 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41115 = (z18 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder18 = new ColorInfo.Builder();
                                        builder18.f13730a = r1.A;
                                        builder18.f13731b = r1.C;
                                        builder18.f13732c = r1.B;
                                        builder18.d = bArr;
                                        int i41116 = r1.p;
                                        builder18.f13733e = i41116;
                                        builder18.f13734f = i41116;
                                        colorInfoA = builder18.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41115;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 15:
                            case 21:
                                r1.W = true;
                                str13 = "audio/vnd.dts";
                                i41 = i41;
                                str14 = str13;
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z19 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41117 = (z19 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder19 = new ColorInfo.Builder();
                                        builder19.f13730a = r1.A;
                                        builder19.f13731b = r1.C;
                                        builder19.f13732c = r1.B;
                                        builder19.d = bArr;
                                        int i41118 = r1.p;
                                        builder19.f13733e = i41118;
                                        builder19.f13734f = i41118;
                                        colorInfoA = builder19.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41117;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 16:
                                byte[] bArr7 = r1.l;
                                str6 = "video/av01";
                                listA = bArr7 == null ? null : ImmutableList.A(bArr7);
                                i41 = i41;
                                str14 = str6;
                                listSingletonList = listA;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z110 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41119 = (z110 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder110 = new ColorInfo.Builder();
                                        builder110.f13730a = r1.A;
                                        builder110.f13731b = r1.C;
                                        builder110.f13732c = r1.B;
                                        builder110.d = bArr;
                                        int i411110 = r1.p;
                                        builder110.f13733e = i411110;
                                        builder110.f13734f = i411110;
                                        colorInfoA = builder110.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41119;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 17:
                                str13 = "video/x-vnd.on2.vp8";
                                i41 = i41;
                                str14 = str13;
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z111 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i411111 = (z111 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder111 = new ColorInfo.Builder();
                                        builder111.f13730a = r1.A;
                                        builder111.f13731b = r1.C;
                                        builder111.f13732c = r1.B;
                                        builder111.d = bArr;
                                        int i411112 = r1.p;
                                        builder111.f13733e = i411112;
                                        builder111.f13734f = i411112;
                                        colorInfoA = builder111.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i411111;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 18:
                                byte[] bArr8 = r1.l;
                                str6 = "video/x-vnd.on2.vp9";
                                listA = bArr8 == null ? null : ImmutableList.A(bArr8);
                                i41 = i41;
                                str14 = str6;
                                listSingletonList = listA;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z112 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i411113 = (z112 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder112 = new ColorInfo.Builder();
                                        builder112.f13730a = r1.A;
                                        builder112.f13731b = r1.C;
                                        builder112.f13732c = r1.B;
                                        builder112.d = bArr;
                                        int i411114 = r1.p;
                                        builder112.f13733e = i411114;
                                        builder112.f13734f = i411114;
                                        colorInfoA = builder112.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i411113;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 19:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                i41 = i41;
                                str14 = "application/pgs";
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z113 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i411115 = (z113 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder113 = new ColorInfo.Builder();
                                        builder113.f13730a = r1.A;
                                        builder113.f13731b = r1.C;
                                        builder113.f13732c = r1.B;
                                        builder113.d = bArr;
                                        int i411116 = r1.p;
                                        builder113.f13733e = i411116;
                                        builder113.f13734f = i411116;
                                        colorInfoA = builder113.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i411115;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 20:
                                i41 = i41;
                                str14 = str13;
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z114 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i411117 = (z114 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder114 = new ColorInfo.Builder();
                                        builder114.f13730a = r1.A;
                                        builder114.f13731b = r1.C;
                                        builder114.f13732c = r1.B;
                                        builder114.d = bArr;
                                        int i411118 = r1.p;
                                        builder114.f13733e = i411118;
                                        builder114.f13734f = i411118;
                                        colorInfoA = builder114.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i411117;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 22:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                if (r1.R == 32) {
                                    i41 = i41;
                                    list4 = null;
                                    i5 = -1;
                                    str4 = null;
                                    i4 = 4;
                                } else {
                                    Log.g("Unsupported floating point PCM bit depth: " + r1.R + ". Setting mimeType to audio/x-unknown");
                                    i41 = i41;
                                    str14 = "audio/x-unknown";
                                    listSingletonList = null;
                                    i5 = -1;
                                    list = listSingletonList;
                                    str4 = null;
                                    list6 = list;
                                    i4 = -1;
                                    list4 = list6;
                                }
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z115 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i411119 = (z115 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder115 = new ColorInfo.Builder();
                                        builder115.f13730a = r1.A;
                                        builder115.f13731b = r1.C;
                                        builder115.f13732c = r1.B;
                                        builder115.d = bArr;
                                        int i4111110 = r1.p;
                                        builder115.f13733e = i4111110;
                                        builder115.f13734f = i4111110;
                                        colorInfoA = builder115.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i411119;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 23:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                int i62 = r1.R;
                                if (i62 == 8) {
                                    i41 = i41;
                                    list4 = null;
                                    i5 = -1;
                                    str4 = null;
                                    i4 = 3;
                                } else {
                                    if (i62 == 16) {
                                        i4 = 268435456;
                                    } else if (i62 == 24) {
                                        i4 = 1342177280;
                                    } else if (i62 == 32) {
                                        i4 = 1610612736;
                                    } else {
                                        Log.g("Unsupported big endian PCM bit depth: " + r1.R + ". Setting mimeType to audio/x-unknown");
                                        i41 = i41;
                                        str14 = "audio/x-unknown";
                                        listSingletonList = null;
                                        i5 = -1;
                                        list = listSingletonList;
                                        str4 = null;
                                        list6 = list;
                                        i4 = -1;
                                        list4 = list6;
                                    }
                                    i41 = i41;
                                    list4 = null;
                                    i5 = -1;
                                    str4 = null;
                                }
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z116 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i4111111 = (z116 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder116 = new ColorInfo.Builder();
                                        builder116.f13730a = r1.A;
                                        builder116.f13731b = r1.C;
                                        builder116.f13732c = r1.B;
                                        builder116.d = bArr;
                                        int i4111112 = r1.p;
                                        builder116.f13733e = i4111112;
                                        builder116.f13734f = i4111112;
                                        colorInfoA = builder116.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i4111111;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 24:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                int i63 = r1.R;
                                String str16 = Util.f14242a;
                                int iC2 = Util.C(i63, ByteOrder.LITTLE_ENDIAN);
                                if (iC2 == 0) {
                                    Log.g("Unsupported little endian PCM bit depth: " + r1.R + ". Setting mimeType to audio/x-unknown");
                                    i41 = i41;
                                    str14 = "audio/x-unknown";
                                    listSingletonList = null;
                                    i5 = -1;
                                    list = listSingletonList;
                                    str4 = null;
                                    list6 = list;
                                    i4 = -1;
                                    list4 = list6;
                                    if (r1.P != null) {
                                        str4 = dolbyVisionConfigA.f14272a;
                                        str14 = "video/dolby-vision";
                                    }
                                    str7 = str14;
                                    boolean z117 = r1.Y;
                                    if (r1.X) {
                                        i6 = 2;
                                    } else {
                                        i6 = 0;
                                    }
                                    int i4111113 = (z117 ? 1 : 0) | i6;
                                    builder = new Format.Builder();
                                    if (MimeTypes.k(str7)) {
                                        builder.F = r1.Q;
                                        builder.G = r1.S;
                                        builder.H = i4;
                                    } else if (MimeTypes.o(str7)) {
                                        if (r1.s == 0) {
                                            i11 = r1.q;
                                            i7 = -1;
                                            if (i11 == -1) {
                                                i11 = r1.n;
                                            }
                                            r1.q = i11;
                                            i12 = r1.r;
                                            if (i12 == -1) {
                                                i12 = r1.o;
                                            }
                                            r1.r = i12;
                                        } else {
                                            i7 = -1;
                                        }
                                        i8 = r1.q;
                                        if (i8 != i7) {
                                            f2 = -1.0f;
                                        } else {
                                            f2 = -1.0f;
                                        }
                                        if (r1.z) {
                                            if (r1.F != -1.0f) {
                                                bArr = null;
                                            } else {
                                                bArr = null;
                                            }
                                            ColorInfo.Builder builder117 = new ColorInfo.Builder();
                                            builder117.f13730a = r1.A;
                                            builder117.f13731b = r1.C;
                                            builder117.f13732c = r1.B;
                                            builder117.d = bArr;
                                            int i4111114 = r1.p;
                                            builder117.f13733e = i4111114;
                                            builder117.f13734f = i4111114;
                                            colorInfoA = builder117.a();
                                        } else {
                                            colorInfoA = null;
                                        }
                                        str8 = r1.f16445b;
                                        if (str8 == null) {
                                            iIntValue = -1;
                                        } else {
                                            iIntValue = -1;
                                        }
                                        if (r1.t == 0) {
                                            i9 = iIntValue;
                                        } else {
                                            i9 = iIntValue;
                                        }
                                        builder.u = r1.n;
                                        builder.v = r1.o;
                                        builder.A = f2;
                                        builder.z = i9;
                                        builder.B = r1.x;
                                        builder.C = r1.y;
                                        builder.D = colorInfoA;
                                    } else if (!"application/x-subrip".equals(str7)) {
                                        throw ParserException.a(null, "Unexpected MIME type.");
                                    }
                                    str9 = r1.f16445b;
                                    if (str9 != null) {
                                        builder.f13765b = r1.f16445b;
                                    }
                                    builder.f13764a = Integer.toString(i41);
                                    if (!r1.f16444a) {
                                        str10 = "video/x-matroska";
                                    }
                                    builder.m = MimeTypes.p(str10);
                                    builder.n = MimeTypes.p(str7);
                                    builder.o = i5;
                                    builder.d = r1.Z;
                                    builder.f13767e = i4111113;
                                    builder.q = list4;
                                    builder.f13771j = str4;
                                    builder.r = r1.m;
                                    r1.b0 = new Format(builder);
                                    r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                    sparseArray3.put(r1.d, r1);
                                } else {
                                    i4 = iC2;
                                    i41 = i41;
                                    list4 = null;
                                    i5 = -1;
                                    str4 = null;
                                    if (r1.P != null) {
                                        str4 = dolbyVisionConfigA.f14272a;
                                        str14 = "video/dolby-vision";
                                    }
                                    str7 = str14;
                                    boolean z118 = r1.Y;
                                    if (r1.X) {
                                        i6 = 2;
                                    } else {
                                        i6 = 0;
                                    }
                                    int i4111115 = (z118 ? 1 : 0) | i6;
                                    builder = new Format.Builder();
                                    if (MimeTypes.k(str7)) {
                                        builder.F = r1.Q;
                                        builder.G = r1.S;
                                        builder.H = i4;
                                    } else if (MimeTypes.o(str7)) {
                                        if (r1.s == 0) {
                                            i11 = r1.q;
                                            i7 = -1;
                                            if (i11 == -1) {
                                                i11 = r1.n;
                                            }
                                            r1.q = i11;
                                            i12 = r1.r;
                                            if (i12 == -1) {
                                                i12 = r1.o;
                                            }
                                            r1.r = i12;
                                        } else {
                                            i7 = -1;
                                        }
                                        i8 = r1.q;
                                        if (i8 != i7) {
                                            f2 = -1.0f;
                                        } else {
                                            f2 = -1.0f;
                                        }
                                        if (r1.z) {
                                            if (r1.F != -1.0f) {
                                                bArr = null;
                                            } else {
                                                bArr = null;
                                            }
                                            ColorInfo.Builder builder118 = new ColorInfo.Builder();
                                            builder118.f13730a = r1.A;
                                            builder118.f13731b = r1.C;
                                            builder118.f13732c = r1.B;
                                            builder118.d = bArr;
                                            int i4111116 = r1.p;
                                            builder118.f13733e = i4111116;
                                            builder118.f13734f = i4111116;
                                            colorInfoA = builder118.a();
                                        } else {
                                            colorInfoA = null;
                                        }
                                        str8 = r1.f16445b;
                                        if (str8 == null) {
                                            iIntValue = -1;
                                        } else {
                                            iIntValue = -1;
                                        }
                                        if (r1.t == 0) {
                                            i9 = iIntValue;
                                        } else {
                                            i9 = iIntValue;
                                        }
                                        builder.u = r1.n;
                                        builder.v = r1.o;
                                        builder.A = f2;
                                        builder.z = i9;
                                        builder.B = r1.x;
                                        builder.C = r1.y;
                                        builder.D = colorInfoA;
                                    } else if (!"application/x-subrip".equals(str7)) {
                                        throw ParserException.a(null, "Unexpected MIME type.");
                                    }
                                    str9 = r1.f16445b;
                                    if (str9 != null) {
                                        builder.f13765b = r1.f16445b;
                                    }
                                    builder.f13764a = Integer.toString(i41);
                                    if (!r1.f16444a) {
                                        str10 = "video/x-matroska";
                                    }
                                    builder.m = MimeTypes.p(str10);
                                    builder.n = MimeTypes.p(str7);
                                    builder.o = i5;
                                    builder.d = r1.Z;
                                    builder.f13767e = i4111115;
                                    builder.q = list4;
                                    builder.f13771j = str4;
                                    builder.r = r1.m;
                                    r1.b0 = new Format(builder);
                                    r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                    sparseArray3.put(r1.d, r1);
                                }
                                break;
                            case 25:
                            case 26:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                i41 = i41;
                                str14 = "text/x-ssa";
                                listSingletonList = ImmutableList.D(MatroskaExtractor.l0, r1.a(str11));
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z119 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i4111117 = (z119 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder119 = new ColorInfo.Builder();
                                        builder119.f13730a = r1.A;
                                        builder119.f13731b = r1.C;
                                        builder119.f13732c = r1.B;
                                        builder119.d = bArr;
                                        int i4111118 = r1.p;
                                        builder119.f13733e = i4111118;
                                        builder119.f13734f = i4111118;
                                        colorInfoA = builder119.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i4111117;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 27:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                HevcConfig hevcConfigA = HevcConfig.a(new ParsableByteArray(r1.a(r1.f16446c)), false, null);
                                List list8 = hevcConfigA.f16167a;
                                r1.c0 = hevcConfigA.f16168b;
                                str5 = "video/hevc";
                                str4 = hevcConfigA.n;
                                list5 = list8;
                                str14 = str5;
                                list2 = list5;
                                i5 = -1;
                                list6 = list2;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z1110 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i4111119 = (z1110 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder1110 = new ColorInfo.Builder();
                                        builder1110.f13730a = r1.A;
                                        builder1110.f13731b = r1.C;
                                        builder1110.f13732c = r1.B;
                                        builder1110.d = bArr;
                                        int i41111110 = r1.p;
                                        builder1110.f13733e = i41111110;
                                        builder1110.f13734f = i41111110;
                                        colorInfoA = builder1110.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i4111119;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 28:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                i41 = i41;
                                str14 = "text/vtt";
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z1111 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41111111 = (z1111 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder1111 = new ColorInfo.Builder();
                                        builder1111.f13730a = r1.A;
                                        builder1111.f13731b = r1.C;
                                        builder1111.f13732c = r1.B;
                                        builder1111.d = bArr;
                                        int i41111112 = r1.p;
                                        builder1111.f13733e = i41111112;
                                        builder1111.f13734f = i41111112;
                                        colorInfoA = builder1111.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41111111;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 29:
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                i41 = i41;
                                str14 = "application/x-subrip";
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z1112 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41111113 = (z1112 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder1112 = new ColorInfo.Builder();
                                        builder1112.f13730a = r1.A;
                                        builder1112.f13731b = r1.C;
                                        builder1112.f13732c = r1.B;
                                        builder1112.d = bArr;
                                        int i41111114 = r1.p;
                                        builder1112.f13733e = i41111114;
                                        builder1112.f13734f = i41111114;
                                        colorInfoA = builder1112.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41111113;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 30:
                                str13 = "video/mpeg2";
                                i41 = i41;
                                str14 = str13;
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z1113 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41111115 = (z1113 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder1113 = new ColorInfo.Builder();
                                        builder1113.f13730a = r1.A;
                                        builder1113.f13731b = r1.C;
                                        builder1113.f13732c = r1.B;
                                        builder1113.d = bArr;
                                        int i41111116 = r1.p;
                                        builder1113.f13733e = i41111116;
                                        builder1113.f13734f = i41111116;
                                        colorInfoA = builder1113.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41111115;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 31:
                                str13 = "audio/eac3";
                                i41 = i41;
                                str14 = str13;
                                listSingletonList = null;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z1114 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41111117 = (z1114 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder1114 = new ColorInfo.Builder();
                                        builder1114.f13730a = r1.A;
                                        builder1114.f13731b = r1.C;
                                        builder1114.f13732c = r1.B;
                                        builder1114.d = bArr;
                                        int i41111118 = r1.p;
                                        builder1114.f13733e = i41111118;
                                        builder1114.f13734f = i41111118;
                                        colorInfoA = builder1114.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41111117;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 32:
                                str6 = "audio/flac";
                                listA = Collections.singletonList(r1.a(str11));
                                i41 = i41;
                                str14 = str6;
                                listSingletonList = listA;
                                i5 = -1;
                                list = listSingletonList;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z1115 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i41111119 = (z1115 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder1115 = new ColorInfo.Builder();
                                        builder1115.f13730a = r1.A;
                                        builder1115.f13731b = r1.C;
                                        builder1115.f13732c = r1.B;
                                        builder1115.d = bArr;
                                        int i411111110 = r1.p;
                                        builder1115.f13733e = i411111110;
                                        builder1115.f13734f = i411111110;
                                        colorInfoA = builder1115.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i41111119;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            case 33:
                                ArrayList arrayList4 = new ArrayList(3);
                                arrayList4.add(r1.a(r1.f16446c));
                                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                                str10 = "video/webm";
                                str12 = "application/dvbsubs";
                                arrayList4.add(byteBufferAllocate.order(byteOrder).putLong(r1.T).array());
                                arrayList4.add(ByteBuffer.allocate(8).order(byteOrder).putLong(r1.U).array());
                                i41 = i41;
                                i5 = 5760;
                                str14 = "audio/opus";
                                list = arrayList4;
                                str4 = null;
                                list6 = list;
                                i4 = -1;
                                list4 = list6;
                                if (r1.P != null) {
                                    str4 = dolbyVisionConfigA.f14272a;
                                    str14 = "video/dolby-vision";
                                }
                                str7 = str14;
                                boolean z1116 = r1.Y;
                                if (r1.X) {
                                    i6 = 2;
                                } else {
                                    i6 = 0;
                                }
                                int i411111111 = (z1116 ? 1 : 0) | i6;
                                builder = new Format.Builder();
                                if (MimeTypes.k(str7)) {
                                    builder.F = r1.Q;
                                    builder.G = r1.S;
                                    builder.H = i4;
                                } else if (MimeTypes.o(str7)) {
                                    if (r1.s == 0) {
                                        i11 = r1.q;
                                        i7 = -1;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.q = i11;
                                        i12 = r1.r;
                                        if (i12 == -1) {
                                            i12 = r1.o;
                                        }
                                        r1.r = i12;
                                    } else {
                                        i7 = -1;
                                    }
                                    i8 = r1.q;
                                    if (i8 != i7) {
                                        f2 = -1.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    if (r1.z) {
                                        if (r1.F != -1.0f) {
                                            bArr = null;
                                        } else {
                                            bArr = null;
                                        }
                                        ColorInfo.Builder builder1116 = new ColorInfo.Builder();
                                        builder1116.f13730a = r1.A;
                                        builder1116.f13731b = r1.C;
                                        builder1116.f13732c = r1.B;
                                        builder1116.d = bArr;
                                        int i411111112 = r1.p;
                                        builder1116.f13733e = i411111112;
                                        builder1116.f13734f = i411111112;
                                        colorInfoA = builder1116.a();
                                    } else {
                                        colorInfoA = null;
                                    }
                                    str8 = r1.f16445b;
                                    if (str8 == null) {
                                        iIntValue = -1;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.t == 0) {
                                        i9 = iIntValue;
                                    } else {
                                        i9 = iIntValue;
                                    }
                                    builder.u = r1.n;
                                    builder.v = r1.o;
                                    builder.A = f2;
                                    builder.z = i9;
                                    builder.B = r1.x;
                                    builder.C = r1.y;
                                    builder.D = colorInfoA;
                                } else if (!"application/x-subrip".equals(str7)) {
                                    throw ParserException.a(null, "Unexpected MIME type.");
                                }
                                str9 = r1.f16445b;
                                if (str9 != null) {
                                    builder.f13765b = r1.f16445b;
                                }
                                builder.f13764a = Integer.toString(i41);
                                if (!r1.f16444a) {
                                    str10 = "video/x-matroska";
                                }
                                builder.m = MimeTypes.p(str10);
                                builder.n = MimeTypes.p(str7);
                                builder.o = i5;
                                builder.d = r1.Z;
                                builder.f13767e = i411111111;
                                builder.q = list4;
                                builder.f13771j = str4;
                                builder.r = r1.m;
                                r1.b0 = new Format(builder);
                                r1.a0 = matroskaExtractor.j0.r(r1.d, r1.f16447e);
                                sparseArray3.put(r1.d, r1);
                                break;
                            default:
                                throw ParserException.a(null, "Unrecognized codec identifier.");
                        }
                        break;
                }
                matroskaExtractor.y = null;
                return true;
            }
            int i64 = 0;
            boolean z20 = true;
            int i65 = this.f16425e;
            ?? r7 = this.f16424c;
            ?? r12 = i64;
            if (i65 == 0) {
                int i66 = 4;
                long jB = r7.b(extractorInput, true, false, 4);
                if (jB == -2) {
                    extractorInput.g();
                    int i67 = i64;
                    while (true) {
                        byte[] bArr9 = this.f16422a;
                        extractorInput.b(i67, i66, bArr9);
                        byte b3 = bArr9[i67];
                        int i68 = 0;
                        while (true) {
                            if (i68 >= 8) {
                                i3 = -1;
                            } else if ((VarintReader.d[i68] & ((long) b3)) != 0) {
                                i3 = i68 + 1;
                            } else {
                                i68++;
                            }
                        }
                        if (i3 != -1 && i3 <= 4) {
                            iA = (int) VarintReader.a(i3, bArr9, false);
                            ((MatroskaExtractor.InnerEbmlProcessor) this.d).getClass();
                            if (iA == 357149030 || iA == 524531317 || iA == 475249515 || iA == 374648427) {
                            }
                        }
                        extractorInput.m(1);
                        i66 = 4;
                        i67 = 0;
                    }
                    extractorInput.m(i3);
                    jB = iA;
                }
                z20 = true;
                if (jB == -1) {
                    return false;
                }
                r12 = 0;
                this.f16426f = (int) jB;
                this.f16425e = 1;
            }
            if (this.f16425e == z20) {
                this.g = r7.b(extractorInput, r12, z20, 8);
                this.f16425e = 2;
            }
            EbmlProcessor ebmlProcessor2 = this.d;
            int i69 = this.f16426f;
            ((MatroskaExtractor.InnerEbmlProcessor) ebmlProcessor2).getClass();
            switch (i69) {
                case 131:
                case 136:
                case 155:
                case 159:
                case 176:
                case 179:
                case 186:
                case 215:
                case 231:
                case 238:
                case 240:
                case 241:
                case 247:
                case NSType.IXFR /* 251 */:
                case 16871:
                case 16980:
                case 17029:
                case 17143:
                case 18401:
                case 18408:
                case 20529:
                case 20530:
                case 21420:
                case 21432:
                case 21680:
                case 21682:
                case 21690:
                case 21930:
                case 21938:
                case 21945:
                case 21946:
                case 21947:
                case 21948:
                case 21949:
                case 21998:
                case 22186:
                case 22203:
                case 25188:
                case 30114:
                case 30321:
                case 2352003:
                case 2807729:
                    i2 = 2;
                    break;
                case 134:
                case 17026:
                case 21358:
                case 2274716:
                    i2 = 3;
                    break;
                case 160:
                case 166:
                case 174:
                case 183:
                case 187:
                case BERTags.FLAGS /* 224 */:
                case 225:
                case 16868:
                case 18407:
                case 19899:
                case 20532:
                case 20533:
                case 21936:
                case 21968:
                case 25152:
                case 28032:
                case 30113:
                case 30320:
                case 290298740:
                case 357149030:
                case 374648427:
                case 408125543:
                case 440786851:
                case 475249515:
                case 524531317:
                    i2 = 1;
                    break;
                case 161:
                case 163:
                case 165:
                case 16877:
                case 16981:
                case 18402:
                case 21419:
                case 25506:
                case 30322:
                    i2 = 4;
                    break;
                case 181:
                case 17545:
                case 21969:
                case 21970:
                case 21971:
                case 21972:
                case 21973:
                case 21974:
                case 21975:
                case 21976:
                case 21977:
                case 21978:
                case 30323:
                case 30324:
                case 30325:
                    i2 = 5;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            if (i2 != 0) {
                if (i2 == 1) {
                    long position = extractorInput.getPosition();
                    arrayDeque.push(new MasterElement(this.f16426f, this.g + position));
                    ((MatroskaExtractor.InnerEbmlProcessor) this.d).c(this.f16426f, position, this.g);
                    this.f16425e = 0;
                    return true;
                }
                if (i2 == 2) {
                    long j20 = this.g;
                    if (j20 <= 8) {
                        ((MatroskaExtractor.InnerEbmlProcessor) this.d).b(this.f16426f, b(extractorInput, (int) j20));
                        this.f16425e = 0;
                        return true;
                    }
                    throw ParserException.a(null, "Invalid integer size: " + this.g);
                }
                if (i2 == 3) {
                    long j21 = this.g;
                    if (j21 > 2147483647L) {
                        throw ParserException.a(null, "String element size: " + this.g);
                    }
                    EbmlProcessor ebmlProcessor3 = this.d;
                    int i70 = this.f16426f;
                    int i71 = (int) j21;
                    if (i71 == 0) {
                        str = "";
                    } else {
                        byte[] bArr10 = new byte[i71];
                        extractorInput.readFully(bArr10, 0, i71);
                        while (i71 > 0 && bArr10[i71 - 1] == 0) {
                            i71--;
                        }
                        str = new String(bArr10, 0, i71);
                    }
                    MatroskaExtractor matroskaExtractor2 = MatroskaExtractor.this;
                    if (i70 == 134) {
                        matroskaExtractor2.h(i70);
                        matroskaExtractor2.y.f16446c = str;
                    } else if (i70 == 17026) {
                        if (!"webm".equals(str) && !"matroska".equals(str)) {
                            throw ParserException.a(null, "DocType " + str + " not supported");
                        }
                        matroskaExtractor2.w = str.equals("webm");
                    } else if (i70 == 21358) {
                        matroskaExtractor2.h(i70);
                        matroskaExtractor2.y.f16445b = str;
                    } else if (i70 == 2274716) {
                        matroskaExtractor2.h(i70);
                        matroskaExtractor2.y.Z = str;
                    }
                    this.f16425e = 0;
                    return true;
                }
                if (i2 == 4) {
                    ((MatroskaExtractor.InnerEbmlProcessor) this.d).a(this.f16426f, (int) this.g, extractorInput);
                    this.f16425e = 0;
                    return true;
                }
                if (i2 != 5) {
                    throw ParserException.a(null, "Invalid element type " + i2);
                }
                long j22 = this.g;
                if (j22 != 4 && j22 != 8) {
                    throw ParserException.a(null, "Invalid float size: " + this.g);
                }
                EbmlProcessor ebmlProcessor4 = this.d;
                int i72 = this.f16426f;
                int i73 = (int) j22;
                long jB2 = b(extractorInput, i73);
                double dIntBitsToFloat = i73 == 4 ? Float.intBitsToFloat((int) jB2) : Double.longBitsToDouble(jB2);
                MatroskaExtractor matroskaExtractor3 = MatroskaExtractor.this;
                if (i72 == 181) {
                    matroskaExtractor3.h(i72);
                    matroskaExtractor3.y.S = (int) dIntBitsToFloat;
                } else if (i72 != 17545) {
                    switch (i72) {
                        case 21969:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.F = (float) dIntBitsToFloat;
                            break;
                        case 21970:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.G = (float) dIntBitsToFloat;
                            break;
                        case 21971:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.H = (float) dIntBitsToFloat;
                            break;
                        case 21972:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.I = (float) dIntBitsToFloat;
                            break;
                        case 21973:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.J = (float) dIntBitsToFloat;
                            break;
                        case 21974:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.K = (float) dIntBitsToFloat;
                            break;
                        case 21975:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.L = (float) dIntBitsToFloat;
                            break;
                        case 21976:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.M = (float) dIntBitsToFloat;
                            break;
                        case 21977:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.N = (float) dIntBitsToFloat;
                            break;
                        case 21978:
                            matroskaExtractor3.h(i72);
                            matroskaExtractor3.y.O = (float) dIntBitsToFloat;
                            break;
                        default:
                            switch (i72) {
                                case 30323:
                                    matroskaExtractor3.h(i72);
                                    matroskaExtractor3.y.u = (float) dIntBitsToFloat;
                                    break;
                                case 30324:
                                    matroskaExtractor3.h(i72);
                                    matroskaExtractor3.y.v = (float) dIntBitsToFloat;
                                    break;
                                case 30325:
                                    matroskaExtractor3.h(i72);
                                    matroskaExtractor3.y.w = (float) dIntBitsToFloat;
                                    break;
                            }
                            break;
                    }
                } else {
                    matroskaExtractor3.u = (long) dIntBitsToFloat;
                }
                this.f16425e = 0;
                return true;
            }
            extractorInput.m((int) this.g);
            this.f16425e = 0;
        }
    }

    public final long b(ExtractorInput extractorInput, int i2) {
        byte[] bArr = this.f16422a;
        extractorInput.readFully(bArr, 0, i2);
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 = (j2 << 8) | ((long) (bArr[i3] & 255));
        }
        return j2;
    }
}
