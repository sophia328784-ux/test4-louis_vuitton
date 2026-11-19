package androidx.compose.animation;

import android.view.ViewConfiguration;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SplineBasedFloatDecayAnimationSpec_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f3749a = ViewConfiguration.getScrollFriction();

    public static final DecayAnimationSpec a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Density density = (Density) composer.k(CompositionLocalsKt.f10031h);
        boolean zC = composer.c(density.getF11002b());
        Object objX = composer.x();
        if (zC || objX == Composer.Companion.f7939a) {
            objX = DecayAnimationSpecKt.c(new SplineBasedFloatDecayAnimationSpec(density));
            composer.q(objX);
        }
        return (DecayAnimationSpec) objX;
    }
}
