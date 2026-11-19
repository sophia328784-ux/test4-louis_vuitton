package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SingleValueAnimationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpringSpec f3722a = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);

    public static final Animatable a(long j2) {
        return new Animatable(new Color(j2), (TwoWayConverter) ((ColorVectorConverterKt$ColorToVector$1) ColorVectorConverterKt.f3548a).invoke(Color.f(j2)), null, null, 12, null);
    }

    public static final State b(long j2, FiniteAnimationSpec finiteAnimationSpec, String str, Composer composer, int i2, int i3) {
        if ((i3 & 2) != 0) {
            finiteAnimationSpec = f3722a;
        }
        FiniteAnimationSpec finiteAnimationSpec2 = finiteAnimationSpec;
        if ((i3 & 4) != 0) {
            str = "ColorAnimation";
        }
        String str2 = str;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(Color.f(j2));
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = (TwoWayConverter) ((ColorVectorConverterKt$ColorToVector$1) ColorVectorConverterKt.f3548a).invoke(Color.f(j2));
            composer.q(objX);
        }
        return AnimateAsStateKt.d(new Color(j2), (TwoWayConverter) objX, finiteAnimationSpec2, null, str2, null, composer, ((i2 << 3) & 896) | ((i2 << 6) & 57344), 8);
    }
}
