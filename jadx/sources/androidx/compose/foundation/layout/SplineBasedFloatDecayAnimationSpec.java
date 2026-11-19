package androidx.compose.foundation.layout;

import androidx.compose.animation.core.FloatDecayAnimationSpec;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;", "Landroidx/compose/animation/core/FloatDecayAnimationSpec;", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/ui/unit/Density;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SplineBasedFloatDecayAnimationSpec implements FloatDecayAnimationSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f5058a;

    public SplineBasedFloatDecayAnimationSpec(Density density) {
        this.f5058a = density.getF11000b() * 386.0878f * 160.0f * 0.84f;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    /* JADX INFO: renamed from: a */
    public final float getF3865a() {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float b(float f2, long j2) {
        long jD = d(f2);
        return ((Float.intBitsToFloat((int) (AndroidFlingSpline.a(jD > 0 ? j2 / jD : 1.0f) & BodyPartID.bodyIdMax)) * f(f2)) / jD) * 1.0E9f;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float c(float f2, float f3, long j2) {
        long jD = d(f3);
        return (Float.intBitsToFloat((int) (AndroidFlingSpline.a(jD > 0 ? j2 / jD : 1.0f) >> 32)) * f(f3)) + f2;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final long d(float f2) {
        float[] fArr = AndroidFlingSpline.f4913a;
        return (long) (Math.exp(Math.log(((double) (Math.abs(f2) * 0.35f)) / ((double) (WindowInsetsConnection_androidKt.f5070a * this.f5058a))) / WindowInsetsConnection_androidKt.f5072c) * 1.0E9d);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float e(float f2, float f3) {
        return f2 + f(f3);
    }

    public final float f(float f2) {
        float[] fArr = AndroidFlingSpline.f4913a;
        float f3 = WindowInsetsConnection_androidKt.f5070a;
        float f4 = this.f5058a;
        return Math.signum(f2) * ((float) (Math.exp((WindowInsetsConnection_androidKt.f5071b / WindowInsetsConnection_androidKt.f5072c) * Math.log(((double) (Math.abs(f2) * 0.35f)) / ((double) (f3 * f4)))) * f3 * f4));
    }
}
