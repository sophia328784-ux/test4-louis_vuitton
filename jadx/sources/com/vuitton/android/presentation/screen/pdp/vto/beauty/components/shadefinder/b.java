package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import android.content.Context;
import android.content.res.Configuration;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyBottomSheet;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderScanState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackerKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModelKt;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import defpackage.av0;
import defpackage.ke;
import defpackage.rv0;
import defpackage.sq0;
import defpackage.yv0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f62112b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModel f62113c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f62114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f62115f;
    public final /* synthetic */ Function g;

    public /* synthetic */ b(BeautyVtoViewModel beautyVtoViewModel, PermissionsViewModel permissionsViewModel, Function0 function0, Function0 function1, Function1 function2) {
        this.f62113c = beautyVtoViewModel;
        this.f62115f = permissionsViewModel;
        this.d = function0;
        this.f62114e = function1;
        this.g = function2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.runtime.Composer] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, java.util.List] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        final ?? arrayList;
        Context context;
        MutableState mutableState;
        final BeautyVtoViewModel beautyVtoViewModel;
        List list;
        int i2 = this.f62112b;
        Object obj3 = Composer.Companion.f7939a;
        Function function = this.g;
        Object obj4 = this.f62115f;
        Function0 function0 = this.d;
        switch (i2) {
            case 0:
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj4;
                final Function1 function1 = (Function1) function;
                ?? r1 = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (r1.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    final ShadeFinderTracker shadeFinderTracker = (ShadeFinderTracker) r1.k(ShadeFinderTrackerKt.f62295a);
                    BeautyVtoViewModel beautyVtoViewModel2 = this.f62113c;
                    MutableState mutableStateB = SnapshotStateKt.b(beautyVtoViewModel2.getO0(), r1);
                    MutableState mutableStateB2 = SnapshotStateKt.b(permissionsViewModel.getU(), r1);
                    MutableState mutableStateB3 = SnapshotStateKt.b(beautyVtoViewModel2.e(), r1);
                    ShadeFinderResponseUiModel shadeFinderResponseUiModel = ((ShadeFinderViewState) mutableStateB.getF10755b()).d;
                    if (shadeFinderResponseUiModel == null || (list = shadeFinderResponseUiModel.f62174b) == null) {
                        arrayList = EmptyList.f71768b;
                    } else {
                        List list2 = list;
                        arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(new SkuIdUiModel(((RecommendationUiModel) it.next()).f62170a.d));
                        }
                    }
                    Object objX = r1.x();
                    if (objX == obj3) {
                        objX = SnapshotStateKt.g(null);
                        r1.q(objX);
                    }
                    MutableState mutableState2 = (MutableState) objX;
                    Unit unit = Unit.f71739a;
                    boolean zY = r1.y(shadeFinderTracker) | r1.y(arrayList);
                    Object objX2 = r1.x();
                    if (zY || objX2 == obj3) {
                        objX2 = new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$1$1(shadeFinderTracker, arrayList, null);
                        r1.q(objX2);
                    }
                    EffectsKt.e(r1, unit, (Function2) objX2);
                    PermissionsBottomSheet permissionsBottomSheet = ((PermissionsUiModel) mutableStateB2.getF10755b()).f62372a;
                    boolean zK = r1.K(mutableStateB2) | r1.y(beautyVtoViewModel2);
                    Object objX3 = r1.x();
                    if (zK || objX3 == obj3) {
                        objX3 = new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$2$1(beautyVtoViewModel2, mutableStateB2, null);
                        r1.q(objX3);
                    }
                    EffectsKt.e(r1, permissionsBottomSheet, (Function2) objX3);
                    boolean zY2 = r1.y(permissionsViewModel) | r1.y(beautyVtoViewModel2);
                    Object objX4 = r1.x();
                    if (zY2 || objX4 == obj3) {
                        objX4 = new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$3$1(permissionsViewModel, beautyVtoViewModel2, mutableState2, null);
                        r1.q(objX4);
                    }
                    EffectsKt.e(r1, unit, (Function2) objX4);
                    boolean zK2 = r1.K(function0);
                    Object objX5 = r1.x();
                    if (zK2 || objX5 == obj3) {
                        objX5 = new sq0(function0, 19);
                        r1.q(objX5);
                    }
                    BackHandlerKt.a(false, (Function0) objX5, r1, 0, 1);
                    HapticFeedback hapticFeedback = (HapticFeedback) r1.k(CompositionLocalsKt.l);
                    Context context2 = (Context) r1.k(AndroidCompositionLocals_androidKt.f9936b);
                    Object objX6 = r1.x();
                    if (objX6 == obj3) {
                        objX6 = new SnackbarHostState();
                        r1.q(objX6);
                    }
                    SnackbarHostState snackbarHostState = (SnackbarHostState) objX6;
                    boolean zY3 = r1.y(beautyVtoViewModel2) | r1.y(hapticFeedback) | r1.y(context2);
                    Function0 function2 = this.f62114e;
                    boolean zK3 = zY3 | r1.K(function2) | r1.K(mutableStateB);
                    Object objX7 = r1.x();
                    if (zK3 || objX7 == obj3) {
                        context = context2;
                        mutableState = mutableStateB;
                        objX7 = new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1(beautyVtoViewModel2, hapticFeedback, snackbarHostState, context, function2, mutableState, null);
                        beautyVtoViewModel = beautyVtoViewModel2;
                        r1.q(objX7);
                    } else {
                        context = context2;
                        beautyVtoViewModel = beautyVtoViewModel2;
                        mutableState = mutableStateB;
                    }
                    EffectsKt.e(r1, unit, (Function2) objX7);
                    ShadeFinderViewState shadeFinderViewState = (ShadeFinderViewState) mutableState.getF10755b();
                    boolean zY4 = r1.y(shadeFinderTracker) | r1.K(function0);
                    Object objX8 = r1.x();
                    if (zY4 || objX8 == obj3) {
                        objX8 = new rv0(shadeFinderTracker, function0, 2);
                        r1.q(objX8);
                    }
                    Function0 function3 = (Function0) objX8;
                    boolean zY5 = r1.y(shadeFinderTracker) | r1.y(arrayList) | r1.K(function1);
                    Object objX9 = r1.x();
                    if (zY5 || objX9 == obj3) {
                        objX9 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$7$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj5) {
                                String str = ((SkuIdUiModel) obj5).f61764b;
                                str.getClass();
                                ShadeFinderTracker shadeFinderTracker2 = shadeFinderTracker;
                                shadeFinderTracker2.getClass();
                                List list3 = arrayList;
                                list3.getClass();
                                shadeFinderTracker2.f62294a.a(ShadeFinderTrackingUiModelKt.a(new ShadeFinderTrackingUiModel.OnTryOnClickedEvent(list3)));
                                function1.invoke(new SkuIdUiModel(str));
                                return Unit.f71739a;
                            }
                        };
                        r1.q(objX9);
                    }
                    Function1 function4 = (Function1) objX9;
                    boolean zY6 = r1.y(shadeFinderTracker) | r1.y(beautyVtoViewModel);
                    Object objX10 = r1.x();
                    if (zY6 || objX10 == obj3) {
                        objX10 = new Function2<SkuIdUiModel, String, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$8$1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj5, Object obj6) {
                                String str = ((SkuIdUiModel) obj5).f61764b;
                                String str2 = (String) obj6;
                                str.getClass();
                                str2.getClass();
                                ShadeFinderTracker shadeFinderTracker2 = shadeFinderTracker;
                                shadeFinderTracker2.getClass();
                                shadeFinderTracker2.f62294a.a(ShadeFinderTrackingUiModelKt.a(new ShadeFinderTrackingUiModel.OnAddToCartClickedEvent(str, str2, null)));
                                beautyVtoViewModel.y6(CollectionsKt.O(new SkuIdUiModel(str)));
                                return Unit.f71739a;
                            }
                        };
                        r1.q(objX10);
                    }
                    Function2 function5 = (Function2) objX10;
                    boolean zY7 = r1.y(shadeFinderTracker);
                    Object objX11 = r1.x();
                    if (zY7 || objX11 == obj3) {
                        ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$9$1 shadeFinderResultComposableKt$ShadeFinderResultComposable$1$9$1 = new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$9$1(1, shadeFinderTracker, ShadeFinderTracker.class, "trackOnRecommendationsSwiped", "trackOnRecommendationsSwiped(Ljava/lang/String;)V", 0);
                        r1.q(shadeFinderResultComposableKt$ShadeFinderResultComposable$1$9$1);
                        objX11 = shadeFinderResultComposableKt$ShadeFinderResultComposable$1$9$1;
                    }
                    ShadeFinderResultScreenKt.d(shadeFinderViewState, snackbarHostState, function3, function4, function5, (Function1) ((KFunction) objX11), r1, 48);
                    if (((BeautyBottomSheet) mutableStateB3.getF10755b()) != null) {
                        r1.L(1083721485);
                        Object objX12 = r1.x();
                        if (objX12 == obj3) {
                            objX12 = new av0(14);
                            r1.q(objX12);
                        }
                        LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(48, 5, r1, (Function1) objX12);
                        float f2 = ((Configuration) r1.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion = Dp.f11004c;
                        float f3 = 0.85f * f2;
                        String strC = StringResources_androidKt.c(r1, R.string.alt_close);
                        WindowInsets windowInsetsB = WindowInsetsKt.b(0, 7);
                        boolean zY8 = r1.y(beautyVtoViewModel);
                        Object objX13 = r1.x();
                        if (zY8 || objX13 == obj3) {
                            objX13 = new ke(beautyVtoViewModel, 1);
                            r1.q(objX13);
                        }
                        LVModalBottomSheetKt.b(null, strC, (Function0) objX13, lVModalBottomSheetStateF, windowInsetsB, 0L, false, null, ComposableLambdaKt.b(1230669278, new yv0(f3, permissionsViewModel, context, mutableStateB3, mutableState2), r1), r1, (LVModalBottomSheetState.f48797e << 9) | 100663296, 225);
                        r1.F();
                    } else {
                        r1.L(1087417491);
                        r1.F();
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                } else {
                    r1.D();
                }
                break;
            default:
                Function0 function6 = (Function0) obj4;
                Function0 function7 = (Function0) function;
                Composer composer = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    ShadeFinderTracker shadeFinderTracker2 = (ShadeFinderTracker) composer.k(ShadeFinderTrackerKt.f62295a);
                    BeautyVtoViewModel beautyVtoViewModel3 = this.f62113c;
                    MutableState mutableStateB4 = SnapshotStateKt.b(beautyVtoViewModel3.getO0(), composer);
                    Unit unit2 = Unit.f71739a;
                    boolean zY9 = composer.y(shadeFinderTracker2);
                    Object objX14 = composer.x();
                    if (zY9 || objX14 == obj3) {
                        objX14 = new ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$1$1(shadeFinderTracker2, null);
                        composer.q(objX14);
                    }
                    EffectsKt.e(composer, unit2, (Function2) objX14);
                    ShadeFinderResponseUiModel shadeFinderResponseUiModel2 = ((ShadeFinderViewState) mutableStateB4.getF10755b()).d;
                    List list3 = shadeFinderResponseUiModel2 != null ? shadeFinderResponseUiModel2.f62174b : null;
                    boolean zK4 = composer.K(mutableStateB4) | composer.K(function0);
                    Function0 function8 = this.f62114e;
                    boolean zK5 = zK4 | composer.K(function8);
                    Object objX15 = composer.x();
                    if (zK5 || objX15 == obj3) {
                        objX15 = new ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$2$1(function0, function8, mutableStateB4, null);
                        composer.q(objX15);
                    }
                    EffectsKt.e(composer, list3, (Function2) objX15);
                    ShadeFinderScanState shadeFinderScanState = ((ShadeFinderViewState) mutableStateB4.getF10755b()).f62180c;
                    boolean zK6 = composer.K(mutableStateB4) | composer.y(shadeFinderTracker2) | composer.K(function6);
                    Object objX16 = composer.x();
                    if (zK6 || objX16 == obj3) {
                        objX16 = new ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$3$1(shadeFinderTracker2, function6, mutableStateB4, null);
                        composer.q(objX16);
                    }
                    EffectsKt.e(composer, shadeFinderScanState, (Function2) objX16);
                    Context context3 = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
                    Object objX17 = composer.x();
                    if (objX17 == obj3) {
                        objX17 = new SnackbarHostState();
                        composer.q(objX17);
                    }
                    SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX17;
                    boolean zY10 = composer.y(beautyVtoViewModel3) | composer.y(context3);
                    Object objX18 = composer.x();
                    if (zY10 || objX18 == obj3) {
                        objX18 = new ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$4$1(beautyVtoViewModel3, snackbarHostState2, context3, null);
                        composer.q(objX18);
                    }
                    EffectsKt.e(composer, unit2, (Function2) objX18);
                    ShadeFinderViewState shadeFinderViewState2 = (ShadeFinderViewState) mutableStateB4.getF10755b();
                    boolean zY11 = composer.y(shadeFinderTracker2) | composer.K(function7);
                    Object objX19 = composer.x();
                    if (zY11 || objX19 == obj3) {
                        objX19 = new rv0(shadeFinderTracker2, function7, 3);
                        composer.q(objX19);
                    }
                    ShadeFinderScanScreenKt.b(shadeFinderViewState2, snackbarHostState2, (Function0) objX19, composer, 48);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ b(BeautyVtoViewModel beautyVtoViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3) {
        this.f62113c = beautyVtoViewModel;
        this.d = function0;
        this.f62114e = function1;
        this.f62115f = function2;
        this.g = function3;
    }
}
