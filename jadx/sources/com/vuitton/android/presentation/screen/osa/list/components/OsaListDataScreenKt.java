package com.vuitton.android.presentation.screen.osa.list.components;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.lazy.LazyDslKt;
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
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.LeftToRightLayoutKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.components.LVExpandableListAnimatedIconKt;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.osa.list.models.OsaListViewState;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.cj;
import defpackage.d1;
import defpackage.fj0;
import defpackage.hb;
import defpackage.n00;
import defpackage.nj0;
import defpackage.o60;
import defpackage.p10;
import defpackage.tr;
import defpackage.u00;
import defpackage.u1;
import defpackage.u50;
import defpackage.wh;
import java.time.format.FormatStyle;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isExpanded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaListDataScreenKt {
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v39 */
    public static final void a(Modifier modifier, final InAppDispatch inAppDispatch, final OsaItemUiModel osaItemUiModel, final boolean z, final boolean z2, final boolean z3, final Function0 function0, final Function2 function2, final Function1 function1, final Function1 function3, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        Modifier modifier2;
        ?? r6;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "AppointmentCard");
        }
        GapComposer gapComposerH = composer.h(1728318922);
        Applier applier = gapComposerH.f7976a;
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        }
        int i6 = i4 | (gapComposerH.y(inAppDispatch) ? 32 : 16) | (gapComposerH.y(osaItemUiModel) ? 256 : 128);
        if ((i2 & 24576) == 0) {
            i6 |= gapComposerH.b(z2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i6 |= gapComposerH.b(z3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i6 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i6 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i6 |= gapComposerH.y(function1) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i6 |= gapComposerH.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        Modifier modifier3 = modifierE;
        if (gapComposerH.p(i6 & 1, (306783379 & i6) != 306783378)) {
            Modifier dTFunctionNameModifier = i5 != 0 ? new DTFunctionNameModifier("AppointmentCard") : modifier3;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object[] objArr = new Object[0];
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new p10(z, 1);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerH, 0);
            String strF = ((Boolean) mutableState.getF10755b()).booleanValue() ? cj.f(gapComposerH, 281650879, R.string.alt_expanded, gapComposerH, false) : cj.f(gapComposerH, 281713406, R.string.alt_collapsed, gapComposerH, false);
            Modifier modifier4 = dTFunctionNameModifier;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.m(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            String strF2 = ((Boolean) mutableState.getF10755b()).booleanValue() ? cj.f(gapComposerH, 282081810, R.string.alt_osa_close_appointment_details, gapComposerH, false) : cj.f(gapComposerH, 282188915, R.string.alt_osa_open_appointment_details, gapComposerH, false);
            boolean zK = gapComposerH.K(mutableState);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new u00(15, mutableState);
                gapComposerH.q(objX2);
            }
            Modifier modifierC = ModifierExtKt.c(modifierB, false, null, strF2, (Function0) objX2, 11);
            boolean zK2 = gapComposerH.K(strF);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$1) {
                r6 = 0;
                objX3 = new nj0(strF, 0);
                gapComposerH.q(objX3);
            } else {
                r6 = 0;
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierC, r6, (Function1) objX3);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, r6);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
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
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function9);
            Modifier modifierD = tr.d("AppointmentCard", 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD);
            if (applier == 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC3, function9);
            Modifier modifierM = PaddingKt.m(cj.b("AppointmentCard", RowScopeInstance.f5040a, 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function6);
            cj.t(iHashCode3, gapComposerH, function7, gapComposerH, function8);
            TextKt.c(StringKtExtKt.d(DateTimeUtils.h(inAppDispatch, osaItemUiModel.f60928f, FormatStyle.FULL)), ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC4, function9, "AppointmentCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentDetailTime_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131068);
            TextKt.c(StringResources_androidKt.c(gapComposerH, osaItemUiModel.f60925b == AppointmentTypeUiModel.DISTANT ? R.string.osa_appointment_form_virtual_cta : R.string.osa_appointment_form_instore_cta), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("AppointmentCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 5), "osa_appointmentType_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131068);
            LVExpandableListAnimatedIconKt.a(PaddingKt.m(o60.f(gapComposerH, true, "AppointmentCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0, ((Boolean) mutableState.getF10755b()).booleanValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 0, 26);
            gapComposerH.Z(true);
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((Boolean) mutableState.getF10755b()).booleanValue(), null, null, null, null, ComposableLambdaKt.b(1660633532, new Function3() { // from class: oj0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    String str;
                    Function0 function10;
                    OsaItemUiModel osaItemUiModel2;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2;
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    ((AnimatedVisibilityScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AppointmentCard$lambda$5$1");
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal2 = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$2, horizontal2, composer2, 0);
                    int iHashCode4 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer2, dTFunctionNameModifier2);
                    ComposeUiNode.b0.getClass();
                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function11);
                    } else {
                        composer2.o();
                    }
                    Function2 function12 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, columnMeasurePolicyA3, function12);
                    Function2 function13 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function13);
                    Integer numValueOf2 = Integer.valueOf(iHashCode4);
                    Function2 function14 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf2, function14);
                    Function1 function15 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function15);
                    Function2 function16 = ComposeUiNode.Companion.d;
                    Updater.c(composer2, modifierC5, function16);
                    Modifier modifierA = AspectRatioKt.a(new DTFunctionNameModifier("AppointmentCard$lambda$5$1"), 1.0f, true);
                    OsaItemUiModel osaItemUiModel3 = osaItemUiModel;
                    StoreInformationItemUiModel storeInformationItemUiModel = osaItemUiModel3.f60929h;
                    if (storeInformationItemUiModel == null || (str = storeInformationItemUiModel.f60942f) == null) {
                        str = null;
                    }
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, Integer.valueOf(R.drawable.placeholder_transparent), R.drawable.placeholder_transparent, false, null, null, null, composer2, 390, 1992);
                    Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("AppointmentCard$lambda$5$1"), LVAppDesignKitTheme.l(composer2).f48416e);
                    ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$2, horizontal2, composer2, 0);
                    int iHashCode5 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC6 = ComposedModifierKt.c(composer2, modifierI);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        function10 = function11;
                        composer2.C(function10);
                    } else {
                        function10 = function11;
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA4, function12);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function13);
                    cj.s(iHashCode5, composer2, function14, composer2, function15);
                    Updater.c(composer2, modifierC6, function16);
                    String str2 = storeInformationItemUiModel != null ? storeInformationItemUiModel.f60939b : null;
                    if (str2 == null) {
                        str2 = "";
                    }
                    Function0 function17 = function10;
                    TextKt.c(str2, n00.g("AppointmentCard$lambda$5$1", "osa_appointmentStoreName_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48426f, composer2, 0, 0, 131068);
                    String string = context.getString(R.string.osa_store_address_format);
                    string.getClass();
                    String str3 = storeInformationItemUiModel != null ? storeInformationItemUiModel.f60940c : null;
                    if (str3 == null) {
                        str3 = "";
                    }
                    String str4 = storeInformationItemUiModel != null ? storeInformationItemUiModel.d : null;
                    if (str4 == null) {
                        str4 = "";
                    }
                    TextKt.c(String.format(string, Arrays.copyOf(new Object[]{str3, str4}, 2)), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("AppointmentCard$lambda$5$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentStoreAddress_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48427h, composer2, 0, 0, 131068);
                    Composer composer3 = composer2;
                    LeftToRightLayoutKt.a(ComposableLambdaKt.b(-227788730, new w20(osaItemUiModel3, 25), composer3), composer3, 6);
                    if (z2) {
                        composer3.L(-1908514857);
                        OsaReasonUiModel osaReasonUiModel = osaItemUiModel3.f60930i;
                        String str5 = osaReasonUiModel != null ? osaReasonUiModel.f60966b : null;
                        if (str5 == null) {
                            composer3.L(965581578);
                            composer3.F();
                            osaItemUiModel2 = osaItemUiModel3;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(965581579, composer3, "AppointmentCard$lambda$5$1");
                            ColumnMeasurePolicy columnMeasurePolicyA5 = ColumnKt.a(arrangement$Top$2, horizontal2, composer3, 0);
                            int iHashCode6 = Long.hashCode(composer3.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                            Modifier modifierC7 = ComposedModifierKt.c(composer3, dTFunctionNameModifierJ);
                            if (composer3.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer3.B();
                            if (composer3.getS()) {
                                composer3.C(function17);
                            } else {
                                composer3.o();
                            }
                            Updater.c(composer3, columnMeasurePolicyA5, function12);
                            Updater.c(composer3, persistentCompositionLocalMapN3, function13);
                            cj.s(iHashCode6, composer3, function14, composer3, function15);
                            Updater.c(composer3, modifierC7, function16);
                            osaItemUiModel2 = osaItemUiModel3;
                            TextKt.c(StringResources_androidKt.c(composer3, R.string.osa_mylv_appointment_card_reason), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("AppointmentCard$lambda$5$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentReasonTitle_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48428i, composer3, 0, 0, 131068);
                            TextKt.c(str5, n00.g("AppointmentCard$lambda$5$1", "osa_appointmentReasonType_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).l, composer3, 0, 0, 131068);
                            composer3 = composer3;
                            composer3.r();
                            composer3.F();
                        }
                        composer3.F();
                    } else {
                        osaItemUiModel2 = osaItemUiModel3;
                        composer3.L(966624946);
                        composer3.F();
                    }
                    if (z) {
                        composer3.L(966730594);
                        Composer composer4 = composer3;
                        LVLinkKt.a(ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("AppointmentCard$lambda$5$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentPreparation_button"), StringResources_androidKt.c(composer3, R.string.osa_mylv_appointment_card_prepare_cta), false, null, false, function0, composer4, 0, 28);
                        ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer4).f48446a;
                        String strC = StringResources_androidKt.c(composer4, R.string.dr_cta_add_calendar);
                        Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(tr.d("AppointmentCard$lambda$5$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentAddCalendar_button");
                        Function2 function18 = function2;
                        boolean zK3 = composer4.K(function18);
                        InAppDispatch inAppDispatch2 = inAppDispatch;
                        final OsaItemUiModel osaItemUiModel4 = osaItemUiModel2;
                        boolean zY = zK3 | composer4.y(inAppDispatch2) | composer4.y(osaItemUiModel4);
                        Object objX4 = composer4.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (zY || objX4 == composer$Companion$Empty$3) {
                            objX4 = new of0(function18, inAppDispatch2, osaItemUiModel4, 12);
                            composer4.q(objX4);
                        }
                        LVButtonKt.b(0, 504, composer4, modifierE2, configurationButton, null, null, strC, (Function0) objX4, false, false, false);
                        if (z3) {
                            composer4.L(967807503);
                            ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer4).f48449e;
                            String strC2 = StringResources_androidKt.c(composer4, R.string.osa_cta_modify);
                            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(tr.d("AppointmentCard$lambda$5$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentModify_button");
                            final Function1 function19 = function3;
                            boolean zK4 = composer4.K(function19) | composer4.y(osaItemUiModel4);
                            Object objX5 = composer4.x();
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            if (zK4 || objX5 == composer$Companion$Empty$2) {
                                final int i7 = 0;
                                objX5 = new Function0() { // from class: mj0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        switch (i7) {
                                            case 0:
                                                function19.invoke(osaItemUiModel4);
                                                break;
                                            default:
                                                function19.invoke(osaItemUiModel4);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer4.q(objX5);
                            }
                            LVButtonKt.b(0, 504, composer4, modifierE3, configurationButton2, null, null, strC2, (Function0) objX5, false, false, false);
                            composer4.F();
                        } else {
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            composer4.L(968389714);
                            composer4.F();
                        }
                        String strC3 = StringResources_androidKt.c(composer4, R.string.osa_cta_cancel2);
                        final int i8 = 1;
                        Modifier modifierE4 = ModifierExtKt.e(PaddingKt.k(ColumnScopeInstance.f4944a.b(new DTFunctionNameModifier("AppointmentCard$lambda$5$1"), Alignment.Companion.o), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48416e, 1), "osa_appointmentCancel_button");
                        final Function1 function20 = function1;
                        boolean zK5 = composer4.K(function20) | composer4.y(osaItemUiModel4);
                        Object objX6 = composer4.x();
                        if (zK5 || objX6 == composer$Companion$Empty$2) {
                            objX6 = new Function0() { // from class: mj0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i8) {
                                        case 0:
                                            function20.invoke(osaItemUiModel4);
                                            break;
                                        default:
                                            function20.invoke(osaItemUiModel4);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer4.q(objX6);
                        }
                        LVLinkKt.a(modifierE4, strC3, false, null, false, (Function0) objX6, composer4, 0, 28);
                        composer3 = composer4;
                        composer3.F();
                    } else {
                        composer3.L(968929362);
                        composer3.F();
                    }
                    composer3.r();
                    composer3.r();
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 1572870, 30);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            modifier2 = modifier4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u50(modifier2, inAppDispatch, osaItemUiModel, z, z2, z3, function0, function2, function1, function3, i2, i3);
        }
    }

    public static final void b(int i2, Composer composer, int i3) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-4863763);
        int i4 = i3 | (gapComposerH.d(i2) ? 4 : 2);
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("HistoryAppointmentsHeader", 1.0f);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new fj0(10);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierD, true, (Function1) objX);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.osa_home_history), n00.g("HistoryAppointmentsHeader", "osa_historyAppointment_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131068);
            if (i2 > 0) {
                gapComposerH.L(1117831497);
                TextKt.c(PluralStringResourceHelperKt.a(R.plurals.osa_history_header, i2, new Object[]{Integer.valueOf(i2)}, gapComposerH), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("HistoryAppointmentsHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_historyAppointmentNumber_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                gapComposerH.L(1118396627);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.osa_no_history_appointment_subtitle), PaddingKt.m(new DTFunctionNameModifier("HistoryAppointmentsHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wh(i2, i3, 5);
        }
    }

    public static final void c(int i2, Composer composer, int i3) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(910802054);
        int i4 = i3 | (gapComposerH.d(i2) ? 4 : 2);
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("OnGoingAppointmentsHeader", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new fj0(9);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierM, true, (Function1) objX);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(PluralStringResourceHelperKt.b(R.plurals.osa_mylv_ongoing_title, gapComposerH, i2), n00.g("OnGoingAppointmentsHeader", "osa_ongoingAppointment_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131068);
            if (i2 > 0) {
                gapComposerH.L(-1913992144);
                TextKt.c(PluralStringResourceHelperKt.a(R.plurals.osa_ongoing_header, i2, new Object[]{Integer.valueOf(i2)}, gapComposerH), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("OnGoingAppointmentsHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_ongoingAppointmentNumber_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                gapComposerH.L(-1913427014);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.osa_no_ongoing_appointment_subtitle), PaddingKt.m(new DTFunctionNameModifier("OnGoingAppointmentsHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wh(i2, i3, 6);
        }
    }

    public static final void d(Modifier modifier, OsaListViewState osaListViewState, Function0 function0, Function2 function2, Function1 function1, Function1 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "OsaListDataScreen");
        }
        Modifier modifier2 = modifierE;
        modifier2.getClass();
        osaListViewState.getClass();
        function0.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1901769926);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(osaListViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int size = osaListViewState.f60908e.size() + osaListViewState.f60909f.size();
            Modifier modifierK = PaddingKt.k(modifier2, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            boolean zD = gapComposerH.d(size);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zD || objX == composer$Companion$Empty$1) {
                objX = new hb(size, 21);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierK, false, (Function1) objX);
            boolean zY = gapComposerH.y(osaListViewState) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048) | ((57344 & i3) == 16384) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                d1 d1Var = new d1(12, osaListViewState, function1, function3, function2, function0);
                gapComposerH.q(d1Var);
                objX2 = d1Var;
            }
            gapComposer = gapComposerH;
            LazyDslKt.a(modifierB, null, null, null, null, null, false, null, (Function1) objX2, gapComposer, 0, 510);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifier2, osaListViewState, function0, function2, function1, function3, i2, 20);
        }
    }
}
