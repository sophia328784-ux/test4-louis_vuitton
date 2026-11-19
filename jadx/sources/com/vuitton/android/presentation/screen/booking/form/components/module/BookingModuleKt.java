package com.vuitton.android.presentation.screen.booking.form.components.module;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVOpacity;
import com.vuitton.android.presentation.compose.components.LVExpandableListAnimatedIconKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import defpackage.a;
import defpackage.ag;
import defpackage.bg;
import defpackage.cj;
import defpackage.r;
import defpackage.re;
import defpackage.tf;
import defpackage.ya;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "contentAlpha", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingModuleKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54485a;

        static {
            int[] iArr = new int[BookingFormModuleDataUiModel.SingleChoiceLayout.values().length];
            try {
                iArr[BookingFormModuleDataUiModel.SingleChoiceLayout.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BookingFormModuleDataUiModel.SingleChoiceLayout.LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f54485a = iArr;
        }
    }

    public static final void a(Modifier modifier, BookingFormModuleUiModel bookingFormModuleUiModel, int i2, boolean z, Function1 function1, Function2 function2, Function2 function3, Function1 function4, Composer composer, int i3) {
        int i4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingModule");
        }
        Modifier modifier2 = modifierE;
        bookingFormModuleUiModel.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-110619286);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(bookingFormModuleUiModel) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(i2) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i4 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        if ((1572864 & i3) == 0) {
            i4 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        if ((12582912 & i3) == 0) {
            i4 |= gapComposerH.y(function4) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 4793491) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = bookingFormModuleUiModel.f54541h && !z;
            LVOpacity lVOpacityH = LVAppDesignKitTheme.h(gapComposerH);
            State stateB = AnimateAsStateKt.b((z2 || bookingFormModuleUiModel.l) ? lVOpacityH.f48401a : lVOpacityH.d, null, "BookingModule alpha", gapComposerH, 3072, 22);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new FocusRequester();
                gapComposerH.q(objX);
            }
            FocusRequester focusRequester = (FocusRequester) objX;
            Boolean boolValueOf = Boolean.valueOf(bookingFormModuleUiModel.f54540f);
            boolean zY = gapComposerH.y(bookingFormModuleUiModel) | ((i4 & 896) == 256);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new BookingModuleKt$BookingModule$3$1(bookingFormModuleUiModel, i2, focusRequester, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX2);
            Modifier modifierB = BackgroundKt.b(ClipKt.a(modifier2, LVAppDesignKitTheme.j(gapComposerH).d), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            boolean zK = gapComposerH.K(stateB);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new ya(stateB, 1);
                gapComposerH.q(objX3);
            }
            Modifier modifierI = PaddingKt.i(GraphicsLayerModifierKt.a(modifierB, (Function1) objX3), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new re(15);
                gapComposerH.q(objX4);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierI, false, (Function1) objX4);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            int i5 = i4;
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            Modifier modifierC2 = FocusableKt.c(FocusRequesterModifierKt.a(SizeKt.d(new DTFunctionNameModifier("BookingModule"), 1.0f), focusRequester), null, 3);
            int i6 = i5 & 57344;
            boolean zY2 = (i6 == 16384) | gapComposerH.y(bookingFormModuleUiModel);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new tf(function1, bookingFormModuleUiModel, 4);
                gapComposerH.q(objX5);
            }
            Modifier modifierC3 = ModifierExtKt.c(modifierC2, z2, null, null, (Function0) objX5, 26);
            boolean z3 = z2;
            boolean zY3 = gapComposerH.y(bookingFormModuleUiModel) | gapComposerH.b(z3) | (i6 == 16384);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new ag(bookingFormModuleUiModel, z3, function1, 0);
                gapComposerH.q(objX6);
            }
            Modifier modifierB3 = SemanticsModifierKt.b(modifierC3, true, (Function1) objX6);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierB3);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC4, function9);
            BookingModuleHeaderKt.a(cj.b("BookingModule", RowScopeInstance.f5040a, 1.0f, true), bookingFormModuleUiModel, gapComposerH, i5 & 112);
            LVExpandableListAnimatedIconKt.a(null, LVAppDesignKitTheme.a(gapComposerH).s, bookingFormModuleUiModel.f54540f, IconSize.f48348b, Integer.valueOf(ColorKt.i(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k)), gapComposerH, 0, 1);
            gapComposerH.Z(true);
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, bookingFormModuleUiModel.f54540f, null, null, null, null, ComposableLambdaKt.b(933881016, new r((Object) bookingFormModuleUiModel, (Object) function2, (Object) function3, (Object) function4, 2), gapComposerH), gapComposerH, 1572870, 30);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new bg(modifier2, bookingFormModuleUiModel, i2, z, function1, function2, function3, function4, i3);
        }
    }
}
