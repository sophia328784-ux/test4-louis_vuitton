package androidx.media3.extractor.text.vobsub;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.collect.ImmutableList;
import defpackage.a;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public final class VobsubParser implements SubtitleParser {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CuesWithTiming f16878e = new CuesWithTiming(ImmutableList.x(), -9223372036854775807L, -9223372036854775807L);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16879a = new ParsableByteArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16880b = new ParsableByteArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CueBuilder f16881c;
    public Inflater d;

    public static final class CueBuilder {
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f16885e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int[] f16886f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16887h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Rect f16888i;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f16883b = -9223372036854775807L;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f16884c = -9223372036854775807L;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int[] f16882a = new int[4];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f16889j = -1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f16890k = -1;

        public static final class Run {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f16891a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f16892b;
        }

        public static int a(int i2, int[] iArr) {
            return (i2 < 0 || i2 >= iArr.length) ? iArr[0] : iArr[i2];
        }

        public static int c(int i2, int i3) {
            return (i2 & 16777215) | ((i3 * 17) << 24);
        }

        public final void b(ParsableBitArray parsableBitArray, boolean z, Rect rect, int[] iArr) {
            int iWidth = rect.width();
            int iHeight = rect.height();
            int i2 = !z ? 1 : 0;
            int i3 = i2 * iWidth;
            Run run = new Run();
            while (true) {
                int i4 = 0;
                do {
                    int i5 = 1;
                    int iG = 0;
                    while (true) {
                        if (iG >= i5 || i5 > 64) {
                            run.f16891a = iG & 3;
                            run.f16892b = iG < 4 ? iWidth : iG >> 2;
                            break;
                        } else if (parsableBitArray.b() < 4) {
                            run.f16891a = -1;
                            run.f16892b = 0;
                            break;
                        } else {
                            iG = (iG << 4) | parsableBitArray.g(4);
                            i5 <<= 2;
                        }
                    }
                    int iMin = Math.min(run.f16892b, iWidth - i4);
                    if (iMin > 0) {
                        int i6 = i3 + iMin;
                        Arrays.fill(iArr, i3, i6, this.f16882a[run.f16891a]);
                        i4 += iMin;
                        i3 = i6;
                    }
                } while (i4 < iWidth);
                i2 += 2;
                if (i2 >= iHeight) {
                    return;
                }
                i3 = i2 * iWidth;
                parsableBitArray.c();
            }
        }
    }

    public VobsubParser(List<byte[]> list) {
        int i2;
        CueBuilder cueBuilder = new CueBuilder();
        this.f16881c = cueBuilder;
        String strTrim = new String(list.get(0), StandardCharsets.UTF_8).trim();
        String str = Util.f14242a;
        for (String str2 : strTrim.split("\\r?\\n", -1)) {
            if (str2.startsWith("palette: ")) {
                String[] strArrSplit = str2.substring(9).split(",", -1);
                cueBuilder.f16886f = new int[strArrSplit.length];
                for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                    int[] iArr = cueBuilder.f16886f;
                    try {
                        i2 = Integer.parseInt(strArrSplit[i3].trim(), 16);
                    } catch (RuntimeException e2) {
                        Log.h("Parsing color failed", e2);
                        i2 = 0;
                    }
                    iArr[i3] = i2;
                }
            } else if (str2.startsWith("size: ")) {
                String[] strArrSplit2 = str2.substring(6).trim().split("x", -1);
                if (strArrSplit2.length != 2) {
                    Log.g("Ignoring malformed IDX size line: '" + str2 + "'");
                } else {
                    try {
                        cueBuilder.g = Integer.parseInt(strArrSplit2[0]);
                        cueBuilder.f16887h = Integer.parseInt(strArrSplit2[1]);
                        cueBuilder.d = true;
                    } catch (RuntimeException e3) {
                        Log.h("Parsing IDX failed", e3);
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0286  */
    /* JADX WARN: Code duplicated, block: B:104:0x028c  */
    /* JADX WARN: Code duplicated, block: B:106:0x0292  */
    /* JADX WARN: Code duplicated, block: B:90:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:95:0x0279  */
    /* JADX WARN: Failed to find 'out' block for switch in B:44:0x00c8. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void a(byte[] bArr, int i2, int i3, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        CuesWithTiming cuesWithTiming;
        char c2;
        long j2;
        char c3;
        Cue cueA;
        long j3;
        long j4;
        ImmutableList immutableListX;
        long j5;
        Rect rect;
        ParsableByteArray parsableByteArray = this.f16879a;
        parsableByteArray.L(i2 + i3, bArr);
        parsableByteArray.N(i2);
        if (this.d == null) {
            this.d = new Inflater();
        }
        Inflater inflater = this.d;
        String str = Util.f14242a;
        if (parsableByteArray.a() > 0 && parsableByteArray.j() == 120) {
            ParsableByteArray parsableByteArray2 = this.f16880b;
            if (Util.I(parsableByteArray, parsableByteArray2, inflater)) {
                parsableByteArray.L(parsableByteArray2.f14196c, parsableByteArray2.f14194a);
            }
        }
        CueBuilder cueBuilder = this.f16881c;
        long j6 = -9223372036854775807L;
        cueBuilder.f16883b = -9223372036854775807L;
        cueBuilder.f16884c = -9223372036854775807L;
        char c4 = 0;
        cueBuilder.f16885e = false;
        cueBuilder.f16888i = null;
        cueBuilder.f16889j = -1;
        cueBuilder.f16890k = -1;
        int iA = parsableByteArray.a();
        if (iA < 2 || parsableByteArray.H() != iA) {
            cuesWithTiming = f16878e;
        } else {
            if (cueBuilder.f16886f == null) {
                Log.g("Skipping SPU (no palette)");
            } else {
                if (cueBuilder.d) {
                    int i4 = parsableByteArray.f14195b - 2;
                    parsableByteArray.N(parsableByteArray.H() + i4);
                    while (true) {
                        if (parsableByteArray.a() < 4) {
                            j2 = j6;
                            c3 = c4;
                            c2 = c3;
                        } else {
                            int i5 = parsableByteArray.f14195b;
                            int iH = parsableByteArray.H() * 10000;
                            int iH2 = parsableByteArray.H() + i4;
                            c2 = (iH2 == i5 || iH2 >= parsableByteArray.f14196c) ? c4 : (char) 1;
                            int i6 = c2 != 0 ? iH2 : parsableByteArray.f14196c;
                            j2 = j6;
                            char c5 = 1;
                            while (parsableByteArray.f14195b < i6 && c5 != 0) {
                                long j7 = iH;
                                int[] iArr = cueBuilder.f16882a;
                                int iA2 = parsableByteArray.A();
                                char c6 = c4;
                                if (iA2 != 255) {
                                    switch (iA2) {
                                        case 0:
                                            c5 = 1;
                                            break;
                                        case 1:
                                            cueBuilder.f16883b = j7;
                                            c5 = 1;
                                            break;
                                        case 2:
                                            cueBuilder.f16884c = j7;
                                            c5 = 1;
                                            break;
                                        case 3:
                                            if (parsableByteArray.a() >= 2) {
                                                int iA3 = parsableByteArray.A();
                                                int iA4 = parsableByteArray.A();
                                                iArr[3] = CueBuilder.a(iA3 >> 4, cueBuilder.f16886f);
                                                iArr[2] = CueBuilder.a(iA3 & 15, cueBuilder.f16886f);
                                                iArr[1] = CueBuilder.a(iA4 >> 4, cueBuilder.f16886f);
                                                iArr[c6] = CueBuilder.a(iA4 & 15, cueBuilder.f16886f);
                                                cueBuilder.f16885e = true;
                                                c5 = 1;
                                            } else {
                                                Log.g("Incomplete color command");
                                                c5 = c6;
                                            }
                                            break;
                                        case 4:
                                            if (parsableByteArray.a() < 2) {
                                                Log.g("Incomplete alpha command");
                                            } else if (cueBuilder.f16885e) {
                                                int iA5 = parsableByteArray.A();
                                                int iA6 = parsableByteArray.A();
                                                iArr[3] = CueBuilder.c(iArr[3], iA5 >> 4);
                                                iArr[2] = CueBuilder.c(iArr[2], iA5 & 15);
                                                iArr[1] = CueBuilder.c(iArr[1], iA6 >> 4);
                                                iArr[c6] = CueBuilder.c(iArr[c6], iA6 & 15);
                                                c5 = 1;
                                            } else {
                                                Log.g("Ignoring alpha command before color command");
                                            }
                                            c5 = c6;
                                            break;
                                        case 5:
                                            if (parsableByteArray.a() >= 6) {
                                                int iA7 = parsableByteArray.A();
                                                int iA8 = parsableByteArray.A();
                                                int i7 = (iA7 << 4) | (iA8 >> 4);
                                                int iA9 = ((iA8 & 15) << 8) | parsableByteArray.A();
                                                int iA10 = parsableByteArray.A();
                                                int iA11 = parsableByteArray.A();
                                                cueBuilder.f16888i = new Rect(i7, (iA10 << 4) | (iA11 >> 4), iA9 + 1, (((iA11 & 15) << 8) | parsableByteArray.A()) + 1);
                                                c5 = 1;
                                            } else {
                                                Log.g("Incomplete area command");
                                                c5 = c6;
                                            }
                                            break;
                                        case 6:
                                            if (parsableByteArray.a() >= 4) {
                                                cueBuilder.f16889j = parsableByteArray.H();
                                                cueBuilder.f16890k = parsableByteArray.H();
                                                c5 = 1;
                                            } else {
                                                Log.g("Incomplete offsets command");
                                                c5 = c6;
                                            }
                                            break;
                                        default:
                                            a.u(iA2, "Unrecognized command: ");
                                            c5 = c6;
                                            break;
                                    }
                                } else {
                                    c5 = c6;
                                }
                                c4 = c6;
                            }
                            c3 = c4;
                            if (c2 != 0) {
                                parsableByteArray.N(iH2);
                            }
                        }
                        if (c2 != 0) {
                            j6 = j2;
                            c4 = c3;
                        }
                    }
                } else {
                    Log.g("Skipping SPU (no plane)");
                }
                if (cueBuilder.f16886f == null && cueBuilder.d && cueBuilder.f16885e && (rect = cueBuilder.f16888i) != null && cueBuilder.f16889j != -1 && cueBuilder.f16890k != -1 && rect.width() >= 2 && cueBuilder.f16888i.height() >= 2) {
                    Rect rect2 = cueBuilder.f16888i;
                    int[] iArr2 = new int[rect2.height() * rect2.width()];
                    ParsableBitArray parsableBitArray = new ParsableBitArray();
                    parsableByteArray.N(cueBuilder.f16889j);
                    parsableBitArray.l(parsableByteArray);
                    cueBuilder.b(parsableBitArray, true, rect2, iArr2);
                    parsableByteArray.N(cueBuilder.f16890k);
                    parsableBitArray.l(parsableByteArray);
                    cueBuilder.b(parsableBitArray, c3, rect2, iArr2);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr2, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888);
                    Cue.Builder builder = new Cue.Builder();
                    builder.f14103b = bitmapCreateBitmap;
                    builder.f14102a = null;
                    builder.f14107h = rect2.left / cueBuilder.g;
                    builder.f14108i = 0;
                    builder.f14105e = rect2.top / cueBuilder.f16887h;
                    builder.f14106f = 0;
                    builder.g = 0;
                    builder.l = rect2.width() / cueBuilder.g;
                    builder.m = rect2.height() / cueBuilder.f16887h;
                    cueA = builder.a();
                }
                j3 = cueBuilder.f16884c;
                if (j3 != j2) {
                    j5 = cueBuilder.f16883b;
                    if (j5 != j2 && j3 > j5) {
                        j3 -= j5;
                    }
                    j4 = j3;
                } else {
                    j4 = j2;
                }
                if (cueA != null) {
                    immutableListX = ImmutableList.A(cueA);
                } else {
                    immutableListX = ImmutableList.x();
                }
                cuesWithTiming = new CuesWithTiming(immutableListX, cueBuilder.f16883b, j4);
            }
            j2 = -9223372036854775807L;
            c3 = 0;
            cueA = cueBuilder.f16886f == null ? null : null;
            j3 = cueBuilder.f16884c;
            if (j3 != j2) {
                j5 = cueBuilder.f16883b;
                if (j5 != j2) {
                    j3 -= j5;
                }
                j4 = j3;
            } else {
                j4 = j2;
            }
            if (cueA != null) {
                immutableListX = ImmutableList.A(cueA);
            } else {
                immutableListX = ImmutableList.x();
            }
            cuesWithTiming = new CuesWithTiming(immutableListX, cueBuilder.f16883b, j4);
        }
        consumer.accept(cuesWithTiming);
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final int c() {
        return 2;
    }
}
