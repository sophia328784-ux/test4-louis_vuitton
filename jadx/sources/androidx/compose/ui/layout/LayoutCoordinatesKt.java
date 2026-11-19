package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LayoutCoordinatesKt {
    public static final Rect a(LayoutCoordinates layoutCoordinates) {
        Rect rectL;
        LayoutCoordinates layoutCoordinatesD0 = layoutCoordinates.d0();
        return (layoutCoordinatesD0 == null || (rectL = layoutCoordinatesD0.L(layoutCoordinates, true)) == null) ? new Rect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (int) (layoutCoordinates.a() >> 32), (int) (layoutCoordinates.a() & BodyPartID.bodyIdMax)) : rectL;
    }

    public static final Rect b(LayoutCoordinates layoutCoordinates, boolean z) {
        float f2;
        float f3;
        LayoutCoordinates layoutCoordinatesC = c(layoutCoordinates);
        float fA = (int) (layoutCoordinatesC.a() >> 32);
        float fA2 = (int) (layoutCoordinatesC.a() & BodyPartID.bodyIdMax);
        Rect rectL = layoutCoordinatesC.L(layoutCoordinates, z);
        float f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (z) {
            f2 = rectL.f8811a;
            if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f2 = 0.0f;
            }
            if (f2 > fA) {
                f2 = fA;
            }
        } else {
            f2 = rectL.f8811a;
        }
        if (z) {
            f3 = rectL.f8812b;
            if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f3 = 0.0f;
            }
            if (f3 > fA2) {
                f3 = fA2;
            }
        } else {
            f3 = rectL.f8812b;
        }
        if (z) {
            float f5 = rectL.f8813c;
            if (f5 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f5 = 0.0f;
            }
            if (f5 <= fA) {
                fA = f5;
            }
        } else {
            fA = rectL.f8813c;
        }
        if (z) {
            float f6 = rectL.d;
            if (f6 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f4 = f6;
            }
            if (f4 <= fA2) {
                fA2 = f4;
            }
        } else {
            fA2 = rectL.d;
        }
        if (f2 == fA || f3 == fA2) {
            Rect.f8809e.getClass();
            return Rect.f8810f;
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        long jI = layoutCoordinatesC.I(jFloatToRawIntBits);
        long jI2 = layoutCoordinatesC.I((((long) Float.floatToRawIntBits(fA)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax));
        long jI3 = layoutCoordinatesC.I((((long) Float.floatToRawIntBits(fA)) << 32) | (((long) Float.floatToRawIntBits(fA2)) & BodyPartID.bodyIdMax));
        long jI4 = layoutCoordinatesC.I((((long) Float.floatToRawIntBits(fA2)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32));
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jI >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jI2 >> 32));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (jI4 >> 32));
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (jI3 >> 32));
        float fMin = Math.min(fIntBitsToFloat, Math.min(fIntBitsToFloat2, Math.min(fIntBitsToFloat3, fIntBitsToFloat4)));
        float fMax = Math.max(fIntBitsToFloat, Math.max(fIntBitsToFloat2, Math.max(fIntBitsToFloat3, fIntBitsToFloat4)));
        float fIntBitsToFloat5 = Float.intBitsToFloat((int) (jI & BodyPartID.bodyIdMax));
        float fIntBitsToFloat6 = Float.intBitsToFloat((int) (jI2 & BodyPartID.bodyIdMax));
        float fIntBitsToFloat7 = Float.intBitsToFloat((int) (jI4 & BodyPartID.bodyIdMax));
        float fIntBitsToFloat8 = Float.intBitsToFloat((int) (jI3 & BodyPartID.bodyIdMax));
        return new Rect(fMin, Math.min(fIntBitsToFloat5, Math.min(fIntBitsToFloat6, Math.min(fIntBitsToFloat7, fIntBitsToFloat8))), fMax, Math.max(fIntBitsToFloat5, Math.max(fIntBitsToFloat6, Math.max(fIntBitsToFloat7, fIntBitsToFloat8))));
    }

    public static final LayoutCoordinates c(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinates2;
        LayoutCoordinates layoutCoordinatesD0 = layoutCoordinates.d0();
        while (true) {
            LayoutCoordinates layoutCoordinates3 = layoutCoordinatesD0;
            layoutCoordinates2 = layoutCoordinates;
            layoutCoordinates = layoutCoordinates3;
            if (layoutCoordinates == null) {
                break;
            }
            layoutCoordinatesD0 = layoutCoordinates.d0();
        }
        NodeCoordinator nodeCoordinator = layoutCoordinates2 instanceof NodeCoordinator ? (NodeCoordinator) layoutCoordinates2 : null;
        if (nodeCoordinator == null) {
            return layoutCoordinates2;
        }
        NodeCoordinator nodeCoordinator2 = nodeCoordinator.u;
        while (true) {
            NodeCoordinator nodeCoordinator3 = nodeCoordinator2;
            NodeCoordinator nodeCoordinator4 = nodeCoordinator;
            nodeCoordinator = nodeCoordinator3;
            if (nodeCoordinator == null) {
                return nodeCoordinator4;
            }
            nodeCoordinator2 = nodeCoordinator.u;
        }
    }

    public static final long d(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinatesD0 = layoutCoordinates.d0();
        if (layoutCoordinatesD0 != null) {
            Offset.f8806b.getClass();
            return layoutCoordinatesD0.y(layoutCoordinates, 0L);
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    public static final long e(LayoutCoordinates layoutCoordinates) {
        Offset.f8806b.getClass();
        return layoutCoordinates.h0(0L);
    }

    public static final long f(LayoutCoordinates layoutCoordinates) {
        Offset.f8806b.getClass();
        return layoutCoordinates.I(0L);
    }

    public static final long g(LayoutCoordinates layoutCoordinates) {
        Offset.f8806b.getClass();
        return layoutCoordinates.h(0L);
    }
}
