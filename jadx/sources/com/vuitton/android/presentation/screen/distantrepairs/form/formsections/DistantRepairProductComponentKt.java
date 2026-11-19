package com.vuitton.android.presentation.screen.distantrepairs.form.formsections;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVMultilineTextFieldKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairCardHeaderComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step3StateUIModel;
import defpackage.cj;
import defpackage.d21;
import defpackage.d3;
import defpackage.ik;
import defpackage.k4;
import defpackage.lf;
import defpackage.n00;
import defpackage.o4;
import defpackage.o60;
import defpackage.r;
import defpackage.rs;
import defpackage.tr;
import defpackage.u8;
import defpackage.v40;
import defpackage.ve;
import defpackage.x3;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0005²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002"}, d2 = {"", "disabledMode", "editMode", "", "currentDescription", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairProductComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57335a;

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
            f57335a = iArr;
        }
    }

    public static final void a(StepState stepState, DistantRepairContactMethod distantRepairContactMethod, Step3StateUIModel step3StateUIModel, List list, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0, Composer composer, int i2) {
        stepState.getClass();
        step3StateUIModel.getClass();
        list.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1497947047);
        int i3 = i2 | (gapComposerH.d(stepState.ordinal()) ? 4 : 2) | (gapComposerH.d(distantRepairContactMethod == null ? -1 : distantRepairContactMethod.ordinal()) ? 32 : 16) | (gapComposerH.y(step3StateUIModel) ? 256 : 128) | (gapComposerH.y(list) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function0) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
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
            int i4 = WhenMappings.f57335a[stepState.ordinal()];
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
            Modifier modifierA = ClipKt.a(tr.d("DistantRepairProductCard", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function6 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            DistantRepairCardHeaderComponentKt.a(Step.THREE, distantRepairContactMethod == DistantRepairContactMethod.VIDEO_CALL ? R.string.dr_card3_title_videocall : R.string.dr_card3_title, stepState, false, function1, gapComposerH, ((i3 << 6) & 896) | 6 | (i3 & 57344), 8);
            boolean z = !((Boolean) mutableState.getF10755b()).booleanValue() && ((Boolean) mutableState2.getF10755b()).booleanValue();
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1251498649, new lf(distantRepairContactMethod, step3StateUIModel, list, function2, function3, function4, function5, function0), gapComposerH);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            gapComposerH = gapComposerH;
            AnimatedVisibilityKt.c(columnScopeInstance, z, null, null, null, null, composableLambdaImplB, gapComposerH, 1572870, 30);
            AnimatedVisibilityKt.c(columnScopeInstance, (((Boolean) mutableState.getF10755b()).booleanValue() || ((Boolean) mutableState2.getF10755b()).booleanValue()) ? false : true, null, null, null, null, ComposableLambdaKt.b(1252145154, new d3(step3StateUIModel, 16), gapComposerH), gapComposerH, 1572870, 30);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ik(stepState, distantRepairContactMethod, step3StateUIModel, list, function1, function2, function3, function4, function5, function0, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x03af  */
    /* JADX WARN: Code duplicated, block: B:102:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:103:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:106:0x0415  */
    /* JADX WARN: Code duplicated, block: B:107:0x0417  */
    /* JADX WARN: Code duplicated, block: B:110:0x041f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0424  */
    /* JADX WARN: Code duplicated, block: B:114:0x0427  */
    /* JADX WARN: Code duplicated, block: B:118:0x045c  */
    /* JADX WARN: Code duplicated, block: B:119:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:122:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:124:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:126:0x04ed  */
    /* JADX WARN: Code duplicated, block: B:133:0x0502  */
    /* JADX WARN: Code duplicated, block: B:137:0x050e  */
    /* JADX WARN: Code duplicated, block: B:138:0x0510  */
    /* JADX WARN: Code duplicated, block: B:141:0x0517 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:144:0x051d  */
    /* JADX WARN: Code duplicated, block: B:146:0x0542  */
    /* JADX WARN: Code duplicated, block: B:148:0x0546  */
    /* JADX WARN: Code duplicated, block: B:90:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:91:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:94:0x0375  */
    /* JADX WARN: Code duplicated, block: B:96:0x037c  */
    /* JADX WARN: Code duplicated, block: B:97:0x0380  */
    public static final void b(DistantRepairContactMethod distantRepairContactMethod, String str, List list, int i2, List list2, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function0 function0, Composer composer, int i3) {
        int i4;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i5;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        boolean z;
        boolean z2;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$3;
        boolean z3;
        boolean z4;
        Object objX2;
        List list3;
        Function1 function5 = function4;
        Function0 function6 = function0;
        GapComposer gapComposerH = composer.h(-1668784980);
        Applier applier = gapComposerH.f7976a;
        int i6 = i3 | (gapComposerH.d(distantRepairContactMethod == null ? -1 : distantRepairContactMethod.ordinal()) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(list) ? 256 : 128) | (gapComposerH.d(i2) ? 2048 : 1024) | (gapComposerH.y(list2) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i6 & 1, (i6 & 306783379) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            DistantRepairContactMethod distantRepairContactMethod2 = DistantRepairContactMethod.VIDEO_CALL;
            String str2 = distantRepairContactMethod != distantRepairContactMethod2 ? Browse.CAPS_WILDCARD : "";
            Object objX3 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
            if (objX3 == composer$Companion$Empty$4) {
                objX3 = SnapshotStateKt.g(str);
                gapComposerH.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            Modifier modifierM = PaddingKt.m(BackgroundKt.b(tr.d("ProductEditCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function7 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Function2 function8 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA2, function8);
            Function2 function9 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function9);
            Integer numValueOf = Integer.valueOf(iHashCode3);
            Function2 function10 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function10);
            Function1 function11 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function11);
            Function2 function12 = ComposeUiNode.Companion.d;
            Modifier modifierK = PaddingKt.k(tr.e(gapComposerH, modifierC3, function12, "ProductEditCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA3, function8);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function9);
            cj.t(iHashCode4, gapComposerH, function10, gapComposerH, function11);
            TextKt.c(StringResources_androidKt.c(gapComposerH, distantRepairContactMethod == distantRepairContactMethod2 ? R.string.dr_card3_text1_opt2 : R.string.dr_card3_text1), n00.f(gapComposerH, modifierC4, function12, "ProductEditCard", "careservicesForm_productDetailsDescription_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            Modifier modifierE = ModifierExtKt.e(PaddingKt.m(tr.d("ProductEditCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), "careservicesForm_productDetailsDescribeRepair_textfield");
            String str3 = (String) mutableState.getF10755b();
            String strJ = d21.j(StringResources_androidKt.c(gapComposerH, R.string.dr_card3_sub_description), str2);
            boolean z5 = (i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072;
            Object objX4 = gapComposerH.x();
            if (z5) {
                composer$Companion$Empty$1 = composer$Companion$Empty$4;
            } else {
                if (objX4 != composer$Companion$Empty$1) {
                    composer$Companion$Empty$1 = composer$Companion$Empty$4;
                }
                LVMultilineTextFieldKt.a(str3, (Function1) objX4, modifierE, null, false, strJ, false, null, null, 0, null, null, gapComposerH, 0, 4056);
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ProductEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "careservicesForm_productDetailsImages_text");
                if (distantRepairContactMethod == distantRepairContactMethod2) {
                    i5 = R.string.dr_card3_subImage_opt2;
                } else {
                    i5 = R.string.dr_card3_subImage;
                }
                TextKt.c(d21.j(StringResources_androidKt.c(gapComposerH, i5), str2), modifierE2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                FlowLayoutKt.a(PaddingKt.i(o60.d(gapComposerH, true, "ProductEditCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48415c), null, null, null, 3, 0, ComposableLambdaKt.b(988529671, new r((Object) list2, (Object) list, (Object) function2, (Object) function3, 12), gapComposerH), gapComposerH, 1597440, 46);
                Modifier modifierK2 = PaddingKt.k(new DTFunctionNameModifier("ProductEditCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierK2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function7);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function8);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
                cj.t(iHashCode, gapComposerH, function10, gapComposerH, function11);
                Updater.c(gapComposerH, modifierC, function12);
                BiasAlignment.Vertical vertical = Alignment.Companion.l;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ProductEditCard");
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function7);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function8);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
                cj.t(iHashCode2, gapComposerH, function10, gapComposerH, function11);
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(tr.e(gapComposerH, modifierC2, function12, "ProductEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
                Modifier modifierG = n00.g("ProductEditCard", "careservicesForm_productDetailsHowTo_button");
                String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_card3_cta_how_to);
                boolean zY = gapComposerH.y(focusManager);
                if ((i6 & 1879048192) == 536870912) {
                    z = true;
                } else {
                    z = false;
                }
                z2 = zY | z;
                objX = gapComposerH.x();
                if (z2) {
                    composer$Companion$Empty$3 = composer$Companion$Empty$2;
                } else {
                    composer$Companion$Empty$3 = composer$Companion$Empty$2;
                    if (objX == composer$Companion$Empty$3) {
                        function6 = function0;
                    }
                    LVLinkKt.a(modifierG, strC, false, null, false, (Function0) objX, gapComposerH, 0, 28);
                    gapComposerH = gapComposerH;
                    SpacerKt.a(gapComposerH, SizeKt.f(o60.f(gapComposerH, true, "ProductEditCard"), LVAppDesignKitTheme.l(gapComposerH).g));
                    if (distantRepairContactMethod != distantRepairContactMethod2) {
                        gapComposerH.L(-945173741);
                        TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.mylv_mandatoryfield), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).n, gapComposerH, 0, 0, 131066);
                        gapComposerH = gapComposerH;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-944913837);
                        gapComposerH.Z(false);
                    }
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                    Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(tr.d("ProductEditCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 5), "careservicesForm_productDetailsNext_button");
                    String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_cta_next);
                    if (distantRepairContactMethod != distantRepairContactMethod2) {
                        list3 = list;
                        if (list3 != null || list3.isEmpty()) {
                            i4 = i2;
                        } else {
                            i4 = i2;
                            if (list.size() < i4 || str.length() <= 0) {
                            }
                            if ((i6 & 234881024) == 67108864) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            objX2 = gapComposerH.x();
                            if (!z4 || objX2 == composer$Companion$Empty$3) {
                                function5 = function4;
                                objX2 = new u8(function5, 20);
                                gapComposerH.q(objX2);
                            } else {
                                function5 = function4;
                            }
                            LVButtonKt.b(0, 376, gapComposerH, modifierE3, configurationButton, null, null, strC2, (Function0) objX2, false, z3, false);
                            gapComposerH.Z(true);
                            gapComposerH.Z(true);
                        }
                        z3 = false;
                        if ((i6 & 234881024) == 67108864) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        objX2 = gapComposerH.x();
                        if (z4) {
                            function5 = function4;
                            objX2 = new u8(function5, 20);
                            gapComposerH.q(objX2);
                        } else {
                            function5 = function4;
                            objX2 = new u8(function5, 20);
                            gapComposerH.q(objX2);
                        }
                        LVButtonKt.b(0, 376, gapComposerH, modifierE3, configurationButton, null, null, strC2, (Function0) objX2, false, z3, false);
                        gapComposerH.Z(true);
                        gapComposerH.Z(true);
                    } else {
                        i4 = i2;
                    }
                    z3 = true;
                    if ((i6 & 234881024) == 67108864) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objX2 = gapComposerH.x();
                    if (z4) {
                        function5 = function4;
                        objX2 = new u8(function5, 20);
                        gapComposerH.q(objX2);
                    } else {
                        function5 = function4;
                        objX2 = new u8(function5, 20);
                        gapComposerH.q(objX2);
                    }
                    LVButtonKt.b(0, 376, gapComposerH, modifierE3, configurationButton, null, null, strC2, (Function0) objX2, false, z3, false);
                    gapComposerH.Z(true);
                    gapComposerH.Z(true);
                }
                function6 = function0;
                objX = new ve(focusManager, function6, 2);
                gapComposerH.q(objX);
                LVLinkKt.a(modifierG, strC, false, null, false, (Function0) objX, gapComposerH, 0, 28);
                gapComposerH = gapComposerH;
                SpacerKt.a(gapComposerH, SizeKt.f(o60.f(gapComposerH, true, "ProductEditCard"), LVAppDesignKitTheme.l(gapComposerH).g));
                if (distantRepairContactMethod != distantRepairContactMethod2) {
                    gapComposerH.L(-945173741);
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.mylv_mandatoryfield), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).n, gapComposerH, 0, 0, 131066);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-944913837);
                    gapComposerH.Z(false);
                }
                ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                Modifier modifierE4 = ModifierExtKt.e(PaddingKt.m(tr.d("ProductEditCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 5), "careservicesForm_productDetailsNext_button");
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_cta_next);
                if (distantRepairContactMethod != distantRepairContactMethod2) {
                    list3 = list;
                    if (list3 != null) {
                        i4 = i2;
                    } else {
                        i4 = i2;
                    }
                    z3 = false;
                    if ((i6 & 234881024) == 67108864) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objX2 = gapComposerH.x();
                    if (z4) {
                        function5 = function4;
                        objX2 = new u8(function5, 20);
                        gapComposerH.q(objX2);
                    } else {
                        function5 = function4;
                        objX2 = new u8(function5, 20);
                        gapComposerH.q(objX2);
                    }
                    LVButtonKt.b(0, 376, gapComposerH, modifierE4, configurationButton2, null, null, strC3, (Function0) objX2, false, z3, false);
                    gapComposerH.Z(true);
                    gapComposerH.Z(true);
                } else {
                    i4 = i2;
                }
                z3 = true;
                if ((i6 & 234881024) == 67108864) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objX2 = gapComposerH.x();
                if (z4) {
                    function5 = function4;
                    objX2 = new u8(function5, 20);
                    gapComposerH.q(objX2);
                } else {
                    function5 = function4;
                    objX2 = new u8(function5, 20);
                    gapComposerH.q(objX2);
                }
                LVButtonKt.b(0, 376, gapComposerH, modifierE4, configurationButton2, null, null, strC3, (Function0) objX2, false, z3, false);
                gapComposerH.Z(true);
                gapComposerH.Z(true);
            }
            composer$Companion$Empty$1 = composer$Companion$Empty$4;
            objX4 = new x3(function1, mutableState, 7);
            gapComposerH.q(objX4);
            LVMultilineTextFieldKt.a(str3, (Function1) objX4, modifierE, null, false, strJ, false, null, null, 0, null, null, gapComposerH, 0, 4056);
            Modifier modifierE5 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ProductEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "careservicesForm_productDetailsImages_text");
            if (distantRepairContactMethod == distantRepairContactMethod2) {
                i5 = R.string.dr_card3_subImage_opt2;
            } else {
                i5 = R.string.dr_card3_subImage;
            }
            TextKt.c(d21.j(StringResources_androidKt.c(gapComposerH, i5), str2), modifierE5, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            composer$Companion$Empty$2 = composer$Companion$Empty$1;
            FlowLayoutKt.a(PaddingKt.i(o60.d(gapComposerH, true, "ProductEditCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48415c), null, null, null, 3, 0, ComposableLambdaKt.b(988529671, new r((Object) list2, (Object) list, (Object) function2, (Object) function3, 12), gapComposerH), gapComposerH, 1597440, 46);
            Modifier modifierK3 = PaddingKt.k(new DTFunctionNameModifier("ProductEditCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierK3);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function8);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
            cj.t(iHashCode, gapComposerH, function10, gapComposerH, function11);
            Updater.c(gapComposerH, modifierC, function12);
            BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ProductEditCard");
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical2, gapComposerH, 48);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function8);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
            cj.t(iHashCode2, gapComposerH, function10, gapComposerH, function11);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(tr.e(gapComposerH, modifierC2, function12, "ProductEditCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
            Modifier modifierG2 = n00.g("ProductEditCard", "careservicesForm_productDetailsHowTo_button");
            String strC4 = StringResources_androidKt.c(gapComposerH, R.string.dr_card3_cta_how_to);
            boolean zY2 = gapComposerH.y(focusManager);
            if ((i6 & 1879048192) == 536870912) {
                z = true;
            } else {
                z = false;
            }
            z2 = zY2 | z;
            objX = gapComposerH.x();
            if (z2) {
                composer$Companion$Empty$3 = composer$Companion$Empty$2;
                if (objX == composer$Companion$Empty$3) {
                    function6 = function0;
                }
                LVLinkKt.a(modifierG2, strC4, false, null, false, (Function0) objX, gapComposerH, 0, 28);
                gapComposerH = gapComposerH;
                SpacerKt.a(gapComposerH, SizeKt.f(o60.f(gapComposerH, true, "ProductEditCard"), LVAppDesignKitTheme.l(gapComposerH).g));
                if (distantRepairContactMethod != distantRepairContactMethod2) {
                    gapComposerH.L(-945173741);
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.mylv_mandatoryfield), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).n, gapComposerH, 0, 0, 131066);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-944913837);
                    gapComposerH.Z(false);
                }
                ConfigurationButton configurationButton3 = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                Modifier modifierE6 = ModifierExtKt.e(PaddingKt.m(tr.d("ProductEditCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 5), "careservicesForm_productDetailsNext_button");
                String strC5 = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_cta_next);
                if (distantRepairContactMethod != distantRepairContactMethod2) {
                    list3 = list;
                    if (list3 != null) {
                        i4 = i2;
                    } else {
                        i4 = i2;
                    }
                    z3 = false;
                    if ((i6 & 234881024) == 67108864) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objX2 = gapComposerH.x();
                    if (z4) {
                        function5 = function4;
                        objX2 = new u8(function5, 20);
                        gapComposerH.q(objX2);
                    } else {
                        function5 = function4;
                        objX2 = new u8(function5, 20);
                        gapComposerH.q(objX2);
                    }
                    LVButtonKt.b(0, 376, gapComposerH, modifierE6, configurationButton3, null, null, strC5, (Function0) objX2, false, z3, false);
                    gapComposerH.Z(true);
                    gapComposerH.Z(true);
                } else {
                    i4 = i2;
                }
                z3 = true;
                if ((i6 & 234881024) == 67108864) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objX2 = gapComposerH.x();
                if (z4) {
                    function5 = function4;
                    objX2 = new u8(function5, 20);
                    gapComposerH.q(objX2);
                } else {
                    function5 = function4;
                    objX2 = new u8(function5, 20);
                    gapComposerH.q(objX2);
                }
                LVButtonKt.b(0, 376, gapComposerH, modifierE6, configurationButton3, null, null, strC5, (Function0) objX2, false, z3, false);
                gapComposerH.Z(true);
                gapComposerH.Z(true);
            } else {
                composer$Companion$Empty$3 = composer$Companion$Empty$2;
            }
            function6 = function0;
            objX = new ve(focusManager, function6, 2);
            gapComposerH.q(objX);
            LVLinkKt.a(modifierG2, strC4, false, null, false, (Function0) objX, gapComposerH, 0, 28);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.f(o60.f(gapComposerH, true, "ProductEditCard"), LVAppDesignKitTheme.l(gapComposerH).g));
            if (distantRepairContactMethod != distantRepairContactMethod2) {
                gapComposerH.L(-945173741);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.mylv_mandatoryfield), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).n, gapComposerH, 0, 0, 131066);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-944913837);
                gapComposerH.Z(false);
            }
            ConfigurationButton configurationButton4 = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            Modifier modifierE7 = ModifierExtKt.e(PaddingKt.m(tr.d("ProductEditCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 5), "careservicesForm_productDetailsNext_button");
            String strC6 = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_cta_next);
            if (distantRepairContactMethod != distantRepairContactMethod2) {
                list3 = list;
                if (list3 != null) {
                    i4 = i2;
                } else {
                    i4 = i2;
                }
                z3 = false;
                if ((i6 & 234881024) == 67108864) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objX2 = gapComposerH.x();
                if (z4) {
                    function5 = function4;
                    objX2 = new u8(function5, 20);
                    gapComposerH.q(objX2);
                } else {
                    function5 = function4;
                    objX2 = new u8(function5, 20);
                    gapComposerH.q(objX2);
                }
                LVButtonKt.b(0, 376, gapComposerH, modifierE7, configurationButton4, null, null, strC6, (Function0) objX2, false, z3, false);
                gapComposerH.Z(true);
                gapComposerH.Z(true);
            } else {
                i4 = i2;
            }
            z3 = true;
            if ((i6 & 234881024) == 67108864) {
                z4 = true;
            } else {
                z4 = false;
            }
            objX2 = gapComposerH.x();
            if (z4) {
                function5 = function4;
                objX2 = new u8(function5, 20);
                gapComposerH.q(objX2);
            } else {
                function5 = function4;
                objX2 = new u8(function5, 20);
                gapComposerH.q(objX2);
            }
            LVButtonKt.b(0, 376, gapComposerH, modifierE7, configurationButton4, null, null, strC6, (Function0) objX2, false, z3, false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            i4 = i2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(distantRepairContactMethod, str, list, i4, list2, function1, function2, function3, function5, function6, i3);
        }
    }

    public static final void c(String str, List list, Composer composer, int i2) {
        List list2;
        boolean z;
        boolean z2;
        List list3;
        String str2 = str;
        GapComposer gapComposerH = composer.h(59549258);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(str2) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("ProductReadCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            if (str2.length() == 0 && ((list3 = list) == null || list3.isEmpty())) {
                Modifier modifierI2 = PaddingKt.i(n00.i(gapComposerH, -318717260, "ProductReadCard"), LVAppDesignKitTheme.l(gapComposerH).f48415c);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI2);
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
                Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC2, function5);
                z = true;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_no_info), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
                str2 = str;
                list2 = list;
            } else {
                Modifier modifierI3 = PaddingKt.i(n00.i(gapComposerH, -318286856, "ProductReadCard"), LVAppDesignKitTheme.l(gapComposerH).f48415c);
                ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierI3);
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
                Updater.c(gapComposerH, columnMeasurePolicyA3, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card3_sub_description), n00.f(gapComposerH, modifierC3, function5, "ProductReadCard", "careservicesFormRecap_productDetailsDescription_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                str2 = str;
                TextKt.c(str2, ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ProductReadCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "careservicesFormRecap_productDetailsContent_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, i3 & 14, 0, 131064);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card3_sub_uploaded_pics), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ProductReadCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5), "careservicesFormRecap_productDetailsPicturesTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                z = true;
                gapComposerH.Z(true);
                list2 = list;
                List list4 = list2;
                if (list4 == null || list4.isEmpty()) {
                    z2 = false;
                    gapComposerH.L(-316042270);
                    gapComposerH.Z(false);
                } else {
                    FlowLayoutKt.a(o60.c(gapComposerH, -316687101, "ProductReadCard", 1.0f), null, null, null, 3, 0, ComposableLambdaKt.b(505894244, new o4(list2, 1), gapComposerH), gapComposerH, 1597446, 46);
                    z2 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z2);
            }
            gapComposerH.Z(z);
        } else {
            list2 = list;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rs(str2, list2, i2, 7);
        }
    }
}
