package androidx.compose.material3;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import defpackage.it0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class RippleKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f7164a = CompositionLocalKt.c(new it0(1));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final RippleNodeFactory f7165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final RippleNodeFactory f7166c;

    static {
        Dp.f11004c.getClass();
        float f2 = Dp.f11005e;
        Color.f8866b.getClass();
        long j2 = Color.f8871i;
        f7165b = new RippleNodeFactory(true, f2, j2, (DefaultConstructorMarker) null);
        f7166c = new RippleNodeFactory(false, f2, j2, (DefaultConstructorMarker) null);
    }

    public static IndicationNodeFactory a(float f2, int i2, boolean z) {
        if ((i2 & 1) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f2 = Dp.f11005e;
        }
        float f3 = f2;
        Color.Companion companion = Color.f8866b;
        companion.getClass();
        long j2 = Color.f8871i;
        Dp.f11004c.getClass();
        if (Dp.b(f3, Dp.f11005e)) {
            companion.getClass();
            if (Color.c(j2, j2)) {
                return z2 ? f7165b : f7166c;
            }
        }
        return new RippleNodeFactory(z2, f3, j2, (DefaultConstructorMarker) null);
    }
}
