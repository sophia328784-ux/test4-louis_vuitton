package com.airbnb.lottie.compose;

import android.content.Context;
import android.graphics.Matrix;
import android.provider.Settings;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.utils.Utils;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.b21;
import defpackage.n00;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "wasPlaying", "lottie-compose_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class AnimateLottieCompositionAsStateKt {
    public static final LottieAnimatable a(LottieComposition lottieComposition, boolean z, LottieClipSpec.Frame frame, int i2, Composer composer, int i3) {
        composer.w(683659508);
        boolean z2 = (i3 & 2) != 0 ? true : z;
        LottieClipSpec.Frame frame2 = (i3 & 16) != 0 ? null : frame;
        int i4 = (i3 & 64) != 0 ? 1 : i2;
        LottieCancellationBehavior lottieCancellationBehavior = LottieCancellationBehavior.Immediately;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (i4 <= 0) {
            b21.n(n00.m(i4, "Iterations must be a positive number (", ")."));
            return null;
        }
        if (Float.isInfinite(1.0f) || Float.isNaN(1.0f)) {
            throw new IllegalArgumentException(("Speed must be a finite number. It is 1.0" + FileUtils.HIDDEN_PREFIX).toString());
        }
        LottieAnimatable lottieAnimatableA = LottieAnimatableKt.a(composer);
        composer.w(-180606964);
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            objX = SnapshotStateKt.g(Boolean.valueOf(z2));
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        composer.J();
        composer.w(-180606834);
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        Matrix matrix = Utils.f22311a;
        float f2 = 1.0f / Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
        composer.J();
        EffectsKt.h(new Object[]{lottieComposition, Boolean.valueOf(z2), frame2, Float.valueOf(f2), Integer.valueOf(i4)}, new AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3(z2, true, lottieAnimatableA, lottieComposition, i4, false, f2, frame2, lottieCancellationBehavior, mutableState, null), composer);
        composer.J();
        return lottieAnimatableA;
    }
}
