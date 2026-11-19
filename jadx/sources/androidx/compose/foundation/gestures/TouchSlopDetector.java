package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/TouchSlopDetector;", "", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "Landroidx/compose/ui/geometry/Offset;", "initialPositionChange", "<init>", "(Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TouchSlopDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Orientation f4807a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4808b;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4809a;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Horizontal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Vertical.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f4809a = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TouchSlopDetector(Orientation orientation, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        orientation = (i2 & 1) != 0 ? null : orientation;
        if ((i2 & 2) != 0) {
            Offset.f8806b.getClass();
            j2 = 0;
        }
        this(orientation, j2, null);
    }

    public static void c(TouchSlopDetector touchSlopDetector) {
        Offset.f8806b.getClass();
        touchSlopDetector.f4808b = 0L;
    }

    public final long a(long j2, float f2, boolean z) {
        long jF;
        long j3 = this.f4808b;
        if (z) {
            jF = Offset.f(j3, j2);
            this.f4808b = jF;
        } else {
            jF = Offset.f(j3, j2);
        }
        if ((this.f4807a == null ? Offset.d(jF) : Math.abs(b(jF))) < f2) {
            Offset.f8806b.getClass();
            return Offset.d;
        }
        Orientation orientation = this.f4807a;
        long j4 = this.f4808b;
        if (orientation == null) {
            return Offset.e(this.f4808b, Offset.g(f2, Offset.b(Offset.d(j4), j4)));
        }
        float fB = b(j4) - (Math.signum(b(this.f4808b)) * f2);
        long j5 = this.f4808b;
        Orientation orientation2 = this.f4807a;
        Orientation orientation3 = Orientation.Horizontal;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (orientation2 == orientation3 ? j5 & BodyPartID.bodyIdMax : j5 >> 32));
        if (this.f4807a == orientation3) {
            return (((long) Float.floatToRawIntBits(fB)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & BodyPartID.bodyIdMax);
        }
        return (((long) Float.floatToRawIntBits(fB)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32);
    }

    public final float b(long j2) {
        return Float.intBitsToFloat((int) (this.f4807a == Orientation.Horizontal ? j2 >> 32 : j2 & BodyPartID.bodyIdMax));
    }

    public TouchSlopDetector(Orientation orientation, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4807a = orientation;
        this.f4808b = j2;
    }
}
