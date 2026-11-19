package androidx.compose.foundation.gestures;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/ScrollableDefaults;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ScrollableDefaults {
    public static DefaultFlingBehavior a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        DecayAnimationSpec decayAnimationSpecA = SplineBasedFloatDecayAnimationSpec_androidKt.a(composer);
        boolean zK = composer.K(decayAnimationSpecA);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new DefaultFlingBehavior(decayAnimationSpecA, null, 2, null);
            composer.q(objX);
        }
        return (DefaultFlingBehavior) objX;
    }
}
