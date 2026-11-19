package com.vuitton.android.presentation.screen.pdp.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.CollapsingState;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.pdp.PdpViewModel;
import com.vuitton.android.presentation.screen.pdp.components.PdpComposableKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.DetailedFeatureUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlSection;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoSectionsItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTracker;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTracker;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackerKt;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.foundation.model.domain.model.product.PanelInformationType;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import defpackage.c30;
import defpackage.d1;
import defpackage.d21;
import defpackage.jm0;
import defpackage.l1;
import defpackage.of0;
import defpackage.r0;
import defpackage.tr;
import defpackage.v40;
import defpackage.x60;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ExtensionsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.UtilsKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\f²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\f\u0010\t\u001a\u00020\b8\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u000b\u001a\u0004\u0018\u00010\n8\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;", "reinsurance", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;", "permissionsState", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;", "packaging", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;", "viewState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61397a;

        static {
            int[] iArr = new int[LegalConsentContextUiModel.values().length];
            try {
                iArr[LegalConsentContextUiModel.TRY_ON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LegalConsentContextUiModel.SHADE_FINDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f61397a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:300:0x06c7  */
    /* JADX WARN: Code duplicated, block: B:303:0x06d5  */
    /* JADX WARN: Code duplicated, block: B:308:0x06ec  */
    /* JADX WARN: Code duplicated, block: B:310:0x06f1  */
    /* JADX WARN: Code duplicated, block: B:313:0x06ff  */
    /* JADX WARN: Code duplicated, block: B:451:0x06e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:453:? A[LOOP:3: B:301:0x06cf->B:453:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:455:0x0740 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:457:0x06f9 A[SYNTHETIC] */
    public static final void a(final SnackbarHostState snackbarHostState, final PdpViewModel pdpViewModel, final ReinsuranceViewModel reinsuranceViewModel, final PermissionsViewModel permissionsViewModel, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function1 function7, final Function0 function8, final Function0 function9, final Function0 function10, final Function0 function11, final Function0 function12, final Function0 function13, final Function0 function14, final Function0 function15, final Function0 function16, final Function0 function17, final Function0 function18, final Function1 function19, final Function0 function20, final Function1 function21, final Function1 function22, final Function1 function23, final Function1 function24, final Function0 function25, final Function1 function26, final Function1 function27, final Function1 function28, Composer composer, final int i2) {
        Object r0Var;
        final MutableState mutableState;
        PdpTracker pdpTracker;
        char c2;
        MutableState mutableState2;
        final PdpTracker pdpTracker2;
        Context context;
        LegalConsentsTracker legalConsentsTracker;
        PdpTracker pdpTracker3;
        final int i3;
        Object panelInfoSectionsItem;
        int i4;
        ArrayList arrayList;
        String str;
        SizeUiModel sizeUiModel;
        String str2;
        ImmutableList immutableListB;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i5;
        final PdpViewModel pdpViewModel2;
        final MutableState mutableState3;
        boolean z;
        snackbarHostState.getClass();
        pdpViewModel.getClass();
        reinsuranceViewModel.getClass();
        permissionsViewModel.getClass();
        function0.getClass();
        defpackage.a.D(function1, function2, function3, function4, function5);
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        defpackage.a.D(function11, function12, function13, function14, function15);
        function16.getClass();
        function17.getClass();
        function18.getClass();
        function19.getClass();
        function20.getClass();
        function21.getClass();
        function22.getClass();
        function23.getClass();
        function24.getClass();
        function25.getClass();
        function26.getClass();
        function27.getClass();
        function28.getClass();
        GapComposer gapComposerH = composer.h(-366735041);
        int i6 = i2 | (gapComposerH.K(snackbarHostState) ? 4 : 2) | (gapComposerH.K(pdpViewModel) ? 32 : 16) | (gapComposerH.K(reinsuranceViewModel) ? 256 : 128) | (gapComposerH.K(permissionsViewModel) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.y(function5) ? 536870912 : 268435456);
        int i7 = (gapComposerH.y(function6) ? 4 : 2) | (gapComposerH.y(function7) ? 32 : 16) | (gapComposerH.y(function8) ? 256 : 128) | (gapComposerH.y(function9) ? 2048 : 1024) | (gapComposerH.y(function10) ? 16384 : 8192) | (gapComposerH.y(function11) ? 131072 : 65536) | (gapComposerH.y(function12) ? 1048576 : 524288) | (gapComposerH.y(function13) ? 8388608 : 4194304) | (gapComposerH.y(function14) ? 67108864 : 33554432) | (gapComposerH.y(function15) ? 536870912 : 268435456);
        int i8 = (gapComposerH.y(function16) ? 4 : 2) | (gapComposerH.y(function17) ? 32 : 16) | (gapComposerH.y(function18) ? 256 : 128) | (gapComposerH.y(function19) ? 2048 : 1024) | (gapComposerH.y(function20) ? 16384 : 8192) | (gapComposerH.y(function21) ? 131072 : 65536) | (gapComposerH.y(function22) ? 1048576 : 524288) | (gapComposerH.y(function23) ? 8388608 : 4194304) | (gapComposerH.y(function24) ? 67108864 : 33554432) | (gapComposerH.y(function25) ? 536870912 : 268435456);
        int i9 = (gapComposerH.y(function26) ? 4 : 2) | (gapComposerH.y(function27) ? 32 : 16) | (gapComposerH.y(function28) ? 256 : 128);
        if (gapComposerH.p(i6 & 1, ((i6 & 306783379) == 306783378 && (i7 & 306783379) == 306783378 && (i8 & 306783379) == 306783378 && (i9 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(reinsuranceViewModel.getD(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(permissionsViewModel.getU(), gapComposerH);
            MutableState mutableStateB3 = SnapshotStateKt.b(reinsuranceViewModel.getF63421f(), gapComposerH);
            MutableState mutableStateB4 = SnapshotStateKt.b(pdpViewModel.getY0(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(pdpViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            LegalConsentsTracker legalConsentsTracker2 = (LegalConsentsTracker) gapComposerH.k(LegalConsentsTrackerKt.f65398a);
            PdpTracker pdpTracker4 = (PdpTracker) gapComposerH.k(PdpTrackerEntryPointKt.f61588a);
            ContactUsTracker contactUsTracker = (ContactUsTracker) gapComposerH.k(ContactUsTrackerEntryPointKt.f51125a);
            ReinsuranceTracker reinsuranceTracker = (ReinsuranceTracker) gapComposerH.k(ReinsuranceTrackerEntryPointKt.f63416a);
            AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            if (((PdpViewState) mutableStateB4.getF10755b()).d) {
                gapComposerH.L(995480163);
                PdpLoadingScreenKt.a(function1, gapComposerH, (i6 >> 15) & 14);
                gapComposerH.Z(false);
            } else {
                boolean z2 = ((PdpViewState) mutableStateB4.getF10755b()).f61567c;
                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                if (z2) {
                    gapComposerH.L(995577627);
                    boolean z3 = (i6 & 112) == 32;
                    Object objX = gapComposerH.x();
                    if (z3 || objX == composer$Companion$Empty$2) {
                        z = false;
                        final boolean z4 = false ? 1 : 0;
                        objX = new Function0() { // from class: gm0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i10 = z4;
                                PdpViewModel pdpViewModel3 = pdpViewModel;
                                switch (i10) {
                                    case 0:
                                        pdpViewModel3.B4();
                                        break;
                                    default:
                                        pdpViewModel3.f0();
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX);
                    } else {
                        z = false;
                    }
                    PdpErrorScreenKt.a(function1, (Function0) objX, gapComposerH, (i6 >> 15) & 14);
                    gapComposerH.Z(z);
                } else {
                    gapComposerH.L(996022632);
                    LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
                    Object objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$2) {
                        objX2 = SnapshotStateKt.g(null);
                        gapComposerH.q(objX2);
                    }
                    MutableState mutableState4 = (MutableState) objX2;
                    Object obj = null;
                    Object objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$2) {
                        objX3 = new c30(23, mutableState4);
                        gapComposerH.q(objX3);
                    }
                    Function1 function29 = (Function1) objX3;
                    boolean zK = ((i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.K(mutableStateB4) | gapComposerH.y(pdpTracker4);
                    Object objX4 = gapComposerH.x();
                    if (zK || objX4 == composer$Companion$Empty$2) {
                        mutableState = mutableStateB4;
                        pdpTracker = pdpTracker4;
                        c2 = 2048;
                        r0Var = new r0(pdpTracker, function29, function1, mutableState, 23);
                        gapComposerH.q(r0Var);
                    } else {
                        r0Var = objX4;
                        mutableState = mutableStateB4;
                        pdpTracker = pdpTracker4;
                        c2 = 2048;
                    }
                    Function0 function30 = (Function0) r0Var;
                    boolean zY = ((r16 & 7168) == c2) | gapComposerH.y(pdpTracker) | gapComposerH.y(reinsuranceTracker);
                    Object objX5 = gapComposerH.x();
                    if (zY || objX5 == composer$Companion$Empty$2) {
                        mutableState2 = mutableState4;
                        pdpTracker2 = pdpTracker;
                        r0 r0Var2 = new r0(pdpTracker2, permissionsViewModel, reinsuranceTracker, mutableState2, 24);
                        gapComposerH.q(r0Var2);
                        objX5 = r0Var2;
                    } else {
                        mutableState2 = mutableState4;
                        pdpTracker2 = pdpTracker;
                    }
                    Function0 function31 = (Function0) objX5;
                    PdpViewState pdpViewState = (PdpViewState) mutableState.getF10755b();
                    ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
                    PermissionsUiModel permissionsUiModel = (PermissionsUiModel) mutableStateB2.getF10755b();
                    ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) mutableStateB3.getF10755b();
                    boolean zF = pdpViewModel.F();
                    PdpBottomSheetType pdpBottomSheetType = (PdpBottomSheetType) mutableState2.getF10755b();
                    Flow flowG0 = pdpViewModel.g0();
                    ReinsuranceViewModelImpl.ReinsuranceState reinsuranceState = (ReinsuranceViewModelImpl.ReinsuranceState) mutableStateB.getF10755b();
                    ReinsuranceViewModelImpl.ReinsuranceState.Loaded loaded = reinsuranceState instanceof ReinsuranceViewModelImpl.ReinsuranceState.Loaded ? (ReinsuranceViewModelImpl.ReinsuranceState.Loaded) reinsuranceState : null;
                    ImmutableList immutableList = loaded != null ? loaded.f63424a : null;
                    ProductUiModel productUiModel = ((PdpViewState) mutableState.getF10755b()).f61566b;
                    if (productUiModel == null) {
                        gapComposerH.L(998361829);
                        i4 = 0;
                        gapComposerH.Z(false);
                        composer$Companion$Empty$2 = composer$Companion$Empty$2;
                        mutableState = mutableState;
                        flowG0 = flowG0;
                        context = context2;
                        legalConsentsTracker = legalConsentsTracker2;
                        pdpTracker3 = pdpTracker2;
                        arrayList = null;
                        i3 = 1;
                    } else {
                        gapComposerH.L(-244889444);
                        String strC = StringResources_androidKt.c(gapComposerH, R.string.product_detail_details_section);
                        boolean zY2 = gapComposerH.y(pdpTracker2) | gapComposerH.K(mutableState);
                        Object objX6 = gapComposerH.x();
                        if (zY2 || objX6 == composer$Companion$Empty$2) {
                            final int i10 = 0;
                            objX6 = new Function1() { // from class: im0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    int i11 = i10;
                                    MutableState mutableState5 = mutableState;
                                    PdpTracker pdpTracker5 = pdpTracker2;
                                    switch (i11) {
                                        case 0:
                                            String str3 = (String) obj2;
                                            str3.getClass();
                                            ProductUiModel productUiModel2 = ((PdpViewState) mutableState5.getF10755b()).f61566b;
                                            pdpTracker5.a(productUiModel2 != null ? productUiModel2.f61735b : null, str3);
                                            break;
                                        case 1:
                                            String str4 = (String) obj2;
                                            str4.getClass();
                                            ProductUiModel productUiModel3 = ((PdpViewState) mutableState5.getF10755b()).f61566b;
                                            pdpTracker5.a(productUiModel3 != null ? productUiModel3.f61735b : null, str4);
                                            break;
                                        default:
                                            PanelInfoUiModel panelInfoUiModel = (PanelInfoUiModel) obj2;
                                            panelInfoUiModel.getClass();
                                            ProductUiModel productUiModel4 = ((PdpViewState) mutableState5.getF10755b()).f61566b;
                                            pdpTracker5.a(productUiModel4 != null ? productUiModel4.f61735b : null, panelInfoUiModel.f61718c);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX6);
                        }
                        final Function1 function32 = (Function1) objX6;
                        String strC2 = StringResources_androidKt.c(gapComposerH, R.string.pdp_agec_title);
                        boolean zY3 = gapComposerH.y(pdpTracker2) | gapComposerH.K(mutableState);
                        Object objX7 = gapComposerH.x();
                        if (zY3 || objX7 == composer$Companion$Empty$2) {
                            final int i11 = 1;
                            objX7 = new Function1() { // from class: im0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    int i12 = i11;
                                    MutableState mutableState5 = mutableState;
                                    PdpTracker pdpTracker5 = pdpTracker2;
                                    switch (i12) {
                                        case 0:
                                            String str3 = (String) obj2;
                                            str3.getClass();
                                            ProductUiModel productUiModel2 = ((PdpViewState) mutableState5.getF10755b()).f61566b;
                                            pdpTracker5.a(productUiModel2 != null ? productUiModel2.f61735b : null, str3);
                                            break;
                                        case 1:
                                            String str4 = (String) obj2;
                                            str4.getClass();
                                            ProductUiModel productUiModel3 = ((PdpViewState) mutableState5.getF10755b()).f61566b;
                                            pdpTracker5.a(productUiModel3 != null ? productUiModel3.f61735b : null, str4);
                                            break;
                                        default:
                                            PanelInfoUiModel panelInfoUiModel = (PanelInfoUiModel) obj2;
                                            panelInfoUiModel.getClass();
                                            ProductUiModel productUiModel4 = ((PdpViewState) mutableState5.getF10755b()).f61566b;
                                            pdpTracker5.a(productUiModel4 != null ? productUiModel4.f61735b : null, panelInfoUiModel.f61718c);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX7);
                        }
                        Function1 function33 = (Function1) objX7;
                        boolean zY4 = gapComposerH.y(pdpTracker2) | gapComposerH.K(mutableState);
                        Object objX8 = gapComposerH.x();
                        if (zY4 || objX8 == composer$Companion$Empty$2) {
                            final int i12 = 2;
                            objX8 = new Function1() { // from class: im0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    int i13 = i12;
                                    MutableState mutableState5 = mutableState;
                                    PdpTracker pdpTracker5 = pdpTracker2;
                                    switch (i13) {
                                        case 0:
                                            String str3 = (String) obj2;
                                            str3.getClass();
                                            ProductUiModel productUiModel2 = ((PdpViewState) mutableState5.getF10755b()).f61566b;
                                            pdpTracker5.a(productUiModel2 != null ? productUiModel2.f61735b : null, str3);
                                            break;
                                        case 1:
                                            String str4 = (String) obj2;
                                            str4.getClass();
                                            ProductUiModel productUiModel3 = ((PdpViewState) mutableState5.getF10755b()).f61566b;
                                            pdpTracker5.a(productUiModel3 != null ? productUiModel3.f61735b : null, str4);
                                            break;
                                        default:
                                            PanelInfoUiModel panelInfoUiModel = (PanelInfoUiModel) obj2;
                                            panelInfoUiModel.getClass();
                                            ProductUiModel productUiModel4 = ((PdpViewState) mutableState5.getF10755b()).f61566b;
                                            pdpTracker5.a(productUiModel4 != null ? productUiModel4.f61735b : null, panelInfoUiModel.f61718c);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX8);
                        }
                        Function1 function34 = (Function1) objX8;
                        List<PanelInfoUiModel> list = productUiModel.f61741j;
                        strC.getClass();
                        function32.getClass();
                        strC2.getClass();
                        function33.getClass();
                        function34.getClass();
                        ArrayList arrayList2 = new ArrayList();
                        DetailedFeatureUiModel detailedFeatureUiModel = productUiModel.p;
                        if (detailedFeatureUiModel instanceof DetailedFeatureUiModel.Single) {
                            String str3 = ((DetailedFeatureUiModel.Single) detailedFeatureUiModel).f61683b;
                            if (context2 != null) {
                                SizeUiModel sizeUiModel2 = productUiModel.D;
                                pdpTracker3 = pdpTracker2;
                                SizeUiModel sizeUiModel3 = productUiModel.F;
                                legalConsentsTracker = legalConsentsTracker2;
                                SizeUiModel sizeUiModel4 = productUiModel.E;
                                String string = sizeUiModel4 != null ? context2.getString(R.string.lvpass_productpage_dimension_length) : null;
                                String string2 = sizeUiModel3 != null ? context2.getString(R.string.lvpass_productpage_dimension_height) : null;
                                String string3 = sizeUiModel2 != null ? context2.getString(R.string.lvpass_productpage_dimension_width) : null;
                                SizeUiModel[] sizeUiModelArr = {sizeUiModel4, sizeUiModel3, sizeUiModel2};
                                ArrayList arrayList3 = new ArrayList();
                                int i13 = 0;
                                while (i13 < 3) {
                                    SizeUiModel sizeUiModel5 = sizeUiModelArr[i13];
                                    Context context3 = context2;
                                    Double dValueOf = sizeUiModel5 != null ? Double.valueOf(sizeUiModel5.f61757b) : null;
                                    if (dValueOf != null) {
                                        arrayList3.add(dValueOf);
                                    }
                                    i13++;
                                    context2 = context3;
                                }
                                context = context2;
                                String strK = CollectionsKt.K(arrayList3, " x ", null, null, null, 62);
                                String[] strArr = {string, string2, string3};
                                ArrayList arrayList4 = new ArrayList();
                                for (int i14 = 0; i14 < 3; i14++) {
                                    String str4 = strArr[i14];
                                    if (str4 != null) {
                                        arrayList4.add(str4);
                                    }
                                }
                                String strK2 = CollectionsKt.K(arrayList4, " x ", null, null, null, 62);
                                int i15 = 0;
                                while (true) {
                                    if (i15 >= 3) {
                                        sizeUiModel = null;
                                        break;
                                    }
                                    sizeUiModel = sizeUiModelArr[i15];
                                    if (sizeUiModel != null && (str2 = sizeUiModel.f61758c) != null && str2.length() > 0) {
                                        break;
                                    } else {
                                        i15++;
                                    }
                                }
                                String str5 = sizeUiModel != null ? sizeUiModel.f61758c : null;
                                if (str5 == null) {
                                    str5 = "";
                                }
                                if (str5.length() > 0) {
                                    strK = d21.k(strK, " (", str5, ")");
                                }
                                String strK3 = strK.length() > 0 ? d21.k(strK, " (", strK2, ")") : "";
                                String strH = strK3.length() > 0 ? tr.h(strK3, "<br>", str3) : str3;
                                if (strH != null) {
                                    str = strH;
                                }
                                arrayList2.add(new PanelInfoHtmlItem(null, str, strC, CollapsingState.EXPANDED, new l1(5, strC, function32), 1, null));
                            } else {
                                composer$Companion$Empty$2 = composer$Companion$Empty$2;
                                mutableState = mutableState;
                                context = context2;
                                legalConsentsTracker = legalConsentsTracker2;
                                pdpTracker3 = pdpTracker2;
                            }
                            str = str3;
                            arrayList2.add(new PanelInfoHtmlItem(null, str, strC, CollapsingState.EXPANDED, new l1(5, strC, function32), 1, null));
                        } else {
                            composer$Companion$Empty$2 = composer$Companion$Empty$2;
                            mutableState = mutableState;
                            context = context2;
                            legalConsentsTracker = legalConsentsTracker2;
                            pdpTracker3 = pdpTracker2;
                            if (detailedFeatureUiModel instanceof DetailedFeatureUiModel.Multiple) {
                                int i16 = 0;
                                for (Object obj2 : ((DetailedFeatureUiModel.Multiple) detailedFeatureUiModel).f61679c) {
                                    int i17 = i16 + 1;
                                    if (i16 < 0) {
                                        CollectionsKt.t0();
                                        throw null;
                                    }
                                    final DetailedFeatureUiModel.DescriptionDetailUiModel descriptionDetailUiModel = (DetailedFeatureUiModel.DescriptionDetailUiModel) obj2;
                                    boolean zIsEmpty = descriptionDetailUiModel.d.isEmpty();
                                    String str6 = descriptionDetailUiModel.f61676b;
                                    String str7 = descriptionDetailUiModel.f61677c;
                                    if (zIsEmpty) {
                                        final int i18 = 0;
                                        panelInfoSectionsItem = new PanelInfoHtmlItem(null, str7, str6, i16 == 0 ? CollapsingState.EXPANDED : CollapsingState.COLLAPSED, new Function0() { // from class: fq0
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i19 = i18;
                                                DetailedFeatureUiModel.DescriptionDetailUiModel descriptionDetailUiModel2 = descriptionDetailUiModel;
                                                Function1 function35 = function32;
                                                switch (i19) {
                                                    case 0:
                                                        ProductUiModel.Companion companion = ProductUiModel.d1;
                                                        function35.invoke(descriptionDetailUiModel2.f61676b);
                                                        break;
                                                    default:
                                                        ProductUiModel.Companion companion2 = ProductUiModel.d1;
                                                        function35.invoke(descriptionDetailUiModel2.f61676b);
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        }, 1, null);
                                    } else {
                                        List<DetailedFeatureUiModel.ProductDetailSectionUiModel> list2 = descriptionDetailUiModel.d;
                                        ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list2, 10));
                                        for (DetailedFeatureUiModel.ProductDetailSectionUiModel productDetailSectionUiModel : list2) {
                                            productDetailSectionUiModel.getClass();
                                            arrayList5.add(new PanelInfoHtmlSection(productDetailSectionUiModel.f61681b, productDetailSectionUiModel.f61682c));
                                        }
                                        final int i19 = 1;
                                        panelInfoSectionsItem = new PanelInfoSectionsItem(str7, arrayList5, str6, i16 == 0 ? CollapsingState.EXPANDED : CollapsingState.COLLAPSED, new Function0() { // from class: fq0
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i110 = i19;
                                                DetailedFeatureUiModel.DescriptionDetailUiModel descriptionDetailUiModel2 = descriptionDetailUiModel;
                                                Function1 function35 = function32;
                                                switch (i110) {
                                                    case 0:
                                                        ProductUiModel.Companion companion = ProductUiModel.d1;
                                                        function35.invoke(descriptionDetailUiModel2.f61676b);
                                                        break;
                                                    default:
                                                        ProductUiModel.Companion companion2 = ProductUiModel.d1;
                                                        function35.invoke(descriptionDetailUiModel2.f61676b);
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        });
                                    }
                                    arrayList2.add(panelInfoSectionsItem);
                                    i16 = i17;
                                }
                            } else {
                                i3 = 1;
                                if (!Intrinsics.c(detailedFeatureUiModel, DetailedFeatureUiModel.None.f61680b)) {
                                    v40.g();
                                    return;
                                }
                            }
                            if (list != null) {
                                for (Object obj3 : list) {
                                    if (((PanelInfoUiModel) obj3).f61717b == PanelInformationType.PRODUCT_CARE) {
                                        obj = obj3;
                                        break;
                                    }
                                }
                                obj = (PanelInfoUiModel) obj;
                            }
                            if (obj == null) {
                                ProductUiModel.a(productUiModel, arrayList2, strC2, function33);
                            }
                            if (list != null) {
                                for (PanelInfoUiModel panelInfoUiModel : list) {
                                    if (!StringsKt.w(panelInfoUiModel.f61718c) && !StringsKt.w(panelInfoUiModel.d)) {
                                        arrayList2.add(new PanelInfoHtmlItem(panelInfoUiModel.f61719e, panelInfoUiModel.d, panelInfoUiModel.f61718c, null, new jm0(function34, panelInfoUiModel, 13), 8, null));
                                    }
                                    if (panelInfoUiModel.f61717b == PanelInformationType.PRODUCT_CARE) {
                                        ProductUiModel.a(productUiModel, arrayList2, strC2, function33);
                                    }
                                }
                            }
                            i4 = 0;
                            gapComposerH.Z(false);
                            arrayList = arrayList2;
                        }
                        i3 = 1;
                        if (list != null) {
                            while (r0.hasNext()) {
                                if (((PanelInfoUiModel) obj3).f61717b == PanelInformationType.PRODUCT_CARE) {
                                    obj = obj3;
                                    break;
                                }
                            }
                            obj = (PanelInfoUiModel) obj;
                        }
                        if (obj == null) {
                            ProductUiModel.a(productUiModel, arrayList2, strC2, function33);
                        }
                        if (list != null) {
                            while (r0.hasNext()) {
                                if (!StringsKt.w(panelInfoUiModel.f61718c)) {
                                    arrayList2.add(new PanelInfoHtmlItem(panelInfoUiModel.f61719e, panelInfoUiModel.d, panelInfoUiModel.f61718c, null, new jm0(function34, panelInfoUiModel, 13), 8, null));
                                }
                                if (panelInfoUiModel.f61717b == PanelInformationType.PRODUCT_CARE) {
                                    ProductUiModel.a(productUiModel, arrayList2, strC2, function33);
                                }
                            }
                        }
                        i4 = 0;
                        gapComposerH.Z(false);
                        arrayList = arrayList2;
                    }
                    if (arrayList == null || (immutableListB = ExtensionsKt.a(arrayList)) == null) {
                        immutableListB = UtilsKt.b();
                    }
                    ImmutableList immutableList2 = immutableListB;
                    int i20 = r16 & 112;
                    int i21 = i20 != 32 ? i4 : i3;
                    Object objX9 = gapComposerH.x();
                    if (i21 != 0) {
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        i5 = 16384;
                        PdpComposableKt$PdpComposable$5$1 pdpComposableKt$PdpComposable$5$1 = new PdpComposableKt$PdpComposable$5$1(0, pdpViewModel, PdpViewModel.class, "addToCart", "addToCart()V", 0);
                        gapComposerH.q(pdpComposableKt$PdpComposable$5$1);
                        objX9 = pdpComposableKt$PdpComposable$5$1;
                    } else {
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$2;
                        if (objX9 == composer$Companion$Empty$3) {
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            i5 = 16384;
                            PdpComposableKt$PdpComposable$5$1 pdpComposableKt$PdpComposable$5$2 = new PdpComposableKt$PdpComposable$5$1(0, pdpViewModel, PdpViewModel.class, "addToCart", "addToCart()V", 0);
                            gapComposerH.q(pdpComposableKt$PdpComposable$5$2);
                            objX9 = pdpComposableKt$PdpComposable$5$2;
                        } else {
                            composer$Companion$Empty$1 = composer$Companion$Empty$3;
                            i5 = 16384;
                        }
                    }
                    KFunction kFunction = (KFunction) objX9;
                    int i22 = i20 != 32 ? i4 : i3;
                    Object objX10 = gapComposerH.x();
                    if (i22 != 0 || objX10 == composer$Companion$Empty$1) {
                        PdpComposableKt$PdpComposable$6$1 pdpComposableKt$PdpComposable$6$1 = new PdpComposableKt$PdpComposable$6$1(0, pdpViewModel, PdpViewModel.class, "reloadWithoutCustomization", "reloadWithoutCustomization()V", 0);
                        gapComposerH.q(pdpComposableKt$PdpComposable$6$1);
                        objX10 = pdpComposableKt$PdpComposable$6$1;
                    }
                    KFunction kFunction2 = (KFunction) objX10;
                    int i23 = i20 != 32 ? i4 : i3;
                    Object objX11 = gapComposerH.x();
                    if (i23 != 0 || objX11 == composer$Companion$Empty$1) {
                        PdpComposableKt$PdpComposable$7$1 pdpComposableKt$PdpComposable$7$1 = new PdpComposableKt$PdpComposable$7$1(2, pdpViewModel, PdpViewModel.class, "navigateToCustomization", "navigateToCustomization(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V", 0);
                        gapComposerH.q(pdpComposableKt$PdpComposable$7$1);
                        objX11 = pdpComposableKt$PdpComposable$7$1;
                    }
                    KFunction kFunction3 = (KFunction) objX11;
                    int i24 = i20 != 32 ? i4 : i3;
                    Object objX12 = gapComposerH.x();
                    if (i24 != 0 || objX12 == composer$Companion$Empty$1) {
                        PdpComposableKt$PdpComposable$8$1 pdpComposableKt$PdpComposable$8$1 = new PdpComposableKt$PdpComposable$8$1(1, pdpViewModel, PdpViewModel.class, "onPermissionRefused", "onPermissionRefused(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;)V", 0);
                        gapComposerH.q(pdpComposableKt$PdpComposable$8$1);
                        objX12 = pdpComposableKt$PdpComposable$8$1;
                    }
                    KFunction kFunction4 = (KFunction) objX12;
                    int i25 = i20 != 32 ? i4 : i3;
                    Object objX13 = gapComposerH.x();
                    if (i25 != 0 || objX13 == composer$Companion$Empty$1) {
                        pdpViewModel2 = pdpViewModel;
                        PdpComposableKt$PdpComposable$9$1 pdpComposableKt$PdpComposable$9$1 = new PdpComposableKt$PdpComposable$9$1(3, pdpViewModel2, PdpViewModel.class, "handleCustomizationCardClicked", "handleCustomizationCardClicked(Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V", 0);
                        gapComposerH.q(pdpComposableKt$PdpComposable$9$1);
                        objX13 = pdpComposableKt$PdpComposable$9$1;
                    } else {
                        pdpViewModel2 = pdpViewModel;
                    }
                    KFunction kFunction5 = (KFunction) objX13;
                    Context context4 = context;
                    SharedFlowImpl t = permissionsViewModel.getT();
                    Function0 function35 = (Function0) kFunction;
                    int i26 = i20 != 32 ? i4 : i3;
                    Object objX14 = gapComposerH.x();
                    if (i26 != 0 || objX14 == composer$Companion$Empty$1) {
                        objX14 = new Function0() { // from class: gm0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i110 = i3;
                                PdpViewModel pdpViewModel3 = pdpViewModel2;
                                switch (i110) {
                                    case 0:
                                        pdpViewModel3.B4();
                                        break;
                                    default:
                                        pdpViewModel3.f0();
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX14);
                    }
                    Function0 function36 = (Function0) objX14;
                    MutableState mutableState5 = mutableState;
                    int i27 = (gapComposerH.K(mutableState5) ? 1 : 0) | (i20 != 32 ? i4 : i3) | (gapComposerH.y(context4) ? 1 : 0);
                    Object objX15 = gapComposerH.x();
                    if (i27 != 0 || objX15 == composer$Companion$Empty$1) {
                        objX15 = new of0(mutableState5, pdpViewModel2, context4);
                        gapComposerH.q(objX15);
                    }
                    Function0 function37 = (Function0) objX15;
                    Function0 function38 = (Function0) kFunction2;
                    int i28 = (i20 != 32 ? i4 : i3) | ((i8 & 57344) == i5 ? i3 : i4) | (gapComposerH.y(contactUsTracker) ? 1 : 0);
                    Object objX16 = gapComposerH.x();
                    if (i28 != 0 || objX16 == composer$Companion$Empty$1) {
                        objX16 = new of0(pdpViewModel2, function20, contactUsTracker, 26);
                        gapComposerH.q(objX16);
                    }
                    Function0 function39 = (Function0) objX16;
                    LegalConsentsTracker legalConsentsTracker3 = legalConsentsTracker;
                    int i29 = (gapComposerH.y(legalConsentsTracker3) ? 1 : 0) | (i20 != 32 ? i4 : i3) | ((i7 & 3670016) == 1048576 ? i3 : i4) | ((i7 & 57344) == i5 ? i3 : i4);
                    Object objX17 = gapComposerH.x();
                    if (i29 != 0 || objX17 == composer$Companion$Empty$1) {
                        mutableState3 = mutableState5;
                        d1 d1Var = new d1(16, pdpViewModel2, legalConsentsTracker3, mutableState2, function10, function12);
                        gapComposerH.q(d1Var);
                        objX17 = d1Var;
                    } else {
                        mutableState3 = mutableState5;
                    }
                    Function1 function40 = (Function1) objX17;
                    final PdpTracker pdpTracker5 = pdpTracker3;
                    int i30 = (gapComposerH.K(mutableState3) ? 1 : 0) | (gapComposerH.y(pdpTracker5) ? 1 : 0) | (i20 != 32 ? i4 : i3);
                    Object objX18 = gapComposerH.x();
                    if (i30 != 0 || objX18 == composer$Companion$Empty$1) {
                        objX18 = new Function2<SkuIdUiModel, VariationType, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.PdpComposableKt$PdpComposable$14$1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj4, Object obj5) {
                                boolean zEquals;
                                String str8 = ((SkuIdUiModel) obj4).f61764b;
                                VariationType variationType = (VariationType) obj5;
                                str8.getClass();
                                ProductUiModel productUiModel2 = ((PdpViewState) mutableState3.getF10755b()).f61566b;
                                String str9 = productUiModel2 != null ? productUiModel2.f61735b : null;
                                if (str9 == null) {
                                    zEquals = false;
                                } else {
                                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                    zEquals = str8.equals(str9);
                                }
                                if (!zEquals) {
                                    if (variationType != null) {
                                        PdpTracker pdpTracker6 = pdpTracker5;
                                        pdpTracker6.getClass();
                                        pdpTracker6.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnVariationClickedEvent(str8, variationType, null), pdpTracker6.f61586b, pdpTracker6.f61587c, pdpTracker6.d));
                                    }
                                    PdpViewModel.Db(pdpViewModel2, str8, null, 6);
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX18);
                    }
                    Function2 function41 = (Function2) objX18;
                    Function2 function42 = (Function2) kFunction3;
                    Function1 function43 = (Function1) kFunction4;
                    Function3 function44 = (Function3) kFunction5;
                    boolean zY5 = gapComposerH.y(appsFlyerUiTracker);
                    Object objX19 = gapComposerH.x();
                    if (zY5 || objX19 == composer$Companion$Empty$1) {
                        objX19 = new x60(appsFlyerUiTracker, 25);
                        gapComposerH.q(objX19);
                    }
                    int i31 = r16 >> 3;
                    int i32 = i7 << 6;
                    int i33 = i7 << 3;
                    int i34 = i8 << 9;
                    PdpScreenKt.a(pdpViewState, contactUsUiModel, permissionsUiModel, reinsuranceUiModel, zF, snackbarHostState, pdpBottomSheetType, lVModalBottomSheetStateF, flowG0, immutableList, immutableList2, function31, function29, function0, function1, function30, function3, function2, function4, function5, function6, function7, function35, function36, function8, function10, function9, function11, function13, function15, function16, function14, function17, function37, function18, function38, function19, function39, function21, function22, function23, function24, function25, function40, function41, function26, function42, function43, function27, function44, function28, t, (Function0) objX19, gapComposerH, ((r16 << 15) & ImageMetadata.JPEG_GPS_COORDINATES) | (LVModalBottomSheetState.f48797e << 21), (i31 & 3670016) | (i31 & 7168) | KyberEngine.KyberPolyBytes | (i31 & 57344) | ((r16 << 3) & 29360128) | (r16 & 234881024) | (i6 & 1879048192), (i7 & 126) | (i32 & 57344) | (i33 & ImageMetadata.JPEG_GPS_COORDINATES) | ((i7 << 9) & 3670016) | (29360128 & i32) | (i33 & 234881024) | (i7 & 1879048192), (i8 & 14) | ((i7 >> 21) & 112) | ((i8 << 3) & 896) | ((i8 << 6) & 57344) | (i34 & 3670016) | (i34 & 234881024) | (i34 & 1879048192), ((i8 >> 21) & 1022) | ((i9 << 15) & ImageMetadata.JPEG_GPS_COORDINATES) | (234881024 & (i9 << 21)), (i9 >> 6) & 14);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                }
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(pdpViewModel, reinsuranceViewModel, permissionsViewModel, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function20, function21, function22, function23, function24, function25, function26, function27, function28, i2) { // from class: hm0
                public final /* synthetic */ Function1 A;
                public final /* synthetic */ Function1 B;
                public final /* synthetic */ Function1 C;
                public final /* synthetic */ Function1 D;
                public final /* synthetic */ Function0 E;
                public final /* synthetic */ Function1 F;
                public final /* synthetic */ Function1 G;
                public final /* synthetic */ Function1 H;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PdpViewModel f69745c;
                public final /* synthetic */ ReinsuranceViewModel d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ PermissionsViewModel f69746e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function0 f69747f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f69748h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f69749i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f69750j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f69751k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function1 m;
                public final /* synthetic */ Function0 n;
                public final /* synthetic */ Function0 o;
                public final /* synthetic */ Function0 p;
                public final /* synthetic */ Function0 q;
                public final /* synthetic */ Function0 r;
                public final /* synthetic */ Function0 s;
                public final /* synthetic */ Function0 t;
                public final /* synthetic */ Function0 u;
                public final /* synthetic */ Function0 v;
                public final /* synthetic */ Function0 w;
                public final /* synthetic */ Function0 x;
                public final /* synthetic */ Function1 y;
                public final /* synthetic */ Function0 z;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    ((Integer) obj5).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    PdpComposableKt.a(this.f69744b, this.f69745c, this.d, this.f69746e, this.f69747f, this.g, this.f69748h, this.f69749i, this.f69750j, this.f69751k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F, this.G, this.H, (Composer) obj4, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
