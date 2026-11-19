package androidx.media3.extractor.text.cea;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import com.batch.android.x0.h;
import com.google.common.base.Preconditions;
import defpackage.md;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.rtccloud.sdk.internal.util.Strings;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
public final class Cea708Decoder extends CeaDecoder {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ParsableByteArray f16714h = new ParsableByteArray();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ParsableBitArray f16715i = new ParsableBitArray();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16716j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f16717k;
    public final CueInfoBuilder[] l;
    public CueInfoBuilder m;
    public List n;
    public List o;
    public DtvCcPacket p;
    public int q;

    public static final class Cea708CueInfo {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f16718c = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Cue f16719a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16720b;

        public Cea708CueInfo(CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4, boolean z, int i5, int i6) {
            Cue.Builder builder = new Cue.Builder();
            builder.f14102a = charSequence;
            builder.f14103b = null;
            builder.f14104c = alignment;
            builder.f14105e = f2;
            builder.f14106f = i2;
            builder.g = i3;
            builder.f14107h = f3;
            builder.f14108i = i4;
            builder.l = f4;
            if (z) {
                builder.o = i5;
                builder.n = true;
            }
            this.f16719a = builder.a();
            this.f16720b = i6;
        }
    }

    public static final class CueInfoBuilder {
        public static final boolean[] A;
        public static final int[] B;
        public static final int[] C;
        public static final int[] D;
        public static final int[] E;
        public static final int v = c(2, 2, 2, 0);
        public static final int w;
        public static final int[] x;
        public static final int[] y;
        public static final int[] z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f16721a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SpannableStringBuilder f16722b = new SpannableStringBuilder();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f16723c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f16724e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f16725f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16726h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f16727i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f16728j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f16729k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;

        static {
            int iC = c(0, 0, 0, 0);
            w = iC;
            int iC2 = c(0, 0, 0, 3);
            x = new int[]{0, 0, 0, 0, 0, 2, 0};
            y = new int[]{0, 0, 0, 0, 0, 0, 2};
            z = new int[]{3, 3, 3, 3, 3, 3, 1};
            A = new boolean[]{false, false, false, true, true, true, false};
            B = new int[]{iC, iC2, iC, iC, iC2, iC, iC};
            C = new int[]{0, 1, 2, 3, 4, 3, 4};
            D = new int[]{0, 0, 0, 0, 0, 3, 3};
            E = new int[]{iC, iC, iC, iC, iC, iC2, iC2};
        }

        public CueInfoBuilder() {
            d();
        }

        /* JADX WARN: Code duplicated, block: B:9:0x001b  */
        public static int c(int i2, int i3, int i4, int i5) {
            int i6;
            Preconditions.j(i2, 4);
            Preconditions.j(i3, 4);
            Preconditions.j(i4, 4);
            Preconditions.j(i5, 4);
            if (i5 == 0 || i5 == 1) {
                i6 = 255;
            } else if (i5 == 2) {
                i6 = CertificateBody.profileType;
            } else if (i5 != 3) {
                i6 = 255;
            } else {
                i6 = 0;
            }
            return Color.argb(i6, i2 > 1 ? 255 : 0, i3 > 1 ? 255 : 0, i4 > 1 ? 255 : 0);
        }

        public final void a(char c2) {
            SpannableStringBuilder spannableStringBuilder = this.f16722b;
            if (c2 != '\n') {
                spannableStringBuilder.append(c2);
                return;
            }
            SpannableString spannableStringB = b();
            ArrayList arrayList = this.f16721a;
            arrayList.add(spannableStringB);
            spannableStringBuilder.clear();
            if (this.o != -1) {
                this.o = 0;
            }
            if (this.p != -1) {
                this.p = 0;
            }
            if (this.q != -1) {
                this.q = 0;
            }
            if (this.s != -1) {
                this.s = 0;
            }
            while (true) {
                if (arrayList.size() < this.f16728j && arrayList.size() < 15) {
                    this.u = arrayList.size();
                    return;
                }
                arrayList.remove(0);
            }
        }

        public final SpannableString b() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f16722b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.o != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.o, length, 33);
                }
                if (this.p != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.p, length, 33);
                }
                if (this.q != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.r), this.q, length, 33);
                }
                if (this.s != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.t), this.s, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public final void d() {
            this.f16721a.clear();
            this.f16722b.clear();
            this.o = -1;
            this.p = -1;
            this.q = -1;
            this.s = -1;
            this.u = 0;
            this.f16723c = false;
            this.d = false;
            this.f16724e = 4;
            this.f16725f = false;
            this.g = 0;
            this.f16726h = 0;
            this.f16727i = 0;
            this.f16728j = 15;
            this.f16729k = 0;
            this.l = 0;
            this.m = 0;
            int i2 = w;
            this.n = i2;
            this.r = v;
            this.t = i2;
        }

        public final void e(boolean z2, boolean z3) {
            int i2 = this.o;
            SpannableStringBuilder spannableStringBuilder = this.f16722b;
            if (i2 != -1) {
                if (!z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.o, spannableStringBuilder.length(), 33);
                    this.o = -1;
                }
            } else if (z2) {
                this.o = spannableStringBuilder.length();
            }
            if (this.p == -1) {
                if (z3) {
                    this.p = spannableStringBuilder.length();
                }
            } else {
                if (z3) {
                    return;
                }
                spannableStringBuilder.setSpan(new UnderlineSpan(), this.p, spannableStringBuilder.length(), 33);
                this.p = -1;
            }
        }

        public final void f(int i2, int i3) {
            int i4 = this.q;
            SpannableStringBuilder spannableStringBuilder = this.f16722b;
            if (i4 != -1 && this.r != i2) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(this.r), this.q, spannableStringBuilder.length(), 33);
            }
            if (i2 != v) {
                this.q = spannableStringBuilder.length();
                this.r = i2;
            }
            if (this.s != -1 && this.t != i3) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.t), this.s, spannableStringBuilder.length(), 33);
            }
            if (i3 != w) {
                this.s = spannableStringBuilder.length();
                this.t = i3;
            }
        }
    }

    public static final class DtvCcPacket {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16730a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16731b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f16732c;
        public int d = 0;

        public DtvCcPacket(int i2, int i3) {
            this.f16730a = i2;
            this.f16731b = i3;
            this.f16732c = new byte[(i3 * 2) - 1];
        }
    }

    public Cea708Decoder(int i2, List<byte[]> list) {
        this.f16717k = i2 == -1 ? 1 : i2;
        if (list != null) {
            byte[] bArr = CodecSpecificDataUtil.f14144a;
            if (list.size() == 1 && list.get(0).length == 1) {
                byte b2 = list.get(0)[0];
            }
        }
        this.l = new CueInfoBuilder[8];
        int i3 = 0;
        while (true) {
            CueInfoBuilder[] cueInfoBuilderArr = this.l;
            if (i3 >= 8) {
                this.m = cueInfoBuilderArr[0];
                return;
            } else {
                cueInfoBuilderArr[i3] = new CueInfoBuilder();
                i3++;
            }
        }
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.extractor.text.SubtitleDecoder
    public final void b(long j2) {
        this.f16736e = j2;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public final void flush() {
        super.flush();
        this.n = null;
        this.o = null;
        this.q = 0;
        this.m = this.l[0];
        m();
        this.p = null;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public final Subtitle g() {
        List list = this.n;
        this.o = list;
        list.getClass();
        return new CeaSubtitle(list);
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public final void h(SubtitleInputBuffer subtitleInputBuffer) {
        ByteBuffer byteBuffer = subtitleInputBuffer.f14543e;
        byteBuffer.getClass();
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        ParsableByteArray parsableByteArray = this.f16714h;
        parsableByteArray.L(iLimit, bArrArray);
        while (parsableByteArray.a() >= 3) {
            int iA = parsableByteArray.A();
            int i2 = iA & 3;
            boolean z = (iA & 4) == 4;
            byte bA = (byte) parsableByteArray.A();
            byte bA2 = (byte) parsableByteArray.A();
            if (i2 == 2 || i2 == 3) {
                if (z) {
                    if (i2 == 3) {
                        k();
                        int i3 = (bA & h.a.f24176e) >> 6;
                        int i4 = this.f16716j;
                        if (i4 != -1 && i3 != (i4 + 1) % 4) {
                            m();
                            Log.g("Sequence number discontinuity. previous=" + this.f16716j + " current=" + i3);
                        }
                        this.f16716j = i3;
                        int i5 = bA & 63;
                        if (i5 == 0) {
                            i5 = 64;
                        }
                        DtvCcPacket dtvCcPacket = new DtvCcPacket(i3, i5);
                        this.p = dtvCcPacket;
                        int i6 = dtvCcPacket.d;
                        dtvCcPacket.d = i6 + 1;
                        dtvCcPacket.f16732c[i6] = bA2;
                    } else {
                        Preconditions.g(i2 == 2);
                        DtvCcPacket dtvCcPacket2 = this.p;
                        if (dtvCcPacket2 == null) {
                            Log.d("Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr = dtvCcPacket2.f16732c;
                            int i7 = dtvCcPacket2.d;
                            int i8 = i7 + 1;
                            dtvCcPacket2.d = i8;
                            bArr[i7] = bA;
                            dtvCcPacket2.d = i7 + 2;
                            bArr[i8] = bA2;
                        }
                    }
                    DtvCcPacket dtvCcPacket3 = this.p;
                    if (dtvCcPacket3.d == (dtvCcPacket3.f16731b * 2) - 1) {
                        k();
                    }
                }
            }
        }
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public final boolean j() {
        return this.n != this.o;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:230:0x053b  */
    public final void k() {
        boolean z;
        char c2;
        DtvCcPacket dtvCcPacket = this.p;
        if (dtvCcPacket == null) {
            return;
        }
        int i2 = 2;
        boolean z2 = true;
        if (dtvCcPacket.d != (dtvCcPacket.f16731b * 2) - 1) {
            Log.b("DtvCcPacket ended prematurely; size is " + ((this.p.f16731b * 2) - 1) + ", but current index is " + this.p.d + " (sequence number " + this.p.f16730a + ");");
        }
        DtvCcPacket dtvCcPacket2 = this.p;
        byte[] bArr = dtvCcPacket2.f16732c;
        int i3 = dtvCcPacket2.d;
        ParsableBitArray parsableBitArray = this.f16715i;
        parsableBitArray.k(i3, bArr);
        boolean z3 = false;
        while (parsableBitArray.b() > 0) {
            int i4 = 3;
            int iG = parsableBitArray.g(3);
            int iG2 = parsableBitArray.g(5);
            int i5 = 7;
            if (iG == 7) {
                parsableBitArray.o(i2);
                iG = parsableBitArray.g(6);
                if (iG < 7) {
                    defpackage.a.u(iG, "Invalid extended service number: ");
                }
            }
            if (iG2 == 0) {
                if (iG != 0) {
                    Log.g("serviceNumber is non-zero (" + iG + ") when blockSize is 0");
                }
                if (z3) {
                    this.n = l();
                }
                this.p = null;
            }
            if (iG != this.f16717k) {
                parsableBitArray.p(iG2);
            } else {
                int iE = (iG2 * 8) + parsableBitArray.e();
                while (parsableBitArray.e() < iE) {
                    int iG3 = parsableBitArray.g(8);
                    if (iG3 != 16) {
                        if (iG3 <= 31) {
                            if (iG3 != 0) {
                                if (iG3 == i4) {
                                    this.n = l();
                                } else if (iG3 != 8) {
                                    switch (iG3) {
                                        case 12:
                                            m();
                                            break;
                                        case 13:
                                            this.m.a('\n');
                                            break;
                                        case 14:
                                            break;
                                        default:
                                            if (iG3 >= 17 && iG3 <= 23) {
                                                Log.g("Currently unsupported COMMAND_EXT1 Command: " + iG3);
                                                parsableBitArray.o(8);
                                            } else if (iG3 < 24 || iG3 > 31) {
                                                defpackage.a.u(iG3, "Invalid C0 command: ");
                                            } else {
                                                Log.g("Currently unsupported COMMAND_P16 Command: " + iG3);
                                                parsableBitArray.o(16);
                                            }
                                            break;
                                    }
                                } else {
                                    SpannableStringBuilder spannableStringBuilder = this.m.f16722b;
                                    int length = spannableStringBuilder.length();
                                    if (length > 0) {
                                        spannableStringBuilder.delete(length - 1, length);
                                    }
                                }
                            }
                        } else if (iG3 <= 127) {
                            CueInfoBuilder cueInfoBuilder = this.m;
                            if (iG3 == 127) {
                                cueInfoBuilder.a((char) 9835);
                            } else {
                                cueInfoBuilder.a((char) (iG3 & 255));
                            }
                            z3 = true;
                        } else {
                            if (iG3 <= 159) {
                                CueInfoBuilder[] cueInfoBuilderArr = this.l;
                                switch (iG3) {
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                        i4 = i4;
                                        z = true;
                                        int i6 = iG3 - 128;
                                        if (this.q != i6) {
                                            this.q = i6;
                                            this.m = cueInfoBuilderArr[i6];
                                        }
                                        break;
                                    case 136:
                                        i4 = i4;
                                        z = true;
                                        for (int i7 = 1; i7 <= 8; i7++) {
                                            if (parsableBitArray.f()) {
                                                CueInfoBuilder cueInfoBuilder2 = cueInfoBuilderArr[8 - i7];
                                                cueInfoBuilder2.f16721a.clear();
                                                cueInfoBuilder2.f16722b.clear();
                                                cueInfoBuilder2.o = -1;
                                                cueInfoBuilder2.p = -1;
                                                cueInfoBuilder2.q = -1;
                                                cueInfoBuilder2.s = -1;
                                                cueInfoBuilder2.u = 0;
                                            }
                                        }
                                        break;
                                    case 137:
                                        i4 = i4;
                                        for (int i8 = 1; i8 <= 8; i8++) {
                                            if (parsableBitArray.f()) {
                                                cueInfoBuilderArr[8 - i8].d = true;
                                            }
                                        }
                                        z = true;
                                        break;
                                    case 138:
                                        i4 = i4;
                                        for (int i9 = 1; i9 <= 8; i9++) {
                                            if (parsableBitArray.f()) {
                                                cueInfoBuilderArr[8 - i9].d = false;
                                            }
                                        }
                                        z = true;
                                        break;
                                    case 139:
                                        i4 = i4;
                                        for (int i10 = 1; i10 <= 8; i10++) {
                                            if (parsableBitArray.f()) {
                                                CueInfoBuilder cueInfoBuilder3 = cueInfoBuilderArr[8 - i10];
                                                cueInfoBuilder3.d = !cueInfoBuilder3.d;
                                            }
                                        }
                                        z = true;
                                        break;
                                    case 140:
                                        i4 = i4;
                                        for (int i11 = 1; i11 <= 8; i11++) {
                                            if (parsableBitArray.f()) {
                                                cueInfoBuilderArr[8 - i11].d();
                                            }
                                        }
                                        z = true;
                                        break;
                                    case 141:
                                        i4 = i4;
                                        parsableBitArray.o(8);
                                        z = true;
                                        break;
                                    case 142:
                                        i4 = i4;
                                        z = true;
                                        break;
                                    case 143:
                                        i4 = i4;
                                        m();
                                        z = true;
                                        break;
                                    case 144:
                                        int i12 = i2;
                                        if (this.m.f16723c) {
                                            parsableBitArray.g(4);
                                            parsableBitArray.g(i12);
                                            parsableBitArray.g(i12);
                                            boolean zF = parsableBitArray.f();
                                            boolean zF2 = parsableBitArray.f();
                                            i4 = 3;
                                            parsableBitArray.g(3);
                                            parsableBitArray.g(3);
                                            this.m.e(zF, zF2);
                                        } else {
                                            parsableBitArray.o(16);
                                            i4 = 3;
                                        }
                                        z = true;
                                        break;
                                    case 145:
                                        if (this.m.f16723c) {
                                            int iC = CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2));
                                            int iC2 = CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2));
                                            parsableBitArray.o(2);
                                            CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), 0);
                                            this.m.f(iC, iC2);
                                        } else {
                                            parsableBitArray.o(24);
                                        }
                                        i4 = 3;
                                        z = true;
                                        break;
                                    case 146:
                                        if (this.m.f16723c) {
                                            parsableBitArray.o(4);
                                            int iG4 = parsableBitArray.g(4);
                                            parsableBitArray.o(2);
                                            parsableBitArray.g(6);
                                            CueInfoBuilder cueInfoBuilder4 = this.m;
                                            if (cueInfoBuilder4.u != iG4) {
                                                cueInfoBuilder4.a('\n');
                                            }
                                            cueInfoBuilder4.u = iG4;
                                        } else {
                                            parsableBitArray.o(16);
                                        }
                                        i4 = 3;
                                        z = true;
                                        break;
                                    case 147:
                                    case 148:
                                    case 149:
                                    case 150:
                                    default:
                                        defpackage.a.u(iG3, "Invalid C1 command: ");
                                        i4 = i4;
                                        z = true;
                                        break;
                                    case 151:
                                        if (this.m.f16723c) {
                                            int iC3 = CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2));
                                            parsableBitArray.g(2);
                                            CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), 0);
                                            parsableBitArray.f();
                                            parsableBitArray.f();
                                            parsableBitArray.g(2);
                                            parsableBitArray.g(2);
                                            int iG5 = parsableBitArray.g(2);
                                            parsableBitArray.o(8);
                                            CueInfoBuilder cueInfoBuilder5 = this.m;
                                            cueInfoBuilder5.n = iC3;
                                            cueInfoBuilder5.f16729k = iG5;
                                        } else {
                                            parsableBitArray.o(32);
                                        }
                                        i4 = 3;
                                        z = true;
                                        break;
                                    case 152:
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                    case 159:
                                        int i13 = iG3 - 152;
                                        CueInfoBuilder cueInfoBuilder6 = cueInfoBuilderArr[i13];
                                        parsableBitArray.o(i2);
                                        boolean zF3 = parsableBitArray.f();
                                        parsableBitArray.o(i2);
                                        int iG6 = parsableBitArray.g(i4);
                                        boolean zF4 = parsableBitArray.f();
                                        int iG7 = parsableBitArray.g(i5);
                                        int iG8 = parsableBitArray.g(8);
                                        int iG9 = parsableBitArray.g(4);
                                        int iG10 = parsableBitArray.g(4);
                                        parsableBitArray.o(i2);
                                        parsableBitArray.o(6);
                                        parsableBitArray.o(i2);
                                        int iG11 = parsableBitArray.g(i4);
                                        int iG12 = parsableBitArray.g(i4);
                                        ArrayList arrayList = cueInfoBuilder6.f16721a;
                                        cueInfoBuilder6.f16723c = true;
                                        cueInfoBuilder6.d = zF3;
                                        cueInfoBuilder6.f16724e = iG6;
                                        cueInfoBuilder6.f16725f = zF4;
                                        cueInfoBuilder6.g = iG7;
                                        cueInfoBuilder6.f16726h = iG8;
                                        cueInfoBuilder6.f16727i = iG9;
                                        int i14 = iG10 + 1;
                                        if (cueInfoBuilder6.f16728j != i14) {
                                            cueInfoBuilder6.f16728j = i14;
                                            while (true) {
                                                if (arrayList.size() >= cueInfoBuilder6.f16728j || arrayList.size() >= 15) {
                                                    arrayList.remove(0);
                                                }
                                            }
                                        }
                                        if (iG11 != 0 && cueInfoBuilder6.l != iG11) {
                                            cueInfoBuilder6.l = iG11;
                                            int i15 = iG11 - 1;
                                            int i16 = CueInfoBuilder.B[i15];
                                            boolean z4 = CueInfoBuilder.A[i15];
                                            int i17 = CueInfoBuilder.y[i15];
                                            int i18 = CueInfoBuilder.z[i15];
                                            int i19 = CueInfoBuilder.x[i15];
                                            cueInfoBuilder6.n = i16;
                                            cueInfoBuilder6.f16729k = i19;
                                        }
                                        if (iG12 != 0 && cueInfoBuilder6.m != iG12) {
                                            cueInfoBuilder6.m = iG12;
                                            int i20 = iG12 - 1;
                                            int i21 = CueInfoBuilder.D[i20];
                                            int i22 = CueInfoBuilder.C[i20];
                                            cueInfoBuilder6.e(false, false);
                                            cueInfoBuilder6.f(CueInfoBuilder.v, CueInfoBuilder.E[i20]);
                                        }
                                        if (this.q != i13) {
                                            this.q = i13;
                                            this.m = cueInfoBuilderArr[i13];
                                        }
                                        i4 = 3;
                                        z = true;
                                        break;
                                }
                            } else {
                                i4 = i4;
                                z = true;
                                if (iG3 <= 255) {
                                    this.m.a((char) (iG3 & 255));
                                } else {
                                    defpackage.a.u(iG3, "Invalid base command: ");
                                }
                                i2 = 2;
                                i5 = 7;
                            }
                            z3 = z;
                            i2 = 2;
                            i5 = 7;
                        }
                        z = true;
                    } else {
                        i4 = i4;
                        z = true;
                        int iG13 = parsableBitArray.g(8);
                        if (iG13 <= 31) {
                            i5 = 7;
                            if (iG13 > 7) {
                                if (iG13 <= 15) {
                                    parsableBitArray.o(8);
                                } else if (iG13 <= 23) {
                                    parsableBitArray.o(16);
                                } else if (iG13 <= 31) {
                                    parsableBitArray.o(24);
                                }
                            }
                        } else {
                            i5 = 7;
                            if (iG13 <= 127) {
                                if (iG13 == 32) {
                                    this.m.a(' ');
                                } else if (iG13 == 33) {
                                    this.m.a((char) 160);
                                } else if (iG13 == 37) {
                                    this.m.a((char) 8230);
                                } else if (iG13 == 42) {
                                    this.m.a((char) 352);
                                } else if (iG13 == 44) {
                                    this.m.a((char) 338);
                                } else if (iG13 == 63) {
                                    this.m.a((char) 376);
                                } else if (iG13 == 57) {
                                    this.m.a((char) 8482);
                                } else if (iG13 == 58) {
                                    this.m.a((char) 353);
                                } else if (iG13 == 60) {
                                    this.m.a((char) 339);
                                } else if (iG13 != 61) {
                                    switch (iG13) {
                                        case 48:
                                            this.m.a((char) 9608);
                                            break;
                                        case 49:
                                            this.m.a((char) 8216);
                                            break;
                                        case 50:
                                            this.m.a((char) 8217);
                                            break;
                                        case EACTags.TRANSACTION_DATE /* 51 */:
                                            this.m.a((char) 8220);
                                            break;
                                        case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                                            this.m.a((char) 8221);
                                            break;
                                        case EACTags.SEX /* 53 */:
                                            this.m.a(Strings.BULLET);
                                            break;
                                        default:
                                            switch (iG13) {
                                                case 118:
                                                    this.m.a((char) 8539);
                                                    break;
                                                case 119:
                                                    this.m.a((char) 8540);
                                                    break;
                                                case 120:
                                                    this.m.a((char) 8541);
                                                    break;
                                                case 121:
                                                    this.m.a((char) 8542);
                                                    break;
                                                case 122:
                                                    this.m.a((char) 9474);
                                                    break;
                                                case 123:
                                                    this.m.a((char) 9488);
                                                    break;
                                                case 124:
                                                    this.m.a(Strings.BOX_LIGHT_UP_AND_RIGHT);
                                                    break;
                                                case 125:
                                                    this.m.a(Strings.BOX_LIGHT_HORIZONTAL);
                                                    break;
                                                case 126:
                                                    this.m.a((char) 9496);
                                                    break;
                                                case CertificateBody.profileType /* 127 */:
                                                    this.m.a(Strings.BOX_LIGHT_DOWN_AND_RIGHT);
                                                    break;
                                                default:
                                                    defpackage.a.u(iG13, "Invalid G2 character: ");
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    this.m.a((char) 8480);
                                }
                                z3 = true;
                            } else {
                                if (iG13 > 159) {
                                    i2 = 2;
                                    c2 = 6;
                                    if (iG13 <= 255) {
                                        if (iG13 == 160) {
                                            this.m.a((char) 13252);
                                        } else {
                                            defpackage.a.u(iG13, "Invalid G3 character: ");
                                            this.m.a('_');
                                        }
                                        z3 = true;
                                    } else {
                                        defpackage.a.u(iG13, "Invalid extended command: ");
                                    }
                                } else if (iG13 <= 135) {
                                    parsableBitArray.o(32);
                                } else if (iG13 <= 143) {
                                    parsableBitArray.o(40);
                                } else if (iG13 <= 159) {
                                    i2 = 2;
                                    parsableBitArray.o(2);
                                    c2 = 6;
                                    parsableBitArray.o(parsableBitArray.g(6) * 8);
                                }
                                boolean z5 = z;
                                i4 = i4;
                                i2 = i2;
                                z2 = z5;
                                i5 = i5;
                            }
                        }
                        i2 = 2;
                    }
                    c2 = 6;
                    boolean z6 = z;
                    i4 = i4;
                    i2 = i2;
                    z2 = z6;
                    i5 = i5;
                }
            }
        }
        if (z3) {
            this.n = l();
        }
        this.p = null;
    }

    public final List l() {
        Layout.Alignment alignment;
        float f2;
        float f3;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 8; i2++) {
            CueInfoBuilder[] cueInfoBuilderArr = this.l;
            CueInfoBuilder cueInfoBuilder = cueInfoBuilderArr[i2];
            if (cueInfoBuilder.f16723c && (!cueInfoBuilder.f16721a.isEmpty() || cueInfoBuilder.f16722b.length() != 0)) {
                CueInfoBuilder cueInfoBuilder2 = cueInfoBuilderArr[i2];
                if (cueInfoBuilder2.d) {
                    ArrayList arrayList2 = cueInfoBuilder2.f16721a;
                    Cea708CueInfo cea708CueInfo = null;
                    if (cueInfoBuilder2.f16723c && (!arrayList2.isEmpty() || cueInfoBuilder2.f16722b.length() != 0)) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                            spannableStringBuilder.append((CharSequence) arrayList2.get(i3));
                            spannableStringBuilder.append('\n');
                        }
                        spannableStringBuilder.append((CharSequence) cueInfoBuilder2.b());
                        int i4 = cueInfoBuilder2.f16729k;
                        if (i4 == 0) {
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        } else if (i4 == 1) {
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                        } else if (i4 != 2) {
                            if (i4 != 3) {
                                md.g(cueInfoBuilder2.f16729k, "Unexpected justification value: ");
                                return null;
                            }
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        } else {
                            alignment = Layout.Alignment.ALIGN_CENTER;
                        }
                        Layout.Alignment alignment2 = alignment;
                        boolean z = cueInfoBuilder2.f16725f;
                        int i5 = cueInfoBuilder2.f16726h;
                        int i6 = cueInfoBuilder2.g;
                        if (z) {
                            f2 = i5 / 99.0f;
                            f3 = i6 / 99.0f;
                        } else {
                            f2 = i5 / 209.0f;
                            f3 = i6 / 74.0f;
                        }
                        float f4 = (f2 * 0.9f) + 0.05f;
                        float f5 = (f3 * 0.9f) + 0.05f;
                        int i7 = cueInfoBuilder2.f16727i;
                        int i8 = i7 / 3;
                        int i9 = i8 == 0 ? 0 : i8 == 1 ? 1 : 2;
                        int i10 = i7 % 3;
                        int i11 = i10 == 0 ? 0 : i10 == 1 ? 1 : 2;
                        int i12 = cueInfoBuilder2.n;
                        cea708CueInfo = new Cea708CueInfo(spannableStringBuilder, alignment2, f5, 0, i9, f4, i11, -3.4028235E38f, i12 != CueInfoBuilder.w, i12, cueInfoBuilder2.f16724e);
                    }
                    if (cea708CueInfo != null) {
                        arrayList.add(cea708CueInfo);
                    }
                } else {
                    continue;
                }
            }
        }
        Collections.sort(arrayList, Cea708CueInfo.f16718c);
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            arrayList3.add(((Cea708CueInfo) arrayList.get(i13)).f16719a);
        }
        return Collections.unmodifiableList(arrayList3);
    }

    public final void m() {
        for (int i2 = 0; i2 < 8; i2++) {
            this.l[i2].d();
        }
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public final /* bridge */ /* synthetic */ void release() {
    }
}
