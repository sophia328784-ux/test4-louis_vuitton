package com.vuitton.android.presentation.screen.pdp;

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
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecoratorKt;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecoratorKt;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.screen.pdp.PdpNavDisplayKt;
import com.vuitton.android.presentation.screen.pdp.PdpViewModel;
import com.vuitton.android.presentation.screen.pdp.components.PdpComposableKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ContextualSizingComposableKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import defpackage.aj0;
import defpackage.cj;
import defpackage.x0;
import defpackage.y0;
import defpackage.yk0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuToRefresh", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpNavDisplayKt {
    /* JADX WARN: Code duplicated, block: B:161:0x035f  */
    /* JADX WARN: Code duplicated, block: B:164:0x0372  */
    /* JADX WARN: Code duplicated, block: B:167:0x0385  */
    public static final void a(final NavBackStack navBackStack, final SnackbarHostState snackbarHostState, final PdpViewModel pdpViewModel, final ReinsuranceViewModel reinsuranceViewModel, final PermissionsViewModel permissionsViewModel, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function1 function7, final Function0 function8, final Function0 function9, final Function0 function10, final Function0 function11, final Function0 function12, final Function0 function13, final Function0 function14, final Function0 function15, final Function0 function16, final Function0 function17, final Function0 function18, final Function1 function19, final Function0 function20, final Function1 function21, final Function1 function22, final Function1 function23, final Function1 function24, final Function0 function25, final Function1 function26, final Function1 function27, final Function1 function28, Composer composer, final int i2) {
        final PdpViewModel pdpViewModel2;
        GapComposer gapComposer;
        final Function0 function29;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object objX;
        Object objX2;
        Object objX3;
        navBackStack.getClass();
        snackbarHostState.getClass();
        pdpViewModel.getClass();
        reinsuranceViewModel.getClass();
        permissionsViewModel.getClass();
        defpackage.a.D(function0, function1, function2, function3, function4);
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        defpackage.a.D(function10, function11, function12, function13, function14);
        function15.getClass();
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
        GapComposer gapComposerH = composer.h(374451597);
        int i3 = i2 | (gapComposerH.K(navBackStack) ? 4 : 2) | (gapComposerH.K(pdpViewModel) ? 256 : 128) | (gapComposerH.K(reinsuranceViewModel) ? 2048 : 1024) | (gapComposerH.K(permissionsViewModel) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function2) ? 8388608 : 4194304) | (gapComposerH.y(function3) ? 67108864 : 33554432) | (gapComposerH.y(function4) ? 536870912 : 268435456);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (((((((((((gapComposerH.y(function5) ? (char) 4 : (char) 2) | (gapComposerH.y(function6) ? ' ' : (char) 16)) | (gapComposerH.y(function7) ? 256 : 128)) | (gapComposerH.y(function8) ? 2048 : 1024)) | (gapComposerH.y(function9) ? 16384 : 8192)) | (gapComposerH.y(function10) ? 131072 : 65536)) | (gapComposerH.y(function11) ? 1048576 : 524288)) | (gapComposerH.y(function12) ? 8388608 : 4194304)) | (gapComposerH.y(function13) ? 67108864 : 33554432)) | (gapComposerH.y(function14) ? 536870912 : 268435456)) & 306783379) == 306783378 && (((((((((((gapComposerH.y(function15) ? (char) 4 : (char) 2) | (gapComposerH.y(function16) ? ' ' : (char) 16)) | (gapComposerH.y(function17) ? 256 : 128)) | (gapComposerH.y(function18) ? 2048 : 1024)) | (gapComposerH.y(function19) ? 16384 : 8192)) | (gapComposerH.y(function20) ? (char) 0 : (char) 0)) | (gapComposerH.y(function21) ? (char) 0 : (char) 0)) | (gapComposerH.y(function22) ? (char) 0 : (char) 0)) | (gapComposerH.y(function23) ? (char) 0 : (char) 0)) | (gapComposerH.y(function24) ? (char) 0 : (char) 0)) & 306783379) == 306783378 && (((((gapComposerH.y(function25) ? (char) 4 : (char) 2) | (gapComposerH.y(function26) ? ' ' : (char) 16)) | (gapComposerH.y(function27) ? 256 : 128)) | (gapComposerH.y(function28) ? 2048 : 1024)) & 1171) == 1170) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX4 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX4 == composer$Companion$Empty$2) {
                objX4 = SnapshotStateKt.g(null);
                gapComposerH.q(objX4);
            }
            final MutableState mutableState = (MutableState) objX4;
            List listP = CollectionsKt.P(SaveableStateHolderNavEntryDecoratorKt.a(gapComposerH), ViewModelStoreNavEntryDecoratorKt.a(gapComposerH));
            gapComposerH.L(-929199130);
            EntryProviderScope entryProviderScope = new EntryProviderScope(new Function1() { // from class: com.vuitton.android.presentation.screen.pdp.PdpNavDisplayKt$PdpNavDisplay$$inlined$entryProvider$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    throw new IllegalStateException(cj.i(obj, "Unknown screen "));
                }
            });
            pdpViewModel2 = pdpViewModel;
            function29 = function0;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1498569429, new Function3() { // from class: com.vuitton.android.presentation.screen.pdp.b
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((PdpRoutes.Pdp) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        MutableState mutableState2 = mutableState;
                        SkuIdUiModel skuIdUiModel = (SkuIdUiModel) mutableState2.getF10755b();
                        String str = skuIdUiModel != null ? skuIdUiModel.f61764b : null;
                        SkuIdUiModel skuIdUiModel2 = str != null ? new SkuIdUiModel(str) : null;
                        PdpViewModel pdpViewModel3 = pdpViewModel;
                        boolean zY = composer2.y(pdpViewModel3);
                        Object objX5 = composer2.x();
                        if (zY || objX5 == Composer.Companion.f7939a) {
                            objX5 = new PdpNavDisplayKt$PdpNavDisplay$1$1$1$1(mutableState2, pdpViewModel3, null);
                            composer2.q(objX5);
                        }
                        EffectsKt.e(composer2, skuIdUiModel2, (Function2) objX5);
                        PdpComposableKt.a(snackbarHostState, pdpViewModel3, reinsuranceViewModel, permissionsViewModel, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function11, function10, function12, function14, function16, function15, function17, function13, function18, function19, function20, function21, function22, function23, function24, function25, function26, function27, function28, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$1 pdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$1 = new Function1<PdpRoutes.Pdp, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC = MapsKt.c();
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            entryProviderScope.a(reflectionFactory.b(PdpRoutes.Pdp.class), pdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$1, new Function1<PdpRoutes.Pdp, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC;
                }
            }, composableLambdaImplB);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-255230888, new Function3() { // from class: com.vuitton.android.presentation.screen.pdp.c
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((PdpRoutes.ContextualSize) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final PdpViewModel pdpViewModel3 = pdpViewModel2;
                        MutableState mutableStateC = FlowExtKt.c(pdpViewModel3.getY0(), null, composer2, 0, 7);
                        boolean zY = composer2.y(pdpViewModel3);
                        final NavBackStack navBackStack2 = navBackStack;
                        boolean zY2 = zY | composer2.y(navBackStack2);
                        final Function0 function30 = function29;
                        boolean zK = zY2 | composer2.K(function30);
                        Object objX5 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (zK || objX5 == composer$Companion$Empty$3) {
                            final MutableState mutableState2 = mutableState;
                            objX5 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    boolean zEquals;
                                    String str = ((SkuIdUiModel) obj4).f61764b;
                                    str.getClass();
                                    ProductUiModel productUiModel = ((PdpViewState) pdpViewModel3.getY0().getValue()).f61566b;
                                    String str2 = productUiModel != null ? productUiModel.f61735b : null;
                                    if (str2 == null) {
                                        zEquals = false;
                                    } else {
                                        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                        zEquals = str.equals(str2);
                                    }
                                    if (!zEquals) {
                                        mutableState2.setValue(new SkuIdUiModel(str));
                                    }
                                    NavBackStack navBackStack3 = navBackStack2;
                                    navBackStack3.getClass();
                                    if (!Nav3ExtKt.b(navBackStack3)) {
                                        function30.mo47invoke();
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX5);
                        }
                        Function1 function31 = (Function1) objX5;
                        ProductUiModel productUiModel = ((PdpViewState) mutableStateC.getF10755b()).f61566b;
                        List list = productUiModel != null ? productUiModel.Z : null;
                        if (list == null) {
                            list = EmptyList.f71768b;
                        }
                        ArrayList arrayList = new ArrayList();
                        for (Object obj4 : list) {
                            if (CollectionExtKt.a(((ModelSizeVariationUiModel) obj4).g)) {
                                arrayList.add(obj4);
                            }
                        }
                        boolean zY3 = composer2.y(navBackStack2) | composer2.K(function30);
                        Object objX6 = composer2.x();
                        if (zY3 || objX6 == composer$Companion$Empty$3) {
                            objX6 = new y0(navBackStack2, function30, 18);
                            composer2.q(objX6);
                        }
                        ContextualSizingComposableKt.a(arrayList, (Function0) objX6, function31, composer2, 0);
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$3 pdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$3 = new Function1<PdpRoutes.ContextualSize, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC2 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(PdpRoutes.ContextualSize.class), pdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$3, new Function1<PdpRoutes.ContextualSize, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpNavDisplayKt$PdpNavDisplay$lambda$3$$inlined$entry$default$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC2;
                }
            }, composableLambdaImplB2);
            androidx.navigation3.runtime.a aVar = new androidx.navigation3.runtime.a(entryProviderScope);
            boolean z = false;
            gapComposerH.Z(false);
            int i4 = i3 & 14;
            if (i4 == 4) {
                z = true;
            }
            Object objX5 = gapComposerH.x();
            if (z) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX5 == composer$Companion$Empty$1) {
                }
                Function0 function30 = (Function0) objX5;
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new yk0(18);
                    gapComposerH.q(objX);
                }
                Function1 function31 = (Function1) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new yk0(19);
                    gapComposerH.q(objX2);
                }
                Function1 function32 = (Function1) objX2;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new aj0(16);
                    gapComposerH.q(objX3);
                }
                NavBackStack.Companion companion = NavBackStack.INSTANCE;
                NavDisplayKt.c(navBackStack, null, null, function30, listP, null, null, function31, function32, (Function2) objX3, aVar, gapComposerH, 805306368 | i4);
                gapComposer = gapComposerH;
            }
            objX5 = new x0(navBackStack, 13);
            gapComposerH.q(objX5);
            Function0 function33 = (Function0) objX5;
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = new yk0(18);
                gapComposerH.q(objX);
            }
            Function1 function34 = (Function1) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new yk0(19);
                gapComposerH.q(objX2);
            }
            Function1 function35 = (Function1) objX2;
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new aj0(16);
                gapComposerH.q(objX3);
            }
            NavBackStack.Companion companion2 = NavBackStack.INSTANCE;
            NavDisplayKt.c(navBackStack, null, null, function33, listP, null, null, function34, function35, (Function2) objX3, aVar, gapComposerH, 805306368 | i4);
            gapComposer = gapComposerH;
        } else {
            pdpViewModel2 = pdpViewModel;
            gapComposer = gapComposerH;
            function29 = function0;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final PdpViewModel pdpViewModel3 = pdpViewModel2;
            final Function0 function36 = function29;
            recomposeScopeImplB0.d = new Function2(snackbarHostState, pdpViewModel3, reinsuranceViewModel, permissionsViewModel, function36, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function20, function21, function22, function23, function24, function25, function26, function27, function28, i2) { // from class: pm0
                public final /* synthetic */ Function0 A;
                public final /* synthetic */ Function1 B;
                public final /* synthetic */ Function1 C;
                public final /* synthetic */ Function1 D;
                public final /* synthetic */ Function1 E;
                public final /* synthetic */ Function0 F;
                public final /* synthetic */ Function1 G;
                public final /* synthetic */ Function1 H;
                public final /* synthetic */ Function1 I;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ SnackbarHostState f78889c;
                public final /* synthetic */ PdpViewModel d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ ReinsuranceViewModel f78890e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ PermissionsViewModel f78891f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f78892h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f78893i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f78894j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f78895k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function1 n;
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
                public final /* synthetic */ Function0 y;
                public final /* synthetic */ Function1 z;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(49);
                    PdpNavDisplayKt.a(this.f78888b, this.f78889c, this.d, this.f78890e, this.f78891f, this.g, this.f78892h, this.f78893i, this.f78894j, this.f78895k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F, this.G, this.H, this.I, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
