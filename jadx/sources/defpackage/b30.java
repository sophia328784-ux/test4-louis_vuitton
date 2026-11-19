package defpackage;

import android.content.Context;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleCarouselViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.CarouselArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleAssetUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeItemKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeSliderKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b30 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20732b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f20733c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f20734e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f20735f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f20736h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f20737i;

    public /* synthetic */ b30(Context context, PagerState pagerState, float f2, CarouselArticleSectionUiModel carouselArticleSectionUiModel, boolean z, Function1 function1, MutableState mutableState) {
        this.f20735f = context;
        this.g = pagerState;
        this.f20734e = f2;
        this.f20736h = carouselArticleSectionUiModel;
        this.f20733c = z;
        this.f20737i = function1;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        Object umVar;
        MutableState mutableState;
        int i2;
        int i3 = this.f20732b;
        final MutableState mutableState2 = this.d;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj5 = this.f20737i;
        Object obj6 = this.f20736h;
        Object obj7 = this.f20735f;
        Object obj8 = this.g;
        switch (i3) {
            case 0:
                Context context = (Context) obj7;
                PagerState pagerState = (PagerState) obj8;
                CarouselArticleSectionUiModel carouselArticleSectionUiModel = (CarouselArticleSectionUiModel) obj6;
                Function1 function1 = (Function1) obj5;
                int iIntValue = ((Integer) obj2).intValue();
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierC = FocusableKt.c(new DTFunctionNameModifier("ImmersiveArticleCarousel$lambda$14$0$2$0"), null, 3);
                boolean zY = composer.y(context) | composer.K(pagerState);
                Object objX = composer.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new jx(context, pagerState, mutableState2);
                    composer.q(objX);
                }
                ImmersiveArticleCarouselViewKt.a(SemanticsModifierKt.b(modifierC, false, (Function1) objX), this.f20734e, (ImmersiveArticleAssetUiModel) carouselArticleSectionUiModel.d.get(iIntValue), this.f20733c, function1, composer, 0);
                return Unit.f71739a;
            case 1:
                final State state = (State) obj7;
                final MutableState mutableState3 = (MutableState) obj8;
                final MutableState mutableState4 = (MutableState) obj6;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj5;
                PagerScope pagerScope = (PagerScope) obj;
                Integer num = (Integer) obj2;
                int iIntValue2 = num.intValue();
                Composer composer2 = (Composer) obj3;
                int iIntValue3 = ((Integer) obj4).intValue();
                pagerScope.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVSlideShowContent_vucX2i8$lambda$0$13");
                int i4 = (iIntValue3 & 112) ^ 48;
                boolean z = (i4 > 32 && composer2.d(iIntValue2)) || (iIntValue3 & 48) == 32;
                Object objX2 = composer2.x();
                MutableState mutableState5 = this.d;
                if (z || objX2 == composer$Companion$Empty$1) {
                    mutableState = mutableState5;
                    umVar = new um(iIntValue2, state, mutableState, mutableState3, mutableState4);
                    i2 = iIntValue2;
                    composer2.q(umVar);
                } else {
                    mutableState = mutableState5;
                    i2 = iIntValue2;
                    umVar = objX2;
                }
                Modifier modifierA = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier, (Function1) umVar);
                boolean z2 = (i4 > 32 && composer2.d(i2)) || (iIntValue3 & 48) == 32;
                final MutableState mutableState6 = mutableState;
                final boolean z3 = this.f20733c;
                boolean zB = z2 | composer2.b(z3);
                Object objX3 = composer2.x();
                if (zB || objX3 == composer$Companion$Empty$1) {
                    final float f2 = this.f20734e;
                    final int i5 = i2;
                    Function1 function2 = new Function1() { // from class: r70
                        /* JADX WARN: Code duplicated, block: B:7:0x003e A[PHI: r0
                          0x003e: PHI (r0v11 float) = (r0v10 float), (r0v10 float), (r0v17 float), (r0v17 float) binds: [B:18:0x0078, B:15:0x0072, B:9:0x0043, B:6:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj9) {
                            float fFloatValue;
                            GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj9;
                            graphicsLayerScope.getClass();
                            State state2 = state;
                            int iIntValue4 = ((Number) state2.getF10755b()).intValue() + 1;
                            int i6 = i5;
                            float f3 = f2;
                            boolean z4 = z3;
                            MutableState mutableState7 = mutableState6;
                            float f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            if (i6 == iIntValue4) {
                                fFloatValue = (int) (((Number) mutableState7.getF10755b()).floatValue() * f3);
                                float fFloatValue2 = ((Number) mutableState3.getF10755b()).floatValue() + fFloatValue;
                                if (fFloatValue2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? !z4 : z4) {
                                    f4 = fFloatValue;
                                } else {
                                    f4 = fFloatValue - fFloatValue2;
                                }
                            } else if (i6 == ((Number) state2.getF10755b()).intValue() - 1) {
                                fFloatValue = (int) (((Number) mutableState7.getF10755b()).floatValue() * f3);
                                float fFloatValue3 = ((Number) mutableState4.getF10755b()).floatValue() + fFloatValue;
                                if (fFloatValue3 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? !z4 : z4) {
                                    f4 = fFloatValue;
                                } else {
                                    f4 = fFloatValue + fFloatValue3;
                                }
                            }
                            graphicsLayerScope.D(f4);
                            return Unit.f71739a;
                        }
                    };
                    composer2.q(function2);
                    objX3 = function2;
                }
                Modifier modifierA2 = GraphicsLayerModifierKt.a(modifierA, (Function1) objX3);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(composer2.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierA2);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (composer2.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer2.B();
                if (composer2.getS()) {
                    composer2.C(function0);
                } else {
                    composer2.o();
                }
                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                composableLambdaImpl.g(pagerScope, num, composer2, Integer.valueOf(iIntValue3 & 126));
                composer2.r();
                return Unit.f71739a;
            default:
                final PagerState pagerState2 = (PagerState) obj8;
                final List list = (List) obj7;
                String str = (String) obj6;
                final CoroutineScope coroutineScope = (CoroutineScope) obj5;
                int iIntValue4 = ((Integer) obj2).intValue();
                Composer composer3 = (Composer) obj3;
                int iIntValue5 = ((Integer) obj4).intValue();
                float f3 = ModelSizeSliderKt.f61508a;
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                float fL = iIntValue4 - (pagerState2.l() + pagerState2.k());
                Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("ModelSizeSlider$lambda$12$1"), ModelSizeItemKt.f61506a);
                final float fC = RangesKt.c(fL, -1.0f, 1.0f);
                if (Math.abs(fL) > 0.01f) {
                    final float f4 = this.f20734e;
                    final boolean z4 = this.f20733c;
                    modifierO = GraphicsLayerModifierKt.a(modifierO, new Function1() { // from class: ed0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj9) {
                            GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj9;
                            float f5 = ModelSizeSliderKt.f61508a;
                            graphicsLayerScope.getClass();
                            boolean z5 = z4;
                            float f6 = fC;
                            float f7 = f4;
                            graphicsLayerScope.D(z5 ? (-f6) * f7 : f6 * f7);
                            return Unit.f71739a;
                        }
                    });
                }
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8587f, false);
                int iHashCode2 = Long.hashCode(composer3.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierO);
                ComposeUiNode.b0.getClass();
                Function0 function3 = ComposeUiNode.Companion.f9641b;
                if (composer3.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer3.B();
                if (composer3.getS()) {
                    composer3.C(function3);
                } else {
                    composer3.o();
                }
                Updater.c(composer3, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                Updater.c(composer3, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                Updater.c(composer3, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer3, modifierC3, ComposeUiNode.Companion.d, "ModelSizeSlider$lambda$12$1");
                boolean zY2 = composer3.y(list) | ((((iIntValue5 & 112) ^ 48) > 32 && composer3.d(iIntValue4)) || (iIntValue5 & 48) == 32) | composer3.K(pagerState2) | composer3.K(str);
                Object objX4 = composer3.x();
                if (zY2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new af(iIntValue4, list, pagerState2, str);
                    composer3.q(objX4);
                }
                Modifier modifierE = ModifierExtKt.e(SemanticsModifierKt.b(dTFunctionNameModifierF, false, (Function1) objX4), "contextualSizing_modelSizeItem_button");
                ModelSizeVariationUiModel modelSizeVariationUiModel = (ModelSizeVariationUiModel) list.get(iIntValue4);
                boolean z5 = pagerState2.k() == iIntValue4;
                boolean zY3 = composer3.y(coroutineScope) | composer3.K(pagerState2) | composer3.y(list);
                Object objX5 = composer3.x();
                if (zY3 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new Function1() { // from class: com.vuitton.android.presentation.screen.pdp.contextualsizing.components.b
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj9) {
                            ModelSizeVariationUiModel modelSizeVariationUiModel2 = (ModelSizeVariationUiModel) obj9;
                            float f5 = ModelSizeSliderKt.f61508a;
                            modelSizeVariationUiModel2.getClass();
                            mutableState2.setValue(Boolean.TRUE);
                            BuildersKt.c(coroutineScope, null, null, new ModelSizeSliderKt$ModelSizeSlider$3$2$1$2$1$1(pagerState2, list, modelSizeVariationUiModel2, null), 3);
                            return Unit.f71739a;
                        }
                    };
                    composer3.q(objX5);
                }
                ModelSizeItemKt.a(modifierE, modelSizeVariationUiModel, z5, (Function1) objX5, composer3, 6);
                composer3.r();
                return Unit.f71739a;
        }
    }

    public /* synthetic */ b30(PagerState pagerState, float f2, boolean z, List list, String str, CoroutineScope coroutineScope, MutableState mutableState) {
        this.g = pagerState;
        this.f20734e = f2;
        this.f20733c = z;
        this.f20735f = list;
        this.f20736h = str;
        this.f20737i = coroutineScope;
        this.d = mutableState;
    }

    public /* synthetic */ b30(boolean z, State state, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, float f2, ComposableLambdaImpl composableLambdaImpl) {
        this.f20733c = z;
        this.f20735f = state;
        this.d = mutableState;
        this.g = mutableState2;
        this.f20736h = mutableState3;
        this.f20734e = f2;
        this.f20737i = composableLambdaImpl;
    }
}
