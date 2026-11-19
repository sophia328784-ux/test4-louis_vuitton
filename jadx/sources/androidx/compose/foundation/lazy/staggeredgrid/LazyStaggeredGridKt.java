package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProviderKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.n00;
import defpackage.u00;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntRange;
import kotlin.reflect.KProperty0;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyStaggeredGridKt {
    public static final void a(final LazyStaggeredGridState lazyStaggeredGridState, final Orientation orientation, final LazyGridStaggeredGridSlotsProvider lazyGridStaggeredGridSlotsProvider, Modifier modifier, final PaddingValuesImpl paddingValuesImpl, final FlingBehavior flingBehavior, final boolean z, final OverscrollEffect overscrollEffect, final float f2, final Function1 function1, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        LazyStaggeredGridState lazyStaggeredGridState2;
        GapComposer gapComposer;
        int i6;
        final LazyStaggeredGridState lazyStaggeredGridState3;
        Orientation orientation2;
        Modifier modifierJ;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LazyStaggeredGrid-w41Enmo");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1904835166);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(lazyStaggeredGridState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.d(orientation.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= (i2 & 512) == 0 ? gapComposerH.K(lazyGridStaggeredGridSlotsProvider) : gapComposerH.y(lazyGridStaggeredGridSlotsProvider) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.K(modifier2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(paddingValuesImpl) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.b(false) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.K(flingBehavior) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.b(z) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.K(overscrollEffect) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.c(Call.Parameters.DEFAULT_CAMERA_ZOOM) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i7 = i4;
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.c(f2) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i7 & 1, ((i7 & 306783379) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i8 = i7 & 14;
            int i9 = i8 | (i5 & 112);
            MutableState mutableStateL = SnapshotStateKt.l(function1, gapComposerH);
            int i10 = i5;
            boolean z2 = (((i9 & 14) ^ 6) > 4 && gapComposerH.K(lazyStaggeredGridState)) || (i9 & 6) == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                final State stateD = SnapshotStateKt.d(SnapshotStateKt.k(), new u00(8, mutableStateL));
                objX = new LazyStaggeredGridItemProviderKt$rememberStaggeredGridItemProviderLambda$1$1(SnapshotStateKt.d(SnapshotStateKt.k(), new Function0() { // from class: androidx.compose.foundation.lazy.staggeredgrid.c
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        LazyStaggeredGridIntervalContent lazyStaggeredGridIntervalContent = (LazyStaggeredGridIntervalContent) stateD.getF10755b();
                        LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState;
                        return new LazyStaggeredGridItemProviderImpl(lazyStaggeredGridState4, lazyStaggeredGridIntervalContent, new NearestRangeKeyIndexMap((IntRange) lazyStaggeredGridState4.f5667c.f5657h.getF10755b(), lazyStaggeredGridIntervalContent));
                    }
                }), State.class, "value", "getValue()Ljava/lang/Object;", 0);
                gapComposerH.q(objX);
            }
            final KProperty0 kProperty0 = (KProperty0) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX2;
            final GraphicsContext graphicsContext = (GraphicsContext) gapComposerH.k(CompositionLocalsKt.g);
            int i11 = i7 >> 6;
            int i12 = i7 >> 12;
            int i13 = (i11 & 7168) | i8 | (i11 & 896) | ((i7 << 9) & 57344) | (i12 & ImageMetadata.JPEG_GPS_COORDINATES) | ((i10 << 18) & 3670016) | ((i7 << 18) & 234881024);
            boolean zK = ((((i13 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && gapComposerH.K(paddingValuesImpl)) || (i13 & KyberEngine.KyberPolyBytes) == 256) | ((((i13 & 14) ^ 6) > 4 && gapComposerH.K(lazyStaggeredGridState)) || (i13 & 6) == 4) | gapComposerH.K(kProperty0) | ((((i13 & 7168) ^ 3072) > 2048 && gapComposerH.b(false)) || (i13 & 3072) == 2048) | ((((i13 & 57344) ^ 24576) > 16384 && gapComposerH.d(orientation.ordinal())) || (i13 & 24576) == 16384) | ((((i13 & ImageMetadata.JPEG_GPS_COORDINATES) ^ ImageMetadata.EDGE_MODE) > 131072 && gapComposerH.c(Call.Parameters.DEFAULT_CAMERA_ZOOM)) || (i13 & ImageMetadata.EDGE_MODE) == 131072) | ((((i13 & 3670016) ^ 1572864) > 1048576 && gapComposerH.c(f2)) || (i13 & 1572864) == 1048576) | ((((i13 & 234881024) ^ 100663296) > 67108864 && gapComposerH.K(lazyGridStaggeredGridSlotsProvider)) || (i13 & 100663296) == 67108864) | gapComposerH.K(graphicsContext);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                i6 = 32;
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                    public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j2) {
                        float fG;
                        float f3;
                        float fG2;
                        long j3;
                        int iC;
                        SubcomposeMeasureScope subcomposeMeasureScope = lazyLayoutMeasureScopeImpl.f5487c;
                        PaddingValuesImpl paddingValuesImpl2 = paddingValuesImpl;
                        float f4 = paddingValuesImpl2.d;
                        float f5 = paddingValuesImpl2.f5031b;
                        LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState;
                        lazyStaggeredGridState4.v.getF10755b();
                        boolean z3 = lazyStaggeredGridState4.f5665a || subcomposeMeasureScope.u0();
                        Orientation orientation3 = orientation;
                        CheckScrollableContainerConstraintsKt.a(j2, orientation3);
                        LazyStaggeredGridSlots lazyStaggeredGridSlotsA = lazyGridStaggeredGridSlotsProvider.a(lazyLayoutMeasureScopeImpl, j2);
                        boolean z4 = orientation3 == Orientation.Vertical;
                        LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider = (LazyStaggeredGridItemProvider) kProperty0.mo47invoke();
                        LayoutDirection f9495b = subcomposeMeasureScope.getF9495b();
                        int[] iArr = LazyStaggeredGridMeasurePolicyKt$WhenMappings.f5623a;
                        int i14 = iArr[orientation3.ordinal()];
                        if (i14 == 1) {
                            fG = f5;
                        } else {
                            if (i14 != 2) {
                                v40.g();
                                return null;
                            }
                            fG = PaddingKt.g(paddingValuesImpl2, f9495b);
                        }
                        int iB0 = subcomposeMeasureScope.B0(fG);
                        LayoutDirection f9495b2 = subcomposeMeasureScope.getF9495b();
                        int i15 = iArr[orientation3.ordinal()];
                        if (i15 == 1) {
                            f3 = f4;
                        } else {
                            if (i15 != 2) {
                                v40.g();
                                return null;
                            }
                            f3 = PaddingKt.f(paddingValuesImpl2, f9495b2);
                        }
                        int iB1 = subcomposeMeasureScope.B0(f3);
                        LayoutDirection f9495b3 = subcomposeMeasureScope.getF9495b();
                        int i16 = iArr[orientation3.ordinal()];
                        if (i16 == 1) {
                            fG2 = PaddingKt.g(paddingValuesImpl2, f9495b3);
                        } else {
                            if (i16 != 2) {
                                v40.g();
                                return null;
                            }
                            fG2 = f5;
                        }
                        int iB2 = subcomposeMeasureScope.B0(fG2);
                        int iG = ((z4 ? Constraints.g(j2) : Constraints.h(j2)) - iB0) - iB1;
                        if (z4) {
                            j3 = (((long) iB2) << 32) | (((long) iB0) & BodyPartID.bodyIdMax);
                            IntOffset.Companion companion = IntOffset.f11012b;
                        } else {
                            j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                            IntOffset.Companion companion2 = IntOffset.f11012b;
                        }
                        long j4 = j3;
                        float f6 = PaddingKt.f(paddingValuesImpl2, subcomposeMeasureScope.getF9495b()) + PaddingKt.g(paddingValuesImpl2, subcomposeMeasureScope.getF9495b());
                        Dp.Companion companion3 = Dp.f11004c;
                        int iB3 = subcomposeMeasureScope.B0(f6);
                        int iB4 = subcomposeMeasureScope.B0(f4 + f5);
                        List listA = LazyLayoutBeyondBoundsStateKt.a(lazyStaggeredGridItemProvider, lazyStaggeredGridState4.s, lazyStaggeredGridState4.f5673k);
                        long jA = Constraints.a(j2, ConstraintsKt.g(iB3, j2), 0, ConstraintsKt.f(iB4, j2), 0, 10);
                        int iB5 = subcomposeMeasureScope.B0(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        boolean zU0 = subcomposeMeasureScope.u0();
                        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult = lazyStaggeredGridState4.f5666b;
                        LazyStaggeredGridScrollPosition lazyStaggeredGridScrollPosition = lazyStaggeredGridState4.f5667c;
                        LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext = new LazyStaggeredGridMeasureContext(lazyStaggeredGridState4, listA, lazyStaggeredGridItemProvider, lazyStaggeredGridSlotsA, jA, z4, lazyLayoutMeasureScopeImpl, iG, j4, iB0, iB1, false, iB5, coroutineScope, z3, zU0, lazyStaggeredGridMeasureResult != null ? lazyStaggeredGridMeasureResult.m : null, graphicsContext, null);
                        int[] iArr2 = lazyStaggeredGridScrollPosition.f5653b;
                        Object obj = lazyStaggeredGridScrollPosition.g;
                        Integer numB = ArraysKt.B(0, iArr2);
                        int iA = LazyLayoutItemProviderKt.a(numB != null ? numB.intValue() : 0, lazyStaggeredGridItemProvider, obj);
                        if (!ArraysKt.g(iArr2, iA)) {
                            lazyStaggeredGridScrollPosition.f5657h.h(iA);
                            Snapshot.f8462e.getClass();
                            Snapshot snapshotA = Snapshot.Companion.a();
                            Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                            try {
                                iArr2 = (int[]) lazyStaggeredGridScrollPosition.f5652a.invoke(Integer.valueOf(iA), Integer.valueOf(iArr2.length));
                                Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                lazyStaggeredGridScrollPosition.f5653b = iArr2;
                                ((SnapshotMutableIntStateImpl) lazyStaggeredGridScrollPosition.f5654c).i(LazyStaggeredGridScrollPosition.a(iArr2));
                            } catch (Throwable th) {
                                Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                throw th;
                            }
                        }
                        int[] iArr3 = lazyStaggeredGridScrollPosition.d;
                        int length = iArr2.length;
                        int i17 = lazyStaggeredGridMeasureContext.t;
                        if (length != i17) {
                            LazyStaggeredGridLaneInfo lazyStaggeredGridLaneInfo = lazyStaggeredGridMeasureContext.s;
                            lazyStaggeredGridLaneInfo.g();
                            int[] iArr4 = new int[i17];
                            for (int i18 = 0; i18 < i17; i18++) {
                                if (i18 >= iArr2.length || (iC = iArr2[i18]) == -1) {
                                    if (i18 == 0) {
                                        iC = 0;
                                    } else {
                                        iC = LazyStaggeredGridMeasureKt.c(iArr4, ((long) i18) & BodyPartID.bodyIdMax) + 1;
                                    }
                                }
                                iArr4[i18] = iC;
                                lazyStaggeredGridLaneInfo.i(iC, i18);
                            }
                            iArr2 = iArr4;
                        }
                        if (iArr3.length != i17) {
                            int[] iArr5 = new int[i17];
                            int i19 = 0;
                            while (i19 < i17) {
                                iArr5[i19] = i19 < iArr3.length ? iArr3[i19] : i19 == 0 ? 0 : iArr5[i19 - 1];
                                i19++;
                            }
                            iArr3 = iArr5;
                        }
                        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResultD = LazyStaggeredGridMeasureKt.d(lazyStaggeredGridMeasureContext, Math.round((zU0 || !lazyStaggeredGridState4.f5665a) ? lazyStaggeredGridState4.o : ((Number) ((SnapshotMutableStateImpl) lazyStaggeredGridState4.w.f5512b.f3818c).getF10755b()).floatValue()), iArr2, iArr3, true);
                        lazyStaggeredGridState4.f(lazyStaggeredGridMeasureResultD, subcomposeMeasureScope.u0(), false);
                        return lazyStaggeredGridMeasureResultD;
                    }
                };
                lazyStaggeredGridState3 = lazyStaggeredGridState;
                gapComposerH.q(lazyLayoutMeasurePolicy);
                objX3 = lazyLayoutMeasurePolicy;
            } else {
                i6 = 32;
                lazyStaggeredGridState3 = lazyStaggeredGridState;
            }
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) objX3;
            int i14 = i8 | (i12 & 112);
            boolean z3 = ((((i14 & 112) ^ 48) > i6 && gapComposerH.b(false)) || (i14 & 48) == i6) | ((((i14 & 14) ^ 6) > 4 && gapComposerH.K(lazyStaggeredGridState3)) || (i14 & 6) == 4);
            Object objX4 = gapComposerH.x();
            if (z3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int a() {
                        LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState3;
                        return lazyStaggeredGridState4.g().getR() + lazyStaggeredGridState4.g().getQ();
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float b() {
                        LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState3;
                        int iF = ((SnapshotMutableIntStateImpl) lazyStaggeredGridState4.f5667c.f5654c).f();
                        int iF2 = ((SnapshotMutableIntStateImpl) lazyStaggeredGridState4.f5667c.f5655e).f();
                        return lazyStaggeredGridState4.d() ? (iF * 500) + iF2 + 100.0f : (iF * 500) + iF2;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final Object c(int i15, Continuation continuation) {
                        LazyStaggeredGridState.Companion companion = LazyStaggeredGridState.x;
                        LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState3;
                        lazyStaggeredGridState4.getClass();
                        Object objC = lazyStaggeredGridState4.c(MutatePriority.Default, new LazyStaggeredGridState$scrollToItem$2(lazyStaggeredGridState4, i15, null), continuation);
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        if (objC != coroutineSingletons) {
                            objC = Unit.f71739a;
                        }
                        return objC == coroutineSingletons ? objC : Unit.f71739a;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final CollectionInfo d() {
                        return new CollectionInfo(-1, -1);
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int e() {
                        LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState3;
                        return (int) (lazyStaggeredGridState4.g().getU() == Orientation.Vertical ? lazyStaggeredGridState4.g().getN() & BodyPartID.bodyIdMax : lazyStaggeredGridState4.g().getN() >> 32);
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float f() {
                        LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState3;
                        return (((SnapshotMutableIntStateImpl) lazyStaggeredGridState4.f5667c.f5654c).f() * 500) + ((SnapshotMutableIntStateImpl) lazyStaggeredGridState4.f5667c.f5655e).f();
                    }
                };
                gapComposerH.q(objX4);
            }
            LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1 lazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1 = (LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1) objX4;
            if (z) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1834596342, "LazyStaggeredGrid-w41Enmo");
                boolean z4 = ((i8 ^ 6) > 4 && gapComposerH.K(lazyStaggeredGridState3)) || (i7 & 6) == 4;
                Object objX5 = gapComposerH.x();
                if (z4 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new LazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState3);
                    gapComposerH.q(objX5);
                }
                orientation2 = orientation;
                modifierJ = LazyLayoutBeyondBoundsModifierLocalKt.a(dTFunctionNameModifierI, (LazyStaggeredGridBeyondBoundsState) objX5, lazyStaggeredGridState3.f5673k, false, orientation2);
                gapComposerH.Z(false);
            } else {
                orientation2 = orientation;
                modifierJ = n00.j(gapComposerH, -1834291488, false, "LazyStaggeredGrid-w41Enmo");
            }
            LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState3;
            Modifier modifierA = ScrollableAreaKt.a(LazyLayoutSemanticsKt.a(modifier2.o(lazyStaggeredGridState3.f5671i).o(lazyStaggeredGridState3.f5672j), kProperty0, lazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1, orientation2, z, false).o(modifierJ).o(lazyStaggeredGridState3.t.f5462k), lazyStaggeredGridState4, orientation, overscrollEffect, z, false, flingBehavior, lazyStaggeredGridState3.r, null);
            lazyStaggeredGridState2 = lazyStaggeredGridState4;
            gapComposer = gapComposerH;
            LazyLayoutKt.a(kProperty0, modifierA, lazyStaggeredGridState2.m, lazyLayoutMeasurePolicy2, gapComposer, 0);
        } else {
            lazyStaggeredGridState2 = lazyStaggeredGridState;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final LazyStaggeredGridState lazyStaggeredGridState5 = lazyStaggeredGridState2;
            recomposeScopeImplB0.d = new Function2() { // from class: i90
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LazyStaggeredGridKt.a(lazyStaggeredGridState5, orientation, lazyGridStaggeredGridSlotsProvider, modifier2, paddingValuesImpl, flingBehavior, z, overscrollEffect, f2, function1, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), RecomposeScopeImplKt.a(i3));
                    return Unit.f71739a;
                }
            };
        }
    }
}
