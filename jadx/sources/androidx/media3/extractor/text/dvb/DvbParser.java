package androidx.media3.extractor.text.dvb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.batch.android.q0.b;
import com.batch.android.x0.h;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes.dex */
public final class DvbParser implements SubtitleParser {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f16740h = {0, 7, 8, 15};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final byte[] f16741i = {0, 119, -120, -1};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f16742j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, h.a.q, h.a.H, -18, -1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f16743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f16744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Canvas f16745c;
    public final DisplayDefinition d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ClutDefinition f16746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SubtitleService f16747f;
    public Bitmap g;

    public static final class ClutDefinition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16748a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f16749b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f16750c;
        public final int[] d;

        public ClutDefinition(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f16748a = i2;
            this.f16749b = iArr;
            this.f16750c = iArr2;
            this.d = iArr3;
        }
    }

    public static final class DisplayDefinition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16752b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16753c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f16754e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f16755f;

        public DisplayDefinition(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f16751a = i2;
            this.f16752b = i3;
            this.f16753c = i4;
            this.d = i5;
            this.f16754e = i6;
            this.f16755f = i7;
        }
    }

    public static final class ObjectData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16756a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f16757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f16758c;
        public final byte[] d;

        public ObjectData(int i2, boolean z, byte[] bArr, byte[] bArr2) {
            this.f16756a = i2;
            this.f16757b = z;
            this.f16758c = bArr;
            this.d = bArr2;
        }
    }

    public static final class PageComposition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16759a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16760b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseArray f16761c;

        public PageComposition(int i2, int i3, int i4, SparseArray<PageRegion> sparseArray) {
            this.f16759a = i3;
            this.f16760b = i4;
            this.f16761c = sparseArray;
        }
    }

    public static final class PageRegion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16762a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16763b;

        public PageRegion(int i2, int i3) {
            this.f16762a = i2;
            this.f16763b = i3;
        }
    }

    public static final class RegionComposition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16764a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f16765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16766c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f16767e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f16768f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f16769h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f16770i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final SparseArray f16771j;

        public RegionComposition(int i2, boolean z, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, SparseArray<RegionObject> sparseArray) {
            this.f16764a = i2;
            this.f16765b = z;
            this.f16766c = i3;
            this.d = i4;
            this.f16767e = i6;
            this.f16768f = i7;
            this.g = i8;
            this.f16769h = i9;
            this.f16770i = i10;
            this.f16771j = sparseArray;
        }
    }

    public static final class RegionObject {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16772a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16773b;

        public RegionObject(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f16772a = i4;
            this.f16773b = i5;
        }
    }

    public static final class SubtitleService {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16774a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseArray f16776c = new SparseArray();
        public final SparseArray d = new SparseArray();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final SparseArray f16777e = new SparseArray();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SparseArray f16778f = new SparseArray();
        public final SparseArray g = new SparseArray();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public DisplayDefinition f16779h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public PageComposition f16780i;

        public SubtitleService(int i2, int i3) {
            this.f16774a = i2;
            this.f16775b = i3;
        }
    }

    public DvbParser(List<byte[]> list) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(list.get(0));
        int iH = parsableByteArray.H();
        int iH2 = parsableByteArray.H();
        Paint paint = new Paint();
        this.f16743a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f16744b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f16745c = new Canvas();
        this.d = new DisplayDefinition(719, 575, 0, 719, 0, 575);
        this.f16746e = new ClutDefinition(0, new int[]{0, -1, b.v, -8421505}, e(), f());
        this.f16747f = new SubtitleService(iH, iH2);
    }

    public static byte[] d(int i2, int i3, ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) parsableBitArray.g(i3);
        }
        return bArr;
    }

    public static int[] e() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < 16; i2++) {
            if (i2 < 8) {
                iArr[i2] = g(255, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) != 0 ? 255 : 0);
            } else {
                int i3 = i2 & 1;
                int i4 = CertificateBody.profileType;
                int i5 = i3 != 0 ? 127 : 0;
                int i6 = (i2 & 2) != 0 ? 127 : 0;
                if ((i2 & 4) == 0) {
                    i4 = 0;
                }
                iArr[i2] = g(255, i5, i6, i4);
            }
        }
        return iArr;
    }

    public static int[] f() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (i2 < 8) {
                iArr[i2] = g(63, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i3 = i2 & 136;
                if (i3 == 0) {
                    iArr[i2] = g(255, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 8) {
                    iArr[i2] = g(CertificateBody.profileType, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 128) {
                    iArr[i2] = g(255, ((i2 & 1) != 0 ? 43 : 0) + CertificateBody.profileType + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + CertificateBody.profileType + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + CertificateBody.profileType + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i3 == 136) {
                    iArr[i2] = g(255, ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public static int g(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x018b  */
    /* JADX WARN: Code duplicated, block: B:102:0x0191 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x0193 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x0195 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:105:0x0197  */
    /* JADX WARN: Code duplicated, block: B:107:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:108:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:109:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:110:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:112:0x01d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:116:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:120:0x0203 A[LOOP:3: B:88:0x0156->B:120:0x0203, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:134:0x01ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x015c  */
    /* JADX WARN: Code duplicated, block: B:93:0x0166  */
    /* JADX WARN: Code duplicated, block: B:95:0x016c  */
    /* JADX WARN: Code duplicated, block: B:96:0x017c  */
    /* JADX WARN: Code duplicated, block: B:98:0x0182  */
    public static void h(byte[] bArr, int[] iArr, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        boolean z;
        int iG;
        int iG2;
        char c2;
        char c3;
        int iG3;
        int iG4;
        boolean z2;
        int iG5;
        int iG6;
        int iG7;
        int i5;
        int i6;
        boolean z3;
        int iG8;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        int i7 = i3;
        int i8 = i4;
        byte[] bArrD = null;
        byte[] bArrD2 = null;
        byte[] bArrD3 = null;
        while (parsableBitArray.b() != 0) {
            int i9 = 8;
            int iG9 = parsableBitArray.g(8);
            if (iG9 != 240) {
                int i10 = 3;
                int i11 = 2;
                int i12 = 4;
                switch (iG9) {
                    case 16:
                        if (i2 == 3) {
                            bArr3 = bArrD == null ? f16741i : bArrD;
                        } else {
                            if (i2 == 2) {
                                bArr3 = bArrD3 == null ? f16740h : bArrD3;
                            } else {
                                bArr2 = null;
                            }
                            z = false;
                            while (true) {
                                iG = parsableBitArray.g(2);
                                if (iG != 0) {
                                    iG3 = iG;
                                    iG4 = 1;
                                } else {
                                    if (parsableBitArray.f()) {
                                        int iG10 = parsableBitArray.g(3) + 3;
                                        iG3 = parsableBitArray.g(2);
                                        iG4 = iG10;
                                    } else {
                                        if (parsableBitArray.f()) {
                                            iG4 = 1;
                                            c2 = '\b';
                                            c3 = 4;
                                        } else {
                                            iG2 = parsableBitArray.g(2);
                                            if (iG2 != 0) {
                                                c2 = '\b';
                                                c3 = 4;
                                                z = true;
                                            } else if (iG2 != 1) {
                                                c2 = '\b';
                                                c3 = 4;
                                                iG4 = 2;
                                            } else if (iG2 != 2) {
                                                c2 = '\b';
                                                c3 = 4;
                                                iG4 = parsableBitArray.g(4) + 12;
                                                iG3 = parsableBitArray.g(2);
                                                z = z;
                                            } else if (iG2 != 3) {
                                                z = z;
                                                c2 = '\b';
                                                c3 = 4;
                                            } else {
                                                c2 = '\b';
                                                int iG11 = parsableBitArray.g(8) + 29;
                                                iG3 = parsableBitArray.g(2);
                                                z = z;
                                                iG4 = iG11;
                                                c3 = 4;
                                            }
                                            iG3 = 0;
                                            iG4 = 0;
                                        }
                                        iG3 = 0;
                                    }
                                    if (iG4 == 0 && paint != null) {
                                        if (bArr2 != 0) {
                                            iG3 = bArr2[iG3];
                                        }
                                        paint.setColor(iArr[iG3]);
                                        canvas.drawRect(i7, i8, i7 + iG4, i8 + 1, paint);
                                    }
                                    i7 += iG4;
                                    if (z) {
                                        parsableBitArray.c();
                                    } else {
                                        paint = paint;
                                        z = z;
                                    }
                                }
                                c2 = '\b';
                                c3 = 4;
                                if (iG4 == 0) {
                                }
                                i7 += iG4;
                                if (z) {
                                    parsableBitArray.c();
                                } else {
                                    paint = paint;
                                    z = z;
                                }
                            }
                        }
                        bArr2 = bArr3;
                        z = false;
                        while (true) {
                            iG = parsableBitArray.g(2);
                            if (iG != 0) {
                                iG3 = iG;
                                iG4 = 1;
                            } else {
                                if (parsableBitArray.f()) {
                                    int iG12 = parsableBitArray.g(3) + 3;
                                    iG3 = parsableBitArray.g(2);
                                    iG4 = iG12;
                                } else {
                                    if (parsableBitArray.f()) {
                                        iG4 = 1;
                                        c2 = '\b';
                                        c3 = 4;
                                    } else {
                                        iG2 = parsableBitArray.g(2);
                                        if (iG2 != 0) {
                                            c2 = '\b';
                                            c3 = 4;
                                            z = true;
                                        } else if (iG2 != 1) {
                                            c2 = '\b';
                                            c3 = 4;
                                            iG4 = 2;
                                        } else if (iG2 != 2) {
                                            c2 = '\b';
                                            c3 = 4;
                                            iG4 = parsableBitArray.g(4) + 12;
                                            iG3 = parsableBitArray.g(2);
                                            z = z;
                                        } else if (iG2 != 3) {
                                            z = z;
                                            c2 = '\b';
                                            c3 = 4;
                                        } else {
                                            c2 = '\b';
                                            int iG13 = parsableBitArray.g(8) + 29;
                                            iG3 = parsableBitArray.g(2);
                                            z = z;
                                            iG4 = iG13;
                                            c3 = 4;
                                        }
                                        iG3 = 0;
                                        iG4 = 0;
                                    }
                                    iG3 = 0;
                                }
                                if (iG4 == 0) {
                                }
                                i7 += iG4;
                                if (z) {
                                    parsableBitArray.c();
                                } else {
                                    paint = paint;
                                    z = z;
                                }
                            }
                            c2 = '\b';
                            c3 = 4;
                            if (iG4 == 0) {
                            }
                            i7 += iG4;
                            if (z) {
                                parsableBitArray.c();
                            } else {
                                paint = paint;
                                z = z;
                            }
                            break;
                        }
                        break;
                    case 17:
                        byte[] bArr4 = i2 == 3 ? bArrD2 == null ? f16742j : bArrD2 : null;
                        boolean z4 = false;
                        while (true) {
                            int iG14 = parsableBitArray.g(i12);
                            if (iG14 != 0) {
                                z2 = z4;
                                iG7 = iG14;
                                iG5 = 1;
                            } else if (parsableBitArray.f()) {
                                if (parsableBitArray.f()) {
                                    int iG15 = parsableBitArray.g(i11);
                                    if (iG15 == 0) {
                                        z2 = z4;
                                        iG5 = 1;
                                    } else if (iG15 != 1) {
                                        if (iG15 == i11) {
                                            iG5 = parsableBitArray.g(i12) + 9;
                                            iG6 = parsableBitArray.g(i12);
                                        } else if (iG15 != i10) {
                                            z2 = z4;
                                            iG5 = 0;
                                        } else {
                                            iG5 = parsableBitArray.g(i9) + 25;
                                            iG6 = parsableBitArray.g(i12);
                                        }
                                        iG7 = iG6;
                                    } else {
                                        z2 = z4;
                                        iG5 = i11;
                                    }
                                    iG7 = 0;
                                } else {
                                    iG5 = parsableBitArray.g(i11) + 4;
                                    iG7 = parsableBitArray.g(i12);
                                }
                                z2 = z4;
                            } else {
                                int iG16 = parsableBitArray.g(i10);
                                if (iG16 != 0) {
                                    iG5 = iG16 + 2;
                                    z2 = z4;
                                } else {
                                    z2 = true;
                                    iG5 = 0;
                                }
                                iG7 = 0;
                            }
                            if (iG5 == 0 || paint == 0) {
                                i5 = i10;
                                i6 = i11;
                            } else {
                                if (bArr4 != 0) {
                                    iG7 = bArr4[iG7];
                                }
                                paint.setColor(iArr[iG7]);
                                i5 = i10;
                                i6 = 2;
                                canvas.drawRect(i7, i8, i7 + iG5, i8 + 1, paint);
                            }
                            i7 += iG5;
                            if (z2) {
                                parsableBitArray.c();
                            } else {
                                z4 = z2;
                                i10 = i5;
                                i11 = i6;
                                i12 = 4;
                                i9 = 8;
                            }
                            break;
                        }
                        break;
                    case 18:
                        boolean z5 = false;
                        while (true) {
                            int iG17 = parsableBitArray.g(8);
                            if (iG17 != 0) {
                                z3 = z5;
                                iG8 = 1;
                            } else if (parsableBitArray.f()) {
                                z3 = z5;
                                iG8 = parsableBitArray.g(7);
                                iG17 = parsableBitArray.g(8);
                            } else {
                                int iG18 = parsableBitArray.g(7);
                                if (iG18 != 0) {
                                    z3 = z5;
                                    iG8 = iG18;
                                    iG17 = 0;
                                } else {
                                    z3 = true;
                                    iG17 = 0;
                                    iG8 = 0;
                                }
                            }
                            if (iG8 != 0 && paint != 0) {
                                paint.setColor(iArr[iG17]);
                                canvas.drawRect(i7, i8, i7 + iG8, i8 + 1, paint);
                            }
                            i7 += iG8;
                            if (!z3) {
                                z5 = z3;
                            }
                            break;
                        }
                        break;
                    default:
                        switch (iG9) {
                            case 32:
                                bArrD3 = d(4, 4, parsableBitArray);
                                break;
                            case 33:
                                bArrD = d(4, 8, parsableBitArray);
                                break;
                            case 34:
                                bArrD2 = d(16, 8, parsableBitArray);
                                break;
                        }
                        break;
                }
            } else {
                i8 += 2;
                i7 = i3;
            }
        }
    }

    public static ClutDefinition i(ParsableBitArray parsableBitArray, int i2) {
        int[] iArr;
        int iG;
        int i3;
        int iG2;
        int iG3;
        int iG4;
        int i4 = 8;
        int iG5 = parsableBitArray.g(8);
        parsableBitArray.o(8);
        int i5 = 2;
        int i6 = i2 - 2;
        int i7 = 0;
        int[] iArr2 = {0, -1, b.v, -8421505};
        int[] iArrE = e();
        int[] iArrF = f();
        while (i6 > 0) {
            int iG6 = parsableBitArray.g(i4);
            int iG7 = parsableBitArray.g(i4);
            if ((iG7 & 128) != 0) {
                iArr = iArr2;
            } else {
                iArr = (iG7 & 64) != 0 ? iArrE : iArrF;
            }
            if ((iG7 & 1) != 0) {
                iG3 = parsableBitArray.g(i4);
                iG4 = parsableBitArray.g(i4);
                iG = parsableBitArray.g(i4);
                iG2 = parsableBitArray.g(i4);
                i3 = i6 - 6;
            } else {
                int iG8 = parsableBitArray.g(6) << i5;
                int iG9 = parsableBitArray.g(4) << 4;
                iG = parsableBitArray.g(4) << 4;
                i3 = i6 - 4;
                iG2 = parsableBitArray.g(i5) << 6;
                iG3 = iG8;
                iG4 = iG9;
            }
            if (iG3 == 0) {
                iG4 = i7;
                iG = iG4;
                iG2 = 255;
            }
            double d = iG3;
            double d2 = iG4 - 128;
            double d3 = iG - 128;
            iArr[iG6] = g((byte) (255 - (iG2 & 255)), Util.j((int) ((1.402d * d2) + d), 0, 255), Util.j((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255), Util.j((int) ((d3 * 1.772d) + d), 0, 255));
            i6 = i3;
            i7 = 0;
            iG5 = iG5;
            iArrF = iArrF;
            i4 = 8;
            i5 = 2;
        }
        return new ClutDefinition(iG5, iArr2, iArrE, iArrF);
    }

    public static ObjectData j(ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int iG = parsableBitArray.g(16);
        parsableBitArray.o(4);
        int iG2 = parsableBitArray.g(2);
        boolean zF = parsableBitArray.f();
        parsableBitArray.o(1);
        byte[] bArr2 = Util.f14243b;
        if (iG2 != 1) {
            if (iG2 == 0) {
                int iG3 = parsableBitArray.g(16);
                int iG4 = parsableBitArray.g(16);
                if (iG3 > 0) {
                    bArr2 = new byte[iG3];
                    parsableBitArray.j(iG3, bArr2);
                }
                if (iG4 > 0) {
                    bArr = new byte[iG4];
                    parsableBitArray.j(iG4, bArr);
                }
            }
            return new ObjectData(iG, zF, bArr2, bArr);
        }
        parsableBitArray.o(parsableBitArray.g(8) * 16);
        bArr = bArr2;
        return new ObjectData(iG, zF, bArr2, bArr);
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void a(byte[] bArr, int i2, int i3, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        SubtitleService subtitleService;
        boolean z;
        CuesWithTiming cuesWithTiming;
        char c2;
        char c3;
        char c4;
        int i4;
        RegionComposition regionComposition;
        RegionComposition regionComposition2;
        int iG;
        int iG2;
        int iG3;
        int iG4;
        int i5;
        int iG5;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr, i2 + i3);
        parsableBitArray.m(i2);
        while (true) {
            int iB = parsableBitArray.b();
            subtitleService = this.f16747f;
            z = true;
            if (iB >= 48 && parsableBitArray.g(8) == 15) {
                int iG6 = parsableBitArray.g(8);
                int iG7 = parsableBitArray.g(16);
                int iG8 = parsableBitArray.g(16);
                int iD = parsableBitArray.d() + iG8;
                if (iG8 * 8 > parsableBitArray.b()) {
                    Log.g("Data field length exceeds limit");
                    parsableBitArray.o(parsableBitArray.b());
                } else {
                    switch (iG6) {
                        case 16:
                            if (iG7 == subtitleService.f16774a) {
                                PageComposition pageComposition = subtitleService.f16780i;
                                int iG9 = parsableBitArray.g(8);
                                int iG10 = parsableBitArray.g(4);
                                int iG11 = parsableBitArray.g(2);
                                parsableBitArray.o(2);
                                int i6 = iG8 - 2;
                                SparseArray sparseArray = new SparseArray();
                                while (i6 > 0) {
                                    int iG12 = parsableBitArray.g(8);
                                    parsableBitArray.o(8);
                                    i6 -= 6;
                                    sparseArray.put(iG12, new PageRegion(parsableBitArray.g(16), parsableBitArray.g(16)));
                                }
                                PageComposition pageComposition2 = new PageComposition(iG9, iG10, iG11, sparseArray);
                                if (pageComposition2.f16760b != 0) {
                                    subtitleService.f16780i = pageComposition2;
                                    subtitleService.f16776c.clear();
                                    subtitleService.d.clear();
                                    subtitleService.f16777e.clear();
                                } else if (pageComposition != null && pageComposition.f16759a != pageComposition2.f16759a) {
                                    subtitleService.f16780i = pageComposition2;
                                }
                            }
                            break;
                        case 17:
                            PageComposition pageComposition3 = subtitleService.f16780i;
                            SparseArray sparseArray2 = subtitleService.f16776c;
                            if (iG7 == subtitleService.f16774a && pageComposition3 != null) {
                                int iG13 = parsableBitArray.g(8);
                                parsableBitArray.o(4);
                                boolean zF = parsableBitArray.f();
                                parsableBitArray.o(3);
                                int iG14 = parsableBitArray.g(16);
                                int iG15 = parsableBitArray.g(16);
                                int iG16 = parsableBitArray.g(3);
                                int iG17 = parsableBitArray.g(3);
                                parsableBitArray.o(2);
                                int iG18 = parsableBitArray.g(8);
                                int iG19 = parsableBitArray.g(8);
                                int iG20 = parsableBitArray.g(4);
                                int iG21 = parsableBitArray.g(2);
                                parsableBitArray.o(2);
                                int i7 = iG8 - 10;
                                SparseArray sparseArray3 = new SparseArray();
                                while (i7 > 0) {
                                    int iG22 = parsableBitArray.g(16);
                                    int iG23 = parsableBitArray.g(2);
                                    int iG24 = parsableBitArray.g(2);
                                    int iG25 = parsableBitArray.g(12);
                                    parsableBitArray.o(4);
                                    int iG26 = parsableBitArray.g(12);
                                    int i8 = i7 - 6;
                                    if (iG23 == 1 || iG23 == 2) {
                                        i7 -= 8;
                                        iG = parsableBitArray.g(8);
                                        iG2 = parsableBitArray.g(8);
                                    } else {
                                        i7 = i8;
                                        iG = 0;
                                        iG2 = 0;
                                    }
                                    sparseArray3.put(iG22, new RegionObject(iG23, iG24, iG25, iG26, iG, iG2));
                                }
                                RegionComposition regionComposition3 = new RegionComposition(iG13, zF, iG14, iG15, iG16, iG17, iG18, iG19, iG20, iG21, sparseArray3);
                                int i9 = pageComposition3.f16760b;
                                int i10 = regionComposition3.f16764a;
                                if (i9 == 0 && (regionComposition2 = (RegionComposition) sparseArray2.get(i10)) != null) {
                                    SparseArray sparseArray4 = regionComposition2.f16771j;
                                    for (int i11 = 0; i11 < sparseArray4.size(); i11++) {
                                        regionComposition3.f16771j.put(sparseArray4.keyAt(i11), (RegionObject) sparseArray4.valueAt(i11));
                                    }
                                }
                                sparseArray2.put(i10, regionComposition3);
                            }
                            break;
                        case 18:
                            if (iG7 == subtitleService.f16774a) {
                                ClutDefinition clutDefinitionI = i(parsableBitArray, iG8);
                                subtitleService.d.put(clutDefinitionI.f16748a, clutDefinitionI);
                            } else if (iG7 == subtitleService.f16775b) {
                                ClutDefinition clutDefinitionI2 = i(parsableBitArray, iG8);
                                subtitleService.f16778f.put(clutDefinitionI2.f16748a, clutDefinitionI2);
                            }
                            break;
                        case 19:
                            if (iG7 == subtitleService.f16774a) {
                                ObjectData objectDataJ = j(parsableBitArray);
                                subtitleService.f16777e.put(objectDataJ.f16756a, objectDataJ);
                            } else if (iG7 == subtitleService.f16775b) {
                                ObjectData objectDataJ2 = j(parsableBitArray);
                                subtitleService.g.put(objectDataJ2.f16756a, objectDataJ2);
                            }
                            break;
                        case 20:
                            if (iG7 == subtitleService.f16774a) {
                                parsableBitArray.o(4);
                                boolean zF2 = parsableBitArray.f();
                                parsableBitArray.o(3);
                                int iG27 = parsableBitArray.g(16);
                                int iG28 = parsableBitArray.g(16);
                                if (zF2) {
                                    int iG29 = parsableBitArray.g(16);
                                    iG3 = parsableBitArray.g(16);
                                    iG5 = parsableBitArray.g(16);
                                    iG4 = parsableBitArray.g(16);
                                    i5 = iG29;
                                } else {
                                    iG3 = iG27;
                                    iG4 = iG28;
                                    i5 = 0;
                                    iG5 = 0;
                                }
                                subtitleService.f16779h = new DisplayDefinition(iG27, iG28, i5, iG3, iG5, iG4);
                            }
                            break;
                    }
                    parsableBitArray.p(iD - parsableBitArray.d());
                }
            }
        }
        PageComposition pageComposition4 = subtitleService.f16780i;
        if (pageComposition4 == null) {
            cuesWithTiming = new CuesWithTiming(ImmutableList.x(), -9223372036854775807L, -9223372036854775807L);
        } else {
            DisplayDefinition displayDefinition = subtitleService.f16779h;
            if (displayDefinition == null) {
                displayDefinition = this.d;
            }
            Bitmap bitmap = this.g;
            Canvas canvas = this.f16745c;
            if (bitmap == null || displayDefinition.f16751a + 1 != bitmap.getWidth() || displayDefinition.f16752b + 1 != this.g.getHeight()) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(displayDefinition.f16751a + 1, displayDefinition.f16752b + 1, Bitmap.Config.ARGB_8888);
                this.g = bitmapCreateBitmap;
                canvas.setBitmap(bitmapCreateBitmap);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray sparseArray5 = pageComposition4.f16761c;
            int i12 = 0;
            while (i12 < sparseArray5.size()) {
                canvas.save();
                PageRegion pageRegion = (PageRegion) sparseArray5.valueAt(i12);
                RegionComposition regionComposition4 = (RegionComposition) subtitleService.f16776c.get(sparseArray5.keyAt(i12));
                int i13 = pageRegion.f16762a + displayDefinition.f16753c;
                int i14 = pageRegion.f16763b + displayDefinition.f16754e;
                int i15 = regionComposition4.f16766c;
                int i16 = regionComposition4.f16768f;
                boolean z2 = z;
                int i17 = regionComposition4.d;
                int i18 = i13 + i15;
                int i19 = i14 + i17;
                SparseArray sparseArray6 = sparseArray5;
                canvas.clipRect(i13, i14, Math.min(i18, displayDefinition.d), Math.min(i19, displayDefinition.f16755f));
                ClutDefinition clutDefinition = (ClutDefinition) subtitleService.d.get(i16);
                if (clutDefinition == null && (clutDefinition = (ClutDefinition) subtitleService.f16778f.get(i16)) == null) {
                    clutDefinition = this.f16746e;
                }
                SparseArray sparseArray7 = regionComposition4.f16771j;
                int i20 = i12;
                int i21 = 0;
                while (true) {
                    Canvas canvas2 = canvas;
                    if (i21 < sparseArray7.size()) {
                        int iKeyAt = sparseArray7.keyAt(i21);
                        RegionObject regionObject = (RegionObject) sparseArray7.valueAt(i21);
                        SparseArray sparseArray8 = sparseArray7;
                        ObjectData objectData = (ObjectData) subtitleService.f16777e.get(iKeyAt);
                        if (objectData == null) {
                            objectData = (ObjectData) subtitleService.g.get(iKeyAt);
                        }
                        if (objectData != null) {
                            Paint paint = objectData.f16757b ? null : this.f16743a;
                            RegionComposition regionComposition5 = regionComposition4;
                            int i22 = regionComposition5.f16767e;
                            int i23 = regionObject.f16772a + i13;
                            int i24 = regionObject.f16773b + i14;
                            Paint paint2 = paint;
                            canvas = canvas2;
                            int[] iArr = i22 == 3 ? clutDefinition.d : i22 == 2 ? clutDefinition.f16750c : clutDefinition.f16749b;
                            regionComposition = regionComposition5;
                            h(objectData.f16758c, iArr, i22, i23, i24, paint2, canvas);
                            h(objectData.d, iArr, i22, i23, i24 + 1, paint2, canvas);
                        } else {
                            regionComposition = regionComposition4;
                            canvas = canvas2;
                        }
                        i21++;
                        i14 = i14;
                        i13 = i13;
                        regionComposition4 = regionComposition;
                        arrayList = arrayList;
                        sparseArray7 = sparseArray8;
                        subtitleService = subtitleService;
                        displayDefinition = displayDefinition;
                        i15 = i15;
                    } else {
                        DisplayDefinition displayDefinition2 = displayDefinition;
                        SubtitleService subtitleService2 = subtitleService;
                        int i25 = i14;
                        RegionComposition regionComposition6 = regionComposition4;
                        int i26 = i15;
                        canvas = canvas2;
                        ArrayList arrayList2 = arrayList;
                        int i27 = i13;
                        if (regionComposition6.f16765b) {
                            int i28 = regionComposition6.f16767e;
                            if (i28 == 3) {
                                i4 = clutDefinition.d[regionComposition6.g];
                                c4 = 2;
                            } else {
                                c4 = 2;
                                i4 = i28 == 2 ? clutDefinition.f16750c[regionComposition6.f16769h] : clutDefinition.f16749b[regionComposition6.f16770i];
                            }
                            Paint paint3 = this.f16744b;
                            paint3.setColor(i4);
                            c2 = c4;
                            c3 = 3;
                            canvas.drawRect(i27, i25, i18, i19, paint3);
                        } else {
                            c2 = 2;
                            c3 = 3;
                        }
                        Cue.Builder builder = new Cue.Builder();
                        builder.f14103b = Bitmap.createBitmap(this.g, i27, i25, i26, i17);
                        builder.f14102a = null;
                        float f2 = displayDefinition2.f16751a;
                        builder.f14107h = i27 / f2;
                        builder.f14108i = 0;
                        float f3 = displayDefinition2.f16752b;
                        builder.f14105e = i25 / f3;
                        builder.f14106f = 0;
                        builder.g = 0;
                        builder.l = i26 / f2;
                        builder.m = i17 / f3;
                        arrayList2.add(builder.a());
                        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                        canvas.restore();
                        i12 = i20 + 1;
                        z = z2;
                        displayDefinition = displayDefinition2;
                        arrayList = arrayList2;
                        subtitleService = subtitleService2;
                        sparseArray5 = sparseArray6;
                    }
                }
            }
            cuesWithTiming = new CuesWithTiming(arrayList, -9223372036854775807L, -9223372036854775807L);
        }
        consumer.accept(cuesWithTiming);
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final int c() {
        return 2;
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void reset() {
        SubtitleService subtitleService = this.f16747f;
        subtitleService.f16776c.clear();
        subtitleService.d.clear();
        subtitleService.f16777e.clear();
        subtitleService.f16778f.clear();
        subtitleService.g.clear();
        subtitleService.f16779h = null;
        subtitleService.f16780i = null;
    }
}
