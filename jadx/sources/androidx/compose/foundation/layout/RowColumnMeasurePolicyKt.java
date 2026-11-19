package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.List;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RowColumnMeasurePolicyKt {
    /* JADX WARN: Code duplicated, block: B:73:0x017d  */
    /* JADX WARN: Code duplicated, block: B:74:0x0188  */
    /* JADX WARN: Code duplicated, block: B:76:0x018d  */
    /* JADX WARN: Code duplicated, block: B:78:0x0193  */
    public static final MeasureResult a(RowColumnMeasurePolicy rowColumnMeasurePolicy, int i2, int i3, int i4, int i5, int i6, MeasureScope measureScope, List list, Placeable[] placeableArr, int i7, int i8, int[] iArr, int i9) {
        RowColumnMeasurePolicy rowColumnMeasurePolicy2;
        int i10;
        int i11;
        long j2;
        RowColumnMeasurePolicy rowColumnMeasurePolicy3;
        int i12;
        FlowLayoutData flowLayoutData;
        char c2;
        int i13;
        int iIntValue;
        int iIntValue2;
        int i14;
        RowColumnMeasurePolicy rowColumnMeasurePolicy4;
        int i15;
        FlowLayoutData flowLayoutData2;
        int i16 = i5;
        long j3 = i6;
        int i17 = i8 - i7;
        int[] iArr2 = new int[i17];
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i18 = i7;
        float f3 = 0.0f;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        while (true) {
            Integer numValueOf = null;
            if (i18 >= i8) {
                break;
            }
            Measurable measurable = (Measurable) list.get(i18);
            RowColumnParentData rowColumnParentDataA = RowColumnImplKt.a(measurable);
            float fB = RowColumnImplKt.b(rowColumnParentDataA);
            if (fB > f2) {
                f3 += fB;
                i21++;
                i18 = i18;
                i15 = i20;
                j3 = j3;
                f2 = f2;
            } else {
                if (i16 != Integer.MAX_VALUE && rowColumnParentDataA != null && (flowLayoutData2 = rowColumnParentDataA.d) != null) {
                    numValueOf = Integer.valueOf(Math.round(flowLayoutData2.f4977a * i16));
                }
                int i23 = i4 - i22;
                Placeable placeableT = placeableArr[i18];
                if (placeableT == null) {
                    i14 = i20;
                    rowColumnMeasurePolicy4 = rowColumnMeasurePolicy;
                    placeableT = measurable.T(rowColumnMeasurePolicy.a(0, numValueOf != null ? numValueOf.intValue() : 0, false, i4 != Integer.MAX_VALUE ? i23 < 0 ? 0 : i23 : Integer.MAX_VALUE, numValueOf != null ? numValueOf.intValue() : i16));
                } else {
                    i14 = i20;
                    rowColumnMeasurePolicy4 = rowColumnMeasurePolicy;
                }
                int iC = rowColumnMeasurePolicy4.c(placeableT);
                int iE = rowColumnMeasurePolicy4.e(placeableT);
                iArr2[i18 - i7] = iC;
                int i24 = i23 - iC;
                if (i24 < 0) {
                    i24 = 0;
                }
                int iMin = Math.min(i6, i24);
                int iMax = Math.max(i14, iE);
                placeableArr[i18] = placeableT;
                i22 = iC + iMin + i22;
                i15 = iMax;
                i19 = iMin;
            }
            i18++;
            i20 = i15;
            f2 = f2;
            j3 = j3;
        }
        long j4 = j3;
        float f4 = f2;
        int i25 = i20;
        RowColumnMeasurePolicy rowColumnMeasurePolicy5 = rowColumnMeasurePolicy;
        if (i21 == 0) {
            i22 -= i19;
            rowColumnMeasurePolicy2 = rowColumnMeasurePolicy5;
            i11 = i25;
            i10 = 0;
        } else {
            long j5 = j4 * ((long) (i21 - 1));
            long jRound = ((long) ((i4 != Integer.MAX_VALUE ? i4 : i2) - i22)) - j5;
            if (jRound < 0) {
                jRound = 0;
            }
            float f5 = jRound / f3;
            for (int i26 = i7; i26 < i8; i26++) {
                jRound -= (long) Math.round(RowColumnImplKt.b(RowColumnImplKt.a((Measurable) list.get(i26))) * f5);
            }
            int i27 = i7;
            int iMax2 = i25;
            int i28 = 0;
            while (i27 < i8) {
                if (placeableArr[i27] == null) {
                    Measurable measurable2 = (Measurable) list.get(i27);
                    RowColumnParentData rowColumnParentDataA2 = RowColumnImplKt.a(measurable2);
                    float fB2 = RowColumnImplKt.b(rowColumnParentDataA2);
                    long j6 = jRound;
                    Integer numValueOf2 = (i16 == Integer.MAX_VALUE || rowColumnParentDataA2 == null || (flowLayoutData = rowColumnParentDataA2.d) == null) ? null : Integer.valueOf(Math.round(flowLayoutData.f4977a * i16));
                    if (fB2 <= f4) {
                        InlineClassHelperKt.b("All weights <= 0 should have placeables");
                    }
                    int iSignum = Long.signum(j6);
                    int i29 = iMax2;
                    j2 = j6 - ((long) iSignum);
                    int iMax3 = Math.max(0, Math.round(fB2 * f5) + iSignum);
                    if (rowColumnParentDataA2 != null ? rowColumnParentDataA2.f5035b : true) {
                        c2 = 65535;
                        int i30 = iMax3 != Integer.MAX_VALUE ? iMax3 : 0;
                        if (numValueOf2 != null) {
                            iIntValue = numValueOf2.intValue();
                            i13 = i27;
                        } else {
                            i13 = i27;
                            iIntValue = 0;
                        }
                        if (numValueOf2 != null) {
                            iIntValue2 = numValueOf2.intValue();
                        } else {
                            iIntValue2 = i16;
                        }
                        i12 = i13;
                        int i31 = iIntValue2;
                        rowColumnMeasurePolicy3 = rowColumnMeasurePolicy;
                        Placeable placeableT2 = measurable2.T(rowColumnMeasurePolicy3.a(i30, iIntValue, true, iMax3, i31));
                        int iC2 = rowColumnMeasurePolicy3.c(placeableT2);
                        int iE2 = rowColumnMeasurePolicy3.e(placeableT2);
                        iArr2[i12 - i7] = iC2;
                        i28 += iC2;
                        iMax2 = Math.max(i29, iE2);
                        placeableArr[i12] = placeableT2;
                    } else {
                        c2 = 65535;
                    }
                    if (numValueOf2 != null) {
                        iIntValue = numValueOf2.intValue();
                        i13 = i27;
                    } else {
                        i13 = i27;
                        iIntValue = 0;
                    }
                    if (numValueOf2 != null) {
                        iIntValue2 = numValueOf2.intValue();
                    } else {
                        iIntValue2 = i16;
                    }
                    i12 = i13;
                    int i32 = iIntValue2;
                    rowColumnMeasurePolicy3 = rowColumnMeasurePolicy;
                    Placeable placeableT3 = measurable2.T(rowColumnMeasurePolicy3.a(i30, iIntValue, true, iMax3, i32));
                    int iC3 = rowColumnMeasurePolicy3.c(placeableT3);
                    int iE3 = rowColumnMeasurePolicy3.e(placeableT3);
                    iArr2[i12 - i7] = iC3;
                    i28 += iC3;
                    iMax2 = Math.max(i29, iE3);
                    placeableArr[i12] = placeableT3;
                } else {
                    j2 = jRound;
                    rowColumnMeasurePolicy3 = rowColumnMeasurePolicy5;
                    i12 = i27;
                }
                i27 = i12 + 1;
                i16 = i5;
                rowColumnMeasurePolicy5 = rowColumnMeasurePolicy3;
                jRound = j2;
            }
            int i33 = iMax2;
            rowColumnMeasurePolicy2 = rowColumnMeasurePolicy5;
            i10 = (int) (((long) i28) + j5);
            int i34 = i4 - i22;
            if (i10 < 0) {
                i10 = 0;
            }
            if (i10 > i34) {
                i10 = i34;
            }
            i11 = i33;
        }
        int i35 = i22 + i10;
        if (i35 < 0) {
            i35 = 0;
        }
        int iMax4 = Math.max(i35, i2);
        int iMax5 = Math.max(i11, Math.max(i3, 0));
        int[] iArr3 = new int[i17];
        rowColumnMeasurePolicy2.b(iMax4, iArr2, iArr3, measureScope);
        return rowColumnMeasurePolicy2.d(placeableArr, measureScope, iArr3, iMax4, iMax5, iArr, i9, i7, i8);
    }
}
