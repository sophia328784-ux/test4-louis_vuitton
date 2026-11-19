package com.vuitton.android.designkit.ui.theme;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVColorDotIconConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVColorDotIconKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtons;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFields;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardContentConfigs;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbars;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;", "", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVAppDesignKitTheme {
    public static LVAnimation a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVAnimation) composer.k(AnimationKt.f48330a);
    }

    public static LVButtonConfigs b(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVButtonConfigs) composer.k(LVButtonKt.f48455b);
    }

    public static LVColor c(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVColor) composer.k(ColorKt.f48331a);
    }

    public static LVDimens d(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVDimens) composer.k(DimensKt.f48341a);
    }

    public static LVColorDotIconConfigs e(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVColorDotIconConfigs) composer.k(LVColorDotIconKt.f48469a);
    }

    public static LVIconButtons f(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVIconButtons) composer.k(LVIconButtonKt.f48476b);
    }

    public static LVIcon g(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVIcon) composer.k(IconKt.f48346a);
    }

    public static LVOpacity h(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVOpacity) composer.k(OpacityKt.f48431a);
    }

    public static LVPushCardContentConfigs i(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVPushCardContentConfigs) composer.k(LVPushCardKt.f48653a);
    }

    public static LVShape j(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVShape) composer.k(ShapeKt.f48433a);
    }

    public static LVSnackbars k(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVSnackbars) composer.k(LVSnackbarKt.f48665a);
    }

    public static LVSpacings l(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVSpacings) composer.k(SpacingKt.f48434a);
    }

    public static LVTextFields m(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVTextFields) composer.k(LVTextFieldKt.f48633a);
    }

    public static LVTypography n(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (LVTypography) composer.k(TypographyKt.f48440c);
    }
}
