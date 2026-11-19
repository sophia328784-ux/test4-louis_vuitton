package com.vuitton.android.presentation.screen.repairs.detail.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.cj;
import defpackage.ds0;
import defpackage.f9;
import defpackage.fs0;
import defpackage.k9;
import defpackage.m8;
import defpackage.n00;
import defpackage.n8;
import defpackage.o;
import defpackage.o60;
import defpackage.q8;
import defpackage.sm0;
import defpackage.tf0;
import defpackage.tr;
import defpackage.v40;
import defpackage.v8;
import defpackage.wz;
import defpackage.x8;
import java.time.format.FormatStyle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairDetailScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63856a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f63857b;

        static {
            int[] iArr = new int[CareServiceOrigin.values().length];
            try {
                iArr[CareServiceOrigin.VideoCall.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CareServiceOrigin.Call.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CareServiceOrigin.CSC_CALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CareServiceOrigin.AppForm.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CareServiceOrigin.CSC_APPFORM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f63856a = iArr;
            int[] iArr2 = new int[RepairStatusUiModel.values().length];
            try {
                iArr2[RepairStatusUiModel.PAYMENT_INITIATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[RepairStatusUiModel.AWAITING_PAYMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[RepairStatusUiModel.REQUEST_SUBMITTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[RepairStatusUiModel.PRELIMINARY_ASSESSMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[RepairStatusUiModel.CONFIRM_ADDRESS.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[RepairStatusUiModel.SHIPPING.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[RepairStatusUiModel.SHIPPING_TO_ATELIER.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            f63857b = iArr2;
        }
    }

    public static final void a(Modifier modifier, String str, Function0 function0, Composer composer, int i2) {
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BottomButtonView");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-396603588);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LVButtonKt.b(((i3 << 3) & 896) | ((i3 << 21) & 1879048192), 504, gapComposerH, PaddingKt.l(tr.d("BottomButtonView", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, str, function0, false, false, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ds0(i2, 1, modifier2, str, function0);
        }
    }

    public static final void b(Modifier modifier, final RepairsViewState repairsViewState, Function0 function0, Function1 function1, final Function1 function2, final Function1 function3, Function0 function4, Function1 function5, Composer composer, int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i3;
        boolean z;
        ConfigurationButton configurationButton;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "RepairsDetailBottomContent");
        }
        GapComposer gapComposerH = composer.h(734987206);
        int i4 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(repairsViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304);
        final int i5 = 0;
        if (gapComposerH.p(i4 & 1, (i4 & 4793491) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CareServiceDetailUiModel careServiceDetailUiModel = repairsViewState.f64018h;
            RepairStatusUiModel repairStatusUiModel = careServiceDetailUiModel != null ? careServiceDetailUiModel.d : null;
            int i6 = repairStatusUiModel == null ? -1 : WhenMappings.f63857b[repairStatusUiModel.ordinal()];
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            switch (i6) {
                case 1:
                case 2:
                    gapComposerH.L(261141435);
                    if (careServiceDetailUiModel.O) {
                        gapComposerH.L(261201668);
                        a(modifierE, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_proceed_payment), function4, gapComposerH, (i4 & 14) | ((i4 >> 12) & 896));
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(261593756);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                    break;
                case 3:
                    gapComposerH.L(261726064);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                    int iHashCode = Long.hashCode(gapComposerH.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                    Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
                    boolean z2 = repairsViewState.m.f64012e && careServiceDetailUiModel.v != null;
                    if (z2) {
                        gapComposerH.L(-1669630635);
                        ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                        String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_modify_appointment);
                        Modifier modifierE2 = ModifierExtKt.e(PaddingKt.l(tr.d("RepairsDetailBottomContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), "careservicesDetail_rescheduleAppointment_button");
                        boolean zY = ((i4 & 29360128) == 8388608) | ((i4 & 7168) == 2048) | gapComposerH.y(repairsViewState);
                        Object objX = gapComposerH.x();
                        if (zY || objX == composer$Companion$Empty$2) {
                            objX = new sm0(function5, function1, repairsViewState, 12);
                            gapComposerH.q(objX);
                        }
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        i3 = 8388608;
                        z = false;
                        LVButtonKt.b(0, 504, gapComposerH, modifierE2, configurationButton2, null, null, strC, (Function0) objX, false, false, false);
                        gapComposerH.Z(false);
                    } else {
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        i3 = 8388608;
                        z = false;
                        gapComposerH.L(-1668630637);
                        gapComposerH.Z(false);
                    }
                    if (z2) {
                        gapComposerH.L(1885839320);
                        configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48449e;
                    } else {
                        gapComposerH.L(1885840694);
                        configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                    }
                    gapComposerH.Z(z);
                    ConfigurationButton configurationButton3 = configurationButton;
                    String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_cancel_appointment);
                    Modifier modifierE3 = ModifierExtKt.e(PaddingKt.l(tr.d("RepairsDetailBottomContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48413a, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f), "careservicesDetail_cancelCareService_button");
                    boolean z3 = ((i4 & 896) == 256 ? true : z) | ((i4 & 29360128) == i3 ? true : z);
                    Object objX2 = gapComposerH.x();
                    if (z3 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new wz(function5, function0, 11);
                        gapComposerH.q(objX2);
                    }
                    LVButtonKt.b(0, 504, gapComposerH, modifierE3, configurationButton3, null, null, strC2, (Function0) objX2, false, false, false);
                    gapComposerH.Z(true);
                    gapComposerH.Z(z);
                    break;
                    break;
                case 4:
                    gapComposerH.L(264015538);
                    String strC3 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_accept_estimate);
                    boolean zY2 = gapComposerH.y(repairsViewState) | ((57344 & i4) == 16384);
                    Object objX3 = gapComposerH.x();
                    if (zY2 || objX3 == composer$Companion$Empty$2) {
                        objX3 = new Function0() { // from class: js0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i5) {
                                    case 0:
                                        function2.invoke(new CareServiceIdUiModel(repairsViewState.f64018h.f63979b));
                                        break;
                                    default:
                                        function2.invoke(repairsViewState.f64018h.x);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX3);
                    }
                    a(modifierE, strC3, (Function0) objX3, gapComposerH, i4 & 14);
                    gapComposerH.Z(false);
                    break;
                case 5:
                    gapComposerH.L(264327119);
                    a(modifierE, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_confirm_shipping_address), function4, gapComposerH, ((i4 >> 12) & 896) | (i4 & 14));
                    gapComposerH.Z(false);
                    break;
                case 6:
                case 7:
                    gapComposerH.L(264652464);
                    if (StringsKt.w(careServiceDetailUiModel.x)) {
                        gapComposerH.L(265115356);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(264726151);
                        String strC4 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_track_my_shippment);
                        boolean zY3 = ((458752 & i4) == 131072) | gapComposerH.y(repairsViewState);
                        Object objX4 = gapComposerH.x();
                        if (zY3 || objX4 == composer$Companion$Empty$2) {
                            final int i7 = 1;
                            objX4 = new Function0() { // from class: js0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i7) {
                                        case 0:
                                            function3.invoke(new CareServiceIdUiModel(repairsViewState.f64018h.f63979b));
                                            break;
                                        default:
                                            function3.invoke(repairsViewState.f64018h.x);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX4);
                        }
                        a(modifierE, strC4, (Function0) objX4, gapComposerH, i4 & 14);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                    break;
                default:
                    gapComposerH.L(265143194);
                    gapComposerH.Z(false);
                    break;
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(modifierE, repairsViewState, function0, function1, function2, function3, function4, function5, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void c(Modifier modifier, RepairsViewState repairsViewState, AssessmentViewState assessmentViewState, Function2 function2, Function1 function1, Function1 function3, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        CareServiceDetailUiModel careServiceDetailUiModel;
        int i3;
        boolean z;
        int i4;
        GapComposer gapComposer2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "RepairsDetailMainContent");
        }
        GapComposer gapComposerH = composer.h(-1726327010);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(repairsViewState) ? 32 : 16) | (gapComposerH.y(assessmentViewState) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288);
        if (gapComposerH.p(i5 & 1, (i5 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CareServiceDetailUiModel careServiceDetailUiModel2 = repairsViewState.f64018h;
            InAppDispatch inAppDispatch = repairsViewState.f64013a;
            if (careServiceDetailUiModel2 == null) {
                gapComposerH.L(-1069075422);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
            } else {
                String str = careServiceDetailUiModel2.f63986k;
                RepairStatusUiModel repairStatusUiModel = careServiceDetailUiModel2.d;
                gapComposerH.L(-1069075421);
                RepairType repairType = careServiceDetailUiModel2.f63980c;
                boolean z2 = (repairType == RepairType.DISTANT_CARE_SERVICE && repairStatusUiModel != RepairStatusUiModel.DELIVERED_TO_CLIENT) || (repairType == RepairType.STORE_CARE_SERVICE && repairStatusUiModel != RepairStatusUiModel.HISTORY);
                Modifier modifierD = ScrollKt.d(modifierE, ScrollKt.b(gapComposerH), false, 14);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
                ComposeUiNode.b0.getClass();
                Function0 function4 = ComposeUiNode.Companion.f9641b;
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
                Updater.c(gapComposerH, modifierC, function9);
                if ((repairStatusUiModel == RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC || repairStatusUiModel == RepairStatusUiModel.DELIVERED_TO_CLIENT || RepairStatusUiModelKt.a(repairStatusUiModel)) && assessmentViewState.f57362i.length() == 0) {
                    function2.invoke(careServiceDetailUiModel2.n, careServiceDetailUiModel2.m);
                }
                if (StringExtKt.a(str)) {
                    Modifier modifierA = ClipKt.a(n00.i(gapComposerH, 67394044, "RepairsDetailMainContent"), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                    Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                    ContentScale.f9447a.getClass();
                    Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode2 = Long.hashCode(gapComposerH.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                    Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
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
                    Updater.c(gapComposerH, measurePolicyD, function5);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                    cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
                    Modifier modifierA3 = AspectRatioKt.a(n00.e(gapComposerH, modifierC2, function9, "RepairsDetailMainContent", 1.0f), 1.0f, false);
                    str.getClass();
                    careServiceDetailUiModel = careServiceDetailUiModel2;
                    i4 = 0;
                    i3 = 14;
                    z = true;
                    ImageLoaderKt.b(modifierA3, str, null, null, null, 0, false, null, null, null, gapComposerH, 6, 2044);
                    GapComposer gapComposer3 = gapComposerH;
                    gapComposer3.Z(true);
                    gapComposer3.Z(false);
                    gapComposer2 = gapComposer3;
                } else {
                    careServiceDetailUiModel = careServiceDetailUiModel2;
                    GapComposer gapComposer4 = gapComposerH;
                    i3 = 14;
                    z = true;
                    Modifier modifierA4 = AspectRatioKt.a(o60.c(gapComposer4, 68077222, "RepairsDetailMainContent", 1.0f), 1.0f, false);
                    Painter painterA2 = PainterResources_androidKt.a(2131230926, gapComposer4, 0);
                    ContentScale.f9447a.getClass();
                    i4 = 0;
                    ImageKt.a(painterA2, null, modifierA4, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposer4, 25016, 104);
                    gapComposer4.Z(false);
                    gapComposer2 = gapComposer4;
                }
                e(inAppDispatch, careServiceDetailUiModel, gapComposer2, i4);
                boolean z3 = z;
                int i6 = i5 >> 3;
                boolean z4 = i4;
                CareServiceDetailUiModel careServiceDetailUiModel3 = careServiceDetailUiModel;
                RepairDetailInformationKt.a(assessmentViewState, careServiceDetailUiModel3, repairsViewState.f64019i, function1, function3, function0, gapComposer2, (i3 & (i5 >> 6)) | (i6 & 7168) | (57344 & i6) | (i6 & ImageMetadata.JPEG_GPS_COORDINATES));
                if (z2) {
                    gapComposer2.L(68938092);
                    RepairDetailFollowUpKt.d(z4 ? 1 : 0, gapComposer2, repairsViewState.f64020j);
                    gapComposer2.Z(z4);
                } else {
                    gapComposer2.L(69017855);
                    gapComposer2.Z(z4);
                }
                AssessmentInformationKt.b(inAppDispatch, careServiceDetailUiModel3, gapComposer2, z4 ? 1 : 0);
                gapComposer2.Z(z3);
                gapComposer2.Z(z4);
                gapComposer = gapComposer2;
            }
        } else {
            GapComposer gapComposer5 = gapComposerH;
            gapComposer5.D();
            gapComposer = gapComposer5;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(modifierE, repairsViewState, assessmentViewState, function2, function1, function3, function0, i2, 15);
        }
    }

    public static final void d(final RepairsViewState repairsViewState, final AssessmentViewState assessmentViewState, final SnackbarHostState snackbarHostState, final DistantRepairCalendarViewState distantRepairCalendarViewState, Function3 function3, final Function3 function4, final Function2 function2, Function0 function0, Function0 function1, final Function1 function5, final Function0 function6, final Function1 function7, Function1 function8, Function1 function9, Function0 function10, final ContactUsUiModel contactUsUiModel, Function1 function11, final LVModalBottomSheetState lVModalBottomSheetState, final Function1 function12, Composer composer, int i2, int i3) {
        int i4;
        Function3 function13;
        int i5;
        Function0 function14;
        AssessmentViewState assessmentViewState2;
        DistantRepairContactMethod distantRepairContactMethod;
        repairsViewState.getClass();
        assessmentViewState.getClass();
        snackbarHostState.getClass();
        distantRepairCalendarViewState.getClass();
        function3.getClass();
        function4.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        contactUsUiModel.getClass();
        function11.getClass();
        lVModalBottomSheetState.getClass();
        GapComposer gapComposerH = composer.h(-377531674);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(repairsViewState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(assessmentViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(snackbarHostState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(distantRepairCalendarViewState) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function13 = function3;
            i4 |= gapComposerH.y(function13) ? 16384 : 8192;
        } else {
            function13 = function3;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(function4) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.y(function1) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function6) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function7) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function8) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function9) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            function14 = function10;
            i5 |= gapComposerH.y(function14) ? 16384 : 8192;
        } else {
            function14 = function10;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= (i3 & 262144) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposerH.y(function11) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= (i3 & 16777216) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i5 |= gapComposerH.y(function12) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 38347923) == 38347922) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            boolean zY = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new m8(lVModalBottomSheetStateF, mutableState, 11);
                gapComposerH.q(objX2);
            }
            final Function0 function15 = (Function0) objX2;
            boolean zY2 = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new n8(lVModalBottomSheetStateF, mutableState, 7);
                gapComposerH.q(objX3);
            }
            final Function1 function16 = (Function1) objX3;
            if (repairsViewState.f64021k) {
                function1.mo47invoke();
            }
            CareServiceDetailUiModel careServiceDetailUiModel = repairsViewState.f64018h;
            CareServiceOrigin careServiceOrigin = careServiceDetailUiModel != null ? careServiceDetailUiModel.y : null;
            int i6 = careServiceOrigin == null ? -1 : WhenMappings.f63856a[careServiceOrigin.ordinal()];
            if (i6 == -1) {
                distantRepairContactMethod = null;
            } else if (i6 == 1) {
                distantRepairContactMethod = DistantRepairContactMethod.VIDEO_CALL;
            } else if (i6 == 2 || i6 == 3) {
                distantRepairContactMethod = DistantRepairContactMethod.PHONE_CALL;
            } else {
                if (i6 != 4 && i6 != 5) {
                    v40.g();
                    return;
                }
                distantRepairContactMethod = null;
            }
            BottomSheetScreen bottomSheetScreen = (BottomSheetScreen) mutableState.getF10755b();
            final DistantRepairContactMethod distantRepairContactMethod2 = distantRepairContactMethod;
            boolean zY3 = ((i5 & 234881024) == 67108864) | gapComposerH.y(repairsViewState) | ((i4 & 57344) == 16384) | gapComposerH.d(distantRepairContactMethod2 == null ? -1 : distantRepairContactMethod2.ordinal());
            Object objX4 = gapComposerH.x();
            if (zY3 || objX4 == composer$Companion$Empty$1) {
                RepairDetailScreenKt$RepairsDetailScreen$2$1 repairDetailScreenKt$RepairsDetailScreen$2$1 = new RepairDetailScreenKt$RepairsDetailScreen$2$1(function12, repairsViewState, mutableState, function13, distantRepairContactMethod2, null);
                gapComposerH.q(repairDetailScreenKt$RepairsDetailScreen$2$1);
                objX4 = repairDetailScreenKt$RepairsDetailScreen$2$1;
            }
            EffectsKt.e(gapComposerH, bottomSheetScreen, (Function2) objX4);
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1161778338, new v8(6, lVModalBottomSheetState, contactUsUiModel, function0, function11), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(1311919681, new o(repairsViewState, function6, function14, function16, function8, function9, function12), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1462061024, new fs0(snackbarHostState, 2), gapComposerH);
            gapComposerH = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-2010496585, new Function3() { // from class: com.vuitton.android.presentation.screen.repairs.detail.components.b
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierH = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("RepairsDetailScreen$lambda$10").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer2).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues);
                        final ContactUsUiModel contactUsUiModel2 = contactUsUiModel;
                        boolean zY4 = composer2.y(contactUsUiModel2);
                        final LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                        boolean zY5 = zY4 | composer2.y(lVModalBottomSheetState2);
                        Object objX5 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY5 || objX5 == composer$Companion$Empty$2) {
                            objX5 = new Function1<CareServiceTransactionIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailScreenKt$RepairsDetailScreen$6$1$1
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    if (contactUsUiModel2.f51154a) {
                                        lVModalBottomSheetState2.e();
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX5);
                        }
                        Function1 function17 = (Function1) objX5;
                        Function1 function18 = function16;
                        boolean zK = composer2.K(function18);
                        Object objX6 = composer2.x();
                        if (zK || objX6 == composer$Companion$Empty$2) {
                            objX6 = new tf0(function18, 18);
                            composer2.q(objX6);
                        }
                        RepairsViewState repairsViewState2 = repairsViewState;
                        RepairDetailScreenKt.c(modifierH, repairsViewState2, assessmentViewState, function2, function17, function5, (Function0) objX6, composer2, 0);
                        LVModalBottomSheetState lVModalBottomSheetState3 = lVModalBottomSheetStateF;
                        if (lVModalBottomSheetState3.a()) {
                            composer2.L(-1383984230);
                            LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer2, R.string.alt_close), null, lVModalBottomSheetState3, null, 0L, false, null, ComposableLambdaKt.b(1510210760, new f9(mutableState, repairsViewState2, distantRepairCalendarViewState, snackbarHostState, function12, function4, distantRepairContactMethod2, function15, function7, function6), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                            composer2.F();
                        } else {
                            composer2.L(-1381221045);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 805309872, 497);
            assessmentViewState2 = assessmentViewState;
            if (repairsViewState.f64014b || assessmentViewState2.f57364k) {
                gapComposerH.L(1481255578);
                LVLoadingOverlayKt.a(false, gapComposerH, 0, 1);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1481288252);
                gapComposerH.Z(false);
            }
        } else {
            assessmentViewState2 = assessmentViewState;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x8(repairsViewState, assessmentViewState2, snackbarHostState, distantRepairCalendarViewState, function3, function4, function2, function0, function1, function5, function6, function7, function8, function9, function10, contactUsUiModel, function11, lVModalBottomSheetState, function12, i2, i3);
        }
    }

    public static final void e(InAppDispatch inAppDispatch, CareServiceDetailUiModel careServiceDetailUiModel, Composer composer, int i2) {
        CareServiceDetailUiModel careServiceDetailUiModel2;
        GapComposer gapComposer;
        String string;
        Function0 function0;
        Function1 function1;
        Function0 function2;
        int i3;
        String str;
        InAppDispatch inAppDispatch2 = inAppDispatch;
        GapComposer gapComposerH = composer.h(-1799826743);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.y(inAppDispatch2) ? 4 : 2) | (gapComposerH.y(careServiceDetailUiModel) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(PaddingKt.i(new DTFunctionNameModifier("TitleHeader"), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$1);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Modifier modifierB2 = BackgroundKt.b(n00.e(gapComposerH, modifierC, function8, "TitleHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, rectangleShapeKt$RectangleShape$1);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC2, function8);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            RepairStatusUiModel repairStatusUiModel = careServiceDetailUiModel.d;
            String str2 = careServiceDetailUiModel.G;
            String str3 = careServiceDetailUiModel.F;
            String str4 = careServiceDetailUiModel.E;
            repairStatusUiModel.getClass();
            if (ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.PRELIMINARY_ASSESSMENT, RepairStatusUiModel.REQUEST_SUBMITTED})) {
                string = context.getString(R.string.dr_repair);
            } else {
                CareServiceTransactionIdUiModel.f64071c.getClass();
                if (str4 == null || str4.equals(CareServiceTransactionIdUiModel.d)) {
                    string = context.getString(R.string.dr_repair);
                } else {
                    string = context.getString(R.string.dr_prass_repair, str4 != null ? new CareServiceTransactionIdUiModel(str4) : null);
                }
            }
            String str5 = string;
            str5.getClass();
            Function2 function9 = function4;
            TextKt.c(str5, PaddingKt.i(new DTFunctionNameModifier("TitleHeader"), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            GapComposer gapComposer2 = gapComposerH;
            gapComposer2.Z(true);
            int length = str3.length();
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            if (length <= 0 && str2.length() <= 0) {
                str = "TitleHeader";
                function2 = function3;
                function1 = function7;
                i3 = 0;
                gapComposer2.L(-1032053457);
                gapComposer2.Z(false);
            } else {
                Modifier modifierC3 = o60.c(gapComposer2, -1033288342, "TitleHeader", 1.0f);
                RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposer2, 0);
                int iHashCode3 = Long.hashCode(gapComposer2.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer2.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposer2, modifierC3);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    function0 = function3;
                    gapComposer2.C(function0);
                } else {
                    function0 = function3;
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, rowMeasurePolicyA2, function9);
                Updater.c(gapComposer2, persistentCompositionLocalMapU3, function5);
                cj.t(iHashCode3, gapComposer2, function6, gapComposer2, function7);
                function9 = function9;
                function1 = function7;
                function2 = function0;
                i3 = 0;
                TextKt.c(StringResources_androidKt.c(gapComposer2, R.string.dr_product), PaddingKt.m(rowScopeInstance.a(tr.e(gapComposer2, modifierC4, function8, "TitleHeader"), 1.0f, true), LVAppDesignKitTheme.l(gapComposer2).f48416e, LVAppDesignKitTheme.l(gapComposer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).m, gapComposer2, 0, 0, 131064);
                str = "TitleHeader";
                TextKt.c(str3.length() == 0 ? str2 : str3, PaddingKt.m(new DTFunctionNameModifier("TitleHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48416e, LVAppDesignKitTheme.l(gapComposer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).m, gapComposer2, 0, 0, 131064);
                gapComposer2 = gapComposer2;
                gapComposer2.Z(true);
                gapComposer2.Z(false);
            }
            String str6 = str;
            Modifier modifierD = tr.d(str6, 1.0f);
            RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(arrangement$Start$1, vertical, gapComposer2, i3);
            int iHashCode4 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer2.U();
            Modifier modifierC5 = ComposedModifierKt.c(gapComposer2, modifierD);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function2);
            } else {
                gapComposer2.o();
            }
            Function2 function10 = function9;
            Updater.c(gapComposer2, rowMeasurePolicyA3, function10);
            Updater.c(gapComposer2, persistentCompositionLocalMapU4, function5);
            Function1 function11 = function1;
            cj.t(iHashCode4, gapComposer2, function6, gapComposer2, function11);
            GapComposer gapComposer3 = gapComposer2;
            TextKt.c(StringResources_androidKt.c(gapComposer2, R.string.dr_repair_type_of_request), PaddingKt.m(rowScopeInstance.a(tr.e(gapComposer2, modifierC5, function8, str6), 1.0f, true), LVAppDesignKitTheme.l(gapComposer2).f48416e, LVAppDesignKitTheme.l(gapComposer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).m, gapComposer3, 0, 0, 131064);
            TextKt.c(careServiceDetailUiModel.f63980c == RepairType.DISTANT_CARE_SERVICE ? cj.f(gapComposer3, 1571334327, R.string.dr_mylv_repair_requested_online, gapComposer3, false) : cj.f(gapComposer3, 1571486165, R.string.dr_mylv_repair_requested_in_store, gapComposer3, false), PaddingKt.m(new DTFunctionNameModifier(str6), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48416e, LVAppDesignKitTheme.l(gapComposer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
            Modifier modifierD2 = o60.d(gapComposer3, true, str6, 1.0f);
            RowMeasurePolicy rowMeasurePolicyA4 = RowKt.a(arrangement$Start$1, vertical, gapComposer3, 0);
            int iHashCode5 = Long.hashCode(gapComposer3.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposer3.U();
            Modifier modifierC6 = ComposedModifierKt.c(gapComposer3, modifierD2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer3.B();
            if (gapComposer3.S) {
                gapComposer3.C(function2);
            } else {
                gapComposer3.o();
            }
            Updater.c(gapComposer3, rowMeasurePolicyA4, function10);
            Updater.c(gapComposer3, persistentCompositionLocalMapU5, function5);
            cj.t(iHashCode5, gapComposer3, function6, gapComposer3, function11);
            TextKt.c(StringResources_androidKt.c(gapComposer3, R.string.dr_repair_date_of_initiation), PaddingKt.m(rowScopeInstance.a(tr.e(gapComposer3, modifierC6, function8, str6), 1.0f, true), LVAppDesignKitTheme.l(gapComposer3).f48416e, LVAppDesignKitTheme.l(gapComposer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48416e, 4), LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier(str6), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48416e, LVAppDesignKitTheme.l(gapComposer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
            inAppDispatch2 = inAppDispatch;
            careServiceDetailUiModel2 = careServiceDetailUiModel;
            String strD = DateTimeUtils.d(inAppDispatch2.m, careServiceDetailUiModel2.f63981e, n.g, FormatStyle.LONG);
            if (strD == null) {
                strD = "";
            }
            TextKt.c(strD, modifierM, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
            gapComposer = gapComposer3;
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            careServiceDetailUiModel2 = careServiceDetailUiModel;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k9(inAppDispatch2, careServiceDetailUiModel2, i2, 2);
        }
    }
}
