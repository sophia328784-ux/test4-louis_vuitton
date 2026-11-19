package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import defpackage.n0;
import defpackage.o1;
import defpackage.p1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionSearchBarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f52815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f52816b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f52815a = 36.0f;
        f52816b = 10.0f;
    }

    public static final void a(Modifier modifier, String str, int i2, boolean z, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i3) {
        Function0 function3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AICompanionSearchBar");
        }
        Modifier modifier2 = modifierE;
        str.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-221084127);
        int i4 = i3 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.d(i2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ConfigurationSearchBar configurationSearchBar = new ConfigurationSearchBar(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, LVAppDesignKitTheme.c(gapComposerH).f48361b.u, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, null);
            SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) gapComposerH.k(CompositionLocalsKt.r);
            Modifier modifierE2 = ModifierExtKt.e(modifier2, "aiCompanion_prompt_text");
            TextStyle textStyleA = TextStyle.a(LVAppDesignKitTheme.n(gapComposerH).f48429j, configurationSearchBar.f48576a, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
            KeyboardType.f10809b.getClass();
            int i5 = KeyboardType.f10810c;
            ImeAction.f10785b.getClass();
            int i6 = ImeAction.f10788f;
            KeyboardCapitalization.f10804b.getClass();
            KeyboardOptions keyboardOptions = new KeyboardOptions(KeyboardCapitalization.f10807f, (Boolean) null, i5, i6, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 114, (DefaultConstructorMarker) null);
            boolean zK = ((i4 & 112) == 32) | gapComposerH.K(softwareKeyboardController) | ((458752 & i4) == 131072);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                function3 = function1;
                objX = new n0(str, softwareKeyboardController, function3, 3);
                gapComposerH.q(objX);
            } else {
                function3 = function1;
            }
            BasicTextFieldKt.b(str, function2, modifierE2, false, textStyleA, keyboardOptions, new KeyboardActions(null, null, null, null, (Function1) objX, null, 47, null), 0, 0, null, null, null, ComposableLambdaKt.b(827548548, new o1(configurationSearchBar, str, i2, function0, z, softwareKeyboardController, function3), gapComposerH), gapComposerH, ((i4 >> 3) & 14) | ((i4 >> 15) & 112));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifier2, str, i2, z, function0, function1, function2, i3);
        }
    }
}
