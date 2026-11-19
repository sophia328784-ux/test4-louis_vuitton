package com.vuitton.android.presentation.screen.cart.components;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final class NativeCartFilledScreenKt$NativeCartMainView$2$1$3$1 implements Function2<Composer, Integer, Modifier> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final NativeCartFilledScreenKt$NativeCartMainView$2$1$3$1 f55034b = new NativeCartFilledScreenKt$NativeCartMainView$2$1$3$1();

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        ((Number) obj2).intValue();
        composer.L(-711699780);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Modifier modifierM = PaddingKt.m(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
        composer.F();
        return modifierM;
    }
}
