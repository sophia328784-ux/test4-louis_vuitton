package defpackage;

import android.graphics.PathMeasure;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSize;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z30 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableFloatState f81522c;

    public /* synthetic */ z30(MutableFloatState mutableFloatState, int i2) {
        this.f81521b = i2;
        this.f81522c = mutableFloatState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81521b;
        MutableFloatState mutableFloatState = this.f81522c;
        switch (i2) {
            case 0:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                mutableFloatState.w((int) (layoutCoordinates.a() & BodyPartID.bodyIdMax));
                break;
            case 1:
                CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                mutableFloatState.w((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax));
                break;
            default:
                float fFloatValue = ((Float) obj).floatValue();
                PathMeasure pathMeasure = OnboardingIconComposableKt.f59551a;
                mutableFloatState.w(fFloatValue);
                break;
        }
        return Unit.f71739a;
    }
}
