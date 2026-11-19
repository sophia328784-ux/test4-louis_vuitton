package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.VectorizedAnimationSpec;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.internal.DraggableAnchorsConfig;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt$asDrawTransform$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.IntSize;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s5 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f79711c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79712e;

    public /* synthetic */ s5(float f2, Object obj, Object obj2, int i2) {
        this.f79710b = i2;
        this.f79711c = f2;
        this.d = obj;
        this.f79712e = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d1 A[PHI: r0
      0x00d1: PHI (r0v13 float) = (r0v12 float), (r0v20 float) binds: [B:33:0x00e7, B:27:0x00cd] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        float fFloatValue;
        int i2 = this.f79710b;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Object obj2 = this.f79712e;
        final float f3 = this.f79711c;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                ImageBitmap imageBitmap = (ImageBitmap) obj3;
                BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj2;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                float f4 = AndroidCursorHandle_androidKt.f5847a;
                contentDrawScope.R1();
                CanvasDrawScope$drawContext$1 f8996c = contentDrawScope.getF8996c();
                long jD = f8996c.d();
                f8996c.a().p();
                try {
                    CanvasDrawScopeKt$asDrawTransform$1 canvasDrawScopeKt$asDrawTransform$1 = f8996c.f9001a;
                    canvasDrawScopeKt$asDrawTransform$1.g(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    Offset.f8806b.getClass();
                    canvasDrawScopeKt$asDrawTransform$1.e(45.0f, 0L);
                    DrawScope.Y(contentDrawScope, imageBitmap, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, blendModeColorFilter, 0, 46);
                    return Unit.f71739a;
                } finally {
                    pq0.y(f8996c, jD);
                }
            case 1:
                final List list = (List) obj3;
                final Function2 function2 = (Function2) obj2;
                LazyGridScope lazyGridScope = (LazyGridScope) obj;
                lazyGridScope.getClass();
                lazyGridScope.d(list.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.common.editorial.components.grids.GridSKt$GridS_f8_ukHw$lambda$3$0$1$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        list.get(((Number) obj4).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(-1942245546, true, new Function4<LazyGridItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.common.editorial.components.grids.GridSKt$GridS_f8_ukHw$lambda$3$0$1$0$$inlined$itemsIndexed$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj4, Object obj5, Object obj6, Object obj7) {
                        int i3;
                        LazyGridItemScope lazyGridItemScope = (LazyGridItemScope) obj4;
                        final int iIntValue = ((Number) obj5).intValue();
                        Composer composer = (Composer) obj6;
                        int iIntValue2 = ((Number) obj7).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i3 = (composer.K(lazyGridItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i3 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i3 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        boolean z = true;
                        if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final CarouselSItemUiModel carouselSItemUiModel = (CarouselSItemUiModel) list.get(iIntValue);
                            composer.L(-605627101);
                            Modifier modifierS = SizeKt.s(Modifier.Companion.f8607b, f3);
                            Object objX = composer.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (objX == composer$Companion$Empty$1) {
                                objX = GridSKt$GridS$2$1$2$1$1$1$1.f50758b;
                                composer.q(objX);
                            }
                            Modifier modifierB = SemanticsModifierKt.b(modifierS, false, (Function1) objX);
                            final Function2 function3 = function2;
                            boolean zK = composer.K(function3) | composer.K(carouselSItemUiModel);
                            if ((((i3 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i3 & 48) != 32) {
                                z = false;
                            }
                            boolean z2 = zK | z;
                            Object objX2 = composer.x();
                            if (z2 || objX2 == composer$Companion$Empty$1) {
                                objX2 = new Function1<CarouselSItemUiModel, Unit>() { // from class: com.vuitton.android.presentation.common.editorial.components.grids.GridSKt$GridS$2$1$2$1$1$2$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj8) {
                                        ((CarouselSItemUiModel) obj8).getClass();
                                        function3.invoke(carouselSItemUiModel, Integer.valueOf(iIntValue));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX2);
                            }
                            GridSItemKt.a(modifierB, carouselSItemUiModel, (Function1) objX2, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 2:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj3;
                LazyLayoutScrollScope lazyLayoutScrollScope = (LazyLayoutScrollScope) obj2;
                AnimationScope animationScope = (AnimationScope) obj;
                float f5 = LazyLayoutScrollScopeKt.f5516a;
                if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fFloatValue = ((Number) ((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b()).floatValue();
                    if (fFloatValue > f3) {
                        f2 = f3;
                    } else {
                        f2 = fFloatValue;
                    }
                } else if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fFloatValue = ((Number) ((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b()).floatValue();
                    if (fFloatValue < f3) {
                        f2 = f3;
                    } else {
                        f2 = fFloatValue;
                    }
                }
                float f6 = f2 - ref$FloatRef.f71918b;
                if (f6 != lazyLayoutScrollScope.e(f6) || f2 != ((Number) ((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b()).floatValue()) {
                    animationScope.a();
                }
                ref$FloatRef.f71918b += f6;
                return Unit.f71739a;
            case 3:
                IntSize intSize = (IntSize) obj3;
                SheetState sheetState = (SheetState) obj2;
                DraggableAnchorsConfig draggableAnchorsConfig = (DraggableAnchorsConfig) obj;
                float f7 = ModalBottomSheetKt.f7058a;
                draggableAnchorsConfig.a(SheetValue.Hidden, f3);
                float f8 = f3 / 2.0f;
                if (((int) (intSize.f11021a & BodyPartID.bodyIdMax)) > f8 && !sheetState.f7208a) {
                    draggableAnchorsConfig.a(SheetValue.PartiallyExpanded, f8);
                }
                int i3 = (int) (intSize.f11021a & BodyPartID.bodyIdMax);
                if (i3 != 0) {
                    draggableAnchorsConfig.a(SheetValue.Expanded, Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, f3 - i3));
                }
                return Unit.f71739a;
            default:
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) obj3;
                Function1 function1 = (Function1) obj2;
                long jLongValue = ((Long) obj).longValue();
                if (updatableAnimationState.f4826b == Long.MIN_VALUE) {
                    updatableAnimationState.f4826b = jLongValue;
                }
                AnimationVector1D animationVector1D = new AnimationVector1D(updatableAnimationState.f4828e);
                long jC = f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? updatableAnimationState.f4825a.c(new AnimationVector1D(updatableAnimationState.f4828e), UpdatableAnimationState.g, updatableAnimationState.f4827c) : MathKt.d((jLongValue - updatableAnimationState.f4826b) / f3);
                VectorizedAnimationSpec vectorizedAnimationSpec = updatableAnimationState.f4825a;
                AnimationVector1D animationVector1D2 = UpdatableAnimationState.g;
                float f9 = ((AnimationVector1D) vectorizedAnimationSpec.g(jC, animationVector1D, animationVector1D2, updatableAnimationState.f4827c)).f3821a;
                updatableAnimationState.f4827c = (AnimationVector1D) updatableAnimationState.f4825a.f(jC, animationVector1D, animationVector1D2, updatableAnimationState.f4827c);
                updatableAnimationState.f4826b = jLongValue;
                float f10 = updatableAnimationState.f4828e - f9;
                updatableAnimationState.f4828e = f9;
                function1.invoke(Float.valueOf(f10));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ s5(Object obj, float f2, Function function, int i2) {
        this.f79710b = i2;
        this.d = obj;
        this.f79711c = f2;
        this.f79712e = function;
    }
}
