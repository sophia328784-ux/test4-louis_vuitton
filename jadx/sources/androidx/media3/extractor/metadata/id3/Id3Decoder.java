package androidx.media3.extractor.metadata.id3;

import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.a;
import defpackage.az;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final class Id3Decoder extends SimpleMetadataDecoder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final az f16379b = new az(29);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FramePredicate f16380a;

    public interface FramePredicate {
        boolean g(int i2, int i3, int i4, int i5, int i6);
    }

    public static final class Id3Header {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16381a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f16382b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16383c;

        public Id3Header(int i2, boolean z, int i3) {
            this.f16381a = i2;
            this.f16382b = z;
            this.f16383c = i3;
        }
    }

    public Id3Decoder(FramePredicate framePredicate) {
        this.f16380a = framePredicate;
    }

    public static ApicFrame d(ParsableByteArray parsableByteArray, int i2, int i3) {
        int iV;
        String strConcat;
        int iA = parsableByteArray.A();
        Charset charsetS = s(iA);
        int i4 = i2 - 1;
        byte[] bArr = new byte[i4];
        parsableByteArray.k(0, i4, bArr);
        if (i3 == 2) {
            strConcat = "image/" + Ascii.c(new String(bArr, 0, 3, StandardCharsets.ISO_8859_1));
            if ("image/jpg".equals(strConcat)) {
                strConcat = "image/jpeg";
            }
            iV = 2;
        } else {
            iV = v(0, bArr);
            String strC = Ascii.c(new String(bArr, 0, iV, StandardCharsets.ISO_8859_1));
            strConcat = strC.indexOf(47) == -1 ? "image/".concat(strC) : strC;
        }
        int i5 = bArr[iV + 1] & 255;
        int i6 = iV + 2;
        int iU = u(i6, iA, bArr);
        String str = new String(bArr, i6, iU - i6, charsetS);
        int iR = r(iA) + iU;
        return new ApicFrame(strConcat, str, i5, i4 <= iR ? Util.f14243b : Arrays.copyOfRange(bArr, iR, i4));
    }

    public static ChapterFrame e(ParsableByteArray parsableByteArray, int i2, int i3, boolean z, int i4, FramePredicate framePredicate) throws Throwable {
        int i5 = parsableByteArray.f14195b;
        int iV = v(i5, parsableByteArray.f14194a);
        String str = new String(parsableByteArray.f14194a, i5, iV - i5, StandardCharsets.ISO_8859_1);
        parsableByteArray.N(iV + 1);
        int iM = parsableByteArray.m();
        int iM2 = parsableByteArray.m();
        long jC = parsableByteArray.C();
        if (jC == BodyPartID.bodyIdMax) {
            jC = -1;
        }
        long jC2 = parsableByteArray.C();
        long j2 = jC2 == BodyPartID.bodyIdMax ? -1L : jC2;
        ArrayList arrayList = new ArrayList();
        int i6 = i5 + i2;
        while (parsableByteArray.f14195b < i6) {
            Id3Frame id3FrameH = h(i3, parsableByteArray, z, i4, framePredicate);
            if (id3FrameH != null) {
                arrayList.add(id3FrameH);
            }
        }
        return new ChapterFrame(str, iM, iM2, jC, j2, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static ChapterTocFrame f(ParsableByteArray parsableByteArray, int i2, int i3, boolean z, int i4, FramePredicate framePredicate) throws Throwable {
        int i5 = parsableByteArray.f14195b;
        int iV = v(i5, parsableByteArray.f14194a);
        String str = new String(parsableByteArray.f14194a, i5, iV - i5, StandardCharsets.ISO_8859_1);
        parsableByteArray.N(iV + 1);
        int iA = parsableByteArray.A();
        boolean z2 = (iA & 2) != 0;
        boolean z3 = (iA & 1) != 0;
        int iA2 = parsableByteArray.A();
        String[] strArr = new String[iA2];
        for (int i6 = 0; i6 < iA2; i6++) {
            int i7 = parsableByteArray.f14195b;
            int iV2 = v(i7, parsableByteArray.f14194a);
            strArr[i6] = new String(parsableByteArray.f14194a, i7, iV2 - i7, StandardCharsets.ISO_8859_1);
            parsableByteArray.N(iV2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i8 = i5 + i2;
        while (parsableByteArray.f14195b < i8) {
            Id3Frame id3FrameH = h(i3, parsableByteArray, z, i4, framePredicate);
            if (id3FrameH != null) {
                arrayList.add(id3FrameH);
            }
        }
        return new ChapterTocFrame(str, z2, z3, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static CommentFrame g(int i2, ParsableByteArray parsableByteArray) {
        if (i2 < 4) {
            return null;
        }
        int iA = parsableByteArray.A();
        Charset charsetS = s(iA);
        byte[] bArr = new byte[3];
        parsableByteArray.k(0, 3, bArr);
        String str = new String(bArr, 0, 3);
        int i3 = i2 - 4;
        byte[] bArr2 = new byte[i3];
        parsableByteArray.k(0, i3, bArr2);
        int iU = u(0, iA, bArr2);
        String str2 = new String(bArr2, 0, iU, charsetS);
        int iR = r(iA) + iU;
        return new CommentFrame(str, str2, l(bArr2, iR, u(iR, iA, bArr2), charsetS));
    }

    /* JADX WARN: Code duplicated, block: B:186:0x0230  */
    /* JADX WARN: Instruction removed from duplicated block: B:186:0x0230, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [androidx.media3.extractor.metadata.id3.Id3Frame] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [androidx.media3.common.util.ParsableByteArray] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.media3.common.util.ParsableByteArray] */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.media3.common.util.ParsableByteArray] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [int] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14, types: [int] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public static Id3Frame h(int i2, ParsableByteArray parsableByteArray, boolean z, int i3, FramePredicate framePredicate) throws Throwable {
        int iE;
        ?? r1;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        ?? r2;
        ?? r8;
        Throwable th;
        int i4;
        ?? r9;
        ?? r3;
        ?? r12;
        ?? r10;
        Id3Frame binaryFrame;
        int i5 = i2;
        ParsableByteArray parsableByteArray2 = parsableByteArray;
        int iA = parsableByteArray2.A();
        int iA2 = parsableByteArray2.A();
        int iA3 = parsableByteArray2.A();
        int iA4 = i5 >= 3 ? parsableByteArray2.A() : 0;
        if (i5 == 4) {
            iE = parsableByteArray2.E();
            if (!z) {
                iE = (((iE >> 24) & 255) << 21) | (iE & 255) | (((iE >> 8) & 255) << 7) | (((iE >> 16) & 255) << 14);
            }
        } else {
            iE = i5 == 3 ? parsableByteArray2.E() : parsableByteArray2.D();
        }
        iA3 = iE;
        int iH = i5 >= 3 ? parsableByteArray2.H() : 0;
        if (iA == 0 && iA2 == 0 && iA3 == 0 && iA4 == 0 && iA3 == 0 && iH == 0) {
            parsableByteArray2.N(parsableByteArray2.f14196c);
            return null;
        }
        int i6 = parsableByteArray2.f14195b + iA3;
        if (i6 > parsableByteArray2.f14196c) {
            Log.g("Frame size exceeds remaining tag data");
            parsableByteArray2.N(parsableByteArray2.f14196c);
            return null;
        }
        if (framePredicate == null) {
            r1 = iA2;
        } else if (!framePredicate.g(i5, iA, iA2, iA3, iA4)) {
            i5 = i5;
            r1 = iA2;
            parsableByteArray2.N(i6);
            return null;
        }
        i5 = i5;
        r1 = iA2;
        if (i5 == 3) {
            z2 = (iH & 128) != 0;
            z3 = (iH & 64) != 0;
            z6 = false;
            z5 = (iH & 32) != 0;
            z4 = z2;
        } else if (i5 == 4) {
            boolean z7 = (iH & 64) != 0;
            boolean z8 = (iH & 8) != 0;
            boolean z9 = (iH & 4) != 0;
            z6 = (iH & 2) != 0;
            z4 = (iH & 1) != 0;
            boolean z10 = z9;
            z5 = z7;
            z2 = z8;
            z3 = z10;
        } else {
            z2 = false;
            z3 = false;
            z4 = false;
            z5 = false;
            z6 = false;
        }
        if (z2 || z3) {
            Log.g("Skipping unsupported compressed or encrypted frame");
            parsableByteArray2.N(i6);
            return null;
        }
        if (z5) {
            iA3--;
            parsableByteArray2.O(1);
        }
        if (z4) {
            iA3 -= 4;
            parsableByteArray2.O(4);
        }
        if (z6) {
            iA3 = w(iA3, parsableByteArray2);
        }
        try {
            try {
                if (iA == 84 && r1 == 88 && iA3 == 88 && (i5 == 2 || iA4 == 88)) {
                    binaryFrame = o(iA3, parsableByteArray2);
                } else if (iA == 84) {
                    binaryFrame = m(iA3, parsableByteArray2, t(i5, iA, r1, iA3, iA4));
                } else if (iA == 87 && r1 == 88 && iA3 == 88 && (i5 == 2 || iA4 == 88)) {
                    binaryFrame = q(iA3, parsableByteArray2);
                } else if (iA == 87) {
                    binaryFrame = p(iA3, parsableByteArray2, t(i5, iA, r1, iA3, iA4));
                } else {
                    if (iA != 80 || r1 != 82 || iA3 != 73 || iA4 != 86) {
                        if (iA == 71 && r1 == 69 && iA3 == 79 && (iA4 == 66 || i5 == 2)) {
                            binaryFrame = i(iA3, parsableByteArray2);
                        } else {
                            th = null;
                            try {
                                if (i5 != 2 ? iA == 65 && r1 == 80 && iA3 == 73 && iA4 == 67 : iA == 80 && r1 == 73 && iA3 == 67) {
                                    binaryFrame = d(parsableByteArray2, iA3, i5);
                                } else {
                                    if (iA != 67 || r1 != 79 || iA3 != 77 || (iA4 != 77 && i5 != 2)) {
                                        if (iA == 67 && r1 == 72 && iA3 == 65 && iA4 == 80) {
                                            r1 = r1;
                                            iA3 = iA3;
                                            iA3 = iA3;
                                            i4 = iA4;
                                            try {
                                                binaryFrame = e(parsableByteArray2, iA3, i5, z, i3, framePredicate);
                                                i5 = i2;
                                                r1 = parsableByteArray;
                                            } catch (Exception | OutOfMemoryError e2) {
                                                e = e2;
                                                i5 = i2;
                                                r3 = parsableByteArray;
                                                r9 = r1;
                                                r3.N(i6);
                                                r12 = th;
                                                r10 = r9;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                r2 = parsableByteArray;
                                                r2.N(i6);
                                                throw th;
                                            }
                                        } else {
                                            r1 = r1;
                                            iA3 = iA3;
                                            iA3 = iA3;
                                            i4 = iA4;
                                            try {
                                                if (iA == 67 && r1 == 84 && iA3 == 79 && i4 == 67) {
                                                    i5 = i2;
                                                    ParsableByteArray parsableByteArray3 = parsableByteArray;
                                                    binaryFrame = f(parsableByteArray3, iA3, i5, z, i3, framePredicate);
                                                    r1 = parsableByteArray3;
                                                } else {
                                                    i5 = i2;
                                                    ParsableByteArray parsableByteArray4 = parsableByteArray;
                                                    if (iA == 77 && r1 == 76 && iA3 == 76 && i4 == 84) {
                                                        binaryFrame = j(iA3, parsableByteArray4);
                                                        r1 = parsableByteArray4;
                                                    } else {
                                                        String strT = t(i5, iA, r1, iA3, i4);
                                                        byte[] bArr = new byte[iA3];
                                                        parsableByteArray4.k(0, iA3, bArr);
                                                        binaryFrame = new BinaryFrame(strT, bArr);
                                                        r1 = parsableByteArray4;
                                                    }
                                                }
                                            } catch (Exception | OutOfMemoryError e3) {
                                                e = e3;
                                                r3 = r1;
                                                r9 = r1;
                                                r3.N(i6);
                                                r12 = th;
                                                r10 = r9;
                                            } catch (Throwable th3) {
                                                th = th3;
                                                r2 = r1;
                                                r2.N(i6);
                                                throw th;
                                            }
                                        }
                                        if (r12 == 0) {
                                            Log.h("Failed to decode frame: id=" + t(i5, iA, r10, iA3, i4) + ", frameSize=" + iA3, e);
                                        }
                                        return r12;
                                    }
                                    binaryFrame = g(iA3, parsableByteArray2);
                                }
                                r1 = parsableByteArray2;
                                iA3 = iA3;
                                r1 = r1;
                                i4 = iA4;
                            } catch (Exception | OutOfMemoryError e4) {
                                e = e4;
                                r8 = r1;
                                iA3 = iA3;
                                i4 = iA4;
                                r3 = parsableByteArray2;
                                r9 = r8;
                                r3.N(i6);
                                r12 = th;
                                r10 = r9;
                                if (r12 == 0) {
                                    Log.h("Failed to decode frame: id=" + t(i5, iA, r10, iA3, i4) + ", frameSize=" + iA3, e);
                                }
                                return r12;
                            }
                        }
                        r1.N(i6);
                        r12 = binaryFrame;
                        e = th;
                        r10 = r1;
                        if (r12 == 0) {
                            Log.h("Failed to decode frame: id=" + t(i5, iA, r10, iA3, i4) + ", frameSize=" + iA3, e);
                        }
                        return r12;
                    }
                    binaryFrame = k(iA3, parsableByteArray2);
                }
                r1 = parsableByteArray2;
                iA3 = iA3;
                th = null;
                r1 = r1;
                i4 = iA4;
                r1.N(i6);
                r12 = binaryFrame;
                e = th;
                r10 = r1;
            } catch (Exception | OutOfMemoryError e5) {
                e = e5;
                r8 = r1;
                iA3 = iA3;
                th = null;
            }
            if (r12 == 0) {
                Log.h("Failed to decode frame: id=" + t(i5, iA, r10, iA3, i4) + ", frameSize=" + iA3, e);
            }
            return r12;
        } catch (Throwable th4) {
            th = th4;
            r2 = parsableByteArray2;
        }
    }

    public static GeobFrame i(int i2, ParsableByteArray parsableByteArray) {
        int iA = parsableByteArray.A();
        Charset charsetS = s(iA);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        parsableByteArray.k(0, i3, bArr);
        int iV = v(0, bArr);
        String strP = MimeTypes.p(new String(bArr, 0, iV, StandardCharsets.ISO_8859_1));
        int i4 = iV + 1;
        int iU = u(i4, iA, bArr);
        String strL = l(bArr, i4, iU, charsetS);
        int iR = r(iA) + iU;
        int iU2 = u(iR, iA, bArr);
        String strL2 = l(bArr, iR, iU2, charsetS);
        int iR2 = r(iA) + iU2;
        return new GeobFrame(strP, strL, strL2, i3 <= iR2 ? Util.f14243b : Arrays.copyOfRange(bArr, iR2, i3));
    }

    public static MlltFrame j(int i2, ParsableByteArray parsableByteArray) {
        int iH = parsableByteArray.H();
        int iD = parsableByteArray.D();
        int iD2 = parsableByteArray.D();
        int iA = parsableByteArray.A();
        int iA2 = parsableByteArray.A();
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.l(parsableByteArray);
        int i3 = ((i2 - 10) * 8) / (iA + iA2);
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int iG = parsableBitArray.g(iA);
            int iG2 = parsableBitArray.g(iA2);
            iArr[i4] = iG;
            iArr2[i4] = iG2;
        }
        return new MlltFrame(iH, iD, iD2, iArr, iArr2);
    }

    public static PrivFrame k(int i2, ParsableByteArray parsableByteArray) {
        byte[] bArr = new byte[i2];
        parsableByteArray.k(0, i2, bArr);
        int iV = v(0, bArr);
        String str = new String(bArr, 0, iV, StandardCharsets.ISO_8859_1);
        int i3 = iV + 1;
        return new PrivFrame(str, i2 <= i3 ? Util.f14243b : Arrays.copyOfRange(bArr, i3, i2));
    }

    public static String l(byte[] bArr, int i2, int i3, Charset charset) {
        return (i3 <= i2 || i3 > bArr.length) ? "" : new String(bArr, i2, i3 - i2, charset);
    }

    public static TextInformationFrame m(int i2, ParsableByteArray parsableByteArray, String str) {
        if (i2 < 1) {
            return null;
        }
        int iA = parsableByteArray.A();
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        parsableByteArray.k(0, i3, bArr);
        return new TextInformationFrame(str, (String) null, n(iA, 0, bArr));
    }

    public static ImmutableList n(int i2, int i3, byte[] bArr) {
        if (i3 >= bArr.length) {
            return ImmutableList.A("");
        }
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        int iU = u(i3, i2, bArr);
        while (i3 < iU) {
            builder.e(new String(bArr, i3, iU - i3, s(i2)));
            i3 = r(i2) + iU;
            iU = u(i3, i2, bArr);
        }
        ImmutableList immutableListJ = builder.j();
        return immutableListJ.isEmpty() ? ImmutableList.A("") : immutableListJ;
    }

    public static TextInformationFrame o(int i2, ParsableByteArray parsableByteArray) {
        if (i2 < 1) {
            return null;
        }
        int iA = parsableByteArray.A();
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        parsableByteArray.k(0, i3, bArr);
        int iU = u(0, iA, bArr);
        return new TextInformationFrame("TXXX", new String(bArr, 0, iU, s(iA)), n(iA, r(iA) + iU, bArr));
    }

    public static UrlLinkFrame p(int i2, ParsableByteArray parsableByteArray, String str) {
        byte[] bArr = new byte[i2];
        parsableByteArray.k(0, i2, bArr);
        return new UrlLinkFrame(str, null, new String(bArr, 0, v(0, bArr), StandardCharsets.ISO_8859_1));
    }

    public static UrlLinkFrame q(int i2, ParsableByteArray parsableByteArray) {
        if (i2 < 1) {
            return null;
        }
        int iA = parsableByteArray.A();
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        parsableByteArray.k(0, i3, bArr);
        int iU = u(0, iA, bArr);
        String str = new String(bArr, 0, iU, s(iA));
        int iR = r(iA) + iU;
        return new UrlLinkFrame("WXXX", str, l(bArr, iR, v(iR, bArr), StandardCharsets.ISO_8859_1));
    }

    public static int r(int i2) {
        return (i2 == 0 || i2 == 3) ? 1 : 2;
    }

    public static Charset s(int i2) {
        if (i2 == 1) {
            return StandardCharsets.UTF_16;
        }
        if (i2 != 2) {
            return i2 != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8;
        }
        return StandardCharsets.UTF_16BE;
    }

    public static String t(int i2, int i3, int i4, int i5, int i6) {
        return i2 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6));
    }

    public static int u(int i2, int i3, byte[] bArr) {
        int iV = v(i2, bArr);
        if (i3 == 0 || i3 == 3) {
            return iV;
        }
        while (iV < bArr.length - 1) {
            if ((iV - i2) % 2 == 0 && bArr[iV + 1] == 0) {
                return iV;
            }
            iV = v(iV + 1, bArr);
        }
        return bArr.length;
    }

    public static int v(int i2, byte[] bArr) {
        while (i2 < bArr.length) {
            if (bArr[i2] == 0) {
                return i2;
            }
            i2++;
        }
        return bArr.length;
    }

    public static int w(int i2, ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.f14194a;
        int i3 = parsableByteArray.f14195b;
        int i4 = i3;
        while (true) {
            int i5 = i4 + 1;
            if (i5 >= i3 + i2) {
                return i2;
            }
            if ((bArr[i4] & 255) == 255 && bArr[i5] == 0) {
                System.arraycopy(bArr, i4 + 2, bArr, i5, (i2 - (i4 - i3)) - 2);
                i2--;
            }
            i4 = i5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007a A[PHI: r3
      0x007a: PHI (r3v16 int) = (r3v5 int), (r3v19 int) binds: [B:42:0x0087, B:33:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    public static boolean x(ParsableByteArray parsableByteArray, int i2, int i3, boolean z) {
        int iD;
        long jD;
        int iH;
        int i4;
        int i5 = parsableByteArray.f14195b;
        while (true) {
            try {
                boolean z2 = true;
                if (parsableByteArray.a() < i3) {
                    parsableByteArray.N(i5);
                    return true;
                }
                if (i2 >= 3) {
                    iD = parsableByteArray.m();
                    jD = parsableByteArray.C();
                    iH = parsableByteArray.H();
                } else {
                    iD = parsableByteArray.D();
                    jD = parsableByteArray.D();
                    iH = 0;
                }
                if (iD == 0 && jD == 0 && iH == 0) {
                    parsableByteArray.N(i5);
                    return true;
                }
                if (i2 == 4 && !z) {
                    if ((8421504 & jD) != 0) {
                        parsableByteArray.N(i5);
                        return false;
                    }
                    jD = (((jD >> 24) & 255) << 21) | (jD & 255) | (((jD >> 8) & 255) << 7) | (((jD >> 16) & 255) << 14);
                }
                if (i2 == 4) {
                    i4 = (iH & 64) != 0 ? 1 : 0;
                    if ((iH & 1) == 0) {
                        z2 = false;
                    }
                } else if (i2 == 3) {
                    i4 = (iH & 32) != 0 ? 1 : 0;
                    if ((iH & 128) == 0) {
                        z2 = false;
                    }
                } else {
                    i4 = 0;
                    z2 = false;
                }
                if (z2) {
                    i4 += 4;
                }
                if (jD < i4) {
                    parsableByteArray.N(i5);
                    return false;
                }
                if (parsableByteArray.a() < jD) {
                    parsableByteArray.N(i5);
                    return false;
                }
                parsableByteArray.O((int) jD);
            } catch (Throwable th) {
                parsableByteArray.N(i5);
                throw th;
            }
        }
    }

    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    public final Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        return c(byteBuffer.limit(), byteBuffer.array());
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0099 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x009a  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:51:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00c5 A[SYNTHETIC] */
    public final Metadata c(int i2, byte[] bArr) throws Throwable {
        boolean z;
        Id3Header id3Header;
        int i3;
        int i4;
        int iW;
        Id3Frame id3FrameH;
        ArrayList arrayList = new ArrayList();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i2);
        boolean z2 = false;
        if (parsableByteArray.a() < 10) {
            Log.g("Data too short to be an ID3 tag");
        } else {
            int iD = parsableByteArray.D();
            if (iD == 4801587) {
                int iA = parsableByteArray.A();
                parsableByteArray.O(1);
                int iA2 = parsableByteArray.A();
                int iZ = parsableByteArray.z();
                if (iA != 2) {
                    if (iA == 3) {
                        if ((iA2 & 64) != 0) {
                            int iM = parsableByteArray.m();
                            parsableByteArray.O(iM);
                            iZ -= iM + 4;
                        }
                    } else if (iA == 4) {
                        if ((iA2 & 64) != 0) {
                            int iZ2 = parsableByteArray.z();
                            parsableByteArray.O(iZ2 - 4);
                            iZ -= iZ2;
                        }
                        if ((iA2 & 16) != 0) {
                            iZ -= 10;
                        }
                    } else {
                        a.u(iA, "Skipped ID3 tag with unsupported majorVersion=");
                    }
                    if (iA < 4) {
                        z = false;
                    } else {
                        z = false;
                    }
                    id3Header = new Id3Header(iA, z, iZ);
                } else if ((iA2 & 64) != 0) {
                    Log.g("Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                } else {
                    if (iA < 4 || (iA2 & 128) == 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    id3Header = new Id3Header(iA, z, iZ);
                }
                if (id3Header == null) {
                    return null;
                }
                i3 = id3Header.f16381a;
                int i5 = parsableByteArray.f14195b;
                i4 = i3 == 2 ? 6 : 10;
                iW = id3Header.f16383c;
                if (id3Header.f16382b) {
                    iW = w(iW, parsableByteArray);
                }
                parsableByteArray.M(i5 + iW);
                if (!x(parsableByteArray, i3, i4, false)) {
                    if (i3 == 4 || !x(parsableByteArray, 4, i4, true)) {
                        a.u(i3, "Failed to validate ID3 tag with majorVersion=");
                        return null;
                    }
                    z2 = true;
                }
                while (parsableByteArray.a() >= i4) {
                    id3FrameH = h(i3, parsableByteArray, z2, i4, this.f16380a);
                    if (id3FrameH != null) {
                        arrayList.add(id3FrameH);
                    }
                }
                return new Metadata(arrayList);
            }
            Log.g("Unexpected first three bytes of ID3 tag header: 0x".concat(String.format("%06X", Integer.valueOf(iD))));
        }
        id3Header = null;
        if (id3Header == null) {
            return null;
        }
        i3 = id3Header.f16381a;
        int i6 = parsableByteArray.f14195b;
        if (i3 == 2) {
        }
        iW = id3Header.f16383c;
        if (id3Header.f16382b) {
            iW = w(iW, parsableByteArray);
        }
        parsableByteArray.M(i6 + iW);
        if (!x(parsableByteArray, i3, i4, false)) {
            if (i3 == 4) {
            }
            a.u(i3, "Failed to validate ID3 tag with majorVersion=");
            return null;
        }
        while (parsableByteArray.a() >= i4) {
            id3FrameH = h(i3, parsableByteArray, z2, i4, this.f16380a);
            if (id3FrameH != null) {
                arrayList.add(id3FrameH);
            }
        }
        return new Metadata(arrayList);
    }

    public Id3Decoder() {
        this(null);
    }
}
