package com.vuitton.android.presentation.screen.booking.form.components.module;

import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import defpackage.a;
import defpackage.a4;
import defpackage.c1;
import defpackage.k;
import defpackage.tr;
import defpackage.vf;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingModuleChoiceRadioGroupKt {
    public static final void a(Modifier modifier, BookingFormModuleDataUiModel.SingleChoice singleChoice, boolean z, Function1 function1, Composer composer, int i2) {
        Modifier modifier2;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingModuleChoiceRadioGroup");
        }
        singleChoice.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1611914715);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(singleChoice) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        boolean z3 = false;
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_loading_status);
            boolean zY = gapComposerH.y(singleChoice);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new c1(singleChoice, 21);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierE, false, (Function1) objX);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            boolean z4 = true;
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            float f2 = 1.0f;
            if (z) {
                gapComposerH.L(-655428976);
                int i4 = 0;
                while (i4 < 3) {
                    Modifier modifierF = SizeKt.f(ClipKt.a(tr.d("BookingModuleChoiceRadioGroup", 1.0f), LVAppDesignKitTheme.j(gapComposerH).d), BookingModuleSkeletonDefaults.f54487b);
                    boolean zK = gapComposerH.K(strC);
                    Object objX2 = gapComposerH.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new a4(strC, 10);
                        gapComposerH.q(objX2);
                    }
                    GapComposer gapComposer = gapComposerH;
                    LVSkeletonKt.b(SemanticsModifierKt.b(modifierF, false, (Function1) objX2), null, null, gapComposer, 0, 6);
                    i4++;
                    gapComposerH = gapComposer;
                    composer$Companion$Empty$1 = composer$Companion$Empty$1;
                }
                GapComposer gapComposer2 = gapComposerH;
                gapComposer2.Z(false);
                Modifier modifier3 = modifierE;
                z2 = true;
                modifier2 = modifier3;
                gapComposerH = gapComposer2;
            } else {
                Composer$Companion$Empty$1 composer$Companion$Empty$2 = composer$Companion$Empty$1;
                GapComposer gapComposer3 = gapComposerH;
                gapComposer3.L(-654893203);
                for (BookingFormModuleDataUiModel.ChoiceValue choiceValue : singleChoice.f54525b) {
                    Modifier modifierA = ClipKt.a(BorderKt.a(tr.d("BookingModuleChoiceRadioGroup", f2), LVAppDesignKitTheme.d(gapComposer3).f48385c, LVAppDesignKitTheme.c(gapComposer3).f48361b.q, LVAppDesignKitTheme.j(gapComposer3).d), LVAppDesignKitTheme.j(gapComposer3).d);
                    boolean zY2 = gapComposer3.y(singleChoice) | gapComposer3.K(choiceValue);
                    Object objX3 = gapComposer3.x();
                    if (zY2 || objX3 == composer$Companion$Empty$2) {
                        objX3 = new k(singleChoice, choiceValue, 22);
                        gapComposer3.q(objX3);
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(modifierA, z3, (Function1) objX3);
                    String str = choiceValue.f54510b;
                    String str2 = choiceValue.d;
                    if (str2 == null) {
                        str2 = "";
                    }
                    boolean z5 = !choiceValue.f54512e;
                    boolean zC = Intrinsics.c(choiceValue.f54509a, singleChoice.f54526c);
                    boolean zK2 = ((i3 & 7168) == 2048 ? z4 : false) | gapComposer3.K(choiceValue);
                    Object objX4 = gapComposer3.x();
                    if (zK2 || objX4 == composer$Companion$Empty$2) {
                        objX4 = new k(function1, choiceValue, 23);
                        gapComposer3.q(objX4);
                    }
                    Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$2;
                    GapComposer gapComposer4 = gapComposer3;
                    LVRadioButtonBlockKt.a(modifierB2, str, str2, z5, zC, (Function1) objX4, null, null, gapComposer4, 0, 192);
                    z3 = false;
                    gapComposer3 = gapComposer4;
                    f2 = 1.0f;
                    composer$Companion$Empty$2 = composer$Companion$Empty$3;
                    modifierE = modifierE;
                    z4 = true;
                }
                modifier2 = modifierE;
                gapComposerH = gapComposer3;
                gapComposerH.Z(z3);
                z2 = true;
            }
            gapComposerH.Z(z2);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            modifier2 = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vf(modifier2, singleChoice, z, function1, i2, 1);
        }
    }
}
