package com.vuitton.android.presentation.screen.account.myicons.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import defpackage.ba0;
import defpackage.kw;
import defpackage.p0;
import defpackage.pd0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;", "defaultIcon", "selectedIconLauncher", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MyIconsComposableKt {
    public static final void a(Function0 function0, Function0 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-908675110);
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            b(function0, function1, function2, function3, gapComposerH, i3 & 8190);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pd0(function0, function1, function2, function3, i2, 0);
        }
    }

    public static final void b(Function0 function0, Function0 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1370882823);
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ba0(18);
                gapComposerH.q(objX);
            }
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) objX);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(function0.mo47invoke());
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                IconLauncherType iconLauncherType = (IconLauncherType) mutableState.getF10755b();
                if (iconLauncherType == null) {
                    iconLauncherType = IconLauncherType.CLASSIC;
                }
                objX3 = SnapshotStateKt.g(iconLauncherType);
                gapComposerH.q(objX3);
            }
            ScaffoldKt.a(null, ComposableLambdaKt.b(-1411210563, new kw(function1, 9), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(355191880, new p0(lVModalBottomSheetStateF, function2, (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l), function3, (MutableState) objX3, mutableState), gapComposerH), gapComposerH, 805306416, 509);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pd0(function0, function1, function2, function3, i2, 1);
        }
    }
}
