package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Dp;
import defpackage.z41;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SizeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FillElement f5050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FillElement f5051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FillElement f5052c;
    public static final WrapContentElement d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final WrapContentElement f5053e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final WrapContentElement f5054f;
    public static final WrapContentElement g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final WrapContentElement f5055h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final WrapContentElement f5056i;

    static {
        FillElement.d.getClass();
        Direction direction = Direction.Horizontal;
        f5050a = new FillElement(direction, 1.0f, "fillMaxWidth");
        Direction direction2 = Direction.Vertical;
        f5051b = new FillElement(direction2, 1.0f, "fillMaxHeight");
        Direction direction3 = Direction.Both;
        f5052c = new FillElement(direction3, 1.0f, "fillMaxSize");
        WrapContentElement.Companion companion = WrapContentElement.f5140f;
        Alignment.f8582a.getClass();
        BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
        companion.getClass();
        int i2 = 3;
        d = new WrapContentElement(direction, false, new z41(horizontal, i2), horizontal, "wrapContentWidth");
        BiasAlignment.Horizontal horizontal2 = Alignment.Companion.n;
        f5053e = new WrapContentElement(direction, false, new z41(horizontal2, i2), horizontal2, "wrapContentWidth");
        BiasAlignment.Vertical vertical = Alignment.Companion.l;
        int i3 = 4;
        f5054f = new WrapContentElement(direction2, false, new z41(vertical, i3), vertical, "wrapContentHeight");
        BiasAlignment.Vertical vertical2 = Alignment.Companion.f8591k;
        g = new WrapContentElement(direction2, false, new z41(vertical2, i3), vertical2, "wrapContentHeight");
        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
        int i4 = 5;
        f5055h = new WrapContentElement(direction3, false, new z41(biasAlignment, i4), biasAlignment, "wrapContentSize");
        BiasAlignment biasAlignment2 = Alignment.Companion.f8584b;
        f5056i = new WrapContentElement(direction3, false, new z41(biasAlignment2, i4), biasAlignment2, "wrapContentSize");
    }

    public static final Modifier a(Modifier modifier, float f2, float f3) {
        return modifier.o(new UnspecifiedConstraintsElement(f2, f3, null));
    }

    public static Modifier b(Modifier modifier, float f2, float f3, int i2) {
        if ((i2 & 1) != 0) {
            Dp.f11004c.getClass();
            f2 = Dp.f11005e;
        }
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        return a(modifier, f2, f3);
    }

    public static final Modifier c(Modifier modifier, float f2) {
        FillElement fillElement;
        if (f2 == 1.0f) {
            fillElement = f5051b;
        } else {
            FillElement.d.getClass();
            fillElement = new FillElement(Direction.Vertical, f2, "fillMaxHeight");
        }
        return modifier.o(fillElement);
    }

    public static final Modifier d(Modifier modifier, float f2) {
        FillElement fillElement;
        if (f2 == 1.0f) {
            fillElement = f5050a;
        } else {
            FillElement.d.getClass();
            fillElement = new FillElement(Direction.Horizontal, f2, "fillMaxWidth");
        }
        return modifier.o(fillElement);
    }

    public static final Modifier f(Modifier modifier, float f2) {
        return modifier.o(new SizeElement(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, true, InspectableValueKt.f10100a, 5, null));
    }

    public static final Modifier g(Modifier modifier, float f2, float f3) {
        return modifier.o(new SizeElement(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, true, InspectableValueKt.f10100a, 5, null));
    }

    public static Modifier h(Modifier modifier, float f2, float f3, int i2) {
        if ((i2 & 1) != 0) {
            Dp.f11004c.getClass();
            f2 = Dp.f11005e;
        }
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        return g(modifier, f2, f3);
    }

    public static final Modifier i(Modifier modifier, float f2) {
        return modifier.o(new SizeElement(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, false, InspectableValueKt.f10100a, 5, null));
    }

    public static Modifier j(Modifier modifier, float f2) {
        Dp.f11004c.getClass();
        return modifier.o(new SizeElement(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Dp.f11005e, false, InspectableValueKt.f10100a, 5, null));
    }

    public static final Modifier k(Modifier modifier, float f2) {
        return modifier.o(new SizeElement(f2, f2, f2, f2, false, InspectableValueKt.f10100a, null));
    }

    public static final Modifier l(Modifier modifier, float f2, float f3) {
        return modifier.o(new SizeElement(f2, f3, f2, f3, false, InspectableValueKt.f10100a, null));
    }

    public static Modifier m(Modifier modifier, float f2, float f3, float f4, float f5, int i2) {
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        float f6 = f3;
        if ((i2 & 4) != 0) {
            Dp.f11004c.getClass();
            f4 = Dp.f11005e;
        }
        float f7 = f4;
        if ((i2 & 8) != 0) {
            Dp.f11004c.getClass();
            f5 = Dp.f11005e;
        }
        return modifier.o(new SizeElement(f2, f6, f7, f5, false, InspectableValueKt.f10100a, null));
    }

    public static final Modifier n(float f2) {
        return new SizeElement(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, InspectableValueKt.f10100a, 10, null);
    }

    public static final Modifier o(Modifier modifier, float f2) {
        return modifier.o(new SizeElement(f2, f2, f2, f2, true, InspectableValueKt.f10100a, null));
    }

    public static final Modifier p(Modifier modifier, float f2, float f3) {
        return modifier.o(new SizeElement(f2, f3, f2, f3, true, InspectableValueKt.f10100a, null));
    }

    public static final Modifier q(Modifier modifier, float f2, float f3, float f4, float f5) {
        return modifier.o(new SizeElement(f2, f3, f4, f5, true, InspectableValueKt.f10100a, null));
    }

    public static Modifier r(Modifier modifier, float f2, float f3, float f4, int i2) {
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        if ((i2 & 4) != 0) {
            Dp.f11004c.getClass();
            f4 = Dp.f11005e;
        }
        Dp.f11004c.getClass();
        return q(modifier, f2, f3, f4, Dp.f11005e);
    }

    public static final Modifier s(Modifier modifier, float f2) {
        return modifier.o(new SizeElement(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, true, InspectableValueKt.f10100a, 10, null));
    }

    public static final Modifier t(Modifier modifier, float f2, float f3) {
        return modifier.o(new SizeElement(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, true, InspectableValueKt.f10100a, 10, null));
    }

    public static Modifier u(Modifier modifier, float f2, float f3, int i2) {
        if ((i2 & 1) != 0) {
            Dp.f11004c.getClass();
            f2 = Dp.f11005e;
        }
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        return t(modifier, f2, f3);
    }

    public static Modifier v(Modifier modifier, Alignment.Vertical vertical, int i2) {
        WrapContentElement wrapContentElement;
        if ((i2 & 1) != 0) {
            Alignment.f8582a.getClass();
            vertical = Alignment.Companion.l;
        }
        Alignment.Vertical vertical2 = vertical;
        Alignment.f8582a.getClass();
        if (Intrinsics.c(vertical2, Alignment.Companion.l)) {
            wrapContentElement = f5054f;
        } else if (Intrinsics.c(vertical2, Alignment.Companion.f8591k)) {
            wrapContentElement = g;
        } else {
            WrapContentElement.f5140f.getClass();
            wrapContentElement = new WrapContentElement(Direction.Vertical, false, new z41(vertical2, 4), vertical2, "wrapContentHeight");
        }
        return modifier.o(wrapContentElement);
    }

    public static Modifier w(Modifier modifier, Alignment alignment, int i2) {
        WrapContentElement wrapContentElement;
        if ((i2 & 1) != 0) {
            Alignment.f8582a.getClass();
            alignment = Alignment.Companion.f8587f;
        }
        Alignment alignment2 = alignment;
        Alignment.f8582a.getClass();
        if (Intrinsics.c(alignment2, Alignment.Companion.f8587f)) {
            wrapContentElement = f5055h;
        } else if (Intrinsics.c(alignment2, Alignment.Companion.f8584b)) {
            wrapContentElement = f5056i;
        } else {
            WrapContentElement.f5140f.getClass();
            wrapContentElement = new WrapContentElement(Direction.Both, false, new z41(alignment2, 5), alignment2, "wrapContentSize");
        }
        return modifier.o(wrapContentElement);
    }

    public static Modifier x(Modifier modifier, Alignment.Horizontal horizontal, int i2) {
        WrapContentElement wrapContentElement;
        if ((i2 & 1) != 0) {
            Alignment.f8582a.getClass();
            horizontal = Alignment.Companion.o;
        }
        Alignment.Horizontal horizontal2 = horizontal;
        Alignment.f8582a.getClass();
        if (Intrinsics.c(horizontal2, Alignment.Companion.o)) {
            wrapContentElement = d;
        } else if (Intrinsics.c(horizontal2, Alignment.Companion.n)) {
            wrapContentElement = f5053e;
        } else {
            WrapContentElement.f5140f.getClass();
            wrapContentElement = new WrapContentElement(Direction.Horizontal, false, new z41(horizontal2, 3), horizontal2, "wrapContentWidth");
        }
        return modifier.o(wrapContentElement);
    }
}
