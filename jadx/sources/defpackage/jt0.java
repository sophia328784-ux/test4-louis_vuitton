package defpackage;

import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jt0 implements DoubleFunction {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Rgb f71466c;

    public /* synthetic */ jt0(Rgb rgb, int i2) {
        this.f71465b = i2;
        this.f71466c = rgb;
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public final double b(double d) {
        int i2 = this.f71465b;
        Rgb rgb = this.f71466c;
        switch (i2) {
            case 0:
                return RangesKt.b(rgb.f8985k.b(d), rgb.f8980e, rgb.f8981f);
            default:
                return rgb.n.b(RangesKt.b(d, rgb.f8980e, rgb.f8981f));
        }
    }
}
