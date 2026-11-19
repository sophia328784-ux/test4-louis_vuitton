package com.vuitton.android.presentation.screen.repairs.components;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import defpackage.b9;
import defpackage.gi0;
import defpackage.kj0;
import defpackage.sq0;
import defpackage.yj0;
import defpackage.z2;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;", "viewState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairPaymentFailedComposableKt {
    public static final void a(Function0 function0, String str, String str2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1899794383);
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            Modifier.Companion companion = Modifier.Companion.f8607b;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.j(companion, f3, f2), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.b(R.string.dr_payment_fail_text_1, new Object[]{str}, gapComposerH), PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.b(R.string.dr_payment_fail_text_2, new Object[]{str2}, gapComposerH), PaddingKt.l(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48413a, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            LVButtonKt.b(12582912 | ((i3 << 27) & 1879048192), 376, gapComposerH, SizeKt.d(PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, 2), 1.0f), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_return_care_services), function0, false, true, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 21, function0, str, str2);
        }
    }

    public static final void b(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, String str, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1219284820);
        int i3 = i2 | (gapComposerH.K(distantRepairAssessmentViewModel) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new RepairPaymentFailedComposableKt$RepairsPaymentFailedComposable$1$1(distantRepairAssessmentViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            boolean z2 = (i3 & 7168) == 2048;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new sq0(function1, 9);
                gapComposerH.q(objX2);
            }
            BackHandlerKt.a(false, (Function0) objX2, gapComposerH, 0, 1);
            MutableState mutableStateB = SnapshotStateKt.b(distantRepairAssessmentViewModel.getH(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(distantRepairAssessmentViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            String str2 = ((AssessmentViewState) mutableStateB.getF10755b()).m;
            ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
            int i5 = LVModalBottomSheetState.f48797e;
            c(str2, str, function0, contactUsUiModel, function2, lVModalBottomSheetStateF, gapComposerH, (58352 & i3) | (i5 << 15));
            ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) mutableStateA.getF10755b();
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            boolean z3 = i4 == 4;
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new b9(distantRepairAssessmentViewModel, 2);
                gapComposerH.q(objX3);
            }
            ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function2, (Function0) objX3, gapComposerH, (i5 << 3) | (i5 << 6) | ((i3 >> 3) & 7168));
            gapComposer = gapComposerH;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0((Object) distantRepairAssessmentViewModel, (Object) str, function0, function1, (Function) function2, i2, 15);
        }
    }

    public static final void c(String str, String str2, Function0 function0, ContactUsUiModel contactUsUiModel, Function1 function1, LVModalBottomSheetState lVModalBottomSheetState, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        str.getClass();
        function0.getClass();
        contactUsUiModel.getClass();
        function1.getClass();
        lVModalBottomSheetState.getClass();
        GapComposer gapComposerH = composer.h(1456286419);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= (i2 & 4096) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= (262144 & i2) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(767374999, new gi0(contactUsUiModel, lVModalBottomSheetState, function1, 20), gapComposerH), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-908967774, new yj0(function0, str, str2, 6), gapComposerH), gapComposer, 805306416, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(str, str2, function0, contactUsUiModel, function1, lVModalBottomSheetState, i2);
        }
    }
}
