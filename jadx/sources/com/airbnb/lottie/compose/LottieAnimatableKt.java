package com.airbnb.lottie.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lottie-compose_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class LottieAnimatableKt {
    public static final LottieAnimatable a(Composer composer) {
        composer.w(2024497114);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.w(-610207850);
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            objX = new LottieAnimatableImpl();
            composer.q(objX);
        }
        LottieAnimatable lottieAnimatable = (LottieAnimatable) objX;
        composer.J();
        composer.J();
        return lottieAnimatable;
    }
}
