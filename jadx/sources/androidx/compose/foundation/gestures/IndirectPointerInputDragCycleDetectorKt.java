package androidx.compose.foundation.gestures;

import androidx.collection.MutableObjectList;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class IndirectPointerInputDragCycleDetectorKt {
    public static final void a(VelocityTracker velocityTracker, IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, IndirectPointerInputEventSmoother indirectPointerInputEventSmoother, long j2) {
        float fIntBitsToFloat;
        MutableObjectList mutableObjectList = indirectPointerInputEventSmoother.f4602b;
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (indirectPointerInputChange.f9221c >> 32));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (indirectPointerInputChange.f9221c & BodyPartID.bodyIdMax));
        if (c(indirectPointerInputChange)) {
            indirectPointerInputEventSmoother.f4601a = 0;
            mutableObjectList.k();
        }
        if (!b(indirectPointerInputChange) && !c(indirectPointerInputChange)) {
            if (mutableObjectList.f3346b == 3) {
                int i2 = indirectPointerInputEventSmoother.f4601a;
                indirectPointerInputEventSmoother.f4601a = i2 + 1;
                mutableObjectList.p(i2, indirectPointerInputChange);
            } else {
                mutableObjectList.g(indirectPointerInputChange);
            }
            if (indirectPointerInputEventSmoother.f4601a == 3) {
                indirectPointerInputEventSmoother.f4601a = 0;
            }
            Object[] objArr = mutableObjectList.f3345a;
            int i3 = mutableObjectList.f3346b;
            float fIntBitsToFloat4 = 0.0f;
            for (int i4 = 0; i4 < i3; i4++) {
                IndirectPointerInputChange indirectPointerInputChange2 = (IndirectPointerInputChange) objArr[i4];
                int i5 = IndirectPointerInputEventSmoother.f4600c;
                fIntBitsToFloat4 += Float.intBitsToFloat((int) (indirectPointerInputChange2.f9221c >> 32));
            }
            int i6 = mutableObjectList.f3346b;
            fIntBitsToFloat2 = fIntBitsToFloat4 / i6;
            Object[] objArr2 = mutableObjectList.f3345a;
            float fIntBitsToFloat5 = 0.0f;
            for (int i7 = 0; i7 < i6; i7++) {
                IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) objArr2[i7];
                int i8 = IndirectPointerInputEventSmoother.f4600c;
                fIntBitsToFloat5 += Float.intBitsToFloat((int) (indirectPointerInputChange3.f9221c & BodyPartID.bodyIdMax));
            }
            fIntBitsToFloat3 = fIntBitsToFloat5 / mutableObjectList.f3346b;
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat3)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        if (orientation != null) {
            IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
            int i9 = IndirectPointerEventPrimaryDirectionalMotionAxis.f9214c;
            int i10 = indirectPointerEventPrimaryDirectionalMotionAxis.f9215a;
            if (i10 == i9) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
            } else if (i10 == IndirectPointerEventPrimaryDirectionalMotionAxis.d) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax));
            }
            jFloatToRawIntBits = orientation == Orientation.Horizontal ? (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax) : (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & BodyPartID.bodyIdMax);
        }
        velocityTracker.f9403a.a(indirectPointerInputChange.f9220b, Offset.f(jFloatToRawIntBits, j2));
    }

    public static final boolean b(IndirectPointerInputChange indirectPointerInputChange) {
        return indirectPointerInputChange.f9224h && !indirectPointerInputChange.d;
    }

    public static final boolean c(IndirectPointerInputChange indirectPointerInputChange) {
        return !indirectPointerInputChange.f9224h && indirectPointerInputChange.d;
    }

    public static final long d(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, boolean z) {
        float fIntBitsToFloat;
        long jFloatToRawIntBits = indirectPointerInputChange.g;
        if (orientation != null) {
            IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
            int i2 = IndirectPointerEventPrimaryDirectionalMotionAxis.f9214c;
            int i3 = indirectPointerEventPrimaryDirectionalMotionAxis.f9215a;
            if (i3 == i2) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
            } else if (i3 == IndirectPointerEventPrimaryDirectionalMotionAxis.d) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax));
            }
            if (orientation == Orientation.Horizontal) {
                jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
                Offset.Companion companion = Offset.f8806b;
            } else {
                jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & BodyPartID.bodyIdMax);
                Offset.Companion companion2 = Offset.f8806b;
            }
        }
        long jE = Offset.e(e(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis), jFloatToRawIntBits);
        if (z || !indirectPointerInputChange.f9225i) {
            return jE;
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    public static final long e(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        float fIntBitsToFloat;
        if (orientation == null) {
            return indirectPointerInputChange.f9221c;
        }
        IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
        int i2 = IndirectPointerEventPrimaryDirectionalMotionAxis.f9214c;
        int i3 = indirectPointerEventPrimaryDirectionalMotionAxis.f9215a;
        if (i3 == i2) {
            fIntBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.f9221c >> 32));
        } else {
            if (i3 != IndirectPointerEventPrimaryDirectionalMotionAxis.d) {
                return indirectPointerInputChange.f9221c;
            }
            fIntBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.f9221c & BodyPartID.bodyIdMax));
        }
        if (orientation == Orientation.Horizontal) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
            Offset.Companion companion = Offset.f8806b;
            return jFloatToRawIntBits;
        }
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & BodyPartID.bodyIdMax);
        Offset.Companion companion2 = Offset.f8806b;
        return jFloatToRawIntBits2;
    }
}
