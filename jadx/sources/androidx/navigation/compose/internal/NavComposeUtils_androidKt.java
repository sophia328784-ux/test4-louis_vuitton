package androidx.navigation.compose.internal;

import androidx.activity.compose.PredictiveBackHandlerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import defpackage.z3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002*\f\b\u0000\u0010\u0001\"\u00020\u00002\u00020\u0000¨\u0006\u0002"}, d2 = {"Landroidx/activity/BackEventCompat;", "BackEventCompat", "navigation-compose_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NavComposeUtils_androidKt {
    public static final void a(boolean z, Function2 function2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1818896922);
        int i3 = (gapComposerH.b(z) ? 4 : 2) | i2 | (gapComposerH.y(function2) ? 32 : 16);
        if ((i3 & 19) == 18 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PredictiveBackHandlerKt.a(z, function2, gapComposerH, i3 & 126);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z3(z, function2, i2, 7);
        }
    }
}
