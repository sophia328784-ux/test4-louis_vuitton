package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.BottomSheetScaffoldState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchBottomBarKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.utils.MathUtilsKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rk implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f79544c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f79545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79546f;
    public final /* synthetic */ Object g;

    public /* synthetic */ rk(Object obj, float f2, float f3, float f4, Object obj2, int i2) {
        this.f79543b = i2;
        this.f79546f = obj;
        this.f79544c = f2;
        this.d = f3;
        this.f79545e = f4;
        this.g = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79543b;
        Object obj2 = this.g;
        Object obj3 = this.f79546f;
        switch (i2) {
            case 0:
                Density density = (Density) obj;
                float f2 = CatalogStoreModeKt.f64850a;
                density.getClass();
                float fC = MathKt.c(density.l1(((BottomSheetScaffoldState) obj3).f6629a.f7211e.g()));
                Dp.Companion companion = Dp.f11004c;
                float f3 = SearchBottomBarKt.f62854a;
                ((MutableFloatState) obj2).w(RangesKt.c(MathUtilsKt.a((this.f79544c - (fC + f3)) - CatalogStoreModeKt.f64851b, this.d - f3, 0.2f, this.f79545e, 0.4f), 0.2f, 0.4f));
                IntOffset.f11012b.getClass();
                return new IntOffset(0L);
            default:
                final List list = (List) obj3;
                final Function4 function4 = (Function4) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                int size = list.size();
                Function1<Integer, Object> function1 = new Function1<Integer, Object>() { // from class: com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        list.get(((Number) obj4).intValue());
                        return null;
                    }
                };
                final float f4 = this.f79544c;
                final float f5 = this.d;
                final float f6 = this.f79545e;
                lazyListScope.h(size, null, function1, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj4, Object obj5, Object obj6, Object obj7) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj4;
                        final int iIntValue = ((Number) obj5).intValue();
                        Composer composer = (Composer) obj6;
                        int iIntValue2 = ((Number) obj7).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i3 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i3 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        boolean z = true;
                        if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            Object obj8 = list.get(iIntValue);
                            int i4 = i3 & 126;
                            composer.L(1653614276);
                            Modifier modifierM = PaddingKt.m(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                            boolean z2 = iIntValue == 0;
                            final float f7 = f6;
                            Modifier modifierB = ModifierExtKt.b(modifierM, z2, new Function2<Composer, Integer, Modifier>() { // from class: com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$2$1$1$1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj9, Object obj10) {
                                    Composer composer2 = (Composer) obj9;
                                    ((Number) obj10).intValue();
                                    composer2.L(-1280069126);
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    Modifier modifierM2 = PaddingKt.m(Modifier.Companion.f8607b, f7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                    composer2.F();
                                    return modifierM2;
                                }
                            }, composer, 0);
                            Dp.Companion companion2 = Dp.f11004c;
                            Modifier modifierB2 = ClipKt.b(SizeKt.s(modifierB, f5));
                            if ((((i3 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i3 & 48) != 32) {
                                z = false;
                            }
                            Object objX = composer.x();
                            if (z || objX == Composer.Companion.f7939a) {
                                objX = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$2$1$1$2$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj9) {
                                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj9;
                                        semanticsPropertyReceiver.getClass();
                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(0, 0, iIntValue, 0));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            Modifier modifierB3 = SemanticsModifierKt.b(modifierB2, false, (Function1) objX);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode = Long.hashCode(composer.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                            Modifier modifierC = ComposedModifierKt.c(composer, modifierB3);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer.B();
                            if (composer.getS()) {
                                composer.C(function0);
                            } else {
                                composer.o();
                            }
                            Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(composer, ComposeUiNode.Companion.f9645h);
                            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                            function4.g(Integer.valueOf(iIntValue), obj8, composer, Integer.valueOf((i4 >> 3) & 14));
                            composer.r();
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
        }
    }
}
