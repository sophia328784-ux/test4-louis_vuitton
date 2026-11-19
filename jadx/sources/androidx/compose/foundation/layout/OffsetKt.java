package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import defpackage.k0;
import defpackage.rb;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class OffsetKt {
    public static final Modifier a(Modifier modifier, Function1 function1) {
        return modifier.o(new OffsetPxElement(function1, true, new k0(function1, 21)));
    }

    public static final Modifier b(Modifier modifier, float f2, float f3) {
        return modifier.o(new OffsetElement(f2, f3, true, new rb(f2, f3, 1), null));
    }

    public static Modifier c(Modifier modifier, float f2, float f3, int i2) {
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f2 = 0.0f;
        }
        if ((i2 & 2) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f3 = 0.0f;
        }
        return b(modifier, f2, f3);
    }
}
