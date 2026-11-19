package com.vuitton.android.presentation.screen.plp.components.composables;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.compose.FlowExtKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.compose.components.LifecycleEventKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPCategoryComposableKt;
import com.vuitton.android.presentation.screen.plp.components.screens.PLPScreenKt;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import defpackage.a;
import defpackage.aj0;
import defpackage.fj0;
import defpackage.fk0;
import defpackage.gi0;
import defpackage.je;
import defpackage.k0;
import defpackage.k3;
import defpackage.rh0;
import defpackage.tb0;
import defpackage.uv;
import defpackage.wd0;
import defpackage.x60;
import defpackage.xe0;
import defpackage.xg0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;", "plpCategoryViewState", "", "currentCategoryId", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;", "quickAccessFiltersViewState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPCategoryComposableKt {
    /* JADX WARN: Code duplicated, block: B:208:0x041e  */
    /* JADX WARN: Code duplicated, block: B:209:0x0420  */
    /* JADX WARN: Code duplicated, block: B:213:0x0429  */
    /* JADX WARN: Code duplicated, block: B:218:0x044e  */
    /* JADX WARN: Code duplicated, block: B:219:0x0450  */
    /* JADX WARN: Code duplicated, block: B:225:0x045d  */
    /* JADX WARN: Code duplicated, block: B:228:0x0478  */
    /* JADX WARN: Code duplicated, block: B:229:0x047a  */
    /* JADX WARN: Code duplicated, block: B:231:0x047d  */
    /* JADX WARN: Code duplicated, block: B:232:0x047f  */
    /* JADX WARN: Code duplicated, block: B:236:0x048b  */
    /* JADX WARN: Code duplicated, block: B:239:0x049c  */
    /* JADX WARN: Code duplicated, block: B:240:0x049f  */
    /* JADX WARN: Code duplicated, block: B:243:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:244:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:248:0x04b7  */
    /* JADX WARN: Code duplicated, block: B:251:0x04c7  */
    /* JADX WARN: Code duplicated, block: B:252:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:256:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:260:0x04ee  */
    /* JADX WARN: Code duplicated, block: B:263:0x04fb  */
    /* JADX WARN: Code duplicated, block: B:264:0x04fd  */
    /* JADX WARN: Code duplicated, block: B:267:0x0503  */
    /* JADX WARN: Code duplicated, block: B:268:0x0505  */
    /* JADX WARN: Code duplicated, block: B:272:0x050f  */
    /* JADX WARN: Code duplicated, block: B:275:0x0525  */
    /* JADX WARN: Code duplicated, block: B:276:0x0527  */
    /* JADX WARN: Code duplicated, block: B:280:0x0530  */
    /* JADX WARN: Code duplicated, block: B:283:0x0544  */
    /* JADX WARN: Code duplicated, block: B:284:0x0546  */
    /* JADX WARN: Code duplicated, block: B:287:0x054e  */
    /* JADX WARN: Code duplicated, block: B:288:0x0550  */
    /* JADX WARN: Code duplicated, block: B:294:0x055e  */
    /* JADX WARN: Code duplicated, block: B:297:0x0570  */
    /* JADX WARN: Code duplicated, block: B:299:0x0578  */
    /* JADX WARN: Code duplicated, block: B:301:0x057c  */
    /* JADX WARN: Code duplicated, block: B:302:0x057e  */
    /* JADX WARN: Code duplicated, block: B:305:0x0588  */
    /* JADX WARN: Code duplicated, block: B:306:0x058a  */
    /* JADX WARN: Code duplicated, block: B:312:0x059b  */
    /* JADX WARN: Code duplicated, block: B:315:0x05af  */
    /* JADX WARN: Code duplicated, block: B:317:0x05b3  */
    /* JADX WARN: Code duplicated, block: B:321:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:324:0x05d6  */
    /* JADX WARN: Code duplicated, block: B:325:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:331:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:334:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:335:0x05f5  */
    /* JADX WARN: Code duplicated, block: B:339:0x05fe  */
    /* JADX WARN: Code duplicated, block: B:342:0x060d  */
    /* JADX WARN: Code duplicated, block: B:343:0x060f  */
    /* JADX WARN: Code duplicated, block: B:347:0x0618  */
    /* JADX WARN: Code duplicated, block: B:350:0x062e  */
    /* JADX WARN: Code duplicated, block: B:351:0x0630  */
    /* JADX WARN: Code duplicated, block: B:353:0x0633  */
    /* JADX WARN: Code duplicated, block: B:354:0x0635  */
    /* JADX WARN: Code duplicated, block: B:360:0x0655  */
    /* JADX WARN: Code duplicated, block: B:363:0x0665  */
    /* JADX WARN: Code duplicated, block: B:364:0x0667  */
    /* JADX WARN: Code duplicated, block: B:368:0x0670  */
    /* JADX WARN: Code duplicated, block: B:371:0x0682  */
    /* JADX WARN: Code duplicated, block: B:372:0x0684  */
    /* JADX WARN: Code duplicated, block: B:376:0x068d  */
    /* JADX WARN: Code duplicated, block: B:379:0x069d  */
    /* JADX WARN: Code duplicated, block: B:380:0x069f  */
    /* JADX WARN: Code duplicated, block: B:386:0x06ab  */
    /* JADX WARN: Code duplicated, block: B:390:0x06bf  */
    /* JADX WARN: Code duplicated, block: B:396:0x06db  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Modifier modifier, final PLPCategoryViewModel pLPCategoryViewModel, final QuickAccessFiltersViewModel quickAccessFiltersViewModel, final String str, List list, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, Function1 function4, final Function0 function5, final Function1 function6, final Function3 function7, final Function1 function8, final Function2 function9, final Function1 function10, Function2 function11, final Function0 function12, final Function0 function13, final Function0 function14, final Function1 function15, final Function0 function16, final Function1 function17, final Function1 function18, final Function0 function19, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        GapComposer gapComposer;
        final List list2;
        final Function1 function20;
        final Function2 function21;
        final Modifier modifier2;
        int i8;
        Modifier dTFunctionNameModifier;
        Function1 function22;
        Function2 function23;
        Function2 function24;
        int i9;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i10;
        char c2;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        boolean z;
        Composer$Companion$Empty$1 composer$Companion$Empty$3;
        boolean z2;
        Object objX;
        int i11;
        boolean z3;
        Object objX2;
        final PLPCategoryViewModel pLPCategoryViewModel2;
        boolean z4;
        boolean z5;
        boolean z6;
        Object objX3;
        Function2 function25;
        Function2 function26;
        boolean z7;
        boolean zY;
        Object objX4;
        boolean z8;
        Object objX5;
        boolean zY2;
        Object objX6;
        boolean z9;
        boolean z10;
        boolean z11;
        Object objX7;
        boolean z12;
        Object objX8;
        boolean z13;
        boolean z14;
        boolean z15;
        Object objX9;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        Object objX10;
        QuickAccessFiltersViewModel quickAccessFiltersViewModel2;
        Function2 function27;
        boolean z21;
        boolean zK;
        Object objX11;
        boolean z22;
        Object objX12;
        final int i12;
        int i13;
        Object objX13;
        int i14;
        Object objX14;
        int i15;
        int i16;
        String str2;
        String str3;
        boolean z23;
        Object objX15;
        boolean z24;
        Object objX16;
        boolean z25;
        Object objX17;
        boolean z26;
        Object objX18;
        final int i17;
        boolean z27;
        Object objX19;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PLPCategoryComposable");
        }
        pLPCategoryViewModel.getClass();
        quickAccessFiltersViewModel.getClass();
        function0.getClass();
        function3.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        function15.getClass();
        function16.getClass();
        function18.getClass();
        function19.getClass();
        GapComposer gapComposerH = composer.h(-1751045971);
        int i18 = i3 & 1;
        if (i18 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        }
        int i19 = i4 | (gapComposerH.K(pLPCategoryViewModel) ? 32 : 16) | (gapComposerH.K(quickAccessFiltersViewModel) ? 256 : 128);
        if ((i2 & 3072) == 0) {
            i19 |= gapComposerH.K(str) ? 2048 : 1024;
        }
        int i20 = i19;
        int i21 = i3 & 16;
        if (i21 != 0) {
            i5 = i20 | 24576;
        } else {
            i5 = i20 | (gapComposerH.y(list) ? 16384 : 8192);
        }
        int i22 = i5 | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function2) ? 8388608 : 4194304) | (gapComposerH.y(function3) ? 67108864 : 33554432);
        int i23 = i3 & 512;
        if (i23 != 0) {
            i6 = i22 | 805306368;
        } else {
            i6 = i22 | (gapComposerH.y(function4) ? 536870912 : 268435456);
        }
        int i24 = (gapComposerH.y(function5) ? 4 : 2) | (gapComposerH.y(function6) ? 32 : 16) | (gapComposerH.y(function7) ? 256 : 128) | (gapComposerH.y(function8) ? 2048 : 1024) | (gapComposerH.y(function9) ? 16384 : 8192) | (gapComposerH.y(function10) ? 131072 : 65536);
        int i25 = i3 & 65536;
        if (i25 != 0) {
            i7 = i24 | 1572864;
        } else {
            i7 = i24 | (gapComposerH.y(function11) ? 1048576 : 524288);
        }
        int i26 = i7 | (gapComposerH.y(function12) ? 8388608 : 4194304) | (gapComposerH.y(function13) ? 67108864 : 33554432) | (gapComposerH.y(function14) ? 536870912 : 268435456);
        int i27 = (gapComposerH.y(function15) ? 4 : 2) | (gapComposerH.y(function16) ? 32 : 16) | (gapComposerH.y(function17) ? 256 : 128) | (gapComposerH.y(function18) ? 2048 : 1024) | (gapComposerH.y(function19) ? 16384 : 8192);
        if (gapComposerH.p(i6 & 1, ((i6 & 306783379) == 306783378 && (i26 & 306783379) == 306783378 && (i27 & 9363) == 9362) ? false : true)) {
            if (i18 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PLPCategoryComposable");
                i8 = i21;
            } else {
                i8 = i21;
                dTFunctionNameModifier = modifierE;
            }
            List list3 = i8 != 0 ? EmptyList.f71768b : list;
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
            if (i23 != 0) {
                Object objX20 = gapComposerH.x();
                if (objX20 == composer$Companion$Empty$4) {
                    objX20 = new fj0(19);
                    gapComposerH.q(objX20);
                }
                function22 = (Function1) objX20;
            } else {
                function22 = function4;
            }
            if (i25 != 0) {
                Object objX21 = gapComposerH.x();
                if (objX21 == composer$Companion$Empty$4) {
                    objX21 = new aj0(7);
                    gapComposerH.q(objX21);
                }
                function23 = (Function2) objX21;
            } else {
                function23 = function11;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            Lifecycle.Event eventA = LifecycleEventKt.a(gapComposerH);
            Function2 function28 = function23;
            int i28 = i6;
            MutableState mutableStateC = FlowExtKt.c(pLPCategoryViewModel.a(), null, gapComposerH, 0, 7);
            MutableState mutableStateC2 = FlowExtKt.c(pLPCategoryViewModel.C2(), null, gapComposerH, 0, 7);
            MutableState mutableStateC3 = FlowExtKt.c(quickAccessFiltersViewModel.getL(), null, gapComposerH, 0, 7);
            MutableState mutableStateA = FlowExtKt.a(pLPCategoryViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), gapComposerH);
            String str4 = ((PLPViewState) mutableStateC.getF10755b()).f63006b;
            if (str4 == null) {
                str4 = "";
            }
            String str5 = ((PLPViewState) mutableStateC.getF10755b()).f63005a;
            String str6 = str5 != null ? str5 : "";
            int i29 = i28 & 112;
            boolean zD = gapComposerH.d(eventA.ordinal()) | (i29 == 32);
            Object objX22 = gapComposerH.x();
            if (zD || objX22 == composer$Companion$Empty$4) {
                objX22 = new PLPCategoryComposableKt$PLPCategoryComposable$6$1(eventA, pLPCategoryViewModel, null);
                gapComposerH.q(objX22);
            }
            EffectsKt.e(gapComposerH, eventA, (Function2) objX22);
            Unit unit = Unit.f71739a;
            boolean z28 = i29 == 32;
            Object objX23 = gapComposerH.x();
            if (z28 || objX23 == composer$Companion$Empty$4) {
                function24 = null;
                objX23 = new PLPCategoryComposableKt$PLPCategoryComposable$7$1(pLPCategoryViewModel, null);
                gapComposerH.q(objX23);
            } else {
                function24 = null;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX23);
            boolean zK2 = gapComposerH.K((String) mutableStateC2.getF10755b()) | gapComposerH.K(context);
            Object objX24 = gapComposerH.x();
            if (zK2 || objX24 == composer$Companion$Empty$4) {
                objX24 = new xg0(context, mutableStateC2, 9);
                gapComposerH.q(objX24);
            }
            Function1 function29 = (Function1) objX24;
            PLPViewState pLPViewState = (PLPViewState) mutableStateC.getF10755b();
            QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) mutableStateC3.getF10755b();
            String str7 = (String) mutableStateC2.getF10755b();
            String f63026j = pLPCategoryViewModel.getF63026j();
            ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
            SharedFlowImpl sharedFlowImplG = pLPCategoryViewModel.g();
            boolean z29 = i29 == 32;
            Object objX25 = gapComposerH.x();
            if (z29 || objX25 == composer$Companion$Empty$4) {
                i9 = i29;
                composer$Companion$Empty$1 = composer$Companion$Empty$4;
                i10 = i26;
                c2 = 256;
                PLPCategoryComposableKt$PLPCategoryComposable$8$1 pLPCategoryComposableKt$PLPCategoryComposable$8$1 = new PLPCategoryComposableKt$PLPCategoryComposable$8$1(0, pLPCategoryViewModel, PLPCategoryViewModel.class, "refreshWishlist", "refreshWishlist()V", 0);
                gapComposerH.q(pLPCategoryComposableKt$PLPCategoryComposable$8$1);
                objX25 = pLPCategoryComposableKt$PLPCategoryComposable$8$1;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$4;
                i10 = i26;
                c2 = 256;
                i9 = i29;
            }
            KFunction kFunction = (KFunction) objX25;
            boolean z30 = i28 & 896;
            boolean z31 = z30 == c2;
            Object objX26 = gapComposerH.x();
            if (z31) {
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
            } else {
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                if (objX26 != composer$Companion$Empty$2) {
                    z = z30;
                    composer$Companion$Empty$3 = composer$Companion$Empty$2;
                }
                KFunction kFunction2 = (KFunction) objX26;
                if (i9 != 32) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                objX = gapComposerH.x();
                if (!z2 || objX == composer$Companion$Empty$3) {
                    i11 = 32;
                    PLPCategoryComposableKt$PLPCategoryComposable$10$1 pLPCategoryComposableKt$PLPCategoryComposable$10$1 = new PLPCategoryComposableKt$PLPCategoryComposable$10$1(1, pLPCategoryViewModel, PLPCategoryViewModel.class, "updateCurrentGridMode", "updateCurrentGridMode(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V", 0);
                    gapComposerH.q(pLPCategoryComposableKt$PLPCategoryComposable$10$1);
                    objX = pLPCategoryComposableKt$PLPCategoryComposable$10$1;
                } else {
                    i11 = 32;
                }
                KFunction kFunction3 = (KFunction) objX;
                if (i9 != i11) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                objX2 = gapComposerH.x();
                if (!z3 || objX2 == composer$Companion$Empty$3) {
                    pLPCategoryViewModel2 = pLPCategoryViewModel;
                    PLPCategoryComposableKt$PLPCategoryComposable$11$1 pLPCategoryComposableKt$PLPCategoryComposable$11$1 = new PLPCategoryComposableKt$PLPCategoryComposable$11$1(1, pLPCategoryViewModel2, PLPCategoryViewModel.class, "onWishlistAnimationEnded", "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                    gapComposerH.q(pLPCategoryComposableKt$PLPCategoryComposable$11$1);
                    objX2 = pLPCategoryComposableKt$PLPCategoryComposable$11$1;
                } else {
                    pLPCategoryViewModel2 = pLPCategoryViewModel;
                }
                KFunction kFunction4 = (KFunction) objX2;
                if ((i10 & 896) == 256) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (i9 != i11) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                z6 = z4 | z5;
                objX3 = gapComposerH.x();
                if (z6 || objX3 == composer$Companion$Empty$3) {
                    objX3 = new wd0(function7, pLPCategoryViewModel2, 14);
                    gapComposerH.q(objX3);
                }
                function25 = (Function2) objX3;
                if (pLPCategoryViewModel2.B2()) {
                    function26 = function25;
                } else {
                    function26 = function24;
                }
                Function0 function30 = (Function0) kFunction;
                if (i9 != i11) {
                    z7 = false;
                } else {
                    z7 = true;
                }
                zY = z7 | gapComposerH.y(context);
                objX4 = gapComposerH.x();
                if (zY || objX4 == composer$Companion$Empty$3) {
                    objX4 = new rh0(pLPCategoryViewModel2, context, 16);
                    gapComposerH.q(objX4);
                }
                Function0 function31 = (Function0) objX4;
                if (i9 != i11) {
                    z8 = false;
                } else {
                    z8 = true;
                }
                objX5 = gapComposerH.x();
                if (z8 || objX5 == composer$Companion$Empty$3) {
                    objX5 = new x60(pLPCategoryViewModel2, 24);
                    gapComposerH.q(objX5);
                }
                Function0 function32 = (Function0) objX5;
                zY2 = gapComposerH.y(context);
                objX6 = gapComposerH.x();
                if (zY2 || objX6 == composer$Companion$Empty$3) {
                    objX6 = new je(context, 20);
                    gapComposerH.q(objX6);
                }
                Function0 function33 = (Function0) objX6;
                if (i9 != i11) {
                    z9 = false;
                } else {
                    z9 = true;
                }
                if ((i10 & 14) == 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = z9 | z10;
                objX7 = gapComposerH.x();
                if (z11 || objX7 == composer$Companion$Empty$3) {
                    objX7 = new rh0(pLPCategoryViewModel2, function5, 15);
                    gapComposerH.q(objX7);
                }
                Function0 function34 = (Function0) objX7;
                Function1 function35 = (Function1) kFunction2;
                if ((i10 & 112) == i11) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                objX8 = gapComposerH.x();
                if (z12 || objX8 == composer$Companion$Empty$3) {
                    objX8 = new k0(function6, 22);
                    gapComposerH.q(objX8);
                }
                Function1 function36 = (Function1) objX8;
                Function1 function37 = (Function1) kFunction3;
                if (i9 != i11) {
                    z13 = false;
                } else {
                    z13 = true;
                }
                if ((234881024 & i10) == 67108864) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                z15 = z13 | z14;
                objX9 = gapComposerH.x();
                if (z15 || objX9 == composer$Companion$Empty$3) {
                    objX9 = new xg0(pLPCategoryViewModel2, function13, 10);
                    gapComposerH.q(objX9);
                }
                Function1 function38 = (Function1) objX9;
                if (i9 != i11) {
                    z16 = false;
                } else {
                    z16 = true;
                }
                z17 = z;
                if (z17 != 256) {
                    z18 = false;
                } else {
                    z18 = true;
                }
                boolean z32 = z16 | z18;
                if ((i10 & 3670016) == 1048576) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                z20 = z32 | z19;
                objX10 = gapComposerH.x();
                if (!z20 || objX10 == composer$Companion$Empty$3) {
                    quickAccessFiltersViewModel2 = quickAccessFiltersViewModel;
                    function27 = function28;
                    objX10 = new gi0(pLPCategoryViewModel2, quickAccessFiltersViewModel2, function27, 5);
                    gapComposerH.q(objX10);
                } else {
                    quickAccessFiltersViewModel2 = quickAccessFiltersViewModel;
                    function27 = function28;
                }
                Function2 function39 = (Function2) objX10;
                if (z17 != 256) {
                    z21 = false;
                } else {
                    z21 = true;
                }
                zK = z21 | gapComposerH.K(mutableStateC3);
                objX11 = gapComposerH.x();
                if (zK || objX11 == composer$Companion$Empty$3) {
                    objX11 = new fk0(quickAccessFiltersViewModel2, mutableStateC3, 0);
                    gapComposerH.q(objX11);
                }
                Function2 function40 = (Function2) objX11;
                Function1 function41 = (Function1) kFunction4;
                if (i9 != i11) {
                    z22 = false;
                } else {
                    z22 = true;
                }
                objX12 = gapComposerH.x();
                if (!z22 || objX12 == composer$Companion$Empty$3) {
                    i12 = 1;
                    objX12 = new Function2() { // from class: dk0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i30 = i12;
                            PLPCategoryViewModel pLPCategoryViewModel3 = pLPCategoryViewModel2;
                            switch (i30) {
                                case 0:
                                    GridModes gridModes = (GridModes) obj;
                                    String str8 = (String) obj2;
                                    gridModes.getClass();
                                    str8.getClass();
                                    pLPCategoryViewModel3.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str8));
                                    break;
                                case 1:
                                    PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                    String str9 = (String) obj2;
                                    plpProductUiModel.getClass();
                                    str9.getClass();
                                    pLPCategoryViewModel3.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                    break;
                                default:
                                    PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                    String str10 = (String) obj2;
                                    pLPWishlistUpdateUiModel.getClass();
                                    str10.getClass();
                                    pLPCategoryViewModel3.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str10), new PLPRemoveFromWishlistTrackingMode.Revamp(str10));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX12);
                } else {
                    i12 = 1;
                }
                Function2 function42 = (Function2) objX12;
                if (i9 != i11) {
                    i13 = 0;
                } else {
                    i13 = i12;
                }
                objX13 = gapComposerH.x();
                if (i13 == 0 || objX13 == composer$Companion$Empty$3) {
                    final int i30 = 2;
                    objX13 = new Function2() { // from class: dk0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i31 = i30;
                            PLPCategoryViewModel pLPCategoryViewModel3 = pLPCategoryViewModel2;
                            switch (i31) {
                                case 0:
                                    GridModes gridModes = (GridModes) obj;
                                    String str8 = (String) obj2;
                                    gridModes.getClass();
                                    str8.getClass();
                                    pLPCategoryViewModel3.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str8));
                                    break;
                                case 1:
                                    PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                    String str9 = (String) obj2;
                                    plpProductUiModel.getClass();
                                    str9.getClass();
                                    pLPCategoryViewModel3.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                    break;
                                default:
                                    PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                    String str10 = (String) obj2;
                                    pLPWishlistUpdateUiModel.getClass();
                                    str10.getClass();
                                    pLPCategoryViewModel3.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str10), new PLPRemoveFromWishlistTrackingMode.Revamp(str10));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX13);
                }
                Function2 function43 = (Function2) objX13;
                if (i9 != i11) {
                    i14 = 0;
                } else {
                    i14 = i12;
                }
                objX14 = gapComposerH.x();
                if (i14 == 0 || objX14 == composer$Companion$Empty$3) {
                    objX14 = new xe0(pLPCategoryViewModel2, 5);
                    gapComposerH.q(objX14);
                }
                Function3 function44 = (Function3) objX14;
                if ((i10 & 57344) == 16384) {
                    i15 = i12;
                } else {
                    i15 = 0;
                }
                if (i9 != i11) {
                    i16 = 0;
                } else {
                    i16 = i12;
                }
                int i31 = i15 | i16;
                str2 = str4;
                str3 = str6;
                z23 = ((i31 | (gapComposerH.K(str2) ? 1 : 0)) == true ? 1 : 0) | (gapComposerH.K(str3) ? 1 : 0);
                objX15 = gapComposerH.x();
                if (z23 == 0 || objX15 == composer$Companion$Empty$3) {
                    objX15 = new uv(function9, pLPCategoryViewModel2, str2, str3);
                    gapComposerH.q(objX15);
                }
                Function2 function45 = (Function2) objX15;
                if (i9 != i11) {
                    z24 = false;
                } else {
                    z24 = true;
                }
                objX16 = gapComposerH.x();
                if (z24 || objX16 == composer$Companion$Empty$3) {
                    objX16 = new tb0(pLPCategoryViewModel2, 20);
                    gapComposerH.q(objX16);
                }
                Function1 function46 = (Function1) objX16;
                if (i9 != 32) {
                    z25 = false;
                } else {
                    z25 = true;
                }
                objX17 = gapComposerH.x();
                if (z25 || objX17 == composer$Companion$Empty$3) {
                    objX17 = new Function2<SkuIdUiModel, String, Unit>() { // from class: com.vuitton.android.presentation.screen.plp.components.composables.PLPCategoryComposableKt$PLPCategoryComposable$27$1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            String str8 = ((SkuIdUiModel) obj).f61764b;
                            String str9 = (String) obj2;
                            str8.getClass();
                            str9.getClass();
                            pLPCategoryViewModel2.O0(new PLPTrackingUiModel.ShareProductEvent(str8, str9, null));
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX17);
                }
                Function2 function47 = (Function2) objX17;
                if (i9 != 32) {
                    z26 = false;
                } else {
                    z26 = true;
                }
                objX18 = gapComposerH.x();
                if (!z26 || objX18 == composer$Companion$Empty$3) {
                    i17 = 0;
                    objX18 = new Function2() { // from class: dk0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i32 = i17;
                            PLPCategoryViewModel pLPCategoryViewModel3 = pLPCategoryViewModel2;
                            switch (i32) {
                                case 0:
                                    GridModes gridModes = (GridModes) obj;
                                    String str8 = (String) obj2;
                                    gridModes.getClass();
                                    str8.getClass();
                                    pLPCategoryViewModel3.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str8));
                                    break;
                                case 1:
                                    PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                    String str9 = (String) obj2;
                                    plpProductUiModel.getClass();
                                    str9.getClass();
                                    pLPCategoryViewModel3.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                    break;
                                default:
                                    PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                    String str10 = (String) obj2;
                                    pLPWishlistUpdateUiModel.getClass();
                                    str10.getClass();
                                    pLPCategoryViewModel3.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str10), new PLPRemoveFromWishlistTrackingMode.Revamp(str10));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX18);
                } else {
                    i17 = 0;
                }
                Function2 function48 = (Function2) objX18;
                if (i9 == 32) {
                    i17 = 1;
                }
                z27 = ((i17 | (gapComposerH.y(appsFlyerUiTracker) ? 1 : 0)) == true ? 1 : 0) | (gapComposerH.K(str2) ? 1 : 0) | (gapComposerH.K(str3) ? 1 : 0);
                objX19 = gapComposerH.x();
                if (z27 == 0 || objX19 == composer$Companion$Empty$3) {
                    k3 k3Var = new k3(pLPCategoryViewModel2, str2, str3, appsFlyerUiTracker, 25);
                    gapComposerH.q(k3Var);
                    objX19 = k3Var;
                }
                int i32 = i28 >> 12;
                int i33 = i28 >> 3;
                int i34 = i27 << 6;
                gapComposer = gapComposerH;
                PLPScreenKt.a(dTFunctionNameModifier, pLPViewState, quickAccessFiltersViewState, str, str7, f63026j, list3, contactUsUiModel, true, null, sharedFlowImplG, function0, function30, function31, function1, function22, function2, function3, function32, function33, function34, function35, function36, function37, function38, function39, function8, function40, function41, function42, function10, function43, function44, function26, function45, function29, function12, function14, function46, function47, function15, function48, function16, (Function1) objX19, function17, function18, function19, gapComposer, (i28 & 14) | 100663296 | (i28 & 7168) | ((i28 << 6) & 3670016), (i32 & ImageMetadata.JPEG_GPS_COORDINATES) | (i32 & 112) | ((i28 >> 6) & 57344) | (i33 & 3670016) | (i33 & 29360128), (i10 << 9) & 3670016, ((i10 >> 15) & 14) | ((i10 >> 3) & 3670016) | ((i10 >> 6) & 29360128), (i27 & 14) | ((i27 << 3) & 896) | (i34 & 57344) | (458752 & i34) | (i34 & 3670016), 512, 0);
                function21 = function27;
                modifier2 = dTFunctionNameModifier;
                list2 = list3;
                function20 = function22;
            }
            z = z30;
            composer$Companion$Empty$3 = composer$Companion$Empty$2;
            PLPCategoryComposableKt$PLPCategoryComposable$9$1 pLPCategoryComposableKt$PLPCategoryComposable$9$1 = new PLPCategoryComposableKt$PLPCategoryComposable$9$1(1, quickAccessFiltersViewModel, QuickAccessFiltersViewModel.class, "updateCategory", "updateCategory(Ljava/lang/String;)V", 0);
            gapComposerH.q(pLPCategoryComposableKt$PLPCategoryComposable$9$1);
            objX26 = pLPCategoryComposableKt$PLPCategoryComposable$9$1;
            KFunction kFunction5 = (KFunction) objX26;
            if (i9 != 32) {
                z2 = false;
            } else {
                z2 = true;
            }
            objX = gapComposerH.x();
            if (z2) {
                i11 = 32;
                PLPCategoryComposableKt$PLPCategoryComposable$10$1 pLPCategoryComposableKt$PLPCategoryComposable$10$2 = new PLPCategoryComposableKt$PLPCategoryComposable$10$1(1, pLPCategoryViewModel, PLPCategoryViewModel.class, "updateCurrentGridMode", "updateCurrentGridMode(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V", 0);
                gapComposerH.q(pLPCategoryComposableKt$PLPCategoryComposable$10$2);
                objX = pLPCategoryComposableKt$PLPCategoryComposable$10$2;
            } else {
                i11 = 32;
                PLPCategoryComposableKt$PLPCategoryComposable$10$1 pLPCategoryComposableKt$PLPCategoryComposable$10$3 = new PLPCategoryComposableKt$PLPCategoryComposable$10$1(1, pLPCategoryViewModel, PLPCategoryViewModel.class, "updateCurrentGridMode", "updateCurrentGridMode(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V", 0);
                gapComposerH.q(pLPCategoryComposableKt$PLPCategoryComposable$10$3);
                objX = pLPCategoryComposableKt$PLPCategoryComposable$10$3;
            }
            KFunction kFunction6 = (KFunction) objX;
            if (i9 != i11) {
                z3 = false;
            } else {
                z3 = true;
            }
            objX2 = gapComposerH.x();
            if (z3) {
                pLPCategoryViewModel2 = pLPCategoryViewModel;
                PLPCategoryComposableKt$PLPCategoryComposable$11$1 pLPCategoryComposableKt$PLPCategoryComposable$11$2 = new PLPCategoryComposableKt$PLPCategoryComposable$11$1(1, pLPCategoryViewModel2, PLPCategoryViewModel.class, "onWishlistAnimationEnded", "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                gapComposerH.q(pLPCategoryComposableKt$PLPCategoryComposable$11$2);
                objX2 = pLPCategoryComposableKt$PLPCategoryComposable$11$2;
            } else {
                pLPCategoryViewModel2 = pLPCategoryViewModel;
                PLPCategoryComposableKt$PLPCategoryComposable$11$1 pLPCategoryComposableKt$PLPCategoryComposable$11$3 = new PLPCategoryComposableKt$PLPCategoryComposable$11$1(1, pLPCategoryViewModel2, PLPCategoryViewModel.class, "onWishlistAnimationEnded", "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", 0);
                gapComposerH.q(pLPCategoryComposableKt$PLPCategoryComposable$11$3);
                objX2 = pLPCategoryComposableKt$PLPCategoryComposable$11$3;
            }
            KFunction kFunction7 = (KFunction) objX2;
            if ((i10 & 896) == 256) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (i9 != i11) {
                z5 = false;
            } else {
                z5 = true;
            }
            z6 = z4 | z5;
            objX3 = gapComposerH.x();
            if (z6) {
                objX3 = new wd0(function7, pLPCategoryViewModel2, 14);
                gapComposerH.q(objX3);
            } else {
                objX3 = new wd0(function7, pLPCategoryViewModel2, 14);
                gapComposerH.q(objX3);
            }
            function25 = (Function2) objX3;
            if (pLPCategoryViewModel2.B2()) {
                function26 = function25;
            } else {
                function26 = function24;
            }
            Function0 function310 = (Function0) kFunction;
            if (i9 != i11) {
                z7 = false;
            } else {
                z7 = true;
            }
            zY = z7 | gapComposerH.y(context);
            objX4 = gapComposerH.x();
            if (zY) {
                objX4 = new rh0(pLPCategoryViewModel2, context, 16);
                gapComposerH.q(objX4);
            } else {
                objX4 = new rh0(pLPCategoryViewModel2, context, 16);
                gapComposerH.q(objX4);
            }
            Function0 function311 = (Function0) objX4;
            if (i9 != i11) {
                z8 = false;
            } else {
                z8 = true;
            }
            objX5 = gapComposerH.x();
            if (z8) {
                objX5 = new x60(pLPCategoryViewModel2, 24);
                gapComposerH.q(objX5);
            } else {
                objX5 = new x60(pLPCategoryViewModel2, 24);
                gapComposerH.q(objX5);
            }
            Function0 function312 = (Function0) objX5;
            zY2 = gapComposerH.y(context);
            objX6 = gapComposerH.x();
            if (zY2) {
                objX6 = new je(context, 20);
                gapComposerH.q(objX6);
            } else {
                objX6 = new je(context, 20);
                gapComposerH.q(objX6);
            }
            Function0 function313 = (Function0) objX6;
            if (i9 != i11) {
                z9 = false;
            } else {
                z9 = true;
            }
            if ((i10 & 14) == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            z11 = z9 | z10;
            objX7 = gapComposerH.x();
            if (z11) {
                objX7 = new rh0(pLPCategoryViewModel2, function5, 15);
                gapComposerH.q(objX7);
            } else {
                objX7 = new rh0(pLPCategoryViewModel2, function5, 15);
                gapComposerH.q(objX7);
            }
            Function0 function314 = (Function0) objX7;
            Function1 function315 = (Function1) kFunction5;
            if ((i10 & 112) == i11) {
                z12 = true;
            } else {
                z12 = false;
            }
            objX8 = gapComposerH.x();
            if (z12) {
                objX8 = new k0(function6, 22);
                gapComposerH.q(objX8);
            } else {
                objX8 = new k0(function6, 22);
                gapComposerH.q(objX8);
            }
            Function1 function316 = (Function1) objX8;
            Function1 function317 = (Function1) kFunction6;
            if (i9 != i11) {
                z13 = false;
            } else {
                z13 = true;
            }
            if ((234881024 & i10) == 67108864) {
                z14 = true;
            } else {
                z14 = false;
            }
            z15 = z13 | z14;
            objX9 = gapComposerH.x();
            if (z15) {
                objX9 = new xg0(pLPCategoryViewModel2, function13, 10);
                gapComposerH.q(objX9);
            } else {
                objX9 = new xg0(pLPCategoryViewModel2, function13, 10);
                gapComposerH.q(objX9);
            }
            Function1 function318 = (Function1) objX9;
            if (i9 != i11) {
                z16 = false;
            } else {
                z16 = true;
            }
            z17 = z;
            if (z17 != 256) {
                z18 = false;
            } else {
                z18 = true;
            }
            boolean z33 = z16 | z18;
            if ((i10 & 3670016) == 1048576) {
                z19 = true;
            } else {
                z19 = false;
            }
            z20 = z33 | z19;
            objX10 = gapComposerH.x();
            if (z20) {
                quickAccessFiltersViewModel2 = quickAccessFiltersViewModel;
                function27 = function28;
                objX10 = new gi0(pLPCategoryViewModel2, quickAccessFiltersViewModel2, function27, 5);
                gapComposerH.q(objX10);
            } else {
                quickAccessFiltersViewModel2 = quickAccessFiltersViewModel;
                function27 = function28;
                objX10 = new gi0(pLPCategoryViewModel2, quickAccessFiltersViewModel2, function27, 5);
                gapComposerH.q(objX10);
            }
            Function2 function319 = (Function2) objX10;
            if (z17 != 256) {
                z21 = false;
            } else {
                z21 = true;
            }
            zK = z21 | gapComposerH.K(mutableStateC3);
            objX11 = gapComposerH.x();
            if (zK) {
                objX11 = new fk0(quickAccessFiltersViewModel2, mutableStateC3, 0);
                gapComposerH.q(objX11);
            } else {
                objX11 = new fk0(quickAccessFiltersViewModel2, mutableStateC3, 0);
                gapComposerH.q(objX11);
            }
            Function2 function49 = (Function2) objX11;
            Function1 function410 = (Function1) kFunction7;
            if (i9 != i11) {
                z22 = false;
            } else {
                z22 = true;
            }
            objX12 = gapComposerH.x();
            if (z22) {
                i12 = 1;
                objX12 = new Function2() { // from class: dk0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i35 = i12;
                        PLPCategoryViewModel pLPCategoryViewModel3 = pLPCategoryViewModel2;
                        switch (i35) {
                            case 0:
                                GridModes gridModes = (GridModes) obj;
                                String str8 = (String) obj2;
                                gridModes.getClass();
                                str8.getClass();
                                pLPCategoryViewModel3.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str8));
                                break;
                            case 1:
                                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                String str9 = (String) obj2;
                                plpProductUiModel.getClass();
                                str9.getClass();
                                pLPCategoryViewModel3.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                break;
                            default:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                String str10 = (String) obj2;
                                pLPWishlistUpdateUiModel.getClass();
                                str10.getClass();
                                pLPCategoryViewModel3.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str10), new PLPRemoveFromWishlistTrackingMode.Revamp(str10));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX12);
            } else {
                i12 = 1;
                objX12 = new Function2() { // from class: dk0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i35 = i12;
                        PLPCategoryViewModel pLPCategoryViewModel3 = pLPCategoryViewModel2;
                        switch (i35) {
                            case 0:
                                GridModes gridModes = (GridModes) obj;
                                String str8 = (String) obj2;
                                gridModes.getClass();
                                str8.getClass();
                                pLPCategoryViewModel3.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str8));
                                break;
                            case 1:
                                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                String str9 = (String) obj2;
                                plpProductUiModel.getClass();
                                str9.getClass();
                                pLPCategoryViewModel3.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                break;
                            default:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                String str10 = (String) obj2;
                                pLPWishlistUpdateUiModel.getClass();
                                str10.getClass();
                                pLPCategoryViewModel3.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str10), new PLPRemoveFromWishlistTrackingMode.Revamp(str10));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX12);
            }
            Function2 function411 = (Function2) objX12;
            if (i9 != i11) {
                i13 = 0;
            } else {
                i13 = i12;
            }
            objX13 = gapComposerH.x();
            if (i13 == 0) {
                final int i35 = 2;
                objX13 = new Function2() { // from class: dk0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i36 = i35;
                        PLPCategoryViewModel pLPCategoryViewModel3 = pLPCategoryViewModel2;
                        switch (i36) {
                            case 0:
                                GridModes gridModes = (GridModes) obj;
                                String str8 = (String) obj2;
                                gridModes.getClass();
                                str8.getClass();
                                pLPCategoryViewModel3.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str8));
                                break;
                            case 1:
                                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                String str9 = (String) obj2;
                                plpProductUiModel.getClass();
                                str9.getClass();
                                pLPCategoryViewModel3.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                break;
                            default:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                String str10 = (String) obj2;
                                pLPWishlistUpdateUiModel.getClass();
                                str10.getClass();
                                pLPCategoryViewModel3.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str10), new PLPRemoveFromWishlistTrackingMode.Revamp(str10));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX13);
            } else {
                final int i36 = 2;
                objX13 = new Function2() { // from class: dk0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i37 = i36;
                        PLPCategoryViewModel pLPCategoryViewModel3 = pLPCategoryViewModel2;
                        switch (i37) {
                            case 0:
                                GridModes gridModes = (GridModes) obj;
                                String str8 = (String) obj2;
                                gridModes.getClass();
                                str8.getClass();
                                pLPCategoryViewModel3.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str8));
                                break;
                            case 1:
                                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                String str9 = (String) obj2;
                                plpProductUiModel.getClass();
                                str9.getClass();
                                pLPCategoryViewModel3.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                break;
                            default:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                String str10 = (String) obj2;
                                pLPWishlistUpdateUiModel.getClass();
                                str10.getClass();
                                pLPCategoryViewModel3.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str10), new PLPRemoveFromWishlistTrackingMode.Revamp(str10));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX13);
            }
            Function2 function412 = (Function2) objX13;
            if (i9 != i11) {
                i14 = 0;
            } else {
                i14 = i12;
            }
            objX14 = gapComposerH.x();
            if (i14 == 0) {
                objX14 = new xe0(pLPCategoryViewModel2, 5);
                gapComposerH.q(objX14);
            } else {
                objX14 = new xe0(pLPCategoryViewModel2, 5);
                gapComposerH.q(objX14);
            }
            Function3 function413 = (Function3) objX14;
            if ((i10 & 57344) == 16384) {
                i15 = i12;
            } else {
                i15 = 0;
            }
            if (i9 != i11) {
                i16 = 0;
            } else {
                i16 = i12;
            }
            int i37 = i15 | i16;
            str2 = str4;
            str3 = str6;
            z23 = ((i37 | (gapComposerH.K(str2) ? 1 : 0)) == true ? 1 : 0) | (gapComposerH.K(str3) ? 1 : 0);
            objX15 = gapComposerH.x();
            if (z23 == 0) {
                objX15 = new uv(function9, pLPCategoryViewModel2, str2, str3);
                gapComposerH.q(objX15);
            } else {
                objX15 = new uv(function9, pLPCategoryViewModel2, str2, str3);
                gapComposerH.q(objX15);
            }
            Function2 function414 = (Function2) objX15;
            if (i9 != i11) {
                z24 = false;
            } else {
                z24 = true;
            }
            objX16 = gapComposerH.x();
            if (z24) {
                objX16 = new tb0(pLPCategoryViewModel2, 20);
                gapComposerH.q(objX16);
            } else {
                objX16 = new tb0(pLPCategoryViewModel2, 20);
                gapComposerH.q(objX16);
            }
            Function1 function415 = (Function1) objX16;
            if (i9 != 32) {
                z25 = false;
            } else {
                z25 = true;
            }
            objX17 = gapComposerH.x();
            if (z25) {
                objX17 = new Function2<SkuIdUiModel, String, Unit>() { // from class: com.vuitton.android.presentation.screen.plp.components.composables.PLPCategoryComposableKt$PLPCategoryComposable$27$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        String str8 = ((SkuIdUiModel) obj).f61764b;
                        String str9 = (String) obj2;
                        str8.getClass();
                        str9.getClass();
                        pLPCategoryViewModel2.O0(new PLPTrackingUiModel.ShareProductEvent(str8, str9, null));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX17);
            } else {
                objX17 = new Function2<SkuIdUiModel, String, Unit>() { // from class: com.vuitton.android.presentation.screen.plp.components.composables.PLPCategoryComposableKt$PLPCategoryComposable$27$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        String str8 = ((SkuIdUiModel) obj).f61764b;
                        String str9 = (String) obj2;
                        str8.getClass();
                        str9.getClass();
                        pLPCategoryViewModel2.O0(new PLPTrackingUiModel.ShareProductEvent(str8, str9, null));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX17);
            }
            Function2 function416 = (Function2) objX17;
            if (i9 != 32) {
                z26 = false;
            } else {
                z26 = true;
            }
            objX18 = gapComposerH.x();
            if (z26) {
                i17 = 0;
                objX18 = new Function2() { // from class: dk0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i38 = i17;
                        PLPCategoryViewModel pLPCategoryViewModel3 = pLPCategoryViewModel2;
                        switch (i38) {
                            case 0:
                                GridModes gridModes = (GridModes) obj;
                                String str8 = (String) obj2;
                                gridModes.getClass();
                                str8.getClass();
                                pLPCategoryViewModel3.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str8));
                                break;
                            case 1:
                                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                String str9 = (String) obj2;
                                plpProductUiModel.getClass();
                                str9.getClass();
                                pLPCategoryViewModel3.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                break;
                            default:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                String str10 = (String) obj2;
                                pLPWishlistUpdateUiModel.getClass();
                                str10.getClass();
                                pLPCategoryViewModel3.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str10), new PLPRemoveFromWishlistTrackingMode.Revamp(str10));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX18);
            } else {
                i17 = 0;
                objX18 = new Function2() { // from class: dk0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i38 = i17;
                        PLPCategoryViewModel pLPCategoryViewModel3 = pLPCategoryViewModel2;
                        switch (i38) {
                            case 0:
                                GridModes gridModes = (GridModes) obj;
                                String str8 = (String) obj2;
                                gridModes.getClass();
                                str8.getClass();
                                pLPCategoryViewModel3.O0(new PLPTrackingUiModel.ChangeLayoutClickedEvent(gridModes, str8));
                                break;
                            case 1:
                                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                                String str9 = (String) obj2;
                                plpProductUiModel.getClass();
                                str9.getClass();
                                pLPCategoryViewModel3.u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str9), new PLPRemoveFromWishlistTrackingMode.Revamp(str9));
                                break;
                            default:
                                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                                String str10 = (String) obj2;
                                pLPWishlistUpdateUiModel.getClass();
                                str10.getClass();
                                pLPCategoryViewModel3.ka(pLPWishlistUpdateUiModel, new PLPAddToWishlistTrackingMode.Revamp(str10), new PLPRemoveFromWishlistTrackingMode.Revamp(str10));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX18);
            }
            Function2 function417 = (Function2) objX18;
            if (i9 == 32) {
                i17 = 1;
            }
            z27 = ((i17 | (gapComposerH.y(appsFlyerUiTracker) ? 1 : 0)) == true ? 1 : 0) | (gapComposerH.K(str2) ? 1 : 0) | (gapComposerH.K(str3) ? 1 : 0);
            objX19 = gapComposerH.x();
            if (z27 == 0) {
                k3 k3Var2 = new k3(pLPCategoryViewModel2, str2, str3, appsFlyerUiTracker, 25);
                gapComposerH.q(k3Var2);
                objX19 = k3Var2;
            } else {
                k3 k3Var3 = new k3(pLPCategoryViewModel2, str2, str3, appsFlyerUiTracker, 25);
                gapComposerH.q(k3Var3);
                objX19 = k3Var3;
            }
            int i38 = i28 >> 12;
            int i39 = i28 >> 3;
            int i310 = i27 << 6;
            gapComposer = gapComposerH;
            PLPScreenKt.a(dTFunctionNameModifier, pLPViewState, quickAccessFiltersViewState, str, str7, f63026j, list3, contactUsUiModel, true, null, sharedFlowImplG, function0, function310, function311, function1, function22, function2, function3, function312, function313, function314, function315, function316, function317, function318, function319, function8, function49, function410, function411, function10, function412, function413, function26, function414, function29, function12, function14, function415, function416, function15, function417, function16, (Function1) objX19, function17, function18, function19, gapComposer, (i28 & 14) | 100663296 | (i28 & 7168) | ((i28 << 6) & 3670016), (i38 & ImageMetadata.JPEG_GPS_COORDINATES) | (i38 & 112) | ((i28 >> 6) & 57344) | (i39 & 3670016) | (i39 & 29360128), (i10 << 9) & 3670016, ((i10 >> 15) & 14) | ((i10 >> 3) & 3670016) | ((i10 >> 6) & 29360128), (i27 & 14) | ((i27 << 3) & 896) | (i310 & 57344) | (458752 & i310) | (i310 & 3670016), 512, 0);
            function21 = function27;
            modifier2 = dTFunctionNameModifier;
            list2 = list3;
            function20 = function22;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            list2 = list;
            function20 = function4;
            function21 = function11;
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: ek0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    PLPCategoryComposableKt.a(modifier2, pLPCategoryViewModel, quickAccessFiltersViewModel, str, list2, function0, function1, function2, function3, function20, function5, function6, function7, function8, function9, function10, function21, function12, function13, function14, function15, function16, function17, function18, function19, (Composer) obj, iA, i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
