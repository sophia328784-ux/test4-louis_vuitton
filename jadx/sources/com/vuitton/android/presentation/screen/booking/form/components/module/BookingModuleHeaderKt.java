package com.vuitton.android.presentation.screen.booking.form.components.module;

import android.content.Context;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import defpackage.a;
import defpackage.g2;
import defpackage.k;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingModuleHeaderKt {
    public static final void a(Modifier modifier, BookingFormModuleUiModel bookingFormModuleUiModel, Composer composer, int i2) {
        int i3;
        String strA;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingModuleHeader");
        }
        modifierE.getClass();
        bookingFormModuleUiModel.getClass();
        GapComposer gapComposerH = composer.h(1381905941);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(bookingFormModuleUiModel) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean z = bookingFormModuleUiModel.f54540f;
            BookingFormModuleDataUiModel bookingFormModuleDataUiModel = bookingFormModuleUiModel.f54544k;
            if (z || !bookingFormModuleDataUiModel.isCompleted()) {
                strA = bookingFormModuleUiModel.f54538c;
            } else {
                StringResourceUiModel stringResourceUiModelA = bookingFormModuleDataUiModel.a();
                strA = stringResourceUiModelA != null ? StringResourceUiModelKt.a(stringResourceUiModelA, context) : null;
            }
            String strC = StringResources_androidKt.c(gapComposerH, R.string.required_field);
            Modifier modifierB = AnimationModifierKt.b(modifierE, AnimationSpecKt.c(Sink.ORIENTATION_180, 0, null, 6), 2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
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
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "BookingModuleHeader");
            boolean zY = gapComposerH.y(bookingFormModuleUiModel) | gapComposerH.K(strC);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new k(bookingFormModuleUiModel, strC, 24);
                gapComposerH.q(objX);
            }
            TextKt.c(bookingFormModuleUiModel.f54537b, SemanticsModifierKt.b(dTFunctionNameModifierE, false, (Function1) objX), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            ComposableSingletons$BookingModuleHeaderKt.f54491a.getClass();
            gapComposerH = gapComposerH;
            CrossfadeKt.b(strA, null, null, "BookingModuleHeaderCrossfade", ComposableSingletons$BookingModuleHeaderKt.f54492b, gapComposerH, 27648, 6);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(modifierE, bookingFormModuleUiModel, i2, 5);
        }
    }
}
