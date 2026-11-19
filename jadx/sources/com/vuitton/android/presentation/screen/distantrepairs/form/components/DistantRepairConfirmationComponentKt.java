package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step1StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step3StateUIModel;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.cj;
import defpackage.d3;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import defpackage.zt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairConfirmationComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57218a;

        static {
            int[] iArr = new int[DistantRepairContactMethod.values().length];
            try {
                iArr[DistantRepairContactMethod.VIDEO_CALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DistantRepairContactMethod.PHONE_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DistantRepairContactMethod.EMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57218a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x051d  */
    /* JADX WARN: Code duplicated, block: B:101:0x05b6  */
    /* JADX WARN: Code duplicated, block: B:104:0x0604  */
    /* JADX WARN: Code duplicated, block: B:106:0x060b  */
    /* JADX WARN: Code duplicated, block: B:108:0x0613  */
    /* JADX WARN: Code duplicated, block: B:111:0x0637  */
    /* JADX WARN: Code duplicated, block: B:113:0x0674  */
    /* JADX WARN: Code duplicated, block: B:115:0x067b  */
    /* JADX WARN: Code duplicated, block: B:116:0x067f  */
    /* JADX WARN: Code duplicated, block: B:118:0x071b  */
    /* JADX WARN: Code duplicated, block: B:120:0x071f  */
    /* JADX WARN: Code duplicated, block: B:122:0x075a  */
    /* JADX WARN: Code duplicated, block: B:124:0x075e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0762  */
    /* JADX WARN: Code duplicated, block: B:128:0x0766  */
    /* JADX WARN: Code duplicated, block: B:50:0x013c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0145  */
    /* JADX WARN: Code duplicated, block: B:53:0x0149  */
    /* JADX WARN: Code duplicated, block: B:56:0x0199  */
    /* JADX WARN: Code duplicated, block: B:58:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:59:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:62:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:64:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:65:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:68:0x0212  */
    /* JADX WARN: Code duplicated, block: B:69:0x0215  */
    /* JADX WARN: Code duplicated, block: B:72:0x028c  */
    /* JADX WARN: Code duplicated, block: B:73:0x028f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0326  */
    /* JADX WARN: Code duplicated, block: B:77:0x0329  */
    /* JADX WARN: Code duplicated, block: B:80:0x032e  */
    /* JADX WARN: Code duplicated, block: B:83:0x0366  */
    /* JADX WARN: Code duplicated, block: B:85:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:92:0x0468  */
    /* JADX WARN: Code duplicated, block: B:95:0x0483  */
    /* JADX WARN: Code duplicated, block: B:97:0x0504  */
    public static final void a(DistantRepairFormViewState distantRepairFormViewState, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        DistantRepairFormViewState distantRepairFormViewState2;
        String strF;
        String strF2;
        String str;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function3;
        Function2 function4;
        Function2 function5;
        Function2 function6;
        Function1 function7;
        Function2 function8;
        String str2;
        Arrangement$Top$1 arrangement$Top$1;
        BiasAlignment.Horizontal horizontal;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        ColumnMeasurePolicy columnMeasurePolicyA2;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        String str3;
        String str4;
        Profile profile;
        String str5;
        boolean z;
        String str6;
        Step3StateUIModel step3StateUIModel;
        String str7;
        Step3StateUIModel step3StateUIModel2;
        Step3StateUIModel step3StateUIModel3;
        float f2;
        int i3;
        ColumnMeasurePolicy columnMeasurePolicyA3;
        int iHashCode4;
        PersistentCompositionLocalMap persistentCompositionLocalMapU4;
        Modifier modifierC4;
        Function0 function9;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode5;
        PersistentCompositionLocalMap persistentCompositionLocalMapU5;
        Modifier modifierC5;
        GapComposer gapComposerH = composer.h(-49065073);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.y(distantRepairFormViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Step1StateUIModel step1StateUIModel = distantRepairFormViewState.f57381c;
            Step2StateUIModel step2StateUIModel = distantRepairFormViewState.d;
            Step1StateUIModel step1StateUIModel2 = distantRepairFormViewState.f57381c;
            Step3StateUIModel step3StateUIModel4 = distantRepairFormViewState.f57382e;
            DistantRepairContactMethod distantRepairContactMethod = step1StateUIModel.f57401a;
            int i5 = distantRepairContactMethod == null ? -1 : WhenMappings.f57218a[distantRepairContactMethod.ordinal()];
            if (i5 == 1) {
                strF = cj.f(gapComposerH, 93114852, R.string.dr_title_video_call, gapComposerH, false);
            } else if (i5 == 2) {
                strF = cj.f(gapComposerH, 93118142, R.string.dr_title_call, gapComposerH, false);
            } else if (i5 != 3) {
                gapComposerH.L(-1408151474);
                gapComposerH.Z(false);
                strF = null;
            } else {
                strF = cj.f(gapComposerH, 93121086, R.string.dr_title_mail, gapComposerH, false);
            }
            DistantRepairContactMethod distantRepairContactMethod2 = step1StateUIModel2.f57401a;
            int i6 = distantRepairContactMethod2 == null ? -1 : WhenMappings.f57218a[distantRepairContactMethod2.ordinal()];
            if (i6 == 1) {
                gapComposerH.L(93128288);
                gapComposerH.Z(false);
                strF2 = step1StateUIModel2.f57403c;
            } else if (i6 != 2) {
                if (i6 != 3) {
                    gapComposerH.L(-1407765586);
                    gapComposerH.Z(false);
                    str = null;
                } else {
                    strF2 = cj.f(gapComposerH, 93133348, R.string.dr_card1_email_done, gapComposerH, false);
                }
                Modifier modifierB = BackgroundKt.b(ClipKt.a(SizeKt.d(PaddingKt.i(new DTFunctionNameModifier("ConfirmationCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e), 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                function3 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                function4 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function4);
                function5 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function6 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function6);
                function7 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function7);
                function8 = ComposeUiNode.Companion.d;
                str2 = strF;
                Modifier modifierK = PaddingKt.k(tr.e(gapComposerH, modifierC, function8, "ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
                arrangement$Top$1 = Arrangement.f4920c;
                horizontal = Alignment.Companion.n;
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                Modifier modifierK2 = PaddingKt.k(tr.e(gapComposerH, modifierC2, function8, "ConfirmationCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode3 = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
                Modifier modifierE = ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC3, function8, "ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "careservicesConfirmation_repairTypeTitle_text");
                if (str2 == null) {
                    str3 = "";
                } else {
                    str3 = str2;
                }
                TextKt.c(str3, modifierE, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
                Modifier modifierG = n00.g("ConfirmationCard", "careservicesConfirmation_repairTypeDescription_text");
                if (str == null) {
                    str4 = "";
                } else {
                    str4 = str;
                }
                TextKt.c(str4, modifierG, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_contact_info), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "careservicesConfirmation_contactInformationTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                Modifier modifierG2 = n00.g("ConfirmationCard", "careservicesConfirmation_contactInformationEmail_text");
                profile = step2StateUIModel.f57404a;
                if (profile != null) {
                    str5 = profile.g;
                } else {
                    str5 = null;
                }
                TextKt.c(str5 != null ? str5 : "", modifierG2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                if (step2StateUIModel.f57405b != null) {
                    TextKt.c(step2StateUIModel.f57405b.toString(), n00.d(gapComposerH, -1427894512, "ConfirmationCard", "careservicesConfirmation_contactInformationPhoneNumber_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                    gapComposerH = gapComposerH;
                    z = false;
                    gapComposerH.Z(false);
                } else {
                    z = false;
                    gapComposerH.L(-1427425947);
                    gapComposerH.Z(false);
                }
                if (step3StateUIModel4.f57411c.length() == 0 || !step3StateUIModel4.f57410b.isEmpty()) {
                    boolean z2 = z;
                    str6 = "careservicesConfirmation_repairDescrption_text";
                    step3StateUIModel = step3StateUIModel4;
                    str7 = "careservicesConfirmation_repairDescrptionTitle_text";
                    gapComposerH.L(-1426116507);
                    gapComposerH.Z(z2);
                } else {
                    GapComposer gapComposer = gapComposerH;
                    str6 = "careservicesConfirmation_repairDescrption_text";
                    str7 = "careservicesConfirmation_repairDescrptionTitle_text";
                    step3StateUIModel = step3StateUIModel4;
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_card3_title), ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, -1427186100, "ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5), "careservicesConfirmation_repairDescrptionTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer, 0, 0, 131064);
                    TextKt.c(StringResources_androidKt.c(gapComposer, R.string.dr_no_info), n00.g("ConfirmationCard", str6), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).m, gapComposer, 0, 0, 131064);
                    gapComposerH = gapComposer;
                    gapComposerH.Z(false);
                }
                step3StateUIModel2 = step3StateUIModel;
                if (step3StateUIModel2.f57411c.length() > 0) {
                    GapComposer gapComposer2 = gapComposerH;
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_description_title), ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, -1426000412, "ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5), str7), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer2, 0, 0, 131064);
                    Modifier modifierG3 = n00.g("ConfirmationCard", str6);
                    step3StateUIModel3 = step3StateUIModel2;
                    TextKt.c(step3StateUIModel3.f57411c, modifierG3, LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).m, gapComposer2, 0, 0, 131064);
                    gapComposerH = gapComposer2;
                    gapComposerH.Z(false);
                } else {
                    step3StateUIModel3 = step3StateUIModel2;
                    gapComposerH.L(-1424923131);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                if (step3StateUIModel3.f57410b.isEmpty()) {
                    f2 = 1.0f;
                    i3 = 2;
                    distantRepairFormViewState2 = distantRepairFormViewState;
                    gapComposerH.L(-683141617);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-684664802);
                    GapComposer gapComposer3 = gapComposerH;
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_uploaded_pic_title), ModifierExtKt.e(PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), "careservicesConfirmation_repairImageTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer3, 0, 0, 131064);
                    f2 = 1.0f;
                    i3 = 2;
                    distantRepairFormViewState2 = distantRepairFormViewState;
                    FlowLayoutKt.a(PaddingKt.k(tr.d("ConfirmationCard", 1.0f), LVAppDesignKitTheme.l(gapComposer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, null, null, 3, 0, ComposableLambdaKt.b(862422419, new d3(distantRepairFormViewState2, 14), gapComposer3), gapComposer3, 1597440, 46);
                    gapComposerH = gapComposer3;
                    gapComposerH.Z(false);
                }
                Modifier modifierM = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("ConfirmationCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, i3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode4 = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU4 = gapComposerH.U();
                modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    function9 = function3;
                    gapComposerH.C(function9);
                } else {
                    function9 = function3;
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA3, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function5);
                cj.t(iHashCode4, gapComposerH, function6, gapComposerH, function7);
                Updater.c(gapComposerH, modifierC4, function8);
                if (step1StateUIModel2.f57401a != DistantRepairContactMethod.EMAIL) {
                    gapComposerH.L(58348549);
                    BiasAlignment.Vertical vertical = Alignment.Companion.l;
                    Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                    iHashCode5 = Long.hashCode(gapComposerH.getT());
                    persistentCompositionLocalMapU5 = gapComposerH.U();
                    modifierC5 = ComposedModifierKt.c(gapComposerH, modifierM2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function9);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU5, function5);
                    cj.t(iHashCode5, gapComposerH, function6, gapComposerH, function7);
                    Updater.c(gapComposerH, modifierC5, function8);
                    GapComposer gapComposer4 = gapComposerH;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("ConfirmationCard"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposer4, 56, 8);
                    LVLinkKt.a(null, StringResources_androidKt.c(gapComposer4, R.string.dr_cta_prepare_appointment), false, null, false, function0, gapComposer4, (i4 << 12) & ImageMetadata.JPEG_GPS_COORDINATES, 29);
                    gapComposerH = gapComposer4;
                    gapComposerH.Z(true);
                    LVButtonKt.b((i4 << 21) & 1879048192, 504, gapComposerH, PaddingKt.m(tr.d("ConfirmationCard", f2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_add_calendar), function1, false, false, false);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(59692988);
                    gapComposerH.Z(false);
                }
                LVButtonKt.b((i4 << 18) & 1879048192, 504, gapComposerH, ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("ConfirmationCard"), f2), "careservicesConfirmation_goToCareServices_button"), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_open_care_service), function2, false, false, false);
                pq0.x(gapComposerH, true, true, true);
            } else {
                gapComposerH.L(93131328);
                gapComposerH.Z(false);
                strF2 = step1StateUIModel2.f57403c;
            }
            str = strF2;
            Modifier modifierB2 = BackgroundKt.b(ClipKt.a(SizeKt.d(PaddingKt.i(new DTFunctionNameModifier("ConfirmationCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e), 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            function3 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function4);
            function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function6);
            function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            function8 = ComposeUiNode.Companion.d;
            str2 = strF;
            Modifier modifierK3 = PaddingKt.k(tr.e(gapComposerH, modifierC, function8, "ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
            arrangement$Top$1 = Arrangement.f4920c;
            horizontal = Alignment.Companion.n;
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK3);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Modifier modifierK4 = PaddingKt.k(tr.e(gapComposerH, modifierC2, function8, "ConfirmationCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode3 = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU3 = gapComposerH.U();
            modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
            cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC3, function8, "ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "careservicesConfirmation_repairTypeTitle_text");
            if (str2 == null) {
                str3 = "";
            } else {
                str3 = str2;
            }
            TextKt.c(str3, modifierE2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            Modifier modifierG4 = n00.g("ConfirmationCard", "careservicesConfirmation_repairTypeDescription_text");
            if (str == null) {
                str4 = "";
            } else {
                str4 = str;
            }
            TextKt.c(str4, modifierG4, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_contact_info), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "careservicesConfirmation_contactInformationTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            Modifier modifierG5 = n00.g("ConfirmationCard", "careservicesConfirmation_contactInformationEmail_text");
            profile = step2StateUIModel.f57404a;
            if (profile != null) {
                str5 = profile.g;
            } else {
                str5 = null;
            }
            if (str5 != null) {
            }
            TextKt.c(str5 != null ? str5 : "", modifierG5, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            if (step2StateUIModel.f57405b != null) {
                TextKt.c(step2StateUIModel.f57405b.toString(), n00.d(gapComposerH, -1427894512, "ConfirmationCard", "careservicesConfirmation_contactInformationPhoneNumber_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                z = false;
                gapComposerH.Z(false);
            } else {
                z = false;
                gapComposerH.L(-1427425947);
                gapComposerH.Z(false);
            }
            if (step3StateUIModel4.f57411c.length() == 0) {
                boolean z3 = z;
                str6 = "careservicesConfirmation_repairDescrption_text";
                step3StateUIModel = step3StateUIModel4;
                str7 = "careservicesConfirmation_repairDescrptionTitle_text";
                gapComposerH.L(-1426116507);
                gapComposerH.Z(z3);
            } else {
                boolean z4 = z;
                str6 = "careservicesConfirmation_repairDescrption_text";
                step3StateUIModel = step3StateUIModel4;
                str7 = "careservicesConfirmation_repairDescrptionTitle_text";
                gapComposerH.L(-1426116507);
                gapComposerH.Z(z4);
            }
            step3StateUIModel2 = step3StateUIModel;
            if (step3StateUIModel2.f57411c.length() > 0) {
                GapComposer gapComposer5 = gapComposerH;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_description_title), ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, -1426000412, "ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5), str7), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer5, 0, 0, 131064);
                Modifier modifierG6 = n00.g("ConfirmationCard", str6);
                step3StateUIModel3 = step3StateUIModel2;
                TextKt.c(step3StateUIModel3.f57411c, modifierG6, LVAppDesignKitTheme.c(gapComposer5).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer5).m, gapComposer5, 0, 0, 131064);
                gapComposerH = gapComposer5;
                gapComposerH.Z(false);
            } else {
                step3StateUIModel3 = step3StateUIModel2;
                gapComposerH.L(-1424923131);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            if (step3StateUIModel3.f57410b.isEmpty()) {
                gapComposerH.L(-684664802);
                GapComposer gapComposer6 = gapComposerH;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_uploaded_pic_title), ModifierExtKt.e(PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), "careservicesConfirmation_repairImageTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer6, 0, 0, 131064);
                f2 = 1.0f;
                i3 = 2;
                distantRepairFormViewState2 = distantRepairFormViewState;
                FlowLayoutKt.a(PaddingKt.k(tr.d("ConfirmationCard", 1.0f), LVAppDesignKitTheme.l(gapComposer6).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, null, null, 3, 0, ComposableLambdaKt.b(862422419, new d3(distantRepairFormViewState2, 14), gapComposer6), gapComposer6, 1597440, 46);
                gapComposerH = gapComposer6;
                gapComposerH.Z(false);
            } else {
                f2 = 1.0f;
                i3 = 2;
                distantRepairFormViewState2 = distantRepairFormViewState;
                gapComposerH.L(-683141617);
                gapComposerH.Z(false);
            }
            Modifier modifierM3 = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("ConfirmationCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, i3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode4 = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU4 = gapComposerH.U();
            modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM3);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function9 = function3;
                gapComposerH.C(function9);
            } else {
                function9 = function3;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA3, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function5);
            cj.t(iHashCode4, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC4, function8);
            if (step1StateUIModel2.f57401a != DistantRepairContactMethod.EMAIL) {
                gapComposerH.L(58348549);
                BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
                Modifier modifierM4 = PaddingKt.m(new DTFunctionNameModifier("ConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7);
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical2, gapComposerH, 48);
                iHashCode5 = Long.hashCode(gapComposerH.getT());
                persistentCompositionLocalMapU5 = gapComposerH.U();
                modifierC5 = ComposedModifierKt.c(gapComposerH, modifierM4);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function9);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU5, function5);
                cj.t(iHashCode5, gapComposerH, function6, gapComposerH, function7);
                Updater.c(gapComposerH, modifierC5, function8);
                GapComposer gapComposer7 = gapComposerH;
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("ConfirmationCard"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposer7, 56, 8);
                LVLinkKt.a(null, StringResources_androidKt.c(gapComposer7, R.string.dr_cta_prepare_appointment), false, null, false, function0, gapComposer7, (i4 << 12) & ImageMetadata.JPEG_GPS_COORDINATES, 29);
                gapComposerH = gapComposer7;
                gapComposerH.Z(true);
                LVButtonKt.b((i4 << 21) & 1879048192, 504, gapComposerH, PaddingKt.m(tr.d("ConfirmationCard", f2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_add_calendar), function1, false, false, false);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(59692988);
                gapComposerH.Z(false);
            }
            LVButtonKt.b((i4 << 18) & 1879048192, 504, gapComposerH, ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("ConfirmationCard"), f2), "careservicesConfirmation_goToCareServices_button"), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_open_care_service), function2, false, false, false);
            pq0.x(gapComposerH, true, true, true);
        } else {
            distantRepairFormViewState2 = distantRepairFormViewState;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zt(distantRepairFormViewState2, function0, function1, function2, i2, 0);
        }
    }

    public static final void b(DistantRepairFormViewState distantRepairFormViewState, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        distantRepairFormViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(417349156);
        int i3 = i2 | (gapComposerH.y(distantRepairFormViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("DistantRepairConfirmationComponent"), ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_confimation_title), ModifierExtKt.e(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "careservicesConfirmation_requestSubmitted_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            a(distantRepairFormViewState, function0, function1, function2, gapComposerH, i3 & 8190);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zt(distantRepairFormViewState, function0, function1, function2, i2, 1);
        }
    }
}
