package com.vuitton.android.presentation.screen.certificates.components.add;

import android.content.Context;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.input.ImeAction;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormField;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormKt;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateInfoUiModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateFormFieldCustom;
import com.vuitton.android.presentation.screen.certificates.model.Regex;
import com.vuitton.android.presentation.screen.certificates.model.Required;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.c;
import defpackage.d21;
import defpackage.d3;
import defpackage.g0;
import defpackage.g2;
import defpackage.n00;
import defpackage.o0;
import defpackage.p;
import defpackage.p0;
import defpackage.t;
import defpackage.tr;
import defpackage.u1;
import defpackage.u3;
import defpackage.w3;
import defpackage.y3;
import defpackage.z;
import defpackage.z3;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddCertificateComposableKt {
    public static final void a(int i2, Composer composer, Function0 function0, boolean z) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(1905584248);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2 | (gapComposerH.b(z) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVButtonKt.b(((i3 << 27) & 1879048192) | ((i3 << 18) & 29360128), 376, gapComposerH, ModifierExtKt.e(PaddingKt.l(tr.d("ActivateButton", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e), "certificateAdd_activate_button"), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step2_cta_activate), function0, false, z, false);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new y3(function0, z, i2);
        }
    }

    public static final void b(AddCertificateInfoUiModel addCertificateInfoUiModel, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1287572853);
        int i3 = (gapComposerH.K(addCertificateInfoUiModel) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerH, addCertificateInfoUiModel.f55783a), null, StringResources_androidKt.c(gapComposerH, addCertificateInfoUiModel.f55784b), null, null, false, null, null, ComposableLambdaKt.b(-1965775722, new d3(addCertificateInfoUiModel, 2), gapComposerH), gapComposerH, 0, 48, 2027);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c(addCertificateInfoUiModel, i2, 2);
        }
    }

    public static final void c(AddCertificateViewModel addCertificateViewModel, Function1 function1, Function0 function0, Function0 function2, Composer composer, int i2) {
        SnackbarHostState snackbarHostState;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        addCertificateViewModel.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1484610571);
        int i3 = i2 | (gapComposerH.K(addCertificateViewModel) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$2) {
                objX = new AddCertificateComposableKt$AddCertificateComposable$1$1(addCertificateViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateB = SnapshotStateKt.b(addCertificateViewModel.getR(), gapComposerH);
            if (((AddCertificateUiModel) mutableStateB.getF10755b()).f55789f) {
                function0.mo47invoke();
            }
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX2;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$2) {
                objX3 = new AddCertificateComposableKt$AddCertificateComposable$2$1(addCertificateViewModel, snackbarHostState2, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            AddCertificateUiModel addCertificateUiModel = (AddCertificateUiModel) mutableStateB.getF10755b();
            boolean z2 = i4 == 4;
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$2) {
                snackbarHostState = snackbarHostState2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                AddCertificateComposableKt$AddCertificateComposable$3$1 addCertificateComposableKt$AddCertificateComposable$3$1 = new AddCertificateComposableKt$AddCertificateComposable$3$1(0, addCertificateViewModel, AddCertificateViewModel.class, "onIndividualNumberInfoClick", "onIndividualNumberInfoClick()V", 0);
                gapComposerH.q(addCertificateComposableKt$AddCertificateComposable$3$1);
                objX4 = addCertificateComposableKt$AddCertificateComposable$3$1;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                snackbarHostState = snackbarHostState2;
            }
            Function0 function3 = (Function0) ((KFunction) objX4);
            boolean z3 = i4 == 4;
            Object objX5 = gapComposerH.x();
            if (z3 || objX5 == composer$Companion$Empty$1) {
                AddCertificateComposableKt$AddCertificateComposable$4$1 addCertificateComposableKt$AddCertificateComposable$4$1 = new AddCertificateComposableKt$AddCertificateComposable$4$1(0, addCertificateViewModel, AddCertificateViewModel.class, "onBuyerNameInfoClick", "onBuyerNameInfoClick()V", 0);
                gapComposerH.q(addCertificateComposableKt$AddCertificateComposable$4$1);
                objX5 = addCertificateComposableKt$AddCertificateComposable$4$1;
            }
            Function0 function4 = (Function0) ((KFunction) objX5);
            boolean z4 = i4 == 4;
            Object objX6 = gapComposerH.x();
            if (z4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new AddCertificateComposableKt$AddCertificateComposable$5$1(1, addCertificateViewModel, AddCertificateViewModel.class, "onConsentCheckboxToggled", "onConsentCheckboxToggled(Z)V", 0);
                gapComposerH.q(objX6);
            }
            d(snackbarHostState, addCertificateUiModel, function3, function4, (Function1) ((KFunction) objX6), function1, function2, gapComposerH, ((i3 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | 6 | ((i3 << 9) & 3670016));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) addCertificateViewModel, (Object) function1, function0, function2, i2, 2);
        }
    }

    public static final void d(SnackbarHostState snackbarHostState, AddCertificateUiModel addCertificateUiModel, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function0 function4, Composer composer, int i2) {
        int i3;
        Function1 function5;
        Object obj;
        GapComposer gapComposer;
        AddCertificateUiModel addCertificateUiModel2 = addCertificateUiModel;
        GapComposer gapComposerH = composer.h(1952556630);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(addCertificateUiModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function5 = function2;
            i3 |= gapComposerH.y(function5) ? 16384 : 8192;
        } else {
            function5 = function2;
        }
        if ((196608 & i2) == 0) {
            obj = function3;
            i3 |= gapComposerH.y(obj) ? 131072 : 65536;
        } else {
            obj = function3;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new p(14);
                gapComposerH.q(objX);
            }
            addCertificateUiModel2 = addCertificateUiModel;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-655763182, new o0(function4, 3), gapComposerH), null, ComposableLambdaKt.b(1686654160, new g0(snackbarHostState, 2), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1520650009, new p0((Object) LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) objX), (Object) addCertificateUiModel, function5, obj, (Object) function0, (Function) function1, 1), gapComposerH), gapComposerH, 805309488, 501);
            gapComposer = gapComposerH;
            if (addCertificateUiModel2.f55788e) {
                gapComposer.L(1877242218);
                LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                gapComposer.Z(false);
            } else {
                gapComposer.L(1877274892);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3((Object) snackbarHostState, (Object) addCertificateUiModel2, (Object) function0, (Object) function1, function2, function3, (Function) function4, i2, 0);
        }
    }

    public static final void e(final int i2, final long j2, final int i3, final int i4, Composer composer, final int i5) {
        GapComposer gapComposerH = composer.h(1433436324);
        int i6 = i5 | (gapComposerH.d(i2) ? 4 : 2) | (gapComposerH.e(j2) ? 32 : 16) | (gapComposerH.d(i3) ? 256 : 128) | (gapComposerH.d(i4) ? 2048 : 1024);
        if (gapComposerH.p(i6 & 1, (i6 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, i3);
            String strC2 = StringResources_androidKt.c(gapComposerH, i4);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BuyerNameExampleComposable-3IgeMak");
            boolean zK = gapComposerH.K(strC) | gapComposerH.K(strC2);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new u3(strC, strC2, 0);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            ImageKt.a(PainterResources_androidKt.a(i2, gapComposerH, i6 & 14), null, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, ColorFilter.Companion.a(ColorFilter.f8873b, j2), gapComposerH, 56, 60);
            TextKt.c(StringResources_androidKt.c(gapComposerH, i3), PaddingKt.m(new DTFunctionNameModifier("BuyerNameExampleComposable-3IgeMak"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).o, gapComposerH, 0, 0, 131068);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(i2, i3, i4, i5, j2) { // from class: v3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f80482b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ long f80483c;
                public final /* synthetic */ int d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ int f80484e;

                {
                    this.f80483c = j2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    AddCertificateComposableKt.e(this.f80482b, this.f80483c, this.d, this.f80484e, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void f(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1355800572);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.certificate_activation_picto1_step1), PaddingKt.m(new DTFunctionNameModifier("CertificateInfoBuyerContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).o, gapComposerH, 0, 0, 131068);
            Modifier modifierD = tr.d("CertificateInfoBuyerContent", 1.0f);
            Painter painterA = PainterResources_androidKt.a(2131230898, gapComposerH, 0);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_customer_name_receipt_image);
            ContentScale.f9447a.getClass();
            ImageKt.a(painterA, strC, modifierD, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24968, 104);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.certificate_activation_picto1_step2), PaddingKt.m(new DTFunctionNameModifier("CertificateInfoBuyerContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 5), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).o, gapComposerH, 0, 0, 131068);
            e(LVAppDesignKitTheme.g(gapComposerH).r0, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, R.string.certificate_activation_picto1_name1, R.string.alt_status_validated, gapComposerH, 0);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("CertificateInfoBuyerContent"), LVAppDesignKitTheme.l(gapComposerH).f48415c));
            e(LVAppDesignKitTheme.g(gapComposerH).s, LVAppDesignKitTheme.c(gapComposerH).f48361b.x, R.string.certificate_activation_picto1_name2, R.string.alt_status_not_validated, gapComposerH, 0);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("CertificateInfoBuyerContent"), LVAppDesignKitTheme.l(gapComposerH).f48415c));
            e(LVAppDesignKitTheme.g(gapComposerH).s, LVAppDesignKitTheme.c(gapComposerH).f48361b.x, R.string.certificate_activation_picto1_name3, R.string.alt_status_not_validated, gapComposerH, 0);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("CertificateInfoBuyerContent"), LVAppDesignKitTheme.l(gapComposerH).f48415c));
            e(LVAppDesignKitTheme.g(gapComposerH).s, LVAppDesignKitTheme.c(gapComposerH).f48361b.x, R.string.certificate_activation_picto1_name4, R.string.alt_status_not_validated, gapComposerH, 0);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.certificate_activation_picto1_step3), PaddingKt.k(new DTFunctionNameModifier("CertificateInfoBuyerContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).o, gapComposerH, 0, 0, 131068);
            gapComposerH = gapComposerH;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 5);
        }
    }

    public static final void g(Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1092827096);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.certificate_activation_picto_step1), PaddingKt.m(new DTFunctionNameModifier("CertificateInfoNumberContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).o, gapComposer, 0, 0, 131068);
            Modifier modifierD = tr.d("CertificateInfoNumberContent", 1.0f);
            Painter painterA = PainterResources_androidKt.a(2131230899, gapComposer, 0);
            String strC = StringResources_androidKt.c(gapComposer, R.string.alt_certificate_receipt_example_image);
            ContentScale.f9447a.getClass();
            ImageKt.a(painterA, strC, modifierD, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposer, 24968, 104);
            TextKt.c(StringResources_androidKt.c(gapComposer, R.string.certificate_activation_picto_step2), PaddingKt.m(new DTFunctionNameModifier("CertificateInfoNumberContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 5), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).o, gapComposer, 0, 0, 131068);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 6);
        }
    }

    public static final void h(boolean z, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1964945410);
        int i3 = (gapComposerH.b(z) ? 4 : 2) | i2 | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("CheckBoxCN", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 48);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LVCheckboxKt.a(null, false, z, null, false, function1, gapComposerH, ((i3 << 6) & 896) | ((i3 << 12) & ImageMetadata.JPEG_GPS_COORDINATES), 27);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.certificate_checkbox_paragraph_pipl), null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131070);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z3(z, function1, i2, 0);
        }
    }

    public static final void i(Modifier modifier, InAppDispatch inAppDispatch, CertificateFormState certificateFormState, String str, Function0 function0, Function0 function1, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "FormComponent");
        }
        GapComposer gapComposerH = composer.h(-81918326);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(inAppDispatch) ? 32 : 16) | (gapComposerH.y(certificateFormState) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.L(-1574995098);
            ArrayList arrayList = new ArrayList();
            String str2 = certificateFormState.f55684a.isEmpty() ? str : (String) certificateFormState.a().get(AddCertificateFormEntries.INDIVIDUAL_NUMBER.getEntryName());
            String entryName = AddCertificateFormEntries.INDIVIDUAL_NUMBER.getEntryName();
            String strJ = d21.j(StringResources_androidKt.c(gapComposerH, R.string.certificate_activation_individual_number), Browse.CAPS_WILDCARD);
            modifier2 = modifierE;
            List listP = CollectionsKt.P(new Required(StringResources_androidKt.c(gapComposerH, R.string.certificate_activation_individual_number_error)), new Regex(StringResources_androidKt.c(gapComposerH, R.string.certificate_activation_individual_number_error), "^[a-zA-Z0-9]{6}$"));
            ImeAction.f10785b.getClass();
            arrayList.add(new CertificateFormField(entryName, strJ, str2, null, listP, ImeAction.f10790i, "certificateAdd_individualNumber_textField", null, 136, null));
            function0.getClass();
            arrayList.add(new CertificateFormField(null, null, null, new CertificateFormFieldCustom(new ComposableLambdaImpl(-778944088, true, new o0(function0, 1))), null, 0, null, null, 247, null));
            AddCertificateFormEntries addCertificateFormEntries = AddCertificateFormEntries.BUYER_NAME;
            arrayList.add(new CertificateFormField(addCertificateFormEntries.getEntryName(), d21.j(StringResources_androidKt.c(gapComposerH, R.string.certificate_activation_buyer_name), Browse.CAPS_WILDCARD), (String) certificateFormState.a().get(addCertificateFormEntries.getEntryName()), null, CollectionsKt.O(new Required(null, 1, null)), ImeAction.f10791j, "certificateAdd_activationCode_textField", null, 136, null));
            function1.getClass();
            arrayList.add(new CertificateFormField(null, null, null, new CertificateFormFieldCustom(new ComposableLambdaImpl(-1139931492, true, new o0(function1, 2))), null, 0, null, null, 247, null));
            gapComposerH.Z(false);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new p(15);
                gapComposerH.q(objX);
            }
            CertificateFormKt.a(modifier2, inAppDispatch, certificateFormState, arrayList, (Function1) objX, gapComposerH, (i3 & 896) | (i3 & 14) | 24576 | (i3 & 112), 0);
        } else {
            modifier2 = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifier2, inAppDispatch, certificateFormState, str, function0, function1, i2, 1);
        }
    }

    public static final void j(Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-952748859);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.my_certificate_help_contact), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("HelpText"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateAdd_contact_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer, 0, 0, 131064);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 4);
        }
    }

    public static final void k(int i2, int i3, Composer composer, Modifier modifier, Function0 function0) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "RowFormInfo");
        }
        GapComposer gapComposerH = composer.h(1578281673);
        int i4 = i3 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "RowFormInfo"), LVAppDesignKitTheme.d(gapComposerH).l), 0L, gapComposerH, 56, 8);
            LVLinkKt.b(PaddingKt.m(new DTFunctionNameModifier("RowFormInfo"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), StringResources_androidKt.c(gapComposerH, i2), false, null, function0, gapComposerH, (i4 << 6) & 57344, 12);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(modifierE, i2, i3, function0, 1);
        }
    }
}
