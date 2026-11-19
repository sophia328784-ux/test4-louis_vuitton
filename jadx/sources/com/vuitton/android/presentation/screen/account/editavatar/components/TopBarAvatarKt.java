package com.vuitton.android.presentation.screen.account.editavatar.components;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModel;
import com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl;
import defpackage.a;
import defpackage.md;
import defpackage.nj0;
import defpackage.og0;
import defpackage.ol0;
import defpackage.r31;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvLauncherViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TopBarAvatarKt {
    public static final void a(Modifier modifier, TopBarAvatarViewModel topBarAvatarViewModel, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        TopBarAvatarViewModel topBarAvatarViewModel2;
        TopBarAvatarViewModel topBarAvatarViewModel3;
        int i5;
        if (modifier != null) {
            modifier = a.e(modifier, "TopBarAvatar");
        }
        GapComposer gapComposerH = composer.h(1908352135);
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(modifier) ? 4 : 2);
        }
        int i7 = i4 | 16 | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i7 & 1, (i7 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if (i6 != 0) {
                    modifier = new DTFunctionNameModifier("TopBarAvatar");
                }
                AppCompatActivity appCompatActivityB = ContextExtKt.b((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b));
                if (appCompatActivityB == null) {
                    md.k("Required value was null.");
                    return;
                } else {
                    topBarAvatarViewModel3 = (TopBarAvatarViewModel) ViewModelKt.a(Reflection.f71922a.b(TopBarAvatarViewModelImpl.class), appCompatActivityB, null, HiltViewModelKt.a(appCompatActivityB, gapComposerH), appCompatActivityB.getDefaultViewModelCreationExtras(), gapComposerH);
                    i5 = i7 & (-113);
                }
            } else {
                gapComposerH.D();
                i5 = i7 & (-113);
                topBarAvatarViewModel3 = topBarAvatarViewModel;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateB = SnapshotStateKt.b(topBarAvatarViewModel3.getF59366i(), gapComposerH);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_mylv_account);
            boolean zK = gapComposerH.K(strC);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new nj0(strC, 29);
                gapComposerH.q(objX);
            }
            Modifier modifierE = ModifierExtKt.e(SemanticsModifierKt.b(modifier, true, (Function1) objX), "myLv_accountMenuEntry_button");
            boolean zY = gapComposerH.y(context) | ((i5 & 896) == 256);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new ol0(context, function0);
                gapComposerH.q(objX2);
            }
            IconButtonKt.a((Function0) objX2, modifierE, false, null, null, ComposableLambdaKt.b(808887717, new r31(context, function0, mutableStateB), gapComposerH), gapComposerH, 1572864, 60);
            topBarAvatarViewModel2 = topBarAvatarViewModel3;
        } else {
            gapComposerH.D();
            topBarAvatarViewModel2 = topBarAvatarViewModel;
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(modifier2, topBarAvatarViewModel2, function0, i2, i3, 12);
        }
    }
}
