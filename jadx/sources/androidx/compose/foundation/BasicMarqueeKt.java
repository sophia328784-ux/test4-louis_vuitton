package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import defpackage.sc;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BasicMarqueeKt {
    public static Modifier a(Modifier modifier, sc scVar, int i2) {
        int i3;
        if ((i2 & 1) != 0) {
            v40 v40Var = MarqueeDefaults.f4249a;
            i3 = 3;
        } else {
            i3 = Integer.MAX_VALUE;
        }
        int i4 = i3;
        if ((i2 & 2) != 0) {
            MarqueeAnimationMode.f4246b.getClass();
        }
        v40 v40Var2 = MarqueeDefaults.f4249a;
        MarqueeAnimationMode.f4246b.getClass();
        MarqueeSpacing marqueeSpacing = scVar;
        if ((i2 & 16) != 0) {
            marqueeSpacing = MarqueeDefaults.f4249a;
        }
        return modifier.o(new MarqueeModifierElement(i4, 0, 1200, 1200, marqueeSpacing, (i2 & 32) != 0 ? MarqueeDefaults.f4250b : 60.0f, null));
    }
}
