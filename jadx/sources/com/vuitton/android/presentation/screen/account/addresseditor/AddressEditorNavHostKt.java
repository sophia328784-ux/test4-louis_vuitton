package com.vuitton.android.presentation.screen.account.addresseditor;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import defpackage.g4;
import defpackage.p;
import defpackage.w;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressEditorNavHostKt {
    public static final void a(NavHostController navHostController, AddressEditorViewModel addressEditorViewModel, AddressAutocompleteViewModel addressAutocompleteViewModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        navHostController.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-382917119);
        int i3 = (gapComposerH.y(function1) ? 16384 : 8192) | i2 | (gapComposerH.y(navHostController) ? 4 : 2) | (gapComposerH.K(addressEditorViewModel) ? 32 : 16) | (gapComposerH.K(addressAutocompleteViewModel) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LinkedHashMap linkedHashMap = ((AutofillTree) gapComposerH.k(CompositionLocalsKt.f10028c)).f8646a;
            AddressEditorRoute.AddressEditorForm addressEditorForm = AddressEditorRoute.AddressEditorForm.INSTANCE;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new p(16);
                gapComposerH.q(objX);
            }
            Function1 function2 = (Function1) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new p(17);
                gapComposerH.q(objX2);
            }
            Function1 function3 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new p(18);
                gapComposerH.q(objX3);
            }
            Function1 function4 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new p(19);
                gapComposerH.q(objX4);
            }
            Function1 function5 = (Function1) objX4;
            boolean zY = ((i3 & 112) == 32) | ((i3 & 7168) == 2048) | ((57344 & i3) == 16384) | gapComposerH.y(navHostController) | ((i3 & 896) == 256) | gapComposerH.y(linkedHashMap);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                g4 g4Var = new g4(addressEditorViewModel, function0, function1, navHostController, addressAutocompleteViewModel, linkedHashMap, 1);
                gapComposerH.q(g4Var);
                objX5 = g4Var;
            }
            NavHostKt.b(navHostController, addressEditorForm, null, null, null, function2, function3, function4, function5, (Function1) objX5, gapComposerH, (i3 & 14) | 920125488, 1084);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(navHostController, addressEditorViewModel, addressAutocompleteViewModel, function0, function1, i2, 3);
        }
    }
}
