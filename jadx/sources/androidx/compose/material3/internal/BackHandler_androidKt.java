package androidx.compose.material3.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.ic;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002*\f\b\u0000\u0010\u0001\"\u00020\u00002\u00020\u0000¨\u0006\u0002"}, d2 = {"Landroidx/activity/BackEventCompat;", "BackEventCompat", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class BackHandler_androidKt {
    public static final void a(int i2, Composer composer, Function0 function0, boolean z) {
        int i3;
        GapComposer gapComposerH = composer.h(-1339183247);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.b(z) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            androidx.activity.compose.BackHandlerKt.a(z, function0, gapComposerH, i3 & 126, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ic(z, function0, i2, 0);
        }
    }
}
