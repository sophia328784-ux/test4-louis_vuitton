package com.vuitton.android.presentation.screen.distantrepairs.assessment.sections;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.account.addressbook.AddressHelper;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairCardHeaderComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.b3;
import defpackage.f0;
import defpackage.f1;
import defpackage.k;
import defpackage.l0;
import defpackage.o60;
import defpackage.p0;
import defpackage.q8;
import defpackage.tr;
import defpackage.u1;
import defpackage.u8;
import defpackage.v40;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.json.Json;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "disabledMode", "editMode", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentReceiveComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57083a;

        static {
            int[] iArr = new int[StepState.values().length];
            try {
                iArr[StepState.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StepState.EDIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StepState.READ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57083a = iArr;
        }
    }

    public static final void a(AddressUiModel addressUiModel, AddressUiModel addressUiModel2, String str, Function1 function1, Function1 function2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1089815220);
        int i3 = i2 | (gapComposerH.K(addressUiModel) ? 4 : 2);
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(addressUiModel2) ? 32 : 16;
        }
        int i4 = i3 | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("AddressItem", 1.0f);
            String str2 = addressUiModel.d;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = addressUiModel2 != null ? addressUiModel2.f52673b : null;
            boolean zEquals = (str3 != null ? str3 : "").equals(addressUiModel.f52673b);
            int i5 = i4 & 14;
            boolean z = ((i4 & 7168) == 2048) | (i5 == 4);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new k(function1, addressUiModel, 5);
                gapComposerH.q(objX);
            }
            boolean z2 = false;
            LVRadioButtonBlockKt.a(modifierD, str2, null, false, zEquals, (Function1) objX, null, null, gapComposerH, 6, 204);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("AddressItem"), LVAppDesignKitTheme.l(gapComposerH).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 6);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, (i4 >> 6) & 14, 0, 131066);
            gapComposerH = gapComposerH;
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("AddressItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_edit_adress_cta);
            boolean z3 = (i4 & 57344) == 16384;
            if (i5 == 4) {
                z2 = true;
            }
            boolean z4 = z3 | z2;
            Object objX2 = gapComposerH.x();
            if (z4 || objX2 == composer$Companion$Empty$1) {
                objX2 = new l0(function2, addressUiModel, 13);
                gapComposerH.q(objX2);
            }
            LVLinkKt.a(modifierM2, strC, false, null, false, (Function0) objX2, gapComposerH, 0, 28);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(addressUiModel, addressUiModel2, str, function1, function2, i2, 1);
        }
    }

    public static final void b(InAppDispatch inAppDispatch, StepState stepState, List list, AddressUiModel addressUiModel, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Composer composer, int i2) {
        AddressUiModel addressUiModel2;
        boolean z;
        boolean z2;
        inAppDispatch.getClass();
        stepState.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(600787589);
        int i3 = i2 | (gapComposerH.y(inAppDispatch) ? 4 : 2) | (gapComposerH.d(stepState.ordinal()) ? 32 : 16) | (gapComposerH.y(list) ? 256 : 128) | (gapComposerH.K(addressUiModel) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            int i4 = WhenMappings.f57083a[stepState.ordinal()];
            if (i4 == 1) {
                mutableState.setValue(Boolean.TRUE);
            } else if (i4 == 2) {
                mutableState.setValue(Boolean.FALSE);
                mutableState2.setValue(Boolean.TRUE);
            } else if (i4 != 3) {
                v40.g();
                return;
            } else {
                Boolean bool = Boolean.FALSE;
                mutableState.setValue(bool);
                mutableState2.setValue(bool);
            }
            Modifier modifierA = ClipKt.a(tr.d("AssessmentReceiveCard", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            DistantRepairCardHeaderComponentKt.a(Step.THREE, R.string.dr_prass_card3_title, stepState, false, function3, gapComposerH, ((i3 << 3) & 896) | 6 | ((i3 >> 6) & 57344), 8);
            gapComposerH = gapComposerH;
            if (((Boolean) mutableState.getF10755b()).booleanValue() || !((Boolean) mutableState2.getF10755b()).booleanValue()) {
                z = true;
                z2 = false;
            } else {
                z = true;
                z2 = true;
            }
            boolean z3 = z;
            addressUiModel2 = addressUiModel;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(2003706743, new p0((Object) inAppDispatch, (Object) list, (Object) addressUiModel, function1, (Function) function2, (Object) function4, 2), gapComposerH);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            AnimatedVisibilityKt.c(columnScopeInstance, z2, null, null, null, null, composableLambdaImplB, gapComposerH, 1572870, 30);
            AnimatedVisibilityKt.c(columnScopeInstance, (((Boolean) mutableState.getF10755b()).booleanValue() || ((Boolean) mutableState2.getF10755b()).booleanValue()) ? false : z3, null, null, null, null, ComposableLambdaKt.b(-1576509984, new f1(inAppDispatch, addressUiModel2, 5), gapComposerH), gapComposerH, 1572870, 30);
            gapComposerH.Z(z3);
        } else {
            addressUiModel2 = addressUiModel;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(inAppDispatch, stepState, list, addressUiModel2, function1, function2, function3, function4, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v7, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v24 */
    public static final void c(InAppDispatch inAppDispatch, List list, AddressUiModel addressUiModel, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        Function1 function4;
        GapComposer gapComposer;
        Function1 function5;
        ?? r15;
        AddressUiModel addressUiModel2 = addressUiModel;
        Function1 function6 = function2;
        inAppDispatch.getClass();
        function1.getClass();
        function6.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1751781087);
        Applier applier = gapComposerH.f7976a;
        InAppDispatch inAppDispatch2 = inAppDispatch;
        int i3 = i2 | (gapComposerH.y(inAppDispatch2) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.K(addressUiModel2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function6) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierB = BackgroundKt.b(tr.d("ReceiveEditCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            boolean z = false;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_card3_text1), PaddingKt.i(new DTFunctionNameModifier("ReceiveEditCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131068);
            gapComposerH.L(145598294);
            if (list == null) {
                gapComposerH.L(-1335565651);
                gapComposerH.Z(false);
                r15 = 0;
                function5 = function6;
            } else {
                gapComposerH.L(-1335565650);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AddressUiModel addressUiModel3 = (AddressUiModel) it.next();
                    Json json = JsonProviderKt.f43520a;
                    String str = addressUiModel3.f52675e;
                    String str2 = addressUiModel3.f52676f;
                    String str3 = addressUiModel3.g;
                    String str4 = addressUiModel3.f52679j;
                    String str5 = str4 == null ? "" : str4;
                    String str6 = addressUiModel3.f52680k;
                    String str7 = str6 == null ? "" : str6;
                    String str8 = addressUiModel3.l;
                    String str9 = str8 == null ? "" : str8;
                    String str10 = addressUiModel3.p;
                    String str11 = addressUiModel3.t;
                    String str12 = addressUiModel3.r;
                    String str13 = str12 == null ? "" : str12;
                    String str14 = addressUiModel3.q;
                    String str15 = str14 == null ? "" : str14;
                    String str16 = addressUiModel3.o;
                    Context context2 = context;
                    Function1 function7 = function6;
                    a(addressUiModel3, addressUiModel2, AddressHelper.d(context2, json, inAppDispatch2, str, str2, str3, str5, str7, str9, str10, str11, str13, str15, str16 == null ? "" : str16), function1, function7, gapComposerH, ((i3 >> 3) & 112) | (i3 & 7168) | (i3 & 57344));
                    inAppDispatch2 = inAppDispatch;
                    addressUiModel2 = addressUiModel;
                    function6 = function7;
                    context = context2;
                    z = false;
                }
                boolean z2 = z;
                function5 = function6;
                gapComposerH.Z(z2);
                r15 = z2;
            }
            Modifier modifierK = PaddingKt.k(o60.f(gapComposerH, r15, "ReceiveEditCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, r15);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function8 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48449e;
            Modifier modifierD = SizeKt.d(PaddingKt.k(new DTFunctionNameModifier("ReceiveEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), 1.0f);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_prass_card3_cta_newaddress);
            ?? r3 = (i3 & 57344) == 16384 ? 1 : r15;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (r3 != 0 || objX == composer$Companion$Empty$1) {
                objX = new u8(function5, 3);
                gapComposerH.q(objX);
            }
            LVButtonKt.b(0, 504, gapComposerH, modifierD, configurationButton, null, null, strC, (Function0) objX, false, false, false);
            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 3);
            ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            Modifier modifierD2 = SizeKt.d(PaddingKt.k(new DTFunctionNameModifier("ReceiveEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), 1.0f);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dr_prass_card3_cta_next);
            boolean z3 = addressUiModel != null;
            boolean z4 = (i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072;
            Object objX2 = gapComposerH.x();
            if (z4 || objX2 == composer$Companion$Empty$1) {
                function4 = function3;
                objX2 = new u8(function4, 4);
                gapComposerH.q(objX2);
            } else {
                function4 = function3;
            }
            LVButtonKt.b(0, 376, gapComposerH, modifierD2, configurationButton2, null, null, strC2, (Function0) objX2, false, z3, false);
            GapComposer gapComposer2 = gapComposerH;
            gapComposer2.Z(true);
            gapComposer2.Z(true);
            gapComposer = gapComposer2;
        } else {
            function4 = function3;
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(inAppDispatch, list, addressUiModel, function1, function2, function4, i2, 4);
        }
    }

    public static final void d(InAppDispatch inAppDispatch, AddressUiModel addressUiModel, Composer composer, int i2) {
        String str;
        String str2;
        boolean z;
        inAppDispatch.getClass();
        GapComposer gapComposerH = composer.h(314943842);
        int i3 = i2 | (gapComposerH.y(inAppDispatch) ? 4 : 2) | (gapComposerH.K(addressUiModel) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("ReceiveReadCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (addressUiModel == null) {
                gapComposerH.L(-1201679972);
                gapComposerH.Z(false);
                z = true;
            } else {
                gapComposerH.L(-1201679971);
                Json json = JsonProviderKt.f43520a;
                String str3 = addressUiModel.f52675e;
                String str4 = addressUiModel.f52676f;
                String str5 = addressUiModel.g;
                String str6 = addressUiModel.f52679j;
                if (str6 == null) {
                    str6 = "";
                }
                String str7 = addressUiModel.f52680k;
                if (str7 == null) {
                    str7 = "";
                }
                String str8 = addressUiModel.l;
                if (str8 == null) {
                    str8 = "";
                }
                String str9 = str6;
                String str10 = addressUiModel.p;
                String str11 = str7;
                String str12 = addressUiModel.t;
                String str13 = addressUiModel.r;
                if (str13 == null) {
                    str13 = "";
                }
                String str14 = addressUiModel.q;
                if (str14 == null) {
                    str14 = "";
                }
                String str15 = addressUiModel.o;
                if (str15 == null) {
                    str = str8;
                    str2 = "";
                } else {
                    str = str8;
                    str2 = str15;
                }
                String strD = AddressHelper.d(context, json, inAppDispatch, str3, str4, str5, str9, str11, str, str10, str12, str13, str14, str2);
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("ReceiveReadCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7);
                String str16 = addressUiModel.d;
                TextKt.c(str16 != null ? str16 : "", modifierM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
                TextKt.c(strD, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
                z = true;
            }
            gapComposerH.Z(z);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f0(inAppDispatch, addressUiModel, i2, 9);
        }
    }
}
