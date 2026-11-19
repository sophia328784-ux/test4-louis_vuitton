package com.vuitton.android.presentation.screen.account.myinformation.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.profile.models.PhoneNumberUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoLocaleFlags;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import defpackage.a;
import defpackage.b3;
import defpackage.ba0;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.om;
import defpackage.pq0;
import defpackage.py;
import defpackage.sw;
import defpackage.tr;
import defpackage.ud0;
import defpackage.w3;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.internal.util.Strings;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MyInformationScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52598a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.CIVILITY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_BLOC.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[FormSectionTypeUiModel.VAT_CODE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[FormSectionTypeUiModel.BRANCH_ID.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f52598a = iArr;
        }
    }

    public static final void a(int i2, int i3, Composer composer, String str, String str2, String str3, Function0 function0) {
        int i4;
        Modifier dTFunctionNameModifier;
        String str4;
        Modifier dTFunctionNameModifier2;
        GapComposer gapComposerH = composer.h(499465105);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.d(i2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.K(str3) ? 16384 : 8192;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("EditableInformationRowView", 1.0f);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d), vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("EditableInformationRowView");
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new ba0(23);
                gapComposerH.q(objX);
            }
            int i5 = i4;
            Modifier modifierK = PaddingKt.k(PaddingKt.m(RowScopeInstance.f5040a.a(SemanticsModifierKt.b(dTFunctionNameModifier3, true, (Function1) objX), 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            String strC = StringResources_androidKt.c(gapComposerH, i2);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            TextAlign.f10959b.getClass();
            int i6 = TextAlign.g;
            if (str2 == null || (dTFunctionNameModifier = n00.g("EditableInformationRowView", str2)) == null) {
                dTFunctionNameModifier = new DTFunctionNameModifier("EditableInformationRowView");
            }
            TextKt.c(strC, dTFunctionNameModifier, j2, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            gapComposerH = gapComposerH;
            if (str != null) {
                gapComposerH.L(-1128372664);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).m;
                int i7 = TextAlign.f10963h;
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                if (str3 == null || (dTFunctionNameModifier2 = n00.g("EditableInformationRowView", str3)) == null) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("EditableInformationRowView");
                }
                str4 = "EditableInformationRowView";
                TextKt.c(str, dTFunctionNameModifier2, j3, 0L, null, 0L, null, new TextAlign(i7), 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, (i5 >> 3) & 14, 0, 130040);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                str4 = "EditableInformationRowView";
                gapComposerH.L(-1128019543);
                gapComposerH.Z(false);
            }
            Modifier modifierO = SizeKt.o(PaddingKt.k(PaddingKt.m(o60.f(gapComposerH, r3, str4), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, r3), LVAppDesignKitTheme.d(gapComposerH).m);
            ComposableSingletons$MyInformationScreenKt.f52593a.getClass();
            IconButtonKt.a(function0, modifierO, false, null, null, ComposableSingletons$MyInformationScreenKt.f52595c, gapComposerH, ((i5 >> 6) & 14) | 1572864, 60);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sw(i2, i3, str, str2, str3, function0);
        }
    }

    public static final void b(String str, String str2, String str3, String str4, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier;
        Modifier dTFunctionNameModifier2;
        boolean z;
        GapComposer gapComposerH = composer.h(-1525336263);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.K(str2) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str4) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("InformationRowView");
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new ba0(24);
                gapComposerH.q(objX);
            }
            Modifier modifierJ = PaddingKt.j(SizeKt.d(SemanticsModifierKt.b(dTFunctionNameModifier3, true, (Function1) objX), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            TextAlign.f10959b.getClass();
            int i4 = TextAlign.g;
            if (str3 == null || (dTFunctionNameModifier = n00.g("InformationRowView", str3)) == null) {
                dTFunctionNameModifier = new DTFunctionNameModifier("InformationRowView");
            }
            TextKt.c(str, dTFunctionNameModifier, j2, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, i3 & 14, 0, 130040);
            gapComposer = gapComposerH;
            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("InformationRowView"), 1.0f, true));
            if (str2 == null) {
                gapComposer.L(1210302154);
                gapComposer.Z(false);
                z = true;
            } else {
                gapComposer.L(1210302155);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer).m;
                int i5 = TextAlign.f10963h;
                long j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                if (str4 == null || (dTFunctionNameModifier2 = n00.g("InformationRowView", str4)) == null) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("InformationRowView");
                }
                TextKt.c(str2, dTFunctionNameModifier2, j3, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, textStyle2, gapComposer, 0, 0, 130040);
                gapComposer = gapComposer;
                gapComposer.Z(false);
                z = true;
            }
            gapComposer.Z(z);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ud0(i2, 0, str, str2, str3, str4);
        }
    }

    public static final void c(MyInfoUiModel myInfoUiModel, MyInfoLocaleFlags myInfoLocaleFlags, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        int i3;
        boolean z;
        GapComposer gapComposerH = composer.h(1292546872);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(myInfoUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(myInfoLocaleFlags) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(BackgroundKt.b(PaddingKt.m(new DTFunctionNameModifier("LoginInformationCardView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function8, "LoginInformationCardView");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierE);
            if (applier == null) {
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
            Updater.c(gapComposerH, modifierC2, function8);
            if (StringsKt.w(myInfoUiModel.f52664i)) {
                z = false;
                gapComposerH.L(-1693757978);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1694213492);
                z = false;
                b(StringResources_androidKt.c(gapComposerH, myInfoLocaleFlags.f52644b ? R.string.profile_phone_number : R.string.profile_login_emailaddress), myInfoUiModel.f52664i, "MyInfo_email_text", "MyInfo_emailValue_text", gapComposerH, 3456);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            a(R.string.profile_login_password, (i3 & 896) | 27648, gapComposerH, new AnnotatedString(StringsKt.H(13, String.valueOf(Strings.BULLET)), null, 2, null).f10420c, "MyInfo_password_text", "MyInfo_passwordValue_text", function0);
            if (myInfoLocaleFlags.f52645c) {
                gapComposerH.L(-1693316352);
                a(R.string.mylv_loginscreen_taxid, ((i3 >> 3) & 896) | 27648, gapComposerH, myInfoUiModel.d, "MyInfo_taxID_text", "MyInfo_taxIDValue_text", function1);
                a(R.string.mylv_loginscreen_branchid, ((i3 >> 6) & 896) | 27648, gapComposerH, myInfoUiModel.f52661e, "MyInfo_branchID_text", "MyInfo_branchIDValue_text", function2);
                gapComposerH.Z(z);
            } else {
                gapComposerH.L(-1692541786);
                gapComposerH.Z(z);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(myInfoUiModel, myInfoLocaleFlags, function0, function1, function2, i2, 15, false);
        }
    }

    public static final void d(PaddingValues paddingValues, MyInformationViewState myInformationViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Composer composer, int i2) {
        int i3;
        paddingValues.getClass();
        myInformationViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerC = a.c(function3, function4, composer, -443067329);
        Applier applier = gapComposerC.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerC.K(paddingValues) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerC.K(myInformationViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerC.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerC.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerC.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerC.y(function3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerC.y(function4) ? 1048576 : 524288;
        }
        if (gapComposerC.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("MyInformationScreen");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierH = PaddingKt.h(BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(gapComposerC).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierH);
            ComposeUiNode.b0.getClass();
            Function0 function5 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function5);
            } else {
                gapComposerC.o();
            }
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerC, measurePolicyD, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerC, persistentCompositionLocalMapU, function7);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerC, numValueOf, function8);
            Function1 function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerC, function9);
            Function2 function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerC, modifierC, function10);
            Modifier modifierK = PaddingKt.k(pq0.i("MyInformationScreen", fillElement), LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerC, 0);
            int iHashCode2 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerC.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerC, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function5);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA, function6);
            Updater.c(gapComposerC, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposerC, function8, gapComposerC, function9);
            Modifier modifierM = PaddingKt.m(n00.e(gapComposerC, modifierC2, function10, "MyInformationScreen", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerC, 48);
            int iHashCode3 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerC.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerC, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function5);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, rowMeasurePolicyA, function6);
            Updater.c(gapComposerC, persistentCompositionLocalMapU3, function7);
            cj.t(iHashCode3, gapComposerC, function8, gapComposerC, function9);
            Updater.c(gapComposerC, modifierC3, function10);
            String strC = StringResources_androidKt.c(gapComposerC, R.string.mylv_myprofile_title_header);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerC).f48426f;
            long j2 = LVAppDesignKitTheme.c(gapComposerC).f48361b.f48382k;
            Modifier modifierG = n00.g("MyInformationScreen", "MyInfo_myProfile_text");
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ba0(21);
                gapComposerC.q(objX);
            }
            TextKt.c(strC, SemanticsModifierKt.b(modifierG, false, (Function1) objX), j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerC, 0, 0, 131064);
            SpacerKt.a(gapComposerC, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("MyInformationScreen"), 1.0f, true));
            boolean z = (i3 & 896) == 256;
            Object objX2 = gapComposerC.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new py(function0, 29);
                gapComposerC.q(objX2);
            }
            Modifier modifierE = ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("MyInformationScreen"), LVAppDesignKitTheme.d(gapComposerC).m), "MyInfo_editProfile_button");
            ComposableSingletons$MyInformationScreenKt.f52593a.getClass();
            IconButtonKt.a((Function0) objX2, modifierE, false, null, null, ComposableSingletons$MyInformationScreenKt.f52594b, gapComposerC, 1572864, 60);
            gapComposerC.Z(true);
            int i4 = i3 >> 3;
            e(myInformationViewState, gapComposerC, i4 & 14);
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("MyInformationScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "MyInfo_loginInformation_text");
            Object objX3 = gapComposerC.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new ba0(22);
                gapComposerC.q(objX3);
            }
            TextKt.c(StringResources_androidKt.c(gapComposerC, R.string.mylv_myprofile_myinfos_logininformation), SemanticsModifierKt.b(modifierE2, false, (Function1) objX3), LVAppDesignKitTheme.c(gapComposerC).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerC).f48426f, gapComposerC, 0, 0, 131064);
            c(myInformationViewState.f52668e, myInformationViewState.f52667c, function1, function2, function3, gapComposerC, i4 & 65408);
            LVLinkKt.a(ModifierExtKt.e(BoxScopeInstance.f4938a.g(PaddingKt.m(o60.f(gapComposerC, true, "MyInformationScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48418h, 5), Alignment.Companion.f8589i), "MyInfo_deleteMyAccount_button"), StringResources_androidKt.c(gapComposerC, R.string.delete_my_account_section), false, null, false, function4, gapComposerC, 458752 & i4, 28);
            gapComposerC = gapComposerC;
            gapComposerC.Z(true);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3(paddingValues, myInformationViewState, function0, function1, function2, function3, function4, i2, 5);
        }
    }

    public static final void e(MyInformationViewState myInformationViewState, Composer composer, int i2) {
        Pair pair;
        Context context;
        StringResourceUiModel stringResourceUiModel;
        String strA;
        StringResourceUiModel stringResourceUiModel2;
        GapComposer gapComposerH = composer.h(-1580447166);
        Applier applier = gapComposerH.f7976a;
        int i3 = (i2 & 6) == 0 ? (gapComposerH.K(myInformationViewState) ? 4 : 2) | i2 : i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierA = ClipKt.a(BackgroundKt.b(PaddingKt.m(new DTFunctionNameModifier("ProfileInformationCardView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function5, "ProfileInformationCardView");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            Context context3 = context2;
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierE);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            gapComposerH.L(-1927365503);
            FormUiModel formUiModel = myInformationViewState.f52669f;
            MyInfoUiModel myInfoUiModel = myInformationViewState.f52668e;
            for (FormFieldGenericUiModel formFieldGenericUiModel : formUiModel.f57486a) {
                FormSectionTypeUiModel d = formFieldGenericUiModel.getD();
                int[] iArr = WhenMappings.f52598a;
                switch (iArr[d.ordinal()]) {
                    case 1:
                        pair = new Pair("MyInfo_title_text", "MyInfo_titleValue_text");
                        break;
                    case 2:
                        pair = new Pair("MyInfo_firstName_text", "MyInfo_firstNameValue_text");
                        break;
                    case 3:
                        pair = new Pair("MyInfo_secondName_text", "MyInfo_LastNameValue_text");
                        break;
                    case 4:
                        pair = new Pair("MyInfo_secondFirstName_text", "MyInfo_secondFirstNameValue_text");
                        break;
                    case 5:
                        pair = new Pair("MyInfo_secondLastName_text", "MyInfo_secondLastNameValue_text");
                        break;
                    case 6:
                        pair = new Pair("MyInfo_phoneNumberTitle_text", "MyInfo_phoneNumberValue_text");
                        break;
                    case 7:
                        pair = new Pair("MyInfo_taxID_text", "MyInfo_taxIDValue_text");
                        break;
                    case 8:
                        pair = new Pair("MyInfo_branchID_text", "MyInfo_branchIDValue_text");
                        break;
                    default:
                        pair = new Pair(null, null);
                        break;
                }
                String str = (String) pair.f71705b;
                String str2 = (String) pair.f71706c;
                int i4 = iArr[formFieldGenericUiModel.getD().ordinal()];
                if (i4 == 1) {
                    context = context3;
                    gapComposerH.L(44183755);
                    FormFieldUiModel formFieldUiModelC = formUiModel.c(formFieldGenericUiModel.getD());
                    String strA2 = (formFieldUiModelC == null || (stringResourceUiModel = formFieldUiModelC.f57497f) == null) ? null : StringResourceUiModelKt.a(stringResourceUiModel, context);
                    if (strA2 == null) {
                        strA2 = "";
                    }
                    b(strA2, StringResourceUiModelKt.a(myInfoUiModel.f52658a, context), str, str2, gapComposerH, 0);
                    gapComposerH.Z(false);
                } else if (i4 != 6) {
                    gapComposerH.L(44627148);
                    FormFieldUiModel formFieldUiModelC2 = formUiModel.c(formFieldGenericUiModel.getD());
                    if (formFieldUiModelC2 == null || (stringResourceUiModel2 = formFieldUiModelC2.f57497f) == null) {
                        context = context3;
                        strA = null;
                    } else {
                        context = context3;
                        strA = StringResourceUiModelKt.a(stringResourceUiModel2, context);
                    }
                    b(strA != null ? strA : "", formUiModel.e(formFieldGenericUiModel.getD(), false), str, str2, gapComposerH, 0);
                    gapComposerH.Z(false);
                } else {
                    context = context3;
                    gapComposerH.L(43744454);
                    String strC = StringResources_androidKt.c(gapComposerH, R.string.profile_phone_number);
                    PhoneNumberUiModel phoneNumberUiModel = myInfoUiModel.f52662f;
                    b(strC, phoneNumberUiModel != null ? phoneNumberUiModel.d : null, str, str2, gapComposerH, 0);
                    gapComposerH.Z(false);
                }
                context3 = context;
            }
            pq0.x(gapComposerH, false, true, true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(myInformationViewState, i2, 5);
        }
    }
}
