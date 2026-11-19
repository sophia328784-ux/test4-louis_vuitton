package com.vuitton.android.presentation.screen.personalselections.detail.instore.components;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.paging.compose.LazyPagingItems;
import androidx.paging.compose.LazyPagingItemsKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.LifecycleEventKt;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.components.PersonalSelectionsInStoreComposableKt;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionStoreUiModel;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPSnackBarKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPWishlistFeedbackWatcherKt;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import defpackage.d21;
import defpackage.gf;
import defpackage.il;
import defpackage.kj0;
import defpackage.n00;
import defpackage.tj;
import defpackage.ul0;
import defpackage.w4;
import defpackage.wd0;
import defpackage.z2;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.SharedFlow;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isFirstComposition", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsInStoreComposableKt {
    public static final void a(String str, ContactUsUiModel contactUsUiModel, Function0 function0, Function0 function1, Function1 function2, Function0 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1606662922);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.K(contactUsUiModel) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        int i4 = i3 | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVStandardTopBarKt.a(null, null, false, str, null, null, function3, ComposableLambdaKt.b(1776343319, new w4(function0, contactUsUiModel, function1, function2), gapComposerH), null, null, null, gapComposer, ((i4 << 9) & 7168) | 12582912 | ((i4 << 3) & 3670016), 0, 3895);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(str, contactUsUiModel, function0, function1, function2, function3, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:155:0x0438  */
    /* JADX WARN: Code duplicated, block: B:156:0x043b  */
    /* JADX WARN: Code duplicated, block: B:160:0x044e  */
    /* JADX WARN: Code duplicated, block: B:163:0x0461  */
    /* JADX WARN: Code duplicated, block: B:164:0x0464  */
    /* JADX WARN: Code duplicated, block: B:168:0x046c  */
    /* JADX WARN: Code duplicated, block: B:174:0x047e  */
    public static final void b(final PersonalSelectionsInStoreViewState personalSelectionsInStoreViewState, final ContactUsUiModel contactUsUiModel, final SharedFlow sharedFlow, final Function3 function3, Function0 function0, Function0 function1, final Function0 function2, final Function1 function4, final Function1 function5, final Function1 function6, final Function1 function7, final Function0 function8, final Function0 function9, final Function0 function10, final Function0 function11, Function2 function12, Function1 function13, final Function0 function14, final Function0 function15, Composer composer, final int i2) {
        Function0 function16;
        Function0 function17;
        Function1 function18;
        GapComposer gapComposer;
        int i3;
        int i4;
        int i5;
        LVModalBottomSheetState lVModalBottomSheetState;
        int i6;
        boolean z;
        boolean zD;
        Object objX;
        boolean z2;
        boolean z3;
        Object objX2;
        Function2 function19 = function12;
        personalSelectionsInStoreViewState.getClass();
        contactUsUiModel.getClass();
        sharedFlow.getClass();
        function3.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function19.getClass();
        function13.getClass();
        function14.getClass();
        function15.getClass();
        GapComposer gapComposerH = composer.h(-6588696);
        int i7 = i2 | (gapComposerH.K(personalSelectionsInStoreViewState) ? 4 : 2) | (gapComposerH.K(contactUsUiModel) ? 32 : 16) | (gapComposerH.y(sharedFlow) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i8 = (gapComposerH.y(function7) ? 4 : 2) | (gapComposerH.y(function8) ? 32 : 16) | (gapComposerH.y(function9) ? 256 : 128) | (gapComposerH.y(function10) ? 2048 : 1024) | (gapComposerH.y(function11) ? 16384 : 8192) | (gapComposerH.y(function19) ? 131072 : 65536) | (gapComposerH.y(function13) ? 1048576 : 524288) | (gapComposerH.y(function14) ? 8388608 : 4194304) | (gapComposerH.y(function15) ? 67108864 : 33554432);
        if (gapComposerH.p(i7 & 1, ((306783379 & i7) == 306783378 && (i8 & 38347923) == 38347922) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            Lifecycle.Event eventA = LifecycleEventKt.a(gapComposerH);
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX3 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX3;
            PaddingValues paddingValuesE = WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH);
            Pair pair = new Pair(Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getF5031b())), Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getD())));
            final int iIntValue = ((Number) pair.f71705b).intValue();
            int iIntValue2 = ((Number) pair.f71706c).intValue();
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX4);
            }
            MutableState mutableState = (MutableState) objX4;
            final int i9 = iIntValue2;
            boolean zD2 = gapComposerH.d(eventA.ordinal()) | ((i8 & 112) == 32);
            Object objX5 = gapComposerH.x();
            if (zD2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$2$1(eventA, function8, mutableState, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, eventA, (Function2) objX5);
            if (personalSelectionsInStoreViewState instanceof PersonalSelectionsInStoreViewState.Loading) {
                LVFlowerLoaderKt.a(ModifierExtKt.e(n00.i(gapComposerH, 1286528644, "PersonalSelectionsInStoreComposable").o(SizeKt.f5052c), "personalSelectionsDetail_loading_view"), null, false, gapComposerH, 0, 6);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
                i3 = 9;
                i4 = i7;
                lVModalBottomSheetState = lVModalBottomSheetStateF;
            } else {
                if (personalSelectionsInStoreViewState instanceof PersonalSelectionsInStoreViewState.Error) {
                    gapComposerH.L(-2036700001);
                    gapComposer = gapComposerH;
                    PersonalSelectionsInStoreErrorScreenKt.a(ComposableLambdaKt.b(1245881723, new Function2() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.instore.components.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue3 = ((Integer) obj2).intValue();
                            if (composer2.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                String strC = StringResources_androidKt.c(composer2, R.string.services_my_personal_selections_title);
                                Object objX6 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (objX6 == composer$Companion$Empty$2) {
                                    objX6 = new ul0(17);
                                    composer2.q(objX6);
                                }
                                Function0 function20 = (Function0) objX6;
                                LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetStateF;
                                boolean zY = composer2.y(lVModalBottomSheetState2);
                                Object objX7 = composer2.x();
                                if (zY || objX7 == composer$Companion$Empty$2) {
                                    PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$3$2$1 personalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$3$2$1 = new PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$3$2$1(0, lVModalBottomSheetState2, LVModalBottomSheetState.class, "show", "show()V", 0);
                                    composer2.q(personalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$3$2$1);
                                    objX7 = personalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$3$2$1;
                                }
                                Function0 function21 = (Function0) ((KFunction) objX7);
                                Function3 function22 = function3;
                                boolean zK = composer2.K(function22);
                                int i10 = iIntValue;
                                boolean zD3 = zK | composer2.d(i10);
                                int i11 = i9;
                                boolean zD4 = zD3 | composer2.d(i11);
                                Object objX8 = composer2.x();
                                if (zD4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new tj(function22, i10, i11, 8);
                                    composer2.q(objX8);
                                }
                                PersonalSelectionsInStoreComposableKt.a(strC, contactUsUiModel, function20, function21, (Function1) objX8, function2, composer2, KyberEngine.KyberPolyBytes);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposer), function11, gapComposer, ((i8 >> 9) & 112) | 6);
                    gapComposer.Z(false);
                    lVModalBottomSheetState = lVModalBottomSheetStateF;
                    i4 = i7;
                    i3 = 9;
                } else {
                    gapComposer = gapComposerH;
                    if (!(personalSelectionsInStoreViewState instanceof PersonalSelectionsInStoreViewState.Success)) {
                        throw d21.u(gapComposer, -2036706553, false);
                    }
                    gapComposer.L(1287571918);
                    PersonalSelectionsInStoreViewState.Success success = (PersonalSelectionsInStoreViewState.Success) personalSelectionsInStoreViewState;
                    LazyPagingItems lazyPagingItemsA = LazyPagingItemsKt.a(success.g, gapComposer);
                    Unit unit = Unit.f71739a;
                    int i10 = i8 & 3670016;
                    int i11 = i7 & 14;
                    i3 = 9;
                    boolean zY = (i10 == 1048576) | gapComposer.y(appsFlyerUiTracker) | (i11 == 4);
                    Object objX6 = gapComposer.x();
                    if (zY || objX6 == composer$Companion$Empty$1) {
                        objX6 = new PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$4$1(function13, appsFlyerUiTracker, personalSelectionsInStoreViewState, null);
                        gapComposer.q(objX6);
                    }
                    EffectsKt.e(gapComposer, unit, (Function2) objX6);
                    String str = success.f62559c;
                    String str2 = success.f62558b;
                    String str3 = success.d;
                    SelectionStoreUiModel selectionStoreUiModel = success.f62561f;
                    String str4 = selectionStoreUiModel.f62587a;
                    if (str4 == null) {
                        str4 = "";
                    }
                    String str5 = str4;
                    String str6 = selectionStoreUiModel.f62588b;
                    int i12 = success.f62565k;
                    List list = success.l;
                    boolean z4 = success.m;
                    i4 = i7;
                    i5 = iIntValue;
                    lVModalBottomSheetState = lVModalBottomSheetStateF;
                    function3 = function3;
                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1768914222, new gf(personalSelectionsInStoreViewState, contactUsUiModel, function13, function10, lVModalBottomSheetStateF, function3, iIntValue, i9, function2), gapComposer);
                    boolean zY2 = (i11 == 4) | gapComposer.y(lazyPagingItemsA) | (i10 == 1048576) | gapComposer.y(appsFlyerUiTracker) | ((i4 & 29360128) == 8388608);
                    Object objX7 = gapComposer.x();
                    composer$Companion$Empty$1 = composer$Companion$Empty$1;
                    if (zY2 || objX7 == composer$Companion$Empty$1) {
                        kj0 kj0Var = new kj0((Object) personalSelectionsInStoreViewState, (Object) lazyPagingItemsA, function13, (Object) appsFlyerUiTracker, (Function) function4, 6);
                        function18 = function13;
                        gapComposer.q(kj0Var);
                        objX7 = kj0Var;
                    } else {
                        function18 = function13;
                    }
                    Function2 function20 = (Function2) objX7;
                    boolean z5 = (i10 == 1048576) | ((i8 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
                    Object objX8 = gapComposer.x();
                    if (z5 || objX8 == composer$Companion$Empty$1) {
                        function19 = function12;
                        objX8 = new wd0(function18, function19, 25);
                        gapComposer.q(objX8);
                    } else {
                        function19 = function12;
                    }
                    Function2 function21 = (Function2) objX8;
                    int i13 = i8 >> 6;
                    PersonalSelectionsInStoreScreenKt.a(composableLambdaImplB, str, str2, str3, str5, str6, lazyPagingItemsA, i12, snackbarHostState, list, z4, function20, function5, function6, function21, function14, function15, gapComposer, 102760454, ((i4 >> 18) & 8064) | (i13 & ImageMetadata.JPEG_GPS_COORDINATES) | (i13 & 3670016));
                    Object objX9 = gapComposer.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new ul0(18);
                        gapComposer.q(objX9);
                    }
                    PLPSnackBarKt.a(snackbarHostState, lazyPagingItemsA, false, sharedFlow, function9, (Function0) objX9, gapComposer, ((i4 << 3) & 7168) | 196678 | ((i8 << 6) & 57344), 4);
                    PLPWishlistFeedbackWatcherKt.a(lazyPagingItemsA, sharedFlow, function8, function7, gapComposer, ((i4 >> 3) & 112) | 8 | ((i8 << 3) & 896) | ((i8 << 9) & 7168));
                    gapComposer.Z(false);
                }
                i6 = i4;
                if ((i6 & 7168) == 2048) {
                    z = true;
                } else {
                    z = false;
                }
                zD = gapComposer.d(i5) | z | gapComposer.d(i9);
                objX = gapComposer.x();
                if (zD || objX == composer$Companion$Empty$1) {
                    objX = new tj(function3, i5, i9, i3);
                    gapComposer.q(objX);
                }
                Function1 function22 = (Function1) objX;
                if ((i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = z2 | ((i6 & 57344) == 16384);
                objX2 = gapComposer.x();
                if (!z3 || objX2 == composer$Companion$Empty$1) {
                    function16 = function0;
                    function17 = function1;
                    objX2 = new il(function17, function16, 12);
                    gapComposer.q(objX2);
                } else {
                    function16 = function0;
                    function17 = function1;
                }
                int i14 = LVModalBottomSheetState.f48797e;
                ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetState, lVModalBottomSheetStateF2, function22, (Function0) objX2, gapComposer, ((i6 >> 3) & 14) | (i14 << 3) | (i14 << 6));
            }
            i5 = iIntValue;
            i9 = i9;
            function18 = function13;
            i6 = i4;
            if ((i6 & 7168) == 2048) {
                z = true;
            } else {
                z = false;
            }
            zD = gapComposer.d(i5) | z | gapComposer.d(i9);
            objX = gapComposer.x();
            if (zD) {
                objX = new tj(function3, i5, i9, i3);
                gapComposer.q(objX);
            } else {
                objX = new tj(function3, i5, i9, i3);
                gapComposer.q(objX);
            }
            Function1 function23 = (Function1) objX;
            if ((i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                z2 = true;
            } else {
                z2 = false;
            }
            z3 = z2 | ((i6 & 57344) == 16384);
            objX2 = gapComposer.x();
            if (z3) {
                function16 = function0;
                function17 = function1;
                objX2 = new il(function17, function16, 12);
                gapComposer.q(objX2);
            } else {
                function16 = function0;
                function17 = function1;
                objX2 = new il(function17, function16, 12);
                gapComposer.q(objX2);
            }
            int i15 = LVModalBottomSheetState.f48797e;
            ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetState, lVModalBottomSheetStateF2, function23, (Function0) objX2, gapComposer, ((i6 >> 3) & 14) | (i15 << 3) | (i15 << 6));
        } else {
            function16 = function0;
            function19 = function19;
            function17 = function1;
            function18 = function13;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function2 function24 = function19;
            final Function0 function25 = function16;
            final Function0 function26 = function17;
            final Function1 function27 = function18;
            recomposeScopeImplB0.d = new Function2(contactUsUiModel, sharedFlow, function3, function25, function26, function2, function4, function5, function6, function7, function8, function9, function10, function11, function24, function27, function14, function15, i2) { // from class: un0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ ContactUsUiModel f80364c;
                public final /* synthetic */ SharedFlow d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function3 f80365e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function0 f80366f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f80367h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function1 f80368i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function1 f80369j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f80370k;
                public final /* synthetic */ Function1 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function0 n;
                public final /* synthetic */ Function0 o;
                public final /* synthetic */ Function0 p;
                public final /* synthetic */ Function2 q;
                public final /* synthetic */ Function1 r;
                public final /* synthetic */ Function0 s;
                public final /* synthetic */ Function0 t;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    PersonalSelectionsInStoreComposableKt.b(this.f80363b, this.f80364c, this.d, this.f80365e, this.f80366f, this.g, this.f80367h, this.f80368i, this.f80369j, this.f80370k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
