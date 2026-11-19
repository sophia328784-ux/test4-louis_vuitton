package com.vuitton.android.presentation.screen.account.editavatar;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState;
import defpackage.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditAvatarComposableKt {
    public static final void a(EditAvatarViewModel editAvatarViewModel, Function0 function0, Function2 function2, Composer composer, int i2) {
        editAvatarViewModel.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1182158162);
        int i3 = i2 | (gapComposerH.K(editAvatarViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateC = FlowExtKt.c(editAvatarViewModel.getF52302h(), null, gapComposerH, 0, 7);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean zY = ((i3 & 896) == 256) | (i4 == 4) | gapComposerH.y(context);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new EditAvatarComposableKt$EditAvatarComposable$1$1(editAvatarViewModel, function2, context, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            EditAvatarViewState editAvatarViewState = (EditAvatarViewState) mutableStateC.getF10755b();
            boolean z = i4 == 4;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                EditAvatarComposableKt$EditAvatarComposable$2$1 editAvatarComposableKt$EditAvatarComposable$2$1 = new EditAvatarComposableKt$EditAvatarComposable$2$1(0, editAvatarViewModel, EditAvatarViewModel.class, "onSaveAvatar", "onSaveAvatar()V", 0);
                gapComposerH.q(editAvatarComposableKt$EditAvatarComposable$2$1);
                objX2 = editAvatarComposableKt$EditAvatarComposable$2$1;
            }
            Function0 function1 = (Function0) ((KFunction) objX2);
            boolean z2 = i4 == 4;
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$1) {
                EditAvatarComposableKt$EditAvatarComposable$3$1 editAvatarComposableKt$EditAvatarComposable$3$1 = new EditAvatarComposableKt$EditAvatarComposable$3$1(1, editAvatarViewModel, EditAvatarViewModel.class, "onAvatarSelected", "onAvatarSelected(Ljava/lang/String;)V", 0);
                gapComposerH.q(editAvatarComposableKt$EditAvatarComposable$3$1);
                objX3 = editAvatarComposableKt$EditAvatarComposable$3$1;
            }
            Function1 function3 = (Function1) ((KFunction) objX3);
            boolean z3 = i4 == 4;
            Object objX4 = gapComposerH.x();
            if (z3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new EditAvatarComposableKt$EditAvatarComposable$4$1(0, editAvatarViewModel, EditAvatarViewModel.class, "loadAvatars", "loadAvatars()V", 0);
                gapComposerH.q(objX4);
            }
            EditAvatarScreenKt.a(editAvatarViewState, function0, function1, function3, (Function0) ((KFunction) objX4), gapComposerH, i3 & 112);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(i2, 27, editAvatarViewModel, function0, function2);
        }
    }
}
