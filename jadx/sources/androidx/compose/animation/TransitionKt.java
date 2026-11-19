package androidx.compose.animation;

import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import com.google.ar.core.ImageMetadata;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TransitionKt {
    public static final InfiniteTransition.TransitionAnimationState a(InfiniteTransition infiniteTransition, long j2, long j3, InfiniteRepeatableSpec infiniteRepeatableSpec, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            Color.Companion companion = Color.f8866b;
            objX = (TwoWayConverter) ((ColorVectorConverterKt$ColorToVector$1) ColorVectorConverterKt.f3548a).invoke(Color.f(j3));
            composer.q(objX);
        }
        int i3 = i2 << 3;
        return InfiniteTransitionKt.b(infiniteTransition, new Color(j2), new Color(j3), (TwoWayConverter) objX, infiniteRepeatableSpec, "Colour animation", composer, (i2 & 14) | 8 | (i2 & 112) | (i2 & 896) | 32768 | (57344 & i3) | (i3 & ImageMetadata.JPEG_GPS_COORDINATES));
    }
}
