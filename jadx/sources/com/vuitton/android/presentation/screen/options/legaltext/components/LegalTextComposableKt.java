package com.vuitton.android.presentation.screen.options.legaltext.components;

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
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModel;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModelImpl;
import com.vuitton.android.presentation.screen.options.legaltext.models.LegalTextViewState;
import defpackage.cj;
import defpackage.md;
import defpackage.t30;
import defpackage.zr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/legaltext/models/LegalTextViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LegalTextComposableKt {
    public static final void a(LegalTextViewModel legalTextViewModel, boolean z, Function0 function0, Function1 function1, Composer composer, int i2) {
        LegalTextViewModel legalTextViewModel2;
        int i3;
        LegalTextViewModel legalTextViewModel3;
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1058425972);
        int i4 = i2 | 2;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.b(z) ? 32 : 16;
        }
        int i5 = i4 | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
                if (viewModelStoreOwnerA == null) {
                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                } else {
                    i3 = i5 & (-15);
                    legalTextViewModel3 = (LegalTextViewModel) ViewModelKt.a(Reflection.f71922a.b(LegalTextViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, gapComposerH), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
                }
            } else {
                gapComposerH.D();
                i3 = i5 & (-15);
                legalTextViewModel3 = legalTextViewModel;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateC = FlowExtKt.c(legalTextViewModel3.getF59844b(), null, gapComposerH, 0, 7);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(legalTextViewModel3);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new LegalTextComposableKt$LegalTextComposable$1$1(legalTextViewModel3, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            String strF = z ? cj.f(gapComposerH, 2082282568, R.string.legal_mentions_title, gapComposerH, false) : cj.f(gapComposerH, 2082366051, R.string.menu_privacy_policy_entry, gapComposerH, false);
            String strA = z ? StringResourceUiModelKt.a(((LegalTextViewState) mutableStateC.getF10755b()).f59849a, context) : StringResourceUiModelKt.a(((LegalTextViewState) mutableStateC.getF10755b()).f59850b, context);
            String str = z ? "sharingPreferences_legalMentions_view" : "sharingPreferences_privacyPolicy_view";
            boolean zY2 = gapComposerH.y(legalTextViewModel3) | ((i3 & 896) == 256);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new t30(legalTextViewModel3, function0, 9);
                gapComposerH.q(objX2);
            }
            LegalTextScreenKt.a(strF, strA, str, (Function0) objX2, function1, gapComposerH, (i3 << 3) & 57344);
            legalTextViewModel2 = legalTextViewModel3;
        } else {
            gapComposerH.D();
            legalTextViewModel2 = legalTextViewModel;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zr(legalTextViewModel2, z, function0, function1, i2);
        }
    }
}
