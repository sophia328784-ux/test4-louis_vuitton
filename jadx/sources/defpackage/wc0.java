package defpackage;

import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.MenuKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavControllerImpl;
import com.vuitton.android.R;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaDestinations;
import com.vuitton.android.presentation.screen.osa.OsaDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import defpackage.o60;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wc0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80829b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f80830c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80832f;
    public final /* synthetic */ Object g;

    public /* synthetic */ wc0(OsaActivity osaActivity, ManagedActivityResultLauncher managedActivityResultLauncher, boolean z, ManagedActivityResultLauncher managedActivityResultLauncher2, ManagedActivityResultLauncher managedActivityResultLauncher3) {
        this.d = osaActivity;
        this.f80831e = managedActivityResultLauncher;
        this.f80830c = z;
        this.f80832f = managedActivityResultLauncher2;
        this.g = managedActivityResultLauncher3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        float fFloatValue;
        int i2 = this.f80829b;
        boolean z = this.f80830c;
        Object obj2 = this.g;
        Object obj3 = this.f80832f;
        Object obj4 = this.f80831e;
        Object obj5 = this.d;
        switch (i2) {
            case 0:
                MutableState mutableState = ((MutableTransitionState) obj5).f3907c;
                MutableState mutableState2 = (MutableState) obj4;
                State state = (State) obj3;
                State state2 = (State) obj2;
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                float fFloatValue2 = 0.8f;
                float fFloatValue3 = 1.0f;
                if (z) {
                    float f2 = MenuKt.f7027a;
                    fFloatValue = ((Boolean) ((SnapshotMutableStateImpl) mutableState).getF10755b()).booleanValue() ? 1.0f : 0.8f;
                } else {
                    float f3 = MenuKt.f7027a;
                    fFloatValue = ((Number) state.getF10755b()).floatValue();
                }
                graphicsLayerScope.m(fFloatValue);
                if (!z) {
                    fFloatValue2 = ((Number) state.getF10755b()).floatValue();
                } else if (((Boolean) ((SnapshotMutableStateImpl) mutableState).getF10755b()).booleanValue()) {
                    fFloatValue2 = 1.0f;
                }
                graphicsLayerScope.x(fFloatValue2);
                if (!z) {
                    fFloatValue3 = ((Number) state2.getF10755b()).floatValue();
                } else if (!((Boolean) ((SnapshotMutableStateImpl) mutableState).getF10755b()).booleanValue()) {
                    fFloatValue3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
                graphicsLayerScope.d(fFloatValue3);
                graphicsLayerScope.C0(((TransformOrigin) mutableState2.getF10755b()).f8943a);
                break;
            case 1:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                int i3 = NavControllerImpl.B;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj5).f71917b = true;
                ((Ref$BooleanRef) obj4).f71917b = true;
                ((NavControllerImpl) obj3).r(navBackStackEntry, z, (ArrayDeque) obj2);
                break;
            case 2:
                OsaActivity osaActivity = (OsaActivity) obj5;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj4;
                ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj3;
                ManagedActivityResultLauncher managedActivityResultLauncher3 = (ManagedActivityResultLauncher) obj2;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                OsaActivity.Companion companion = OsaActivity.u;
                if (!zBooleanValue) {
                    managedActivityResultLauncher = z ? managedActivityResultLauncher2 : managedActivityResultLauncher3;
                }
                IntentExtensionKt.b(OsaDestinationsKt.a(OsaDestinations.ToLoginPage.f60567a, osaActivity), managedActivityResultLauncher);
                break;
            default:
                final ArrayList arrayList = (ArrayList) obj5;
                final String str = (String) obj4;
                final String str2 = (String) obj3;
                final Function1 function1 = (Function1) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                int size = arrayList.size();
                Function1<Integer, Object> function2 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj6) {
                        arrayList.get(((Number) obj6).intValue());
                        return null;
                    }
                };
                final boolean z2 = this.f80830c;
                lazyListScope.h(size, null, function2, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                        int i4;
                        String strK;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj6;
                        final int iIntValue = ((Number) obj7).intValue();
                        Composer composer = (Composer) obj8;
                        int iIntValue2 = ((Number) obj9).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i4 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i4 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i4 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i4 & 1, (i4 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final VariationUiModel variationUiModel = (VariationUiModel) arrayList.get(iIntValue);
                            composer.L(-1018786155);
                            SkuAvailabilityUiModel skuAvailabilityUiModel = variationUiModel.f61769e;
                            if (skuAvailabilityUiModel == null || skuAvailabilityUiModel.f61761e || !z2) {
                                composer.L(-1018624956);
                                composer.F();
                                strK = "";
                            } else {
                                strK = o60.k(composer, -1018713895, R.string.alt_out_of_stock, composer);
                            }
                            boolean zK = composer.K(variationUiModel) | composer.K(strK);
                            String str3 = str;
                            boolean zK2 = zK | composer.K(str3) | composer.K(str2);
                            final Function1 function3 = function1;
                            boolean zK3 = zK2 | composer.K(function3) | ((((i4 & 112) ^ 48) > 32 && composer.d(iIntValue)) || (i4 & 48) == 32);
                            Object objX = composer.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (zK3 || objX == composer$Companion$Empty$1) {
                                final String str4 = str2;
                                final Function1 function4 = function1;
                                final String str5 = str;
                                final String str6 = strK;
                                objX = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj10) {
                                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj10;
                                        semanticsPropertyReceiver.getClass();
                                        final VariationUiModel variationUiModel2 = variationUiModel;
                                        SemanticsPropertiesKt.i(semanticsPropertyReceiver, variationUiModel2.f61768c + ", " + str6);
                                        String str7 = variationUiModel2.f61767b;
                                        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                                        if (Intrinsics.c(str7, str5)) {
                                            SemanticsPropertiesKt.r(semanticsPropertyReceiver, str4);
                                        } else {
                                            final Function1 function5 = function4;
                                            SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new Function0<Boolean>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1.1
                                                @Override // kotlin.jvm.functions.Function0
                                                /* JADX INFO: renamed from: invoke */
                                                public final Object mo47invoke() {
                                                    function5.invoke(variationUiModel2);
                                                    return Boolean.TRUE;
                                                }
                                            });
                                            Role.f10289b.getClass();
                                            SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                                        }
                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(0, 0, iIntValue, 0));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            Modifier modifierA = ModifierExtKt.a(Modifier.Companion.f8607b, "pdp_variationTextItem_view", (Function1) objX, 2);
                            String str7 = variationUiModel.f61767b;
                            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                            boolean zC = Intrinsics.c(str7, str3);
                            boolean zK4 = composer.K(function3) | composer.K(variationUiModel);
                            Object objX2 = composer.x();
                            if (zK4 || objX2 == composer$Companion$Empty$1) {
                                objX2 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$2$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        function3.invoke(variationUiModel);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX2);
                            }
                            PdpVariationTextListKt.a(modifierA, variationUiModel, zC, z2, (Function0) objX2, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ wc0(ArrayList arrayList, boolean z, String str, String str2, Function1 function1) {
        this.d = arrayList;
        this.f80830c = z;
        this.f80831e = str;
        this.f80832f = str2;
        this.g = function1;
    }

    public /* synthetic */ wc0(Ref$BooleanRef ref$BooleanRef, Ref$BooleanRef ref$BooleanRef2, NavControllerImpl navControllerImpl, boolean z, ArrayDeque arrayDeque) {
        this.d = ref$BooleanRef;
        this.f80831e = ref$BooleanRef2;
        this.f80832f = navControllerImpl;
        this.f80830c = z;
        this.g = arrayDeque;
    }

    public /* synthetic */ wc0(boolean z, MutableTransitionState mutableTransitionState, MutableState mutableState, Transition.TransitionAnimationState transitionAnimationState, Transition.TransitionAnimationState transitionAnimationState2) {
        this.f80830c = z;
        this.d = mutableTransitionState;
        this.f80831e = mutableState;
        this.f80832f = transitionAnimationState;
        this.g = transitionAnimationState2;
    }
}
