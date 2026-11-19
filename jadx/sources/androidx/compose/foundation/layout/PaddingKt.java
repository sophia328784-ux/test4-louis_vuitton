package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ValueElementSequence;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.rb;
import defpackage.tb0;
import defpackage.yk0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PaddingKt {
    public static final PaddingValuesImpl a(float f2) {
        return new PaddingValuesImpl(f2, f2, f2, f2, null);
    }

    public static final PaddingValuesImpl b(float f2, float f3) {
        return new PaddingValuesImpl(f2, f3, f2, f3, null);
    }

    public static PaddingValuesImpl c(float f2, int i2) {
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f2 = 0.0f;
        }
        Dp.Companion companion2 = Dp.f11004c;
        return b(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public static final PaddingValuesImpl d(float f2, float f3, float f4, float f5) {
        return new PaddingValuesImpl(f2, f3, f4, f5, null);
    }

    public static PaddingValuesImpl e(float f2, float f3, float f4, float f5, int i2) {
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f2 = 0.0f;
        }
        if ((i2 & 2) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f3 = 0.0f;
        }
        if ((i2 & 4) != 0) {
            Dp.Companion companion3 = Dp.f11004c;
            f4 = 0.0f;
        }
        if ((i2 & 8) != 0) {
            Dp.Companion companion4 = Dp.f11004c;
            f5 = 0.0f;
        }
        return d(f2, f3, f4, f5);
    }

    public static final float f(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.c(layoutDirection) : paddingValues.b(layoutDirection);
    }

    public static final float g(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.b(layoutDirection) : paddingValues.c(layoutDirection);
    }

    public static final Modifier h(Modifier modifier, PaddingValues paddingValues) {
        return modifier.o(new PaddingValuesElement(paddingValues, new tb0(paddingValues, 24)));
    }

    public static final Modifier i(Modifier modifier, float f2) {
        return modifier.o(new PaddingElement(f2, f2, f2, f2, true, new yk0(12), null));
    }

    public static final Modifier j(Modifier modifier, float f2, float f3) {
        return modifier.o(new PaddingElement(f2, f3, f2, f3, true, new rb(f2, f3, 2), null));
    }

    public static Modifier k(Modifier modifier, float f2, float f3, int i2) {
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f2 = 0.0f;
        }
        if ((i2 & 2) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f3 = 0.0f;
        }
        return j(modifier, f2, f3);
    }

    public static final Modifier l(Modifier modifier, final float f2, final float f3, final float f4, final float f5) {
        return modifier.o(new PaddingElement(f2, f3, f4, f5, true, new Function1() { // from class: rl0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                InspectorInfo inspectorInfo = (InspectorInfo) obj;
                inspectorInfo.getClass();
                ValueElementSequence valueElementSequence = inspectorInfo.f10105b;
                valueElementSequence.b(new Dp(f2), "start");
                valueElementSequence.b(new Dp(f3), "top");
                valueElementSequence.b(new Dp(f4), "end");
                valueElementSequence.b(new Dp(f5), "bottom");
                return Unit.f71739a;
            }
        }, null));
    }

    public static Modifier m(Modifier modifier, float f2, float f3, float f4, float f5, int i2) {
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f2 = 0.0f;
        }
        if ((i2 & 2) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f3 = 0.0f;
        }
        if ((i2 & 4) != 0) {
            Dp.Companion companion3 = Dp.f11004c;
            f4 = 0.0f;
        }
        if ((i2 & 8) != 0) {
            Dp.Companion companion4 = Dp.f11004c;
            f5 = 0.0f;
        }
        return l(modifier, f2, f3, f4, f5);
    }
}
