package defpackage;

import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q80 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SliderState f79047c;

    public /* synthetic */ q80(SliderState sliderState, int i2) {
        this.f79046b = i2;
        this.f79047c = sliderState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2;
        int i3 = this.f79046b;
        boolean z = true;
        SliderState sliderState = this.f79047c;
        switch (i3) {
            case 0:
                return Boolean.valueOf(((float) ((Integer) obj).intValue()) <= sliderState.d());
            case 1:
                IntSize intSize = (IntSize) obj;
                float f2 = SliderKt.f7242a;
                ((SnapshotMutableIntStateImpl) sliderState.f7270k).i((int) (intSize.f11021a >> 32));
                ((SnapshotMutableIntStateImpl) sliderState.l).i((int) (intSize.f11021a & BodyPartID.bodyIdMax));
                return Unit.f71739a;
            case 2:
                float fFloatValue = ((Float) obj).floatValue();
                float f3 = SliderKt.f7242a;
                ClosedFloatingPointRange closedFloatingPointRange = sliderState.f7264c;
                float fC = RangesKt.c(fFloatValue, closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue());
                int i4 = sliderState.f7262a;
                if (i4 > 0 && (i2 = i4 + 1) >= 0) {
                    float fAbs = fC;
                    float f4 = fAbs;
                    int i5 = 0;
                    while (true) {
                        float fB = MathHelpersKt.b(closedFloatingPointRange.i().floatValue(), closedFloatingPointRange.f().floatValue(), i5 / i2);
                        float f5 = fB - fC;
                        if (Math.abs(f5) <= fAbs) {
                            fAbs = Math.abs(f5);
                            f4 = fB;
                        }
                        if (i5 != i2) {
                            i5++;
                        } else {
                            fC = f4;
                        }
                    }
                }
                if (fC == sliderState.d()) {
                    z = false;
                } else {
                    if (fC != sliderState.d()) {
                        Function1 function1 = sliderState.f7265e;
                        if (function1 != null) {
                            function1.invoke(Float.valueOf(fC));
                        } else {
                            sliderState.e(fC);
                        }
                    }
                    Function0 function0 = sliderState.f7263b;
                    if (function0 != null) {
                        function0.mo47invoke();
                    }
                }
                return Boolean.valueOf(z);
            default:
                sliderState.b(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                sliderState.o.mo47invoke();
                return Unit.f71739a;
        }
    }
}
