package androidx.compose.ui.text.android;

import android.graphics.RectF;
import android.text.Layout;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.c;
import java.text.Bidi;
import kotlin.Metadata;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextLayoutGetRangeForRectExtensions_androidKt {
    public static final float a(int i2, int i3, float[] fArr) {
        return fArr[((i2 - i3) * 2) + 1];
    }

    /* JADX WARN: Code duplicated, block: B:144:0x0261 A[EDGE_INSN: B:144:0x0261->B:171:0x02bd BREAK  A[LOOP:5: B:154:0x027d->B:206:0x027d]] */
    /* JADX WARN: Code duplicated, block: B:86:0x01a9  */
    public static final int b(TextLayout textLayout, Layout layout, LayoutHelper layoutHelper, int i2, RectF rectF, SegmentFinder segmentFinder, c cVar, boolean z) {
        LayoutHelper.BidiRun[] bidiRunArr;
        IntProgression intProgression;
        LayoutHelper.BidiRun[] bidiRunArr2;
        int i3;
        int iC;
        int i4;
        int i5;
        int iB;
        Bidi bidiCreateLineBidi;
        float fA;
        float fA2;
        float fA3;
        int lineTop = layout.getLineTop(i2);
        int lineBottom = layout.getLineBottom(i2);
        int lineStart = layout.getLineStart(i2);
        int lineEnd = layout.getLineEnd(i2);
        if (lineStart == lineEnd) {
            return -1;
        }
        int i6 = (lineEnd - lineStart) * 2;
        float[] fArr = new float[i6];
        Layout layout2 = textLayout.g;
        int lineStart2 = layout2.getLineStart(i2);
        int iG = textLayout.g(i2);
        if (i6 < (iG - lineStart2) * 2) {
            InlineClassHelperKt.a("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 2");
        }
        HorizontalPositionCache horizontalPositionCache = new HorizontalPositionCache(textLayout);
        boolean z2 = false;
        boolean z3 = layout2.getParagraphDirection(i2) == 1;
        int i7 = 0;
        while (lineStart2 < iG) {
            boolean zIsRtlCharAt = layout2.isRtlCharAt(lineStart2);
            if (z3 && !zIsRtlCharAt) {
                fA = horizontalPositionCache.a(lineStart2, z2, z2, true);
                fA3 = horizontalPositionCache.a(lineStart2 + 1, true, true, true);
            } else if (z3 && zIsRtlCharAt) {
                fA3 = horizontalPositionCache.a(lineStart2, false, false, false);
                fA = horizontalPositionCache.a(lineStart2 + 1, true, true, false);
            } else {
                if (zIsRtlCharAt) {
                    fA2 = horizontalPositionCache.a(lineStart2, false, false, true);
                    fA = horizontalPositionCache.a(lineStart2 + 1, true, true, true);
                } else {
                    fA = horizontalPositionCache.a(lineStart2, false, false, false);
                    fA2 = horizontalPositionCache.a(lineStart2 + 1, true, true, false);
                }
                fA3 = fA2;
            }
            fArr[i7] = fA;
            fArr[i7 + 1] = fA3;
            i7 += 2;
            lineStart2++;
            z3 = z3;
            z2 = false;
        }
        Layout layout3 = layoutHelper.f10582a;
        int lineStart3 = layout3.getLineStart(i2);
        int lineEnd2 = layout3.getLineEnd(i2);
        int iD = layoutHelper.d(lineStart3, false);
        int iE = layoutHelper.e(iD);
        int i8 = lineStart3 - iE;
        int i9 = lineEnd2 - iE;
        Bidi bidiA = layoutHelper.a(iD);
        if (bidiA == null || (bidiCreateLineBidi = bidiA.createLineBidi(i8, i9)) == null) {
            bidiRunArr = new LayoutHelper.BidiRun[]{new LayoutHelper.BidiRun(lineStart3, lineEnd2, layout3.isRtlCharAt(lineStart3))};
        } else {
            int runCount = bidiCreateLineBidi.getRunCount();
            bidiRunArr = new LayoutHelper.BidiRun[runCount];
            int i10 = 0;
            while (i10 < runCount) {
                int i11 = runCount;
                bidiRunArr[i10] = new LayoutHelper.BidiRun(bidiCreateLineBidi.getRunStart(i10) + lineStart3, bidiCreateLineBidi.getRunLimit(i10) + lineStart3, bidiCreateLineBidi.getRunLevel(i10) % 2 == 1);
                i10++;
                runCount = i11;
            }
        }
        if (z) {
            intProgression = new IntRange(0, bidiRunArr.length - 1);
        } else {
            int length = bidiRunArr.length - 1;
            IntProgression.INSTANCE.getClass();
            intProgression = new IntProgression(length, 0, -1);
        }
        int i12 = intProgression.f71951b;
        int i13 = intProgression.f71952c;
        int i14 = intProgression.d;
        if ((i14 <= 0 || i12 > i13) && (i14 >= 0 || i13 > i12)) {
            return -1;
        }
        while (true) {
            LayoutHelper.BidiRun bidiRun = bidiRunArr[i12];
            boolean z4 = bidiRun.f10588c;
            int iA = bidiRun.f10586a;
            int iD2 = bidiRun.f10587b;
            float f2 = z4 ? fArr[((iD2 - 1) - lineStart) * 2] : fArr[(iA - lineStart) * 2];
            float fA4 = z4 ? a(iA, lineStart, fArr) : a(iD2 - 1, lineStart, fArr);
            float f3 = rectF.left;
            int i15 = i14;
            if (!z) {
                bidiRunArr2 = bidiRunArr;
                if (fA4 < f3) {
                    iD2 = -1;
                    break;
                }
                float f4 = rectF.right;
                if (f2 <= f4) {
                    if ((z4 || f4 < fA4) && (!z4 || f3 > f2)) {
                        int i16 = iD2;
                        int i17 = iA;
                        while (i16 - i17 > 1) {
                            int i18 = (i16 + i17) / 2;
                            float f5 = fArr[(i18 - lineStart) * 2];
                            int i19 = i16;
                            if ((z4 || f5 <= rectF.right) && (!z4 || f5 >= rectF.left)) {
                                i16 = i19;
                                i17 = i18;
                            } else {
                                i16 = i18;
                            }
                        }
                        i3 = z4 ? i16 : i17;
                    } else {
                        i3 = iD2 - 1;
                    }
                    int iB2 = segmentFinder.b(i3 + 1);
                    if (iB2 == -1 || (iC = segmentFinder.c(iB2)) <= iA) {
                        iD2 = -1;
                        break;
                    }
                    if (iB2 < iA) {
                        iB2 = iA;
                    }
                    if (iC <= iD2) {
                        iD2 = iC;
                    }
                    RectF rectF2 = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, lineTop, Call.Parameters.DEFAULT_CAMERA_ZOOM, lineBottom);
                    int iB3 = iB2;
                    while (true) {
                        rectF2.left = z4 ? fArr[((iD2 - 1) - lineStart) * 2] : fArr[(iB3 - lineStart) * 2];
                        rectF2.right = z4 ? a(iB3, lineStart, fArr) : a(iD2 - 1, lineStart, fArr);
                        if (((Boolean) cVar.invoke(rectF2, rectF)).booleanValue()) {
                            break;
                        }
                        iD2 = segmentFinder.d(iD2);
                        if (iD2 == -1 || iD2 <= iA) {
                            iD2 = -1;
                            break;
                        }
                        iB3 = segmentFinder.b(iD2);
                        if (iB3 < iA) {
                            iB3 = iA;
                        }
                    }
                } else {
                    iD2 = -1;
                    break;
                }
                iA = iD2;
            } else {
                if (fA4 < f3) {
                    bidiRunArr2 = bidiRunArr;
                    iA = -1;
                    break;
                }
                float f6 = rectF.right;
                if (f2 <= f6) {
                    if ((z4 || f3 > f2) && (!z4 || f6 < fA4)) {
                        int i20 = iD2;
                        int i21 = iA;
                        while (true) {
                            i4 = i20;
                            if (i20 - i21 <= 1) {
                                break;
                            }
                            int i22 = (i4 + i21) / 2;
                            float f7 = fArr[(i22 - lineStart) * 2];
                            if ((z4 || f7 <= rectF.left) && (!z4 || f7 >= rectF.right)) {
                                i20 = i4;
                                i21 = i22;
                            } else {
                                i20 = i22;
                            }
                        }
                        i5 = z4 ? i4 : i21;
                    } else {
                        i5 = iA;
                    }
                    int iC2 = segmentFinder.c(i5);
                    if (iC2 != -1 && (iB = segmentFinder.b(iC2)) < iD2) {
                        if (iB >= iA) {
                            iA = iB;
                        }
                        if (iC2 > iD2) {
                            iC2 = iD2;
                        }
                        bidiRunArr2 = bidiRunArr;
                        RectF rectF3 = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, lineTop, Call.Parameters.DEFAULT_CAMERA_ZOOM, lineBottom);
                        int iC3 = iC2;
                        while (true) {
                            rectF3.left = z4 ? fArr[((iC3 - 1) - lineStart) * 2] : fArr[(iA - lineStart) * 2];
                            rectF3.right = z4 ? a(iA, lineStart, fArr) : a(iC3 - 1, lineStart, fArr);
                            if (((Boolean) cVar.invoke(rectF3, rectF)).booleanValue()) {
                                break;
                            }
                            iA = segmentFinder.a(iA);
                            if (iA != -1 && iA < iD2) {
                                iC3 = segmentFinder.c(iA);
                                if (iC3 > iD2) {
                                    iC3 = iD2;
                                }
                            }
                        }
                    } else {
                        bidiRunArr2 = bidiRunArr;
                    }
                    iA = -1;
                    break;
                } else {
                    bidiRunArr2 = bidiRunArr;
                    iA = -1;
                    break;
                }
            }
            if (iA >= 0) {
                return iA;
            }
            if (i12 == i13) {
                return -1;
            }
            i12 += i15;
            i14 = i15;
            bidiRunArr = bidiRunArr2;
        }
    }
}
