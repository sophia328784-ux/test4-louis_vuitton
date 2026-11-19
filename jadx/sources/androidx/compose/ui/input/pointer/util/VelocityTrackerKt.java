package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.internal.InlineClassHelperKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002*\f\b\u0002\u0010\u0001\"\u00020\u00002\u00020\u0000*\u0018\b\u0002\u0010\u0003\"\b\u0012\u0004\u0012\u00020\u00000\u00022\b\u0012\u0004\u0012\u00020\u00000\u0002¨\u0006\u0004"}, d2 = {"", "Vector", "", "Matrix", "ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class VelocityTrackerKt {
    public static final void a(VelocityTracker velocityTracker, PointerInputChange pointerInputChange, long j2) {
        DefaultVelocityTracker defaultVelocityTracker = velocityTracker.f9403a;
        defaultVelocityTracker.getClass();
        VelocityTracker1D velocityTracker1D = defaultVelocityTracker.f9399b;
        VelocityTracker1D velocityTracker1D2 = defaultVelocityTracker.f9398a;
        boolean zB = PointerEventKt.b(pointerInputChange);
        long j3 = pointerInputChange.f9329b;
        if (zB) {
            DataPointAtTime[] dataPointAtTimeArr = velocityTracker1D2.d;
            ArraysKt.r(dataPointAtTimeArr, 0, dataPointAtTimeArr.length, null);
            velocityTracker1D2.f9407e = 0;
            DataPointAtTime[] dataPointAtTimeArr2 = velocityTracker1D.d;
            ArraysKt.r(dataPointAtTimeArr2, 0, dataPointAtTimeArr2.length, null);
            velocityTracker1D.f9407e = 0;
            defaultVelocityTracker.f9400c = 0L;
        }
        if (!PointerEventKt.d(pointerInputChange)) {
            List list = pointerInputChange.m;
            if (list == null) {
                list = EmptyList.f71768b;
            }
            int i2 = 0;
            for (int size = list.size(); i2 < size; size = size) {
                HistoricalChange historicalChange = (HistoricalChange) list.get(i2);
                defaultVelocityTracker.a(historicalChange.f9269a, Offset.f(historicalChange.f9272e, j2));
                i2++;
            }
            defaultVelocityTracker.a(j3, Offset.f(pointerInputChange.n, j2));
        }
        if (PointerEventKt.d(pointerInputChange) && j3 - defaultVelocityTracker.f9400c > 40) {
            DataPointAtTime[] dataPointAtTimeArr3 = velocityTracker1D2.d;
            ArraysKt.r(dataPointAtTimeArr3, 0, dataPointAtTimeArr3.length, null);
            velocityTracker1D2.f9407e = 0;
            DataPointAtTime[] dataPointAtTimeArr4 = velocityTracker1D.d;
            ArraysKt.r(dataPointAtTimeArr4, 0, dataPointAtTimeArr4.length, null);
            velocityTracker1D.f9407e = 0;
            defaultVelocityTracker.f9400c = 0L;
        }
        defaultVelocityTracker.f9400c = j3;
    }

    public static final float b(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (int i2 = 0; i2 < length; i2++) {
            f2 += fArr[i2] * fArr2[i2];
        }
        return f2;
    }

    public static final void c(int i2, float[] fArr, float[] fArr2, float[] fArr3) {
        if (i2 == 0) {
            InlineClassHelperKt.a("At least one point must be provided");
        }
        int i3 = 2 >= i2 ? i2 - 1 : 2;
        int i4 = i3 + 1;
        float[][] fArr4 = new float[i4][];
        for (int i5 = 0; i5 < i4; i5++) {
            fArr4[i5] = new float[i2];
        }
        for (int i6 = 0; i6 < i2; i6++) {
            fArr4[0][i6] = 1.0f;
            for (int i7 = 1; i7 < i4; i7++) {
                fArr4[i7][i6] = fArr4[i7 - 1][i6] * fArr[i6];
            }
        }
        float[][] fArr5 = new float[i4][];
        for (int i8 = 0; i8 < i4; i8++) {
            fArr5[i8] = new float[i2];
        }
        float[][] fArr6 = new float[i4][];
        for (int i9 = 0; i9 < i4; i9++) {
            fArr6[i9] = new float[i4];
        }
        int i10 = 0;
        while (i10 < i4) {
            float[] fArr7 = fArr5[i10];
            float[] fArr8 = fArr4[i10];
            fArr8.getClass();
            fArr7.getClass();
            System.arraycopy(fArr8, 0, fArr7, 0, i2);
            for (int i11 = 0; i11 < i10; i11++) {
                float[] fArr9 = fArr5[i11];
                float fB = b(fArr7, fArr9);
                for (int i12 = 0; i12 < i2; i12++) {
                    fArr7[i12] = fArr7[i12] - (fArr9[i12] * fB);
                }
            }
            float fSqrt = (float) Math.sqrt(b(fArr7, fArr7));
            if (fSqrt < 1.0E-6f) {
                fSqrt = 1.0E-6f;
            }
            float f2 = 1.0f / fSqrt;
            for (int i13 = 0; i13 < i2; i13++) {
                fArr7[i13] = fArr7[i13] * f2;
            }
            float[] fArr10 = fArr6[i10];
            int i14 = 0;
            while (i14 < i4) {
                fArr10[i14] = i14 < i10 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : b(fArr7, fArr4[i14]);
                i14++;
            }
            i10++;
        }
        for (int i15 = i3; -1 < i15; i15--) {
            float fB2 = b(fArr5[i15], fArr2);
            float[] fArr11 = fArr6[i15];
            int i16 = i15 + 1;
            if (i16 <= i3) {
                int i17 = i3;
                while (true) {
                    fB2 -= fArr11[i17] * fArr3[i17];
                    if (i17 != i16) {
                        i17--;
                    }
                }
            }
            fArr3[i15] = fB2 / fArr11[i15];
        }
    }
}
