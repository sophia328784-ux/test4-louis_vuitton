package androidx.compose.foundation.lazy.layout;

import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.R;
import defpackage.k3;
import defpackage.rs;
import defpackage.u00;
import defpackage.uv;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutKt {
    public static final void a(Function0 function0, Modifier modifier, final LazyLayoutPrefetchState lazyLayoutPrefetchState, final LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LazyLayout");
        }
        final Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1055276397);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2 | (gapComposerH.K(modifier2) ? 32 : 16) | (gapComposerH.K(lazyLayoutPrefetchState) ? 256 : 128) | (gapComposerH.K(lazyLayoutMeasurePolicy) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateL = SnapshotStateKt.l(function0, gapComposerH);
            LazySaveableStateHolderKt.a(ComposableLambdaKt.b(-933153643, new Function3() { // from class: androidx.compose.foundation.lazy.layout.c
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Modifier modifierO;
                    SaveableStateHolder saveableStateHolder = (SaveableStateHolder) obj;
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    Modifier modifierE = modifier2;
                    if (modifierE != null) {
                        modifierE = defpackage.a.e(modifierE, "LazyLayout$lambda$1");
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Object objX = composer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new LazyLayoutItemContentFactory(saveableStateHolder, new u00(6, mutableStateL));
                        composer2.q(objX);
                    }
                    LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) objX;
                    Object objX2 = composer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                        composer2.q(objX2);
                    }
                    SubcomposeLayoutState subcomposeLayoutState = (SubcomposeLayoutState) objX2;
                    LazyLayoutPrefetchState lazyLayoutPrefetchState2 = lazyLayoutPrefetchState;
                    if (lazyLayoutPrefetchState2 != null) {
                        composer2.L(1743490539);
                        PrefetchScheduler prefetchScheduler = lazyLayoutPrefetchState2.f5502a;
                        if (prefetchScheduler == null) {
                            composer2.L(887527095);
                            prefetchScheduler = PrefetchScheduler_androidKt.f5564a;
                            if (prefetchScheduler != null) {
                                composer2.L(1345554384);
                                composer2.F();
                            } else {
                                composer2.L(1345603457);
                                View view = (View) composer2.k(AndroidCompositionLocals_androidKt.f9939f);
                                boolean zK = composer2.K(view);
                                Object objX3 = composer2.x();
                                if (zK || objX3 == composer$Companion$Empty$1) {
                                    Object tag = view.getTag(R.id.compose_prefetch_scheduler);
                                    objX3 = tag instanceof PrefetchScheduler ? (PrefetchScheduler) tag : null;
                                    if (objX3 == null) {
                                        objX3 = new AndroidPrefetchScheduler(view);
                                        view.setTag(R.id.compose_prefetch_scheduler, objX3);
                                    }
                                    composer2.q(objX3);
                                }
                                composer2.F();
                                prefetchScheduler = (PrefetchScheduler) objX3;
                            }
                        } else {
                            composer2.L(887526010);
                        }
                        composer2.F();
                        PrefetchScheduler prefetchScheduler2 = prefetchScheduler;
                        Object[] objArr = {lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, prefetchScheduler2};
                        boolean zK2 = composer2.K(lazyLayoutPrefetchState2) | composer2.y(lazyLayoutItemContentFactory) | composer2.y(subcomposeLayoutState) | composer2.y(prefetchScheduler2);
                        Object objX4 = composer2.x();
                        if (zK2 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new k3(lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, prefetchScheduler2, 19);
                            composer2.q(objX4);
                        }
                        EffectsKt.d(objArr, (Function1) objX4, composer2);
                        composer2.F();
                    } else {
                        composer2.L(1744076749);
                        composer2.F();
                    }
                    int i4 = LazyLayoutPrefetchStateKt.f5510a;
                    if (lazyLayoutPrefetchState2 != null && (modifierO = modifierE.o(new TraversablePrefetchStateModifierElement(lazyLayoutPrefetchState2))) != null) {
                        modifierE = modifierO;
                    }
                    boolean zK3 = composer2.K(lazyLayoutItemContentFactory);
                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = lazyLayoutMeasurePolicy;
                    boolean zK4 = zK3 | composer2.K(lazyLayoutMeasurePolicy2);
                    Object objX5 = composer2.x();
                    if (zK4 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new rs(lazyLayoutItemContentFactory, lazyLayoutMeasurePolicy2, 26);
                        composer2.q(objX5);
                    }
                    SubcomposeLayoutKt.b(subcomposeLayoutState, modifierE, (Function2) objX5, composer2, 8);
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(function0, modifier2, lazyLayoutPrefetchState, lazyLayoutMeasurePolicy, i2);
        }
    }
}
