package androidx.compose.foundation.lazy;

import android.os.Trace;
import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProviderKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutStickyItemsKt;
import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement$Companion$StickToTopPlacement$1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.a1;
import defpackage.d90;
import defpackage.h70;
import defpackage.l00;
import defpackage.n00;
import defpackage.n60;
import defpackage.o60;
import defpackage.u00;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.reflect.KProperty0;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyListKt {
    /* JADX WARN: Code duplicated, block: B:156:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:176:0x026d  */
    /* JADX WARN: Code duplicated, block: B:179:0x027e  */
    /* JADX WARN: Code duplicated, block: B:182:0x029f  */
    /* JADX WARN: Code duplicated, block: B:207:0x030c  */
    /* JADX WARN: Code duplicated, block: B:208:0x030f  */
    /* JADX WARN: Code duplicated, block: B:254:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:257:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:259:0x03db  */
    /* JADX WARN: Code duplicated, block: B:261:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:272:0x040a  */
    /* JADX WARN: Code duplicated, block: B:275:0x0420  */
    public static final void a(Modifier modifier, final LazyListState lazyListState, final PaddingValues paddingValues, final boolean z, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, Alignment.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, Arrangement.Horizontal horizontal2, Function1 function1, Composer composer, int i2, int i3, int i4) {
        int i5;
        Alignment.Horizontal horizontal3;
        int i6;
        int i7;
        Alignment.Vertical vertical3;
        Alignment.Horizontal horizontal4;
        GapComposer gapComposer;
        Arrangement.Vertical vertical4;
        Arrangement.Horizontal horizontal5;
        final Arrangement.Vertical vertical5;
        final Alignment.Vertical vertical6;
        int i8;
        Arrangement.Horizontal horizontal6;
        int i9;
        MutableState mutableStateL;
        boolean z3;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final KProperty0 kProperty0;
        boolean z4;
        Object objX2;
        Object objX3;
        final CoroutineScope coroutineScope;
        final GraphicsContext graphicsContext;
        final StickyItemsPlacement$Companion$StickToTopPlacement$1 stickyItemsPlacement$Companion$StickToTopPlacement$1;
        int i10;
        boolean z5;
        boolean zD;
        Object obj;
        int i11;
        Arrangement.Horizontal horizontal7;
        Alignment.Horizontal horizontal8;
        LazyListState lazyListState2;
        KProperty0 kProperty1;
        Orientation orientation;
        Orientation orientation2;
        boolean z6;
        Modifier modifierJ;
        boolean zD2;
        Object objX4;
        Modifier modifierE = modifier;
        final LazyListState lazyListState3 = lazyListState;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LazyList");
        }
        GapComposer gapComposerH = composer.h(924924659);
        if ((i2 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.K(lazyListState3) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(paddingValues) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.b(false) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i5 |= gapComposerH.K(flingBehavior) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 |= gapComposerH.b(z2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.K(overscrollEffect) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= 33554432;
        }
        int i12 = i4 & 512;
        if (i12 != 0) {
            i5 |= 805306368;
            horizontal3 = horizontal;
        } else {
            horizontal3 = horizontal;
            if ((i2 & 805306368) == 0) {
                i5 |= gapComposerH.K(horizontal3) ? PKIFailureInfo.duplicateCertReq : 268435456;
            }
        }
        Modifier modifier2 = modifierE;
        int i13 = i4 & 1024;
        if (i13 != 0) {
            i6 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i6 = i3 | (gapComposerH.K(vertical) ? 4 : 2);
        } else {
            i6 = i3;
        }
        int i14 = i4 & 2048;
        if (i14 != 0) {
            i6 |= 48;
        } else if ((i3 & 48) == 0) {
            i6 |= gapComposerH.K(vertical2) ? 32 : 16;
        }
        int i15 = i6;
        int i16 = i4 & 4096;
        if (i16 != 0) {
            i7 = i15 | KyberEngine.KyberPolyBytes;
        } else if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i7 = i15 | (gapComposerH.K(horizontal2) ? 256 : 128);
        } else {
            i7 = i15;
        }
        if ((i3 & 3072) == 0) {
            i7 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        int i17 = i7;
        boolean z7 = true;
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i17 & 1171) == 1170) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                int i18 = i5 & (-234881025);
                if (i12 != 0) {
                    horizontal3 = null;
                }
                vertical5 = i13 != 0 ? null : vertical;
                vertical6 = i14 != 0 ? null : vertical2;
                i8 = i18;
                if (i16 != 0) {
                    horizontal6 = null;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                i9 = i8 >> 3;
                int i19 = i9 & 14;
                int i20 = i19 | ((i17 >> 6) & 112);
                mutableStateL = SnapshotStateKt.l(function1, gapComposerH);
                int i21 = i8;
                z3 = (((i20 & 14) ^ 6) <= 4 && gapComposerH.K(lazyListState3)) || (i20 & 6) == 4;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z3 || objX == composer$Companion$Empty$1) {
                    final LazyItemScopeImpl lazyItemScopeImpl = new LazyItemScopeImpl();
                    final State stateD = SnapshotStateKt.d(SnapshotStateKt.k(), new u00(7, mutableStateL));
                    objX = new LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$1(SnapshotStateKt.d(SnapshotStateKt.k(), new Function0() { // from class: androidx.compose.foundation.lazy.c
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) stateD.getF10755b();
                            LazyListState lazyListState4 = lazyListState3;
                            return new LazyListItemProviderImpl(lazyListState4, lazyListIntervalContent, lazyItemScopeImpl, new NearestRangeKeyIndexMap((IntRange) lazyListState4.f5235e.f5229e.getF10755b(), lazyListIntervalContent));
                        }
                    }), State.class, "value", "getValue()Ljava/lang/Object;", 0);
                    gapComposerH.q(objX);
                }
                kProperty0 = (KProperty0) objX;
                int i22 = i21 >> 9;
                int i23 = i19 | (i22 & 112);
                z4 = ((((i23 & 112) ^ 48) <= 32 && gapComposerH.b(z)) || (i23 & 48) == 32) | ((((i23 & 14) ^ 6) <= 4 && gapComposerH.K(lazyListState3)) || (i23 & 6) == 4);
                objX2 = gapComposerH.x();
                if (z4 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new LazyLayoutSemanticState(z) { // from class: androidx.compose.foundation.lazy.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        public final State f5173a;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ boolean f5175c;

                        {
                            this.f5175c = z;
                            this.f5173a = SnapshotStateKt.e(new a1(this.f5174b, 6));
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final int a() {
                            LazyListState lazyListState4 = this.f5174b;
                            return lazyListState4.j().getQ() + lazyListState4.j().e();
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final float b() {
                            LazyListState lazyListState4 = this.f5174b;
                            int iH = lazyListState4.h();
                            int i24 = lazyListState4.i();
                            return lazyListState4.d() ? (iH * 500) + i24 + 100.0f : (iH * 500) + i24;
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final Object c(int i24, Continuation continuation) {
                            LazyListState.Companion companion = LazyListState.y;
                            Object objK = this.f5174b.k(i24, 0, (ContinuationImpl) continuation);
                            return objK == CoroutineSingletons.COROUTINE_SUSPENDED ? objK : Unit.f71739a;
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final CollectionInfo d() {
                            boolean z8 = this.f5175c;
                            State state = this.f5173a;
                            return z8 ? new CollectionInfo(((Number) state.getF10755b()).intValue(), 1) : new CollectionInfo(1, ((Number) state.getF10755b()).intValue());
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final int e() {
                            LazyListState lazyListState4 = this.f5174b;
                            return (int) (lazyListState4.j().getP() == Orientation.Vertical ? lazyListState4.j().a() & BodyPartID.bodyIdMax : lazyListState4.j().a() >> 32);
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final float f() {
                            LazyListState lazyListState4 = this.f5174b;
                            return (lazyListState4.h() * 500) + lazyListState4.i();
                        }
                    };
                    gapComposerH.q(objX2);
                }
                LazyLayoutSemanticState lazyLayoutSemanticState = (LazyLayoutSemanticState) objX2;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX3);
                }
                coroutineScope = (CoroutineScope) objX3;
                graphicsContext = (GraphicsContext) gapComposerH.k(CompositionLocalsKt.g);
                stickyItemsPlacement$Companion$StickToTopPlacement$1 = ((Boolean) gapComposerH.k(CompositionLocalsKt.x)).booleanValue() ? null : StickyItemsPlacement.Companion.f5568a;
                int i24 = i17 << 18;
                i10 = (i21 & 65520) | (i22 & 3670016) | (i24 & 29360128) | (i24 & 234881024) | ((i17 << 27) & 1879048192);
                boolean z8 = ((((i10 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.K(paddingValues)) || (i10 & KyberEngine.KyberPolyBytes) == 256) | ((((i10 & 112) ^ 48) <= 32 && gapComposerH.K(lazyListState3)) || (i10 & 48) == 32);
                if (((i10 & 7168) ^ 3072) <= 2048 && gapComposerH.b(false)) {
                    z5 = true;
                } else if ((i10 & 3072) == 2048) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                zD = z8 | z5 | ((((57344 & i10) ^ 24576) <= 16384 && gapComposerH.b(z)) || (i10 & 24576) == 16384) | gapComposerH.d(0) | ((((i10 & 3670016) ^ 1572864) <= 1048576 && gapComposerH.K(horizontal3)) || (i10 & 1572864) == 1048576) | ((((i10 & 29360128) ^ 12582912) <= 8388608 && gapComposerH.K(vertical6)) || (i10 & 12582912) == 8388608) | ((((i10 & 234881024) ^ 100663296) <= 67108864 && gapComposerH.K(horizontal6)) || (i10 & 100663296) == 67108864) | ((((i10 & 1879048192) ^ 805306368) <= 536870912 && gapComposerH.K(vertical5)) || (i10 & 805306368) == 536870912) | gapComposerH.K(graphicsContext) | gapComposerH.K(stickyItemsPlacement$Companion$StickToTopPlacement$1);
                Object objX5 = gapComposerH.x();
                if (!zD || objX5 == composer$Companion$Empty$1) {
                    final Alignment.Horizontal horizontal9 = horizontal3;
                    gapComposer = gapComposerH;
                    i11 = 4;
                    final Arrangement.Horizontal horizontal10 = horizontal6;
                    obj = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1
                        /* JADX WARN: Code duplicated, block: B:308:0x0721  */
                        /* JADX WARN: Code duplicated, block: B:309:0x0726  */
                        /* JADX WARN: Code duplicated, block: B:312:0x0730  */
                        /* JADX WARN: Code duplicated, block: B:313:0x0735  */
                        /* JADX WARN: Code duplicated, block: B:316:0x0756  */
                        /* JADX WARN: Code duplicated, block: B:318:0x075e  */
                        /* JADX WARN: Code duplicated, block: B:319:0x0765  */
                        /* JADX WARN: Code duplicated, block: B:320:0x0768  */
                        /* JADX WARN: Code duplicated, block: B:322:0x0770  */
                        /* JADX WARN: Code duplicated, block: B:324:0x0778  */
                        /* JADX WARN: Code duplicated, block: B:326:0x0780  */
                        /* JADX WARN: Code duplicated, block: B:328:0x078b  */
                        /* JADX WARN: Code duplicated, block: B:329:0x078e  */
                        /* JADX WARN: Code duplicated, block: B:331:0x0796  */
                        /* JADX WARN: Code duplicated, block: B:336:0x07a5  */
                        /* JADX WARN: Code duplicated, block: B:339:0x07d2  */
                        /* JADX WARN: Code duplicated, block: B:340:0x07d7  */
                        /* JADX WARN: Code duplicated, block: B:342:0x07db  */
                        /* JADX WARN: Code duplicated, block: B:343:0x07e0  */
                        /* JADX WARN: Code duplicated, block: B:346:0x07e8  */
                        /* JADX WARN: Code duplicated, block: B:348:0x07ee  */
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                        public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j2) {
                            float d;
                            LazyListItemProvider lazyListItemProvider;
                            int i25;
                            int i26;
                            int i27;
                            int i28;
                            int i29;
                            int i30;
                            LazyListMeasuredItem lazyListMeasuredItem;
                            float f2;
                            List arrayList;
                            int i31;
                            int i32;
                            ArrayList arrayList2;
                            int i33;
                            int i34;
                            int i35;
                            ArrayList arrayList3;
                            int i36;
                            int i37;
                            ArrayDeque arrayDeque;
                            boolean z9;
                            int i38;
                            int i39;
                            LazyListMeasuredItem lazyListMeasuredItem2;
                            int i40;
                            LazyListMeasuredItem lazyListMeasuredItem3;
                            int i41;
                            LazyListMeasuredItem lazyListMeasuredItem4;
                            Integer numValueOf;
                            LazyListMeasuredItem lazyListMeasuredItem5;
                            Integer numValueOf2;
                            int i42;
                            int iIntValue;
                            int iIntValue2;
                            Orientation orientation3;
                            LazyListMeasureResult lazyListMeasureResult;
                            SubcomposeMeasureScope subcomposeMeasureScope;
                            LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                            LazyListMeasuredItem lazyListMeasuredItem6;
                            LazyListMeasuredItem lazyListMeasuredItem7;
                            int i43;
                            int i44;
                            LazyLayoutMeasureScope lazyLayoutMeasureScope;
                            SubcomposeMeasureScope subcomposeMeasureScope2 = lazyLayoutMeasureScopeImpl.f5487c;
                            LazyListState lazyListState4 = lazyListState;
                            lazyListState4.t.getF10755b();
                            boolean z10 = lazyListState4.f5233b || subcomposeMeasureScope2.u0();
                            boolean z11 = z;
                            CheckScrollableContainerConstraintsKt.a(j2, z11 ? Orientation.Vertical : Orientation.Horizontal);
                            PaddingValues paddingValues2 = paddingValues;
                            int iB0 = z11 ? subcomposeMeasureScope2.B0(paddingValues2.b(subcomposeMeasureScope2.getF9495b())) : subcomposeMeasureScope2.B0(PaddingKt.g(paddingValues2, subcomposeMeasureScope2.getF9495b()));
                            int iB1 = z11 ? subcomposeMeasureScope2.B0(paddingValues2.c(subcomposeMeasureScope2.getF9495b())) : subcomposeMeasureScope2.B0(PaddingKt.f(paddingValues2, subcomposeMeasureScope2.getF9495b()));
                            int iB2 = subcomposeMeasureScope2.B0(paddingValues2.getF5031b());
                            int iB3 = subcomposeMeasureScope2.B0(paddingValues2.getD()) + iB2;
                            int i45 = iB0 + iB1;
                            int i46 = z11 ? iB3 : i45;
                            int i47 = z11 ? iB2 : !z11 ? iB0 : iB1;
                            int i48 = i46 - i47;
                            long jI = ConstraintsKt.i(-i45, -iB3, j2);
                            LazyListItemProvider lazyListItemProvider2 = (LazyListItemProvider) kProperty0.mo47invoke();
                            LazyItemScopeImpl f5187c = lazyListItemProvider2.getF5187c();
                            int iH = Constraints.h(jI);
                            int iG = Constraints.g(jI);
                            ((SnapshotMutableIntStateImpl) f5187c.f5171a).i(iH);
                            ((SnapshotMutableIntStateImpl) f5187c.f5172b).i(iG);
                            Arrangement.Horizontal horizontal11 = horizontal10;
                            Arrangement.Vertical vertical7 = vertical5;
                            if (z11) {
                                if (vertical7 == null) {
                                    throw o60.u("null verticalArrangement when isVertical == true");
                                }
                                d = vertical7.getD();
                            } else {
                                if (horizontal11 == null) {
                                    throw o60.u("null horizontalAlignment when isVertical == false");
                                }
                                d = horizontal11.getD();
                            }
                            int iB4 = subcomposeMeasureScope2.B0(d);
                            int iB = lazyListItemProvider2.b();
                            int iG2 = z11 ? Constraints.g(j2) - iB3 : Constraints.h(j2) - i45;
                            long j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                            IntOffset.Companion companion = IntOffset.f11012b;
                            int i49 = iG2;
                            int i50 = i48;
                            int i51 = i47;
                            LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2 = new LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(jI, z, lazyListItemProvider2, lazyLayoutMeasureScopeImpl, iB, iB4, horizontal9, vertical6, i51, i50, j3, lazyListState);
                            int i52 = iB;
                            Snapshot.f8462e.getClass();
                            Snapshot snapshotA = Snapshot.Companion.a();
                            Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                            try {
                                int iH2 = lazyListState4.h();
                                LazyListScrollPosition lazyListScrollPosition = lazyListState4.f5235e;
                                int iA = LazyLayoutItemProviderKt.a(iH2, lazyListItemProvider2, lazyListScrollPosition.d);
                                if (iH2 != iA) {
                                    ((SnapshotMutableIntStateImpl) lazyListScrollPosition.f5226a).i(iA);
                                    lazyListScrollPosition.f5229e.h(iH2);
                                }
                                int i53 = lazyListState4.i();
                                Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                List listA = LazyLayoutBeyondBoundsStateKt.a(lazyListItemProvider2, lazyListState4.s, lazyListState4.p);
                                float fFloatValue = (subcomposeMeasureScope2.u0() || !z10) ? lazyListState4.f5237h : ((Number) ((SnapshotMutableStateImpl) lazyListState4.x.f5512b.f3818c).getF10755b()).floatValue();
                                LazyLayoutItemAnimator lazyLayoutItemAnimator = lazyListState4.o;
                                boolean zU0 = subcomposeMeasureScope2.u0();
                                MutableState mutableState = lazyListState4.w;
                                boolean z12 = lazyListState4.f5238i;
                                if (i51 < 0) {
                                    InlineClassHelperKt.a("invalid beforeContentPadding");
                                }
                                if (i50 < 0) {
                                    InlineClassHelperKt.a("invalid afterContentPadding");
                                }
                                LazyListItemProvider lazyListItemProvider3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.f5221b;
                                boolean z13 = z;
                                CoroutineScope coroutineScope2 = coroutineScope;
                                GraphicsContext graphicsContext2 = graphicsContext;
                                if (i52 <= 0) {
                                    int iJ = Constraints.j(jI);
                                    int i54 = Constraints.i(jI);
                                    lazyLayoutItemAnimator.d(0, iJ, i54, new ArrayList(), lazyListItemProvider3.getD(), lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, z13, zU0, 1, z10, 0, 0, coroutineScope2, graphicsContext2);
                                    if (!zU0) {
                                        long jB = lazyLayoutItemAnimator.b();
                                        IntSize.f11020b.getClass();
                                        if (!IntSize.b(jB, 0L)) {
                                            iJ = ConstraintsKt.g((int) (jB >> 32), jI);
                                            i54 = ConstraintsKt.f((int) (jB & BodyPartID.bodyIdMax), jI);
                                        }
                                    }
                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                    lazyListItemProvider = lazyListItemProvider3;
                                    lazyListMeasureResult = new LazyListMeasureResult(null, 0, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, subcomposeMeasureScope2.V0(ConstraintsKt.g(iJ + i45, j2), ConstraintsKt.f(i54 + iB3, j2), MapsKt.c(), new n60(22)), Call.Parameters.DEFAULT_CAMERA_ZOOM, false, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.d, EmptyList.f71768b, -i51, i49 + i50, 0, false, z13 ? Orientation.Vertical : Orientation.Horizontal, i50, iB4, null);
                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2;
                                } else {
                                    lazyListItemProvider = lazyListItemProvider3;
                                    if (iA >= i52) {
                                        iA = i52 - 1;
                                        i53 = 0;
                                    }
                                    int iRound = Math.round(fFloatValue);
                                    int i55 = i53 - iRound;
                                    if (iA == 0 && i55 < 0) {
                                        iRound += i55;
                                        i55 = 0;
                                    }
                                    ArrayDeque arrayDeque2 = new ArrayDeque();
                                    boolean z14 = z12;
                                    int i56 = -i51;
                                    float f3 = fFloatValue;
                                    int i57 = i56 + (iB4 < 0 ? iB4 : 0);
                                    int i58 = i55 + i57;
                                    int i59 = iA;
                                    int iMax = 0;
                                    while (i58 < 0 && i59 > 0) {
                                        int i60 = iRound;
                                        int i61 = i59 - 1;
                                        int i62 = i50;
                                        LazyListMeasuredItem lazyListMeasuredItemD = LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i61);
                                        arrayDeque2.add(0, lazyListMeasuredItemD);
                                        iMax = Math.max(iMax, lazyListMeasuredItemD.s);
                                        i58 += lazyListMeasuredItemD.r;
                                        i59 = i61;
                                        iRound = i60;
                                        z14 = z14;
                                        i50 = i62;
                                        i56 = i56;
                                    }
                                    int i63 = iRound;
                                    boolean z15 = z14;
                                    int i64 = i50;
                                    int i65 = i56;
                                    if (i58 < i57) {
                                        i25 = i63 - (i57 - i58);
                                        i58 = i57;
                                    } else {
                                        i25 = i63;
                                    }
                                    int i66 = i58 - i57;
                                    int i67 = iMax;
                                    int i68 = i49 + i64;
                                    int i69 = i68 < 0 ? 0 : i68;
                                    int i70 = i66;
                                    int i71 = -i66;
                                    int i72 = i59;
                                    int i73 = 0;
                                    boolean z16 = false;
                                    while (i73 < arrayDeque2.d) {
                                        if (i71 >= i69) {
                                            arrayDeque2.h(i73);
                                            z16 = true;
                                        } else {
                                            i72++;
                                            i71 += ((LazyListMeasuredItem) arrayDeque2.get(i73)).r;
                                            i73++;
                                        }
                                    }
                                    int iMax2 = i67;
                                    boolean z17 = z16;
                                    int i74 = i72;
                                    while (i74 < i52 && (i71 < i69 || i71 <= 0 || arrayDeque2.isEmpty())) {
                                        int i75 = i69;
                                        LazyListMeasuredItem lazyListMeasuredItemD2 = LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i74);
                                        int i76 = i52;
                                        int i77 = lazyListMeasuredItemD2.r;
                                        i71 += i77;
                                        if (i71 <= i57) {
                                            i44 = i57;
                                            if (i74 != i76 - 1) {
                                                i70 -= i77;
                                                i59 = i74 + 1;
                                                z17 = true;
                                            }
                                            i74++;
                                            i69 = i75;
                                            i57 = i44;
                                            i52 = i76;
                                        } else {
                                            i44 = i57;
                                        }
                                        int iMax3 = Math.max(iMax2, lazyListMeasuredItemD2.s);
                                        arrayDeque2.addLast(lazyListMeasuredItemD2);
                                        iMax2 = iMax3;
                                        i74++;
                                        i69 = i75;
                                        i57 = i44;
                                        i52 = i76;
                                    }
                                    int i78 = i52;
                                    if (i71 < i49) {
                                        int i79 = i49 - i71;
                                        int i80 = i71 + i79;
                                        int i81 = i70 - i79;
                                        while (i81 < i51 && i59 > 0) {
                                            int i82 = i59 - 1;
                                            int i83 = i79;
                                            LazyListMeasuredItem lazyListMeasuredItemD3 = LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i82);
                                            arrayDeque2.add(0, lazyListMeasuredItemD3);
                                            iMax2 = Math.max(iMax2, lazyListMeasuredItemD3.s);
                                            i81 += lazyListMeasuredItemD3.r;
                                            i59 = i82;
                                            i79 = i83;
                                            i80 = i80;
                                        }
                                        int i84 = i80;
                                        i26 = i25 + i79;
                                        if (i81 < 0) {
                                            i26 += i81;
                                            i27 = i84 + i81;
                                            i28 = i59;
                                            i29 = 0;
                                        } else {
                                            i29 = i81;
                                            i28 = i59;
                                            i27 = i84;
                                        }
                                    } else {
                                        i26 = i25;
                                        i27 = i71;
                                        i28 = i59;
                                        i29 = i70;
                                    }
                                    int i85 = iMax2;
                                    float f4 = (Integer.signum(Math.round(f3)) != Integer.signum(i26) || Math.abs(Math.round(f3)) < Math.abs(i26)) ? f3 : i26;
                                    float f5 = f3 - f4;
                                    float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    if (zU0 && i26 > i25 && f5 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        f6 = (i26 - i25) + f5;
                                    }
                                    float f7 = f6;
                                    if (i29 < 0) {
                                        InlineClassHelperKt.a("negative currentFirstItemScrollOffset");
                                    }
                                    int i86 = -i29;
                                    LazyListMeasuredItem lazyListMeasuredItem8 = (LazyListMeasuredItem) arrayDeque2.first();
                                    if (i51 > 0 || iB4 < 0) {
                                        int f74615i = arrayDeque2.getF74615i();
                                        LazyListMeasuredItem lazyListMeasuredItem9 = lazyListMeasuredItem8;
                                        int i87 = i29;
                                        int i88 = 0;
                                        while (i88 < f74615i) {
                                            int i89 = f74615i;
                                            int i90 = ((LazyListMeasuredItem) arrayDeque2.get(i88)).r;
                                            if (i87 == 0 || i90 > i87 || i88 == arrayDeque2.getF74615i() - 1) {
                                                break;
                                            }
                                            i87 -= i90;
                                            i88++;
                                            lazyListMeasuredItem9 = (LazyListMeasuredItem) arrayDeque2.get(i88);
                                            f74615i = i89;
                                        }
                                        i30 = i87;
                                        lazyListMeasuredItem = lazyListMeasuredItem9;
                                    } else {
                                        lazyListMeasuredItem = lazyListMeasuredItem8;
                                        i30 = i29;
                                    }
                                    int iMax4 = Math.max(0, i28);
                                    int i91 = i28 - 1;
                                    if (iMax4 <= i91) {
                                        List arrayList4 = null;
                                        while (true) {
                                            if (arrayList4 == null) {
                                                arrayList4 = new ArrayList();
                                            }
                                            f2 = f7;
                                            arrayList = arrayList4;
                                            arrayList.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i91));
                                            if (i91 == iMax4) {
                                                break;
                                            }
                                            i91--;
                                            arrayList4 = arrayList;
                                            f7 = f2;
                                        }
                                    } else {
                                        f2 = f7;
                                        arrayList = null;
                                    }
                                    List list = listA;
                                    int size = list.size() - 1;
                                    if (size >= 0) {
                                        while (true) {
                                            int i92 = size - 1;
                                            int iIntValue3 = ((Number) listA.get(size)).intValue();
                                            if (iIntValue3 < iMax4) {
                                                if (arrayList == null) {
                                                    arrayList = new ArrayList();
                                                }
                                                arrayList.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, iIntValue3));
                                            }
                                            if (i92 < 0) {
                                                break;
                                            }
                                            size = i92;
                                        }
                                    }
                                    if (arrayList == null) {
                                        arrayList = EmptyList.f71768b;
                                    }
                                    int iMax5 = i85;
                                    int i93 = 0;
                                    for (int size2 = arrayList.size(); i93 < size2; size2 = size2) {
                                        iMax5 = Math.max(iMax5, ((LazyListMeasuredItem) arrayList.get(i93)).s);
                                        i93++;
                                    }
                                    int iMin = Math.min(((LazyListMeasuredItem) CollectionsKt.M(arrayDeque2)).f5212a, i78 - 1);
                                    int i94 = ((LazyListMeasuredItem) CollectionsKt.M(arrayDeque2)).f5212a + 1;
                                    if (i94 <= iMin) {
                                        ArrayList arrayList5 = null;
                                        while (true) {
                                            if (arrayList5 == null) {
                                                arrayList5 = new ArrayList();
                                            }
                                            i31 = i74;
                                            i32 = iMax5;
                                            arrayList2 = arrayList5;
                                            arrayList2.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i94));
                                            if (i94 == iMin) {
                                                break;
                                            }
                                            i94++;
                                            arrayList5 = arrayList2;
                                            iMax5 = i32;
                                            i74 = i31;
                                        }
                                    } else {
                                        i31 = i74;
                                        i32 = iMax5;
                                        arrayList2 = null;
                                    }
                                    if (arrayList2 != null && ((LazyListMeasuredItem) CollectionsKt.M(arrayList2)).f5212a > iMin) {
                                        iMin = ((LazyListMeasuredItem) CollectionsKt.M(arrayList2)).f5212a;
                                    }
                                    int size3 = list.size();
                                    List arrayList6 = arrayList2;
                                    int i95 = 0;
                                    while (i95 < size3) {
                                        List list2 = listA;
                                        int iIntValue4 = ((Number) listA.get(i95)).intValue();
                                        if (iIntValue4 > iMin) {
                                            if (arrayList6 == null) {
                                                arrayList6 = new ArrayList();
                                            }
                                            arrayList6.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, iIntValue4));
                                        }
                                        i95++;
                                        listA = list2;
                                    }
                                    if (arrayList6 == null) {
                                        arrayList6 = EmptyList.f71768b;
                                    }
                                    int size4 = arrayList6.size();
                                    int iMax6 = i32;
                                    for (int i96 = 0; i96 < size4; i96++) {
                                        iMax6 = Math.max(iMax6, ((LazyListMeasuredItem) arrayList6.get(i96)).s);
                                    }
                                    boolean z18 = Intrinsics.c(lazyListMeasuredItem, arrayDeque2.first()) && arrayList.isEmpty() && arrayList6.isEmpty();
                                    int iG3 = ConstraintsKt.g(z13 ? iMax6 : i27, jI);
                                    if (z13) {
                                        iMax6 = i27;
                                    }
                                    int iF = ConstraintsKt.f(iMax6, jI);
                                    LazyListMeasuredItem lazyListMeasuredItem10 = lazyListMeasuredItem;
                                    int i97 = z13 ? iF : iG3;
                                    boolean z19 = i27 < Math.min(i97, i49);
                                    if (z19 && i86 != 0) {
                                        InlineClassHelperKt.c("non-zero itemsScrollOffset");
                                    }
                                    int i98 = iG3;
                                    ArrayList arrayList7 = new ArrayList(arrayList6.size() + arrayList.size() + arrayDeque2.getF74615i());
                                    if (z19) {
                                        if (!arrayList.isEmpty() || !arrayList6.isEmpty()) {
                                            InlineClassHelperKt.a("no extra items");
                                        }
                                        int f74615i2 = arrayDeque2.getF74615i();
                                        int[] iArr = new int[f74615i2];
                                        for (int i99 = 0; i99 < f74615i2; i99++) {
                                            iArr[i99] = ((LazyListMeasuredItem) arrayDeque2.get(i99)).q;
                                        }
                                        int[] iArr2 = new int[f74615i2];
                                        if (z13) {
                                            if (vertical7 == null) {
                                                throw o60.u("null verticalArrangement when isVertical == true");
                                            }
                                            vertical7.b(lazyLayoutMeasureScopeImpl, i97, iArr, iArr2);
                                            i43 = i49;
                                            i34 = 0;
                                        } else {
                                            if (r6 == 0) {
                                                throw o60.u("null horizontalArrangement when isVertical == false");
                                            }
                                            i43 = i49;
                                            i34 = 0;
                                            horizontal11.c(lazyLayoutMeasureScopeImpl, i97, iArr, LayoutDirection.Ltr, iArr2);
                                        }
                                        IntRange intRangeY = ArraysKt.y(iArr2);
                                        int i100 = intRangeY.f71951b;
                                        int i101 = intRangeY.f71952c;
                                        int i102 = intRangeY.d;
                                        if ((i102 > 0 && i100 <= i101) || (i102 < 0 && i101 <= i100)) {
                                            while (true) {
                                                int i103 = iArr2[i100];
                                                LazyListMeasuredItem lazyListMeasuredItem11 = (LazyListMeasuredItem) arrayDeque2.get(i100);
                                                lazyListMeasuredItem11.i(i103, i98, iF);
                                                arrayList7.add(lazyListMeasuredItem11);
                                                if (i100 == i101) {
                                                    break;
                                                }
                                                i100 += i102;
                                            }
                                        }
                                        i33 = i43;
                                    } else {
                                        i33 = i49;
                                        z18 = z18;
                                        lazyListMeasuredItem10 = lazyListMeasuredItem10;
                                        i98 = i98;
                                        i34 = 0;
                                        int i104 = 0;
                                        for (int size5 = arrayList.size(); i104 < size5; size5 = size5) {
                                            i35 = i86;
                                            LazyListMeasuredItem lazyListMeasuredItem12 = (LazyListMeasuredItem) arrayList.get(i104);
                                            i35 -= lazyListMeasuredItem12.r;
                                            lazyListMeasuredItem12.i(i35, i98, iF);
                                            arrayList7.add(lazyListMeasuredItem12);
                                            i104++;
                                        }
                                        i35 = i86;
                                        int f74615i3 = arrayDeque2.getF74615i();
                                        int i105 = i86;
                                        for (int i106 = 0; i106 < f74615i3; i106++) {
                                            LazyListMeasuredItem lazyListMeasuredItem13 = (LazyListMeasuredItem) arrayDeque2.get(i106);
                                            lazyListMeasuredItem13.i(i105, i98, iF);
                                            arrayList7.add(lazyListMeasuredItem13);
                                            i105 += lazyListMeasuredItem13.r;
                                        }
                                        int size6 = arrayList6.size();
                                        for (int i107 = 0; i107 < size6; i107++) {
                                            LazyListMeasuredItem lazyListMeasuredItem14 = (LazyListMeasuredItem) arrayList6.get(i107);
                                            lazyListMeasuredItem14.i(i105, i98, iF);
                                            arrayList7.add(lazyListMeasuredItem14);
                                            i105 += lazyListMeasuredItem14.r;
                                        }
                                    }
                                    if (z15) {
                                        arrayList3 = arrayList7;
                                        i36 = i27;
                                        i37 = iF;
                                    } else {
                                        int i108 = i27;
                                        lazyLayoutItemAnimator.d((int) f4, i98, iF, arrayList7, lazyListItemProvider.getD(), lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, z13, zU0, 1, z10, i30, i108, coroutineScope2, graphicsContext2);
                                        i37 = iF;
                                        arrayList3 = arrayList7;
                                        i36 = i108;
                                    }
                                    if (zU0) {
                                        arrayDeque = arrayDeque2;
                                        z9 = z13;
                                    } else {
                                        long jB2 = lazyLayoutItemAnimator.b();
                                        IntSize.f11020b.getClass();
                                        arrayDeque = arrayDeque2;
                                        z9 = z13;
                                        if (!IntSize.b(jB2, 0L)) {
                                            int i109 = z9 ? i37 : i98;
                                            int iG4 = ConstraintsKt.g(Math.max(i98, (int) (jB2 >> 32)), jI);
                                            int iF2 = ConstraintsKt.f(Math.max(i37, (int) (jB2 & BodyPartID.bodyIdMax)), jI);
                                            int i110 = z9 ? iF2 : iG4;
                                            if (i110 != i109) {
                                                int size7 = arrayList3.size();
                                                for (int i111 = i34; i111 < size7; i111++) {
                                                    LazyListMeasuredItem lazyListMeasuredItem15 = (LazyListMeasuredItem) arrayList3.get(i111);
                                                    lazyListMeasuredItem15.u = i110;
                                                    lazyListMeasuredItem15.w = lazyListMeasuredItem15.f5218i + i110;
                                                }
                                            }
                                            i39 = iG4;
                                            i38 = iF2;
                                        }
                                        lazyListMeasuredItem2 = (LazyListMeasuredItem) arrayDeque.n();
                                        if (lazyListMeasuredItem2 != null) {
                                            i40 = lazyListMeasuredItem2.f5212a;
                                        } else {
                                            i40 = i34;
                                        }
                                        lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.p();
                                        if (lazyListMeasuredItem3 != null) {
                                            i41 = lazyListMeasuredItem3.f5212a;
                                        } else {
                                            i41 = i34;
                                        }
                                        List listA2 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i40, i41, arrayList3, lazyListItemProvider.e(), i51, i64, i39, i38, new l00(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, 20));
                                        if (z18) {
                                            lazyListMeasuredItem7 = (LazyListMeasuredItem) CollectionsKt.firstOrNull(arrayList3);
                                            if (lazyListMeasuredItem7 != null) {
                                                numValueOf = Integer.valueOf(lazyListMeasuredItem7.f5212a);
                                            } else {
                                                numValueOf = null;
                                            }
                                        } else {
                                            lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.n();
                                            if (lazyListMeasuredItem4 != null) {
                                                numValueOf = Integer.valueOf(lazyListMeasuredItem4.f5212a);
                                            } else {
                                                numValueOf = null;
                                            }
                                        }
                                        if (z18) {
                                            lazyListMeasuredItem6 = (LazyListMeasuredItem) CollectionsKt.N(arrayList3);
                                            if (lazyListMeasuredItem6 != null) {
                                                numValueOf2 = Integer.valueOf(lazyListMeasuredItem6.f5212a);
                                            } else {
                                                numValueOf2 = null;
                                            }
                                        } else {
                                            lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayDeque.p();
                                            if (lazyListMeasuredItem5 != null) {
                                                numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.f5212a);
                                            } else {
                                                numValueOf2 = null;
                                            }
                                        }
                                        if (i31 >= i78 || i36 > i33) {
                                            i42 = 1;
                                        } else {
                                            i42 = i34;
                                        }
                                        MeasureResult measureResultV0 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i39 + i45, j2), ConstraintsKt.f(i38 + iB3, j2), MapsKt.c(), new d90(mutableState, arrayList3, listA2, zU0, 1));
                                        if (numValueOf != null) {
                                            iIntValue = numValueOf.intValue();
                                        } else {
                                            iIntValue = i34;
                                        }
                                        if (numValueOf2 != null) {
                                            iIntValue2 = numValueOf2.intValue();
                                        } else {
                                            iIntValue2 = i34;
                                        }
                                        List listA3 = LazyLayoutMeasuredItemKt.a(iIntValue, iIntValue2, arrayList3, listA2);
                                        if (z9) {
                                            orientation3 = Orientation.Vertical;
                                        } else {
                                            orientation3 = Orientation.Horizontal;
                                        }
                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                        lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2;
                                        lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem10, i30, i42, f4, measureResultV0, f2, z17, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.d, listA3, i65, i68, i78, false, orientation3, i64, iB4, null);
                                    }
                                    i38 = i37;
                                    i39 = i98;
                                    lazyListMeasuredItem2 = (LazyListMeasuredItem) arrayDeque.n();
                                    if (lazyListMeasuredItem2 != null) {
                                        i40 = lazyListMeasuredItem2.f5212a;
                                    } else {
                                        i40 = i34;
                                    }
                                    lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.p();
                                    if (lazyListMeasuredItem3 != null) {
                                        i41 = lazyListMeasuredItem3.f5212a;
                                    } else {
                                        i41 = i34;
                                    }
                                    List listA4 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i40, i41, arrayList3, lazyListItemProvider.e(), i51, i64, i39, i38, new l00(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, 20));
                                    if (z18) {
                                        lazyListMeasuredItem7 = (LazyListMeasuredItem) CollectionsKt.firstOrNull(arrayList3);
                                        if (lazyListMeasuredItem7 != null) {
                                            numValueOf = Integer.valueOf(lazyListMeasuredItem7.f5212a);
                                        } else {
                                            numValueOf = null;
                                        }
                                    } else {
                                        lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.n();
                                        if (lazyListMeasuredItem4 != null) {
                                            numValueOf = Integer.valueOf(lazyListMeasuredItem4.f5212a);
                                        } else {
                                            numValueOf = null;
                                        }
                                    }
                                    if (z18) {
                                        lazyListMeasuredItem6 = (LazyListMeasuredItem) CollectionsKt.N(arrayList3);
                                        if (lazyListMeasuredItem6 != null) {
                                            numValueOf2 = Integer.valueOf(lazyListMeasuredItem6.f5212a);
                                        } else {
                                            numValueOf2 = null;
                                        }
                                    } else {
                                        lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayDeque.p();
                                        if (lazyListMeasuredItem5 != null) {
                                            numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.f5212a);
                                        } else {
                                            numValueOf2 = null;
                                        }
                                    }
                                    if (i31 >= i78) {
                                        i42 = 1;
                                    } else {
                                        i42 = 1;
                                    }
                                    MeasureResult measureResultV1 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i39 + i45, j2), ConstraintsKt.f(i38 + iB3, j2), MapsKt.c(), new d90(mutableState, arrayList3, listA4, zU0, 1));
                                    if (numValueOf != null) {
                                        iIntValue = numValueOf.intValue();
                                    } else {
                                        iIntValue = i34;
                                    }
                                    if (numValueOf2 != null) {
                                        iIntValue2 = numValueOf2.intValue();
                                    } else {
                                        iIntValue2 = i34;
                                    }
                                    List listA5 = LazyLayoutMeasuredItemKt.a(iIntValue, iIntValue2, arrayList3, listA4);
                                    if (z9) {
                                        orientation3 = Orientation.Vertical;
                                    } else {
                                        orientation3 = Orientation.Horizontal;
                                    }
                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2;
                                    lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem10, i30, i42, f4, measureResultV1, f2, z17, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.d, listA5, i65, i68, i78, false, orientation3, i64, iB4, null);
                                }
                                LazyListMeasureResult lazyListMeasureResult2 = lazyListMeasureResult;
                                lazyListState4.g(lazyListMeasureResult2, subcomposeMeasureScope.u0(), false);
                                Object obj2 = lazyListState4.f5232a;
                                CacheWindowLogic cacheWindowLogic = obj2 instanceof CacheWindowLogic ? (CacheWindowLogic) obj2 : null;
                                if (cacheWindowLogic == null) {
                                    return lazyListMeasureResult2;
                                }
                                List list3 = lazyListMeasureResult2.f5211k;
                                Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
                                try {
                                    if (cacheWindowLogic.g() && !list3.isEmpty()) {
                                        int i112 = ((LazyListMeasuredItem) CollectionsKt.B(list3)).f5212a;
                                        int i113 = ((LazyListMeasuredItem) CollectionsKt.M(list3)).f5212a;
                                        int i114 = cacheWindowLogic.f5398j;
                                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                        while (true) {
                                            lazyLayoutMeasureScope = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$3.f5222c;
                                            if (i114 >= i112) {
                                                break;
                                            }
                                            if (i114 >= 0 && i114 < lazyListItemProvider.b()) {
                                                lazyLayoutMeasureScope.C1(i114);
                                            }
                                            i114++;
                                        }
                                        int i115 = i113 + 1;
                                        int i116 = cacheWindowLogic.f5399k;
                                        if (i115 <= i116) {
                                            while (true) {
                                                if (i115 >= 0 && i115 < lazyListItemProvider.b()) {
                                                    lazyLayoutMeasureScope.C1(i115);
                                                }
                                                if (i115 == i116) {
                                                    break;
                                                }
                                                i115++;
                                            }
                                        }
                                    }
                                    return lazyListMeasureResult2;
                                } finally {
                                    Trace.endSection();
                                }
                            } catch (Throwable th) {
                                Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                throw th;
                            }
                        }
                    };
                    horizontal7 = horizontal10;
                    horizontal8 = horizontal9;
                    lazyListState2 = lazyListState;
                    kProperty1 = kProperty0;
                    gapComposer.q(obj);
                } else {
                    obj = objX5;
                    horizontal7 = horizontal6;
                    gapComposer = gapComposerH;
                    horizontal8 = horizontal3;
                    i11 = 4;
                    lazyListState2 = lazyListState;
                    kProperty1 = kProperty0;
                }
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = (LazyLayoutMeasurePolicy) obj;
                if (z) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                orientation2 = orientation;
                if (z2) {
                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer, -2077147368, "LazyList");
                    if ((((i9 & 14) ^ 6) > i11 || !gapComposer.K(lazyListState2)) && (i9 & 6) != i11) {
                    }
                    zD2 = z7 | gapComposer.d(0);
                    objX4 = gapComposer.x();
                    if (zD2 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new LazyListBeyondBoundsState(lazyListState2, 0);
                        gapComposer.q(objX4);
                    }
                    z6 = false;
                    modifierJ = LazyLayoutBeyondBoundsModifierLocalKt.a(dTFunctionNameModifierI, (LazyListBeyondBoundsState) objX4, lazyListState2.p, false, orientation2);
                    gapComposer.Z(false);
                } else {
                    z6 = false;
                    modifierJ = n00.j(gapComposer, -2076718545, false, r30);
                }
                KProperty0 kProperty2 = kProperty1;
                lazyListState3 = lazyListState2;
                LazyLayoutKt.a(kProperty2, ScrollableAreaKt.a(LazyLayoutSemanticsKt.a(modifier2.o(lazyListState2.m).o(lazyListState2.n), kProperty1, lazyLayoutSemanticState, orientation2, z2, z6).o(modifierJ).o(lazyListState2.o.f5462k), lazyListState3, orientation2, overscrollEffect, z2, false, flingBehavior, lazyListState2.g, null), lazyListState3.q, lazyLayoutMeasurePolicy, gapComposer, 0);
                horizontal4 = horizontal8;
                vertical3 = vertical6;
                vertical4 = vertical5;
                horizontal5 = horizontal7;
            } else {
                gapComposerH.D();
                vertical5 = vertical;
                vertical6 = vertical2;
                i8 = i5 & (-234881025);
            }
            horizontal6 = horizontal2;
            gapComposerH.a0();
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            i9 = i8 >> 3;
            int i110 = i9 & 14;
            int i25 = i110 | ((i17 >> 6) & 112);
            mutableStateL = SnapshotStateKt.l(function1, gapComposerH);
            int i26 = i8;
            if (((i25 & 14) ^ 6) <= 4) {
            }
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3) {
                final LazyItemScopeImpl lazyItemScopeImpl2 = new LazyItemScopeImpl();
                final State stateD2 = SnapshotStateKt.d(SnapshotStateKt.k(), new u00(7, mutableStateL));
                objX = new LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$1(SnapshotStateKt.d(SnapshotStateKt.k(), new Function0() { // from class: androidx.compose.foundation.lazy.c
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) stateD2.getF10755b();
                        LazyListState lazyListState4 = lazyListState3;
                        return new LazyListItemProviderImpl(lazyListState4, lazyListIntervalContent, lazyItemScopeImpl2, new NearestRangeKeyIndexMap((IntRange) lazyListState4.f5235e.f5229e.getF10755b(), lazyListIntervalContent));
                    }
                }), State.class, "value", "getValue()Ljava/lang/Object;", 0);
                gapComposerH.q(objX);
            } else {
                final LazyItemScopeImpl lazyItemScopeImpl3 = new LazyItemScopeImpl();
                final State stateD3 = SnapshotStateKt.d(SnapshotStateKt.k(), new u00(7, mutableStateL));
                objX = new LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$1(SnapshotStateKt.d(SnapshotStateKt.k(), new Function0() { // from class: androidx.compose.foundation.lazy.c
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) stateD3.getF10755b();
                        LazyListState lazyListState4 = lazyListState3;
                        return new LazyListItemProviderImpl(lazyListState4, lazyListIntervalContent, lazyItemScopeImpl3, new NearestRangeKeyIndexMap((IntRange) lazyListState4.f5235e.f5229e.getF10755b(), lazyListIntervalContent));
                    }
                }), State.class, "value", "getValue()Ljava/lang/Object;", 0);
                gapComposerH.q(objX);
            }
            kProperty0 = (KProperty0) objX;
            int i27 = i26 >> 9;
            int i28 = i110 | (i27 & 112);
            z4 = ((((i28 & 112) ^ 48) <= 32 && gapComposerH.b(z)) || (i28 & 48) == 32) | ((((i28 & 14) ^ 6) <= 4 && gapComposerH.K(lazyListState3)) || (i28 & 6) == 4);
            objX2 = gapComposerH.x();
            if (z4) {
                objX2 = new LazyLayoutSemanticState(z) { // from class: androidx.compose.foundation.lazy.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final State f5173a;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ boolean f5175c;

                    {
                        this.f5175c = z;
                        this.f5173a = SnapshotStateKt.e(new a1(this.f5174b, 6));
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int a() {
                        LazyListState lazyListState4 = this.f5174b;
                        return lazyListState4.j().getQ() + lazyListState4.j().e();
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float b() {
                        LazyListState lazyListState4 = this.f5174b;
                        int iH = lazyListState4.h();
                        int i29 = lazyListState4.i();
                        return lazyListState4.d() ? (iH * 500) + i29 + 100.0f : (iH * 500) + i29;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final Object c(int i29, Continuation continuation) {
                        LazyListState.Companion companion = LazyListState.y;
                        Object objK = this.f5174b.k(i29, 0, (ContinuationImpl) continuation);
                        return objK == CoroutineSingletons.COROUTINE_SUSPENDED ? objK : Unit.f71739a;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final CollectionInfo d() {
                        boolean z9 = this.f5175c;
                        State state = this.f5173a;
                        return z9 ? new CollectionInfo(((Number) state.getF10755b()).intValue(), 1) : new CollectionInfo(1, ((Number) state.getF10755b()).intValue());
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int e() {
                        LazyListState lazyListState4 = this.f5174b;
                        return (int) (lazyListState4.j().getP() == Orientation.Vertical ? lazyListState4.j().a() & BodyPartID.bodyIdMax : lazyListState4.j().a() >> 32);
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float f() {
                        LazyListState lazyListState4 = this.f5174b;
                        return (lazyListState4.h() * 500) + lazyListState4.i();
                    }
                };
                gapComposerH.q(objX2);
            } else {
                objX2 = new LazyLayoutSemanticState(z) { // from class: androidx.compose.foundation.lazy.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final State f5173a;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ boolean f5175c;

                    {
                        this.f5175c = z;
                        this.f5173a = SnapshotStateKt.e(new a1(this.f5174b, 6));
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int a() {
                        LazyListState lazyListState4 = this.f5174b;
                        return lazyListState4.j().getQ() + lazyListState4.j().e();
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float b() {
                        LazyListState lazyListState4 = this.f5174b;
                        int iH = lazyListState4.h();
                        int i29 = lazyListState4.i();
                        return lazyListState4.d() ? (iH * 500) + i29 + 100.0f : (iH * 500) + i29;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final Object c(int i29, Continuation continuation) {
                        LazyListState.Companion companion = LazyListState.y;
                        Object objK = this.f5174b.k(i29, 0, (ContinuationImpl) continuation);
                        return objK == CoroutineSingletons.COROUTINE_SUSPENDED ? objK : Unit.f71739a;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final CollectionInfo d() {
                        boolean z9 = this.f5175c;
                        State state = this.f5173a;
                        return z9 ? new CollectionInfo(((Number) state.getF10755b()).intValue(), 1) : new CollectionInfo(1, ((Number) state.getF10755b()).intValue());
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int e() {
                        LazyListState lazyListState4 = this.f5174b;
                        return (int) (lazyListState4.j().getP() == Orientation.Vertical ? lazyListState4.j().a() & BodyPartID.bodyIdMax : lazyListState4.j().a() >> 32);
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float f() {
                        LazyListState lazyListState4 = this.f5174b;
                        return (lazyListState4.h() * 500) + lazyListState4.i();
                    }
                };
                gapComposerH.q(objX2);
            }
            LazyLayoutSemanticState lazyLayoutSemanticState2 = (LazyLayoutSemanticState) objX2;
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX3);
            }
            coroutineScope = (CoroutineScope) objX3;
            graphicsContext = (GraphicsContext) gapComposerH.k(CompositionLocalsKt.g);
            stickyItemsPlacement$Companion$StickToTopPlacement$1 = ((Boolean) gapComposerH.k(CompositionLocalsKt.x)).booleanValue() ? null : StickyItemsPlacement.Companion.f5568a;
            int i29 = i17 << 18;
            i10 = (i26 & 65520) | (i27 & 3670016) | (i29 & 29360128) | (i29 & 234881024) | ((i17 << 27) & 1879048192);
            if (((i10 & 112) ^ 48) <= 32) {
            }
            boolean z9 = ((((i10 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.K(paddingValues)) || (i10 & KyberEngine.KyberPolyBytes) == 256) | ((((i10 & 112) ^ 48) <= 32 && gapComposerH.K(lazyListState3)) || (i10 & 48) == 32);
            if (((i10 & 7168) ^ 3072) <= 2048) {
            }
            if ((i10 & 3072) == 2048) {
                z5 = true;
            } else {
                z5 = false;
            }
            zD = z9 | z5 | ((((57344 & i10) ^ 24576) <= 16384 && gapComposerH.b(z)) || (i10 & 24576) == 16384) | gapComposerH.d(0) | ((((i10 & 3670016) ^ 1572864) <= 1048576 && gapComposerH.K(horizontal3)) || (i10 & 1572864) == 1048576) | ((((i10 & 29360128) ^ 12582912) <= 8388608 && gapComposerH.K(vertical6)) || (i10 & 12582912) == 8388608) | ((((i10 & 234881024) ^ 100663296) <= 67108864 && gapComposerH.K(horizontal6)) || (i10 & 100663296) == 67108864) | ((((i10 & 1879048192) ^ 805306368) <= 536870912 && gapComposerH.K(vertical5)) || (i10 & 805306368) == 536870912) | gapComposerH.K(graphicsContext) | gapComposerH.K(stickyItemsPlacement$Companion$StickToTopPlacement$1);
            Object objX6 = gapComposerH.x();
            if (zD) {
                final Alignment.Horizontal horizontal11 = horizontal3;
                gapComposer = gapComposerH;
                i11 = 4;
                final Arrangement.Horizontal horizontal12 = horizontal6;
                obj = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1
                    /* JADX WARN: Code duplicated, block: B:308:0x0721  */
                    /* JADX WARN: Code duplicated, block: B:309:0x0726  */
                    /* JADX WARN: Code duplicated, block: B:312:0x0730  */
                    /* JADX WARN: Code duplicated, block: B:313:0x0735  */
                    /* JADX WARN: Code duplicated, block: B:316:0x0756  */
                    /* JADX WARN: Code duplicated, block: B:318:0x075e  */
                    /* JADX WARN: Code duplicated, block: B:319:0x0765  */
                    /* JADX WARN: Code duplicated, block: B:320:0x0768  */
                    /* JADX WARN: Code duplicated, block: B:322:0x0770  */
                    /* JADX WARN: Code duplicated, block: B:324:0x0778  */
                    /* JADX WARN: Code duplicated, block: B:326:0x0780  */
                    /* JADX WARN: Code duplicated, block: B:328:0x078b  */
                    /* JADX WARN: Code duplicated, block: B:329:0x078e  */
                    /* JADX WARN: Code duplicated, block: B:331:0x0796  */
                    /* JADX WARN: Code duplicated, block: B:336:0x07a5  */
                    /* JADX WARN: Code duplicated, block: B:339:0x07d2  */
                    /* JADX WARN: Code duplicated, block: B:340:0x07d7  */
                    /* JADX WARN: Code duplicated, block: B:342:0x07db  */
                    /* JADX WARN: Code duplicated, block: B:343:0x07e0  */
                    /* JADX WARN: Code duplicated, block: B:346:0x07e8  */
                    /* JADX WARN: Code duplicated, block: B:348:0x07ee  */
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                    public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j2) {
                        float d;
                        LazyListItemProvider lazyListItemProvider;
                        int i210;
                        int i211;
                        int i212;
                        int i213;
                        int i214;
                        int i30;
                        LazyListMeasuredItem lazyListMeasuredItem;
                        float f2;
                        List arrayList;
                        int i31;
                        int i32;
                        ArrayList arrayList2;
                        int i33;
                        int i34;
                        int i35;
                        ArrayList arrayList3;
                        int i36;
                        int i37;
                        ArrayDeque arrayDeque;
                        boolean z10;
                        int i38;
                        int i39;
                        LazyListMeasuredItem lazyListMeasuredItem2;
                        int i40;
                        LazyListMeasuredItem lazyListMeasuredItem3;
                        int i41;
                        LazyListMeasuredItem lazyListMeasuredItem4;
                        Integer numValueOf;
                        LazyListMeasuredItem lazyListMeasuredItem5;
                        Integer numValueOf2;
                        int i42;
                        int iIntValue;
                        int iIntValue2;
                        Orientation orientation3;
                        LazyListMeasureResult lazyListMeasureResult;
                        SubcomposeMeasureScope subcomposeMeasureScope;
                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                        LazyListMeasuredItem lazyListMeasuredItem6;
                        LazyListMeasuredItem lazyListMeasuredItem7;
                        int i43;
                        int i44;
                        LazyLayoutMeasureScope lazyLayoutMeasureScope;
                        SubcomposeMeasureScope subcomposeMeasureScope2 = lazyLayoutMeasureScopeImpl.f5487c;
                        LazyListState lazyListState4 = lazyListState;
                        lazyListState4.t.getF10755b();
                        boolean z11 = lazyListState4.f5233b || subcomposeMeasureScope2.u0();
                        boolean z12 = z;
                        CheckScrollableContainerConstraintsKt.a(j2, z12 ? Orientation.Vertical : Orientation.Horizontal);
                        PaddingValues paddingValues2 = paddingValues;
                        int iB0 = z12 ? subcomposeMeasureScope2.B0(paddingValues2.b(subcomposeMeasureScope2.getF9495b())) : subcomposeMeasureScope2.B0(PaddingKt.g(paddingValues2, subcomposeMeasureScope2.getF9495b()));
                        int iB1 = z12 ? subcomposeMeasureScope2.B0(paddingValues2.c(subcomposeMeasureScope2.getF9495b())) : subcomposeMeasureScope2.B0(PaddingKt.f(paddingValues2, subcomposeMeasureScope2.getF9495b()));
                        int iB2 = subcomposeMeasureScope2.B0(paddingValues2.getF5031b());
                        int iB3 = subcomposeMeasureScope2.B0(paddingValues2.getD()) + iB2;
                        int i45 = iB0 + iB1;
                        int i46 = z12 ? iB3 : i45;
                        int i47 = z12 ? iB2 : !z12 ? iB0 : iB1;
                        int i48 = i46 - i47;
                        long jI = ConstraintsKt.i(-i45, -iB3, j2);
                        LazyListItemProvider lazyListItemProvider2 = (LazyListItemProvider) kProperty0.mo47invoke();
                        LazyItemScopeImpl f5187c = lazyListItemProvider2.getF5187c();
                        int iH = Constraints.h(jI);
                        int iG = Constraints.g(jI);
                        ((SnapshotMutableIntStateImpl) f5187c.f5171a).i(iH);
                        ((SnapshotMutableIntStateImpl) f5187c.f5172b).i(iG);
                        Arrangement.Horizontal horizontal13 = horizontal12;
                        Arrangement.Vertical vertical7 = vertical5;
                        if (z12) {
                            if (vertical7 == null) {
                                throw o60.u("null verticalArrangement when isVertical == true");
                            }
                            d = vertical7.getD();
                        } else {
                            if (horizontal13 == null) {
                                throw o60.u("null horizontalAlignment when isVertical == false");
                            }
                            d = horizontal13.getD();
                        }
                        int iB4 = subcomposeMeasureScope2.B0(d);
                        int iB = lazyListItemProvider2.b();
                        int iG2 = z12 ? Constraints.g(j2) - iB3 : Constraints.h(j2) - i45;
                        long j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                        IntOffset.Companion companion = IntOffset.f11012b;
                        int i49 = iG2;
                        int i50 = i48;
                        int i51 = i47;
                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2 = new LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(jI, z, lazyListItemProvider2, lazyLayoutMeasureScopeImpl, iB, iB4, horizontal11, vertical6, i51, i50, j3, lazyListState);
                        int i52 = iB;
                        Snapshot.f8462e.getClass();
                        Snapshot snapshotA = Snapshot.Companion.a();
                        Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                        try {
                            int iH2 = lazyListState4.h();
                            LazyListScrollPosition lazyListScrollPosition = lazyListState4.f5235e;
                            int iA = LazyLayoutItemProviderKt.a(iH2, lazyListItemProvider2, lazyListScrollPosition.d);
                            if (iH2 != iA) {
                                ((SnapshotMutableIntStateImpl) lazyListScrollPosition.f5226a).i(iA);
                                lazyListScrollPosition.f5229e.h(iH2);
                            }
                            int i53 = lazyListState4.i();
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            List listA = LazyLayoutBeyondBoundsStateKt.a(lazyListItemProvider2, lazyListState4.s, lazyListState4.p);
                            float fFloatValue = (subcomposeMeasureScope2.u0() || !z11) ? lazyListState4.f5237h : ((Number) ((SnapshotMutableStateImpl) lazyListState4.x.f5512b.f3818c).getF10755b()).floatValue();
                            LazyLayoutItemAnimator lazyLayoutItemAnimator = lazyListState4.o;
                            boolean zU0 = subcomposeMeasureScope2.u0();
                            MutableState mutableState = lazyListState4.w;
                            boolean z13 = lazyListState4.f5238i;
                            if (i51 < 0) {
                                InlineClassHelperKt.a("invalid beforeContentPadding");
                            }
                            if (i50 < 0) {
                                InlineClassHelperKt.a("invalid afterContentPadding");
                            }
                            LazyListItemProvider lazyListItemProvider3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.f5221b;
                            boolean z14 = z;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            GraphicsContext graphicsContext2 = graphicsContext;
                            if (i52 <= 0) {
                                int iJ = Constraints.j(jI);
                                int i54 = Constraints.i(jI);
                                lazyLayoutItemAnimator.d(0, iJ, i54, new ArrayList(), lazyListItemProvider3.getD(), lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, z14, zU0, 1, z11, 0, 0, coroutineScope2, graphicsContext2);
                                if (!zU0) {
                                    long jB = lazyLayoutItemAnimator.b();
                                    IntSize.f11020b.getClass();
                                    if (!IntSize.b(jB, 0L)) {
                                        iJ = ConstraintsKt.g((int) (jB >> 32), jI);
                                        i54 = ConstraintsKt.f((int) (jB & BodyPartID.bodyIdMax), jI);
                                    }
                                }
                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                lazyListItemProvider = lazyListItemProvider3;
                                lazyListMeasureResult = new LazyListMeasureResult(null, 0, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, subcomposeMeasureScope2.V0(ConstraintsKt.g(iJ + i45, j2), ConstraintsKt.f(i54 + iB3, j2), MapsKt.c(), new n60(22)), Call.Parameters.DEFAULT_CAMERA_ZOOM, false, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.d, EmptyList.f71768b, -i51, i49 + i50, 0, false, z14 ? Orientation.Vertical : Orientation.Horizontal, i50, iB4, null);
                                lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2;
                            } else {
                                lazyListItemProvider = lazyListItemProvider3;
                                if (iA >= i52) {
                                    iA = i52 - 1;
                                    i53 = 0;
                                }
                                int iRound = Math.round(fFloatValue);
                                int i55 = i53 - iRound;
                                if (iA == 0 && i55 < 0) {
                                    iRound += i55;
                                    i55 = 0;
                                }
                                ArrayDeque arrayDeque2 = new ArrayDeque();
                                boolean z15 = z13;
                                int i56 = -i51;
                                float f3 = fFloatValue;
                                int i57 = i56 + (iB4 < 0 ? iB4 : 0);
                                int i58 = i55 + i57;
                                int i59 = iA;
                                int iMax = 0;
                                while (i58 < 0 && i59 > 0) {
                                    int i60 = iRound;
                                    int i61 = i59 - 1;
                                    int i62 = i50;
                                    LazyListMeasuredItem lazyListMeasuredItemD = LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i61);
                                    arrayDeque2.add(0, lazyListMeasuredItemD);
                                    iMax = Math.max(iMax, lazyListMeasuredItemD.s);
                                    i58 += lazyListMeasuredItemD.r;
                                    i59 = i61;
                                    iRound = i60;
                                    z15 = z15;
                                    i50 = i62;
                                    i56 = i56;
                                }
                                int i63 = iRound;
                                boolean z16 = z15;
                                int i64 = i50;
                                int i65 = i56;
                                if (i58 < i57) {
                                    i210 = i63 - (i57 - i58);
                                    i58 = i57;
                                } else {
                                    i210 = i63;
                                }
                                int i66 = i58 - i57;
                                int i67 = iMax;
                                int i68 = i49 + i64;
                                int i69 = i68 < 0 ? 0 : i68;
                                int i70 = i66;
                                int i71 = -i66;
                                int i72 = i59;
                                int i73 = 0;
                                boolean z17 = false;
                                while (i73 < arrayDeque2.d) {
                                    if (i71 >= i69) {
                                        arrayDeque2.h(i73);
                                        z17 = true;
                                    } else {
                                        i72++;
                                        i71 += ((LazyListMeasuredItem) arrayDeque2.get(i73)).r;
                                        i73++;
                                    }
                                }
                                int iMax2 = i67;
                                boolean z18 = z17;
                                int i74 = i72;
                                while (i74 < i52 && (i71 < i69 || i71 <= 0 || arrayDeque2.isEmpty())) {
                                    int i75 = i69;
                                    LazyListMeasuredItem lazyListMeasuredItemD2 = LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i74);
                                    int i76 = i52;
                                    int i77 = lazyListMeasuredItemD2.r;
                                    i71 += i77;
                                    if (i71 <= i57) {
                                        i44 = i57;
                                        if (i74 != i76 - 1) {
                                            i70 -= i77;
                                            i59 = i74 + 1;
                                            z18 = true;
                                        }
                                        i74++;
                                        i69 = i75;
                                        i57 = i44;
                                        i52 = i76;
                                    } else {
                                        i44 = i57;
                                    }
                                    int iMax3 = Math.max(iMax2, lazyListMeasuredItemD2.s);
                                    arrayDeque2.addLast(lazyListMeasuredItemD2);
                                    iMax2 = iMax3;
                                    i74++;
                                    i69 = i75;
                                    i57 = i44;
                                    i52 = i76;
                                }
                                int i78 = i52;
                                if (i71 < i49) {
                                    int i79 = i49 - i71;
                                    int i80 = i71 + i79;
                                    int i81 = i70 - i79;
                                    while (i81 < i51 && i59 > 0) {
                                        int i82 = i59 - 1;
                                        int i83 = i79;
                                        LazyListMeasuredItem lazyListMeasuredItemD3 = LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i82);
                                        arrayDeque2.add(0, lazyListMeasuredItemD3);
                                        iMax2 = Math.max(iMax2, lazyListMeasuredItemD3.s);
                                        i81 += lazyListMeasuredItemD3.r;
                                        i59 = i82;
                                        i79 = i83;
                                        i80 = i80;
                                    }
                                    int i84 = i80;
                                    i211 = i210 + i79;
                                    if (i81 < 0) {
                                        i211 += i81;
                                        i212 = i84 + i81;
                                        i213 = i59;
                                        i214 = 0;
                                    } else {
                                        i214 = i81;
                                        i213 = i59;
                                        i212 = i84;
                                    }
                                } else {
                                    i211 = i210;
                                    i212 = i71;
                                    i213 = i59;
                                    i214 = i70;
                                }
                                int i85 = iMax2;
                                float f4 = (Integer.signum(Math.round(f3)) != Integer.signum(i211) || Math.abs(Math.round(f3)) < Math.abs(i211)) ? f3 : i211;
                                float f5 = f3 - f4;
                                float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                if (zU0 && i211 > i210 && f5 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f6 = (i211 - i210) + f5;
                                }
                                float f7 = f6;
                                if (i214 < 0) {
                                    InlineClassHelperKt.a("negative currentFirstItemScrollOffset");
                                }
                                int i86 = -i214;
                                LazyListMeasuredItem lazyListMeasuredItem8 = (LazyListMeasuredItem) arrayDeque2.first();
                                if (i51 > 0 || iB4 < 0) {
                                    int f74615i = arrayDeque2.getF74615i();
                                    LazyListMeasuredItem lazyListMeasuredItem9 = lazyListMeasuredItem8;
                                    int i87 = i214;
                                    int i88 = 0;
                                    while (i88 < f74615i) {
                                        int i89 = f74615i;
                                        int i90 = ((LazyListMeasuredItem) arrayDeque2.get(i88)).r;
                                        if (i87 == 0 || i90 > i87 || i88 == arrayDeque2.getF74615i() - 1) {
                                            break;
                                        }
                                        i87 -= i90;
                                        i88++;
                                        lazyListMeasuredItem9 = (LazyListMeasuredItem) arrayDeque2.get(i88);
                                        f74615i = i89;
                                    }
                                    i30 = i87;
                                    lazyListMeasuredItem = lazyListMeasuredItem9;
                                } else {
                                    lazyListMeasuredItem = lazyListMeasuredItem8;
                                    i30 = i214;
                                }
                                int iMax4 = Math.max(0, i213);
                                int i91 = i213 - 1;
                                if (iMax4 <= i91) {
                                    List arrayList4 = null;
                                    while (true) {
                                        if (arrayList4 == null) {
                                            arrayList4 = new ArrayList();
                                        }
                                        f2 = f7;
                                        arrayList = arrayList4;
                                        arrayList.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i91));
                                        if (i91 == iMax4) {
                                            break;
                                        }
                                        i91--;
                                        arrayList4 = arrayList;
                                        f7 = f2;
                                    }
                                } else {
                                    f2 = f7;
                                    arrayList = null;
                                }
                                List list = listA;
                                int size = list.size() - 1;
                                if (size >= 0) {
                                    while (true) {
                                        int i92 = size - 1;
                                        int iIntValue3 = ((Number) listA.get(size)).intValue();
                                        if (iIntValue3 < iMax4) {
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            arrayList.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, iIntValue3));
                                        }
                                        if (i92 < 0) {
                                            break;
                                        }
                                        size = i92;
                                    }
                                }
                                if (arrayList == null) {
                                    arrayList = EmptyList.f71768b;
                                }
                                int iMax5 = i85;
                                int i93 = 0;
                                for (int size2 = arrayList.size(); i93 < size2; size2 = size2) {
                                    iMax5 = Math.max(iMax5, ((LazyListMeasuredItem) arrayList.get(i93)).s);
                                    i93++;
                                }
                                int iMin = Math.min(((LazyListMeasuredItem) CollectionsKt.M(arrayDeque2)).f5212a, i78 - 1);
                                int i94 = ((LazyListMeasuredItem) CollectionsKt.M(arrayDeque2)).f5212a + 1;
                                if (i94 <= iMin) {
                                    ArrayList arrayList5 = null;
                                    while (true) {
                                        if (arrayList5 == null) {
                                            arrayList5 = new ArrayList();
                                        }
                                        i31 = i74;
                                        i32 = iMax5;
                                        arrayList2 = arrayList5;
                                        arrayList2.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i94));
                                        if (i94 == iMin) {
                                            break;
                                        }
                                        i94++;
                                        arrayList5 = arrayList2;
                                        iMax5 = i32;
                                        i74 = i31;
                                    }
                                } else {
                                    i31 = i74;
                                    i32 = iMax5;
                                    arrayList2 = null;
                                }
                                if (arrayList2 != null && ((LazyListMeasuredItem) CollectionsKt.M(arrayList2)).f5212a > iMin) {
                                    iMin = ((LazyListMeasuredItem) CollectionsKt.M(arrayList2)).f5212a;
                                }
                                int size3 = list.size();
                                List arrayList6 = arrayList2;
                                int i95 = 0;
                                while (i95 < size3) {
                                    List list2 = listA;
                                    int iIntValue4 = ((Number) listA.get(i95)).intValue();
                                    if (iIntValue4 > iMin) {
                                        if (arrayList6 == null) {
                                            arrayList6 = new ArrayList();
                                        }
                                        arrayList6.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, iIntValue4));
                                    }
                                    i95++;
                                    listA = list2;
                                }
                                if (arrayList6 == null) {
                                    arrayList6 = EmptyList.f71768b;
                                }
                                int size4 = arrayList6.size();
                                int iMax6 = i32;
                                for (int i96 = 0; i96 < size4; i96++) {
                                    iMax6 = Math.max(iMax6, ((LazyListMeasuredItem) arrayList6.get(i96)).s);
                                }
                                boolean z19 = Intrinsics.c(lazyListMeasuredItem, arrayDeque2.first()) && arrayList.isEmpty() && arrayList6.isEmpty();
                                int iG3 = ConstraintsKt.g(z14 ? iMax6 : i212, jI);
                                if (z14) {
                                    iMax6 = i212;
                                }
                                int iF = ConstraintsKt.f(iMax6, jI);
                                LazyListMeasuredItem lazyListMeasuredItem10 = lazyListMeasuredItem;
                                int i97 = z14 ? iF : iG3;
                                boolean z110 = i212 < Math.min(i97, i49);
                                if (z110 && i86 != 0) {
                                    InlineClassHelperKt.c("non-zero itemsScrollOffset");
                                }
                                int i98 = iG3;
                                ArrayList arrayList7 = new ArrayList(arrayList6.size() + arrayList.size() + arrayDeque2.getF74615i());
                                if (z110) {
                                    if (!arrayList.isEmpty() || !arrayList6.isEmpty()) {
                                        InlineClassHelperKt.a("no extra items");
                                    }
                                    int f74615i2 = arrayDeque2.getF74615i();
                                    int[] iArr = new int[f74615i2];
                                    for (int i99 = 0; i99 < f74615i2; i99++) {
                                        iArr[i99] = ((LazyListMeasuredItem) arrayDeque2.get(i99)).q;
                                    }
                                    int[] iArr2 = new int[f74615i2];
                                    if (z14) {
                                        if (vertical7 == null) {
                                            throw o60.u("null verticalArrangement when isVertical == true");
                                        }
                                        vertical7.b(lazyLayoutMeasureScopeImpl, i97, iArr, iArr2);
                                        i43 = i49;
                                        i34 = 0;
                                    } else {
                                        if (r6 == 0) {
                                            throw o60.u("null horizontalArrangement when isVertical == false");
                                        }
                                        i43 = i49;
                                        i34 = 0;
                                        horizontal13.c(lazyLayoutMeasureScopeImpl, i97, iArr, LayoutDirection.Ltr, iArr2);
                                    }
                                    IntRange intRangeY = ArraysKt.y(iArr2);
                                    int i100 = intRangeY.f71951b;
                                    int i101 = intRangeY.f71952c;
                                    int i102 = intRangeY.d;
                                    if ((i102 > 0 && i100 <= i101) || (i102 < 0 && i101 <= i100)) {
                                        while (true) {
                                            int i103 = iArr2[i100];
                                            LazyListMeasuredItem lazyListMeasuredItem11 = (LazyListMeasuredItem) arrayDeque2.get(i100);
                                            lazyListMeasuredItem11.i(i103, i98, iF);
                                            arrayList7.add(lazyListMeasuredItem11);
                                            if (i100 == i101) {
                                                break;
                                            }
                                            i100 += i102;
                                        }
                                    }
                                    i33 = i43;
                                } else {
                                    i33 = i49;
                                    z19 = z19;
                                    lazyListMeasuredItem10 = lazyListMeasuredItem10;
                                    i98 = i98;
                                    i34 = 0;
                                    int i104 = 0;
                                    for (int size5 = arrayList.size(); i104 < size5; size5 = size5) {
                                        i35 = i86;
                                        LazyListMeasuredItem lazyListMeasuredItem12 = (LazyListMeasuredItem) arrayList.get(i104);
                                        i35 -= lazyListMeasuredItem12.r;
                                        lazyListMeasuredItem12.i(i35, i98, iF);
                                        arrayList7.add(lazyListMeasuredItem12);
                                        i104++;
                                    }
                                    i35 = i86;
                                    int f74615i3 = arrayDeque2.getF74615i();
                                    int i105 = i86;
                                    for (int i106 = 0; i106 < f74615i3; i106++) {
                                        LazyListMeasuredItem lazyListMeasuredItem13 = (LazyListMeasuredItem) arrayDeque2.get(i106);
                                        lazyListMeasuredItem13.i(i105, i98, iF);
                                        arrayList7.add(lazyListMeasuredItem13);
                                        i105 += lazyListMeasuredItem13.r;
                                    }
                                    int size6 = arrayList6.size();
                                    for (int i107 = 0; i107 < size6; i107++) {
                                        LazyListMeasuredItem lazyListMeasuredItem14 = (LazyListMeasuredItem) arrayList6.get(i107);
                                        lazyListMeasuredItem14.i(i105, i98, iF);
                                        arrayList7.add(lazyListMeasuredItem14);
                                        i105 += lazyListMeasuredItem14.r;
                                    }
                                }
                                if (z16) {
                                    arrayList3 = arrayList7;
                                    i36 = i212;
                                    i37 = iF;
                                } else {
                                    int i108 = i212;
                                    lazyLayoutItemAnimator.d((int) f4, i98, iF, arrayList7, lazyListItemProvider.getD(), lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, z14, zU0, 1, z11, i30, i108, coroutineScope2, graphicsContext2);
                                    i37 = iF;
                                    arrayList3 = arrayList7;
                                    i36 = i108;
                                }
                                if (zU0) {
                                    arrayDeque = arrayDeque2;
                                    z10 = z14;
                                } else {
                                    long jB2 = lazyLayoutItemAnimator.b();
                                    IntSize.f11020b.getClass();
                                    arrayDeque = arrayDeque2;
                                    z10 = z14;
                                    if (!IntSize.b(jB2, 0L)) {
                                        int i109 = z10 ? i37 : i98;
                                        int iG4 = ConstraintsKt.g(Math.max(i98, (int) (jB2 >> 32)), jI);
                                        int iF2 = ConstraintsKt.f(Math.max(i37, (int) (jB2 & BodyPartID.bodyIdMax)), jI);
                                        int i111 = z10 ? iF2 : iG4;
                                        if (i111 != i109) {
                                            int size7 = arrayList3.size();
                                            for (int i112 = i34; i112 < size7; i112++) {
                                                LazyListMeasuredItem lazyListMeasuredItem15 = (LazyListMeasuredItem) arrayList3.get(i112);
                                                lazyListMeasuredItem15.u = i111;
                                                lazyListMeasuredItem15.w = lazyListMeasuredItem15.f5218i + i111;
                                            }
                                        }
                                        i39 = iG4;
                                        i38 = iF2;
                                    }
                                    lazyListMeasuredItem2 = (LazyListMeasuredItem) arrayDeque.n();
                                    if (lazyListMeasuredItem2 != null) {
                                        i40 = lazyListMeasuredItem2.f5212a;
                                    } else {
                                        i40 = i34;
                                    }
                                    lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.p();
                                    if (lazyListMeasuredItem3 != null) {
                                        i41 = lazyListMeasuredItem3.f5212a;
                                    } else {
                                        i41 = i34;
                                    }
                                    List listA4 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i40, i41, arrayList3, lazyListItemProvider.e(), i51, i64, i39, i38, new l00(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, 20));
                                    if (z19) {
                                        lazyListMeasuredItem7 = (LazyListMeasuredItem) CollectionsKt.firstOrNull(arrayList3);
                                        if (lazyListMeasuredItem7 != null) {
                                            numValueOf = Integer.valueOf(lazyListMeasuredItem7.f5212a);
                                        } else {
                                            numValueOf = null;
                                        }
                                    } else {
                                        lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.n();
                                        if (lazyListMeasuredItem4 != null) {
                                            numValueOf = Integer.valueOf(lazyListMeasuredItem4.f5212a);
                                        } else {
                                            numValueOf = null;
                                        }
                                    }
                                    if (z19) {
                                        lazyListMeasuredItem6 = (LazyListMeasuredItem) CollectionsKt.N(arrayList3);
                                        if (lazyListMeasuredItem6 != null) {
                                            numValueOf2 = Integer.valueOf(lazyListMeasuredItem6.f5212a);
                                        } else {
                                            numValueOf2 = null;
                                        }
                                    } else {
                                        lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayDeque.p();
                                        if (lazyListMeasuredItem5 != null) {
                                            numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.f5212a);
                                        } else {
                                            numValueOf2 = null;
                                        }
                                    }
                                    if (i31 >= i78 || i36 > i33) {
                                        i42 = 1;
                                    } else {
                                        i42 = i34;
                                    }
                                    MeasureResult measureResultV1 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i39 + i45, j2), ConstraintsKt.f(i38 + iB3, j2), MapsKt.c(), new d90(mutableState, arrayList3, listA4, zU0, 1));
                                    if (numValueOf != null) {
                                        iIntValue = numValueOf.intValue();
                                    } else {
                                        iIntValue = i34;
                                    }
                                    if (numValueOf2 != null) {
                                        iIntValue2 = numValueOf2.intValue();
                                    } else {
                                        iIntValue2 = i34;
                                    }
                                    List listA5 = LazyLayoutMeasuredItemKt.a(iIntValue, iIntValue2, arrayList3, listA4);
                                    if (z10) {
                                        orientation3 = Orientation.Vertical;
                                    } else {
                                        orientation3 = Orientation.Horizontal;
                                    }
                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2;
                                    lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem10, i30, i42, f4, measureResultV1, f2, z18, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.d, listA5, i65, i68, i78, false, orientation3, i64, iB4, null);
                                }
                                i38 = i37;
                                i39 = i98;
                                lazyListMeasuredItem2 = (LazyListMeasuredItem) arrayDeque.n();
                                if (lazyListMeasuredItem2 != null) {
                                    i40 = lazyListMeasuredItem2.f5212a;
                                } else {
                                    i40 = i34;
                                }
                                lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.p();
                                if (lazyListMeasuredItem3 != null) {
                                    i41 = lazyListMeasuredItem3.f5212a;
                                } else {
                                    i41 = i34;
                                }
                                List listA6 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i40, i41, arrayList3, lazyListItemProvider.e(), i51, i64, i39, i38, new l00(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, 20));
                                if (z19) {
                                    lazyListMeasuredItem7 = (LazyListMeasuredItem) CollectionsKt.firstOrNull(arrayList3);
                                    if (lazyListMeasuredItem7 != null) {
                                        numValueOf = Integer.valueOf(lazyListMeasuredItem7.f5212a);
                                    } else {
                                        numValueOf = null;
                                    }
                                } else {
                                    lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.n();
                                    if (lazyListMeasuredItem4 != null) {
                                        numValueOf = Integer.valueOf(lazyListMeasuredItem4.f5212a);
                                    } else {
                                        numValueOf = null;
                                    }
                                }
                                if (z19) {
                                    lazyListMeasuredItem6 = (LazyListMeasuredItem) CollectionsKt.N(arrayList3);
                                    if (lazyListMeasuredItem6 != null) {
                                        numValueOf2 = Integer.valueOf(lazyListMeasuredItem6.f5212a);
                                    } else {
                                        numValueOf2 = null;
                                    }
                                } else {
                                    lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayDeque.p();
                                    if (lazyListMeasuredItem5 != null) {
                                        numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.f5212a);
                                    } else {
                                        numValueOf2 = null;
                                    }
                                }
                                if (i31 >= i78) {
                                    i42 = 1;
                                } else {
                                    i42 = 1;
                                }
                                MeasureResult measureResultV2 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i39 + i45, j2), ConstraintsKt.f(i38 + iB3, j2), MapsKt.c(), new d90(mutableState, arrayList3, listA6, zU0, 1));
                                if (numValueOf != null) {
                                    iIntValue = numValueOf.intValue();
                                } else {
                                    iIntValue = i34;
                                }
                                if (numValueOf2 != null) {
                                    iIntValue2 = numValueOf2.intValue();
                                } else {
                                    iIntValue2 = i34;
                                }
                                List listA7 = LazyLayoutMeasuredItemKt.a(iIntValue, iIntValue2, arrayList3, listA6);
                                if (z10) {
                                    orientation3 = Orientation.Vertical;
                                } else {
                                    orientation3 = Orientation.Horizontal;
                                }
                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2;
                                lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem10, i30, i42, f4, measureResultV2, f2, z18, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.d, listA7, i65, i68, i78, false, orientation3, i64, iB4, null);
                            }
                            LazyListMeasureResult lazyListMeasureResult2 = lazyListMeasureResult;
                            lazyListState4.g(lazyListMeasureResult2, subcomposeMeasureScope.u0(), false);
                            Object obj2 = lazyListState4.f5232a;
                            CacheWindowLogic cacheWindowLogic = obj2 instanceof CacheWindowLogic ? (CacheWindowLogic) obj2 : null;
                            if (cacheWindowLogic == null) {
                                return lazyListMeasureResult2;
                            }
                            List list3 = lazyListMeasureResult2.f5211k;
                            Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
                            try {
                                if (cacheWindowLogic.g() && !list3.isEmpty()) {
                                    int i113 = ((LazyListMeasuredItem) CollectionsKt.B(list3)).f5212a;
                                    int i114 = ((LazyListMeasuredItem) CollectionsKt.M(list3)).f5212a;
                                    int i115 = cacheWindowLogic.f5398j;
                                    LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                    while (true) {
                                        lazyLayoutMeasureScope = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$3.f5222c;
                                        if (i115 >= i113) {
                                            break;
                                        }
                                        if (i115 >= 0 && i115 < lazyListItemProvider.b()) {
                                            lazyLayoutMeasureScope.C1(i115);
                                        }
                                        i115++;
                                    }
                                    int i116 = i114 + 1;
                                    int i117 = cacheWindowLogic.f5399k;
                                    if (i116 <= i117) {
                                        while (true) {
                                            if (i116 >= 0 && i116 < lazyListItemProvider.b()) {
                                                lazyLayoutMeasureScope.C1(i116);
                                            }
                                            if (i116 == i117) {
                                                break;
                                            }
                                            i116++;
                                        }
                                    }
                                }
                                return lazyListMeasureResult2;
                            } finally {
                                Trace.endSection();
                            }
                        } catch (Throwable th) {
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            throw th;
                        }
                    }
                };
                horizontal7 = horizontal12;
                horizontal8 = horizontal11;
                lazyListState2 = lazyListState;
                kProperty1 = kProperty0;
                gapComposer.q(obj);
            } else {
                final Alignment.Horizontal horizontal13 = horizontal3;
                gapComposer = gapComposerH;
                i11 = 4;
                final Arrangement.Horizontal horizontal14 = horizontal6;
                obj = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1
                    /* JADX WARN: Code duplicated, block: B:308:0x0721  */
                    /* JADX WARN: Code duplicated, block: B:309:0x0726  */
                    /* JADX WARN: Code duplicated, block: B:312:0x0730  */
                    /* JADX WARN: Code duplicated, block: B:313:0x0735  */
                    /* JADX WARN: Code duplicated, block: B:316:0x0756  */
                    /* JADX WARN: Code duplicated, block: B:318:0x075e  */
                    /* JADX WARN: Code duplicated, block: B:319:0x0765  */
                    /* JADX WARN: Code duplicated, block: B:320:0x0768  */
                    /* JADX WARN: Code duplicated, block: B:322:0x0770  */
                    /* JADX WARN: Code duplicated, block: B:324:0x0778  */
                    /* JADX WARN: Code duplicated, block: B:326:0x0780  */
                    /* JADX WARN: Code duplicated, block: B:328:0x078b  */
                    /* JADX WARN: Code duplicated, block: B:329:0x078e  */
                    /* JADX WARN: Code duplicated, block: B:331:0x0796  */
                    /* JADX WARN: Code duplicated, block: B:336:0x07a5  */
                    /* JADX WARN: Code duplicated, block: B:339:0x07d2  */
                    /* JADX WARN: Code duplicated, block: B:340:0x07d7  */
                    /* JADX WARN: Code duplicated, block: B:342:0x07db  */
                    /* JADX WARN: Code duplicated, block: B:343:0x07e0  */
                    /* JADX WARN: Code duplicated, block: B:346:0x07e8  */
                    /* JADX WARN: Code duplicated, block: B:348:0x07ee  */
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                    public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j2) {
                        float d;
                        LazyListItemProvider lazyListItemProvider;
                        int i210;
                        int i211;
                        int i212;
                        int i213;
                        int i214;
                        int i30;
                        LazyListMeasuredItem lazyListMeasuredItem;
                        float f2;
                        List arrayList;
                        int i31;
                        int i32;
                        ArrayList arrayList2;
                        int i33;
                        int i34;
                        int i35;
                        ArrayList arrayList3;
                        int i36;
                        int i37;
                        ArrayDeque arrayDeque;
                        boolean z10;
                        int i38;
                        int i39;
                        LazyListMeasuredItem lazyListMeasuredItem2;
                        int i40;
                        LazyListMeasuredItem lazyListMeasuredItem3;
                        int i41;
                        LazyListMeasuredItem lazyListMeasuredItem4;
                        Integer numValueOf;
                        LazyListMeasuredItem lazyListMeasuredItem5;
                        Integer numValueOf2;
                        int i42;
                        int iIntValue;
                        int iIntValue2;
                        Orientation orientation3;
                        LazyListMeasureResult lazyListMeasureResult;
                        SubcomposeMeasureScope subcomposeMeasureScope;
                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                        LazyListMeasuredItem lazyListMeasuredItem6;
                        LazyListMeasuredItem lazyListMeasuredItem7;
                        int i43;
                        int i44;
                        LazyLayoutMeasureScope lazyLayoutMeasureScope;
                        SubcomposeMeasureScope subcomposeMeasureScope2 = lazyLayoutMeasureScopeImpl.f5487c;
                        LazyListState lazyListState4 = lazyListState;
                        lazyListState4.t.getF10755b();
                        boolean z11 = lazyListState4.f5233b || subcomposeMeasureScope2.u0();
                        boolean z12 = z;
                        CheckScrollableContainerConstraintsKt.a(j2, z12 ? Orientation.Vertical : Orientation.Horizontal);
                        PaddingValues paddingValues2 = paddingValues;
                        int iB0 = z12 ? subcomposeMeasureScope2.B0(paddingValues2.b(subcomposeMeasureScope2.getF9495b())) : subcomposeMeasureScope2.B0(PaddingKt.g(paddingValues2, subcomposeMeasureScope2.getF9495b()));
                        int iB1 = z12 ? subcomposeMeasureScope2.B0(paddingValues2.c(subcomposeMeasureScope2.getF9495b())) : subcomposeMeasureScope2.B0(PaddingKt.f(paddingValues2, subcomposeMeasureScope2.getF9495b()));
                        int iB2 = subcomposeMeasureScope2.B0(paddingValues2.getF5031b());
                        int iB3 = subcomposeMeasureScope2.B0(paddingValues2.getD()) + iB2;
                        int i45 = iB0 + iB1;
                        int i46 = z12 ? iB3 : i45;
                        int i47 = z12 ? iB2 : !z12 ? iB0 : iB1;
                        int i48 = i46 - i47;
                        long jI = ConstraintsKt.i(-i45, -iB3, j2);
                        LazyListItemProvider lazyListItemProvider2 = (LazyListItemProvider) kProperty0.mo47invoke();
                        LazyItemScopeImpl f5187c = lazyListItemProvider2.getF5187c();
                        int iH = Constraints.h(jI);
                        int iG = Constraints.g(jI);
                        ((SnapshotMutableIntStateImpl) f5187c.f5171a).i(iH);
                        ((SnapshotMutableIntStateImpl) f5187c.f5172b).i(iG);
                        Arrangement.Horizontal horizontal15 = horizontal14;
                        Arrangement.Vertical vertical7 = vertical5;
                        if (z12) {
                            if (vertical7 == null) {
                                throw o60.u("null verticalArrangement when isVertical == true");
                            }
                            d = vertical7.getD();
                        } else {
                            if (horizontal15 == null) {
                                throw o60.u("null horizontalAlignment when isVertical == false");
                            }
                            d = horizontal15.getD();
                        }
                        int iB4 = subcomposeMeasureScope2.B0(d);
                        int iB = lazyListItemProvider2.b();
                        int iG2 = z12 ? Constraints.g(j2) - iB3 : Constraints.h(j2) - i45;
                        long j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                        IntOffset.Companion companion = IntOffset.f11012b;
                        int i49 = iG2;
                        int i50 = i48;
                        int i51 = i47;
                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2 = new LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(jI, z, lazyListItemProvider2, lazyLayoutMeasureScopeImpl, iB, iB4, horizontal13, vertical6, i51, i50, j3, lazyListState);
                        int i52 = iB;
                        Snapshot.f8462e.getClass();
                        Snapshot snapshotA = Snapshot.Companion.a();
                        Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                        try {
                            int iH2 = lazyListState4.h();
                            LazyListScrollPosition lazyListScrollPosition = lazyListState4.f5235e;
                            int iA = LazyLayoutItemProviderKt.a(iH2, lazyListItemProvider2, lazyListScrollPosition.d);
                            if (iH2 != iA) {
                                ((SnapshotMutableIntStateImpl) lazyListScrollPosition.f5226a).i(iA);
                                lazyListScrollPosition.f5229e.h(iH2);
                            }
                            int i53 = lazyListState4.i();
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            List listA = LazyLayoutBeyondBoundsStateKt.a(lazyListItemProvider2, lazyListState4.s, lazyListState4.p);
                            float fFloatValue = (subcomposeMeasureScope2.u0() || !z11) ? lazyListState4.f5237h : ((Number) ((SnapshotMutableStateImpl) lazyListState4.x.f5512b.f3818c).getF10755b()).floatValue();
                            LazyLayoutItemAnimator lazyLayoutItemAnimator = lazyListState4.o;
                            boolean zU0 = subcomposeMeasureScope2.u0();
                            MutableState mutableState = lazyListState4.w;
                            boolean z13 = lazyListState4.f5238i;
                            if (i51 < 0) {
                                InlineClassHelperKt.a("invalid beforeContentPadding");
                            }
                            if (i50 < 0) {
                                InlineClassHelperKt.a("invalid afterContentPadding");
                            }
                            LazyListItemProvider lazyListItemProvider3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.f5221b;
                            boolean z14 = z;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            GraphicsContext graphicsContext2 = graphicsContext;
                            if (i52 <= 0) {
                                int iJ = Constraints.j(jI);
                                int i54 = Constraints.i(jI);
                                lazyLayoutItemAnimator.d(0, iJ, i54, new ArrayList(), lazyListItemProvider3.getD(), lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, z14, zU0, 1, z11, 0, 0, coroutineScope2, graphicsContext2);
                                if (!zU0) {
                                    long jB = lazyLayoutItemAnimator.b();
                                    IntSize.f11020b.getClass();
                                    if (!IntSize.b(jB, 0L)) {
                                        iJ = ConstraintsKt.g((int) (jB >> 32), jI);
                                        i54 = ConstraintsKt.f((int) (jB & BodyPartID.bodyIdMax), jI);
                                    }
                                }
                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                lazyListItemProvider = lazyListItemProvider3;
                                lazyListMeasureResult = new LazyListMeasureResult(null, 0, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, subcomposeMeasureScope2.V0(ConstraintsKt.g(iJ + i45, j2), ConstraintsKt.f(i54 + iB3, j2), MapsKt.c(), new n60(22)), Call.Parameters.DEFAULT_CAMERA_ZOOM, false, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.d, EmptyList.f71768b, -i51, i49 + i50, 0, false, z14 ? Orientation.Vertical : Orientation.Horizontal, i50, iB4, null);
                                lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2;
                            } else {
                                lazyListItemProvider = lazyListItemProvider3;
                                if (iA >= i52) {
                                    iA = i52 - 1;
                                    i53 = 0;
                                }
                                int iRound = Math.round(fFloatValue);
                                int i55 = i53 - iRound;
                                if (iA == 0 && i55 < 0) {
                                    iRound += i55;
                                    i55 = 0;
                                }
                                ArrayDeque arrayDeque2 = new ArrayDeque();
                                boolean z15 = z13;
                                int i56 = -i51;
                                float f3 = fFloatValue;
                                int i57 = i56 + (iB4 < 0 ? iB4 : 0);
                                int i58 = i55 + i57;
                                int i59 = iA;
                                int iMax = 0;
                                while (i58 < 0 && i59 > 0) {
                                    int i60 = iRound;
                                    int i61 = i59 - 1;
                                    int i62 = i50;
                                    LazyListMeasuredItem lazyListMeasuredItemD = LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i61);
                                    arrayDeque2.add(0, lazyListMeasuredItemD);
                                    iMax = Math.max(iMax, lazyListMeasuredItemD.s);
                                    i58 += lazyListMeasuredItemD.r;
                                    i59 = i61;
                                    iRound = i60;
                                    z15 = z15;
                                    i50 = i62;
                                    i56 = i56;
                                }
                                int i63 = iRound;
                                boolean z16 = z15;
                                int i64 = i50;
                                int i65 = i56;
                                if (i58 < i57) {
                                    i210 = i63 - (i57 - i58);
                                    i58 = i57;
                                } else {
                                    i210 = i63;
                                }
                                int i66 = i58 - i57;
                                int i67 = iMax;
                                int i68 = i49 + i64;
                                int i69 = i68 < 0 ? 0 : i68;
                                int i70 = i66;
                                int i71 = -i66;
                                int i72 = i59;
                                int i73 = 0;
                                boolean z17 = false;
                                while (i73 < arrayDeque2.d) {
                                    if (i71 >= i69) {
                                        arrayDeque2.h(i73);
                                        z17 = true;
                                    } else {
                                        i72++;
                                        i71 += ((LazyListMeasuredItem) arrayDeque2.get(i73)).r;
                                        i73++;
                                    }
                                }
                                int iMax2 = i67;
                                boolean z18 = z17;
                                int i74 = i72;
                                while (i74 < i52 && (i71 < i69 || i71 <= 0 || arrayDeque2.isEmpty())) {
                                    int i75 = i69;
                                    LazyListMeasuredItem lazyListMeasuredItemD2 = LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i74);
                                    int i76 = i52;
                                    int i77 = lazyListMeasuredItemD2.r;
                                    i71 += i77;
                                    if (i71 <= i57) {
                                        i44 = i57;
                                        if (i74 != i76 - 1) {
                                            i70 -= i77;
                                            i59 = i74 + 1;
                                            z18 = true;
                                        }
                                        i74++;
                                        i69 = i75;
                                        i57 = i44;
                                        i52 = i76;
                                    } else {
                                        i44 = i57;
                                    }
                                    int iMax3 = Math.max(iMax2, lazyListMeasuredItemD2.s);
                                    arrayDeque2.addLast(lazyListMeasuredItemD2);
                                    iMax2 = iMax3;
                                    i74++;
                                    i69 = i75;
                                    i57 = i44;
                                    i52 = i76;
                                }
                                int i78 = i52;
                                if (i71 < i49) {
                                    int i79 = i49 - i71;
                                    int i80 = i71 + i79;
                                    int i81 = i70 - i79;
                                    while (i81 < i51 && i59 > 0) {
                                        int i82 = i59 - 1;
                                        int i83 = i79;
                                        LazyListMeasuredItem lazyListMeasuredItemD3 = LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i82);
                                        arrayDeque2.add(0, lazyListMeasuredItemD3);
                                        iMax2 = Math.max(iMax2, lazyListMeasuredItemD3.s);
                                        i81 += lazyListMeasuredItemD3.r;
                                        i59 = i82;
                                        i79 = i83;
                                        i80 = i80;
                                    }
                                    int i84 = i80;
                                    i211 = i210 + i79;
                                    if (i81 < 0) {
                                        i211 += i81;
                                        i212 = i84 + i81;
                                        i213 = i59;
                                        i214 = 0;
                                    } else {
                                        i214 = i81;
                                        i213 = i59;
                                        i212 = i84;
                                    }
                                } else {
                                    i211 = i210;
                                    i212 = i71;
                                    i213 = i59;
                                    i214 = i70;
                                }
                                int i85 = iMax2;
                                float f4 = (Integer.signum(Math.round(f3)) != Integer.signum(i211) || Math.abs(Math.round(f3)) < Math.abs(i211)) ? f3 : i211;
                                float f5 = f3 - f4;
                                float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                if (zU0 && i211 > i210 && f5 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f6 = (i211 - i210) + f5;
                                }
                                float f7 = f6;
                                if (i214 < 0) {
                                    InlineClassHelperKt.a("negative currentFirstItemScrollOffset");
                                }
                                int i86 = -i214;
                                LazyListMeasuredItem lazyListMeasuredItem8 = (LazyListMeasuredItem) arrayDeque2.first();
                                if (i51 > 0 || iB4 < 0) {
                                    int f74615i = arrayDeque2.getF74615i();
                                    LazyListMeasuredItem lazyListMeasuredItem9 = lazyListMeasuredItem8;
                                    int i87 = i214;
                                    int i88 = 0;
                                    while (i88 < f74615i) {
                                        int i89 = f74615i;
                                        int i90 = ((LazyListMeasuredItem) arrayDeque2.get(i88)).r;
                                        if (i87 == 0 || i90 > i87 || i88 == arrayDeque2.getF74615i() - 1) {
                                            break;
                                        }
                                        i87 -= i90;
                                        i88++;
                                        lazyListMeasuredItem9 = (LazyListMeasuredItem) arrayDeque2.get(i88);
                                        f74615i = i89;
                                    }
                                    i30 = i87;
                                    lazyListMeasuredItem = lazyListMeasuredItem9;
                                } else {
                                    lazyListMeasuredItem = lazyListMeasuredItem8;
                                    i30 = i214;
                                }
                                int iMax4 = Math.max(0, i213);
                                int i91 = i213 - 1;
                                if (iMax4 <= i91) {
                                    List arrayList4 = null;
                                    while (true) {
                                        if (arrayList4 == null) {
                                            arrayList4 = new ArrayList();
                                        }
                                        f2 = f7;
                                        arrayList = arrayList4;
                                        arrayList.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i91));
                                        if (i91 == iMax4) {
                                            break;
                                        }
                                        i91--;
                                        arrayList4 = arrayList;
                                        f7 = f2;
                                    }
                                } else {
                                    f2 = f7;
                                    arrayList = null;
                                }
                                List list = listA;
                                int size = list.size() - 1;
                                if (size >= 0) {
                                    while (true) {
                                        int i92 = size - 1;
                                        int iIntValue3 = ((Number) listA.get(size)).intValue();
                                        if (iIntValue3 < iMax4) {
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            arrayList.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, iIntValue3));
                                        }
                                        if (i92 < 0) {
                                            break;
                                        }
                                        size = i92;
                                    }
                                }
                                if (arrayList == null) {
                                    arrayList = EmptyList.f71768b;
                                }
                                int iMax5 = i85;
                                int i93 = 0;
                                for (int size2 = arrayList.size(); i93 < size2; size2 = size2) {
                                    iMax5 = Math.max(iMax5, ((LazyListMeasuredItem) arrayList.get(i93)).s);
                                    i93++;
                                }
                                int iMin = Math.min(((LazyListMeasuredItem) CollectionsKt.M(arrayDeque2)).f5212a, i78 - 1);
                                int i94 = ((LazyListMeasuredItem) CollectionsKt.M(arrayDeque2)).f5212a + 1;
                                if (i94 <= iMin) {
                                    ArrayList arrayList5 = null;
                                    while (true) {
                                        if (arrayList5 == null) {
                                            arrayList5 = new ArrayList();
                                        }
                                        i31 = i74;
                                        i32 = iMax5;
                                        arrayList2 = arrayList5;
                                        arrayList2.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, i94));
                                        if (i94 == iMin) {
                                            break;
                                        }
                                        i94++;
                                        arrayList5 = arrayList2;
                                        iMax5 = i32;
                                        i74 = i31;
                                    }
                                } else {
                                    i31 = i74;
                                    i32 = iMax5;
                                    arrayList2 = null;
                                }
                                if (arrayList2 != null && ((LazyListMeasuredItem) CollectionsKt.M(arrayList2)).f5212a > iMin) {
                                    iMin = ((LazyListMeasuredItem) CollectionsKt.M(arrayList2)).f5212a;
                                }
                                int size3 = list.size();
                                List arrayList6 = arrayList2;
                                int i95 = 0;
                                while (i95 < size3) {
                                    List list2 = listA;
                                    int iIntValue4 = ((Number) listA.get(i95)).intValue();
                                    if (iIntValue4 > iMin) {
                                        if (arrayList6 == null) {
                                            arrayList6 = new ArrayList();
                                        }
                                        arrayList6.add(LazyListMeasuredItemProvider.d(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, iIntValue4));
                                    }
                                    i95++;
                                    listA = list2;
                                }
                                if (arrayList6 == null) {
                                    arrayList6 = EmptyList.f71768b;
                                }
                                int size4 = arrayList6.size();
                                int iMax6 = i32;
                                for (int i96 = 0; i96 < size4; i96++) {
                                    iMax6 = Math.max(iMax6, ((LazyListMeasuredItem) arrayList6.get(i96)).s);
                                }
                                boolean z19 = Intrinsics.c(lazyListMeasuredItem, arrayDeque2.first()) && arrayList.isEmpty() && arrayList6.isEmpty();
                                int iG3 = ConstraintsKt.g(z14 ? iMax6 : i212, jI);
                                if (z14) {
                                    iMax6 = i212;
                                }
                                int iF = ConstraintsKt.f(iMax6, jI);
                                LazyListMeasuredItem lazyListMeasuredItem10 = lazyListMeasuredItem;
                                int i97 = z14 ? iF : iG3;
                                boolean z110 = i212 < Math.min(i97, i49);
                                if (z110 && i86 != 0) {
                                    InlineClassHelperKt.c("non-zero itemsScrollOffset");
                                }
                                int i98 = iG3;
                                ArrayList arrayList7 = new ArrayList(arrayList6.size() + arrayList.size() + arrayDeque2.getF74615i());
                                if (z110) {
                                    if (!arrayList.isEmpty() || !arrayList6.isEmpty()) {
                                        InlineClassHelperKt.a("no extra items");
                                    }
                                    int f74615i2 = arrayDeque2.getF74615i();
                                    int[] iArr = new int[f74615i2];
                                    for (int i99 = 0; i99 < f74615i2; i99++) {
                                        iArr[i99] = ((LazyListMeasuredItem) arrayDeque2.get(i99)).q;
                                    }
                                    int[] iArr2 = new int[f74615i2];
                                    if (z14) {
                                        if (vertical7 == null) {
                                            throw o60.u("null verticalArrangement when isVertical == true");
                                        }
                                        vertical7.b(lazyLayoutMeasureScopeImpl, i97, iArr, iArr2);
                                        i43 = i49;
                                        i34 = 0;
                                    } else {
                                        if (r6 == 0) {
                                            throw o60.u("null horizontalArrangement when isVertical == false");
                                        }
                                        i43 = i49;
                                        i34 = 0;
                                        horizontal15.c(lazyLayoutMeasureScopeImpl, i97, iArr, LayoutDirection.Ltr, iArr2);
                                    }
                                    IntRange intRangeY = ArraysKt.y(iArr2);
                                    int i100 = intRangeY.f71951b;
                                    int i101 = intRangeY.f71952c;
                                    int i102 = intRangeY.d;
                                    if ((i102 > 0 && i100 <= i101) || (i102 < 0 && i101 <= i100)) {
                                        while (true) {
                                            int i103 = iArr2[i100];
                                            LazyListMeasuredItem lazyListMeasuredItem11 = (LazyListMeasuredItem) arrayDeque2.get(i100);
                                            lazyListMeasuredItem11.i(i103, i98, iF);
                                            arrayList7.add(lazyListMeasuredItem11);
                                            if (i100 == i101) {
                                                break;
                                            }
                                            i100 += i102;
                                        }
                                    }
                                    i33 = i43;
                                } else {
                                    i33 = i49;
                                    z19 = z19;
                                    lazyListMeasuredItem10 = lazyListMeasuredItem10;
                                    i98 = i98;
                                    i34 = 0;
                                    int i104 = 0;
                                    for (int size5 = arrayList.size(); i104 < size5; size5 = size5) {
                                        i35 = i86;
                                        LazyListMeasuredItem lazyListMeasuredItem12 = (LazyListMeasuredItem) arrayList.get(i104);
                                        i35 -= lazyListMeasuredItem12.r;
                                        lazyListMeasuredItem12.i(i35, i98, iF);
                                        arrayList7.add(lazyListMeasuredItem12);
                                        i104++;
                                    }
                                    i35 = i86;
                                    int f74615i3 = arrayDeque2.getF74615i();
                                    int i105 = i86;
                                    for (int i106 = 0; i106 < f74615i3; i106++) {
                                        LazyListMeasuredItem lazyListMeasuredItem13 = (LazyListMeasuredItem) arrayDeque2.get(i106);
                                        lazyListMeasuredItem13.i(i105, i98, iF);
                                        arrayList7.add(lazyListMeasuredItem13);
                                        i105 += lazyListMeasuredItem13.r;
                                    }
                                    int size6 = arrayList6.size();
                                    for (int i107 = 0; i107 < size6; i107++) {
                                        LazyListMeasuredItem lazyListMeasuredItem14 = (LazyListMeasuredItem) arrayList6.get(i107);
                                        lazyListMeasuredItem14.i(i105, i98, iF);
                                        arrayList7.add(lazyListMeasuredItem14);
                                        i105 += lazyListMeasuredItem14.r;
                                    }
                                }
                                if (z16) {
                                    arrayList3 = arrayList7;
                                    i36 = i212;
                                    i37 = iF;
                                } else {
                                    int i108 = i212;
                                    lazyLayoutItemAnimator.d((int) f4, i98, iF, arrayList7, lazyListItemProvider.getD(), lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, z14, zU0, 1, z11, i30, i108, coroutineScope2, graphicsContext2);
                                    i37 = iF;
                                    arrayList3 = arrayList7;
                                    i36 = i108;
                                }
                                if (zU0) {
                                    arrayDeque = arrayDeque2;
                                    z10 = z14;
                                } else {
                                    long jB2 = lazyLayoutItemAnimator.b();
                                    IntSize.f11020b.getClass();
                                    arrayDeque = arrayDeque2;
                                    z10 = z14;
                                    if (!IntSize.b(jB2, 0L)) {
                                        int i109 = z10 ? i37 : i98;
                                        int iG4 = ConstraintsKt.g(Math.max(i98, (int) (jB2 >> 32)), jI);
                                        int iF2 = ConstraintsKt.f(Math.max(i37, (int) (jB2 & BodyPartID.bodyIdMax)), jI);
                                        int i111 = z10 ? iF2 : iG4;
                                        if (i111 != i109) {
                                            int size7 = arrayList3.size();
                                            for (int i112 = i34; i112 < size7; i112++) {
                                                LazyListMeasuredItem lazyListMeasuredItem15 = (LazyListMeasuredItem) arrayList3.get(i112);
                                                lazyListMeasuredItem15.u = i111;
                                                lazyListMeasuredItem15.w = lazyListMeasuredItem15.f5218i + i111;
                                            }
                                        }
                                        i39 = iG4;
                                        i38 = iF2;
                                    }
                                    lazyListMeasuredItem2 = (LazyListMeasuredItem) arrayDeque.n();
                                    if (lazyListMeasuredItem2 != null) {
                                        i40 = lazyListMeasuredItem2.f5212a;
                                    } else {
                                        i40 = i34;
                                    }
                                    lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.p();
                                    if (lazyListMeasuredItem3 != null) {
                                        i41 = lazyListMeasuredItem3.f5212a;
                                    } else {
                                        i41 = i34;
                                    }
                                    List listA6 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i40, i41, arrayList3, lazyListItemProvider.e(), i51, i64, i39, i38, new l00(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, 20));
                                    if (z19) {
                                        lazyListMeasuredItem7 = (LazyListMeasuredItem) CollectionsKt.firstOrNull(arrayList3);
                                        if (lazyListMeasuredItem7 != null) {
                                            numValueOf = Integer.valueOf(lazyListMeasuredItem7.f5212a);
                                        } else {
                                            numValueOf = null;
                                        }
                                    } else {
                                        lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.n();
                                        if (lazyListMeasuredItem4 != null) {
                                            numValueOf = Integer.valueOf(lazyListMeasuredItem4.f5212a);
                                        } else {
                                            numValueOf = null;
                                        }
                                    }
                                    if (z19) {
                                        lazyListMeasuredItem6 = (LazyListMeasuredItem) CollectionsKt.N(arrayList3);
                                        if (lazyListMeasuredItem6 != null) {
                                            numValueOf2 = Integer.valueOf(lazyListMeasuredItem6.f5212a);
                                        } else {
                                            numValueOf2 = null;
                                        }
                                    } else {
                                        lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayDeque.p();
                                        if (lazyListMeasuredItem5 != null) {
                                            numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.f5212a);
                                        } else {
                                            numValueOf2 = null;
                                        }
                                    }
                                    if (i31 >= i78 || i36 > i33) {
                                        i42 = 1;
                                    } else {
                                        i42 = i34;
                                    }
                                    MeasureResult measureResultV2 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i39 + i45, j2), ConstraintsKt.f(i38 + iB3, j2), MapsKt.c(), new d90(mutableState, arrayList3, listA6, zU0, 1));
                                    if (numValueOf != null) {
                                        iIntValue = numValueOf.intValue();
                                    } else {
                                        iIntValue = i34;
                                    }
                                    if (numValueOf2 != null) {
                                        iIntValue2 = numValueOf2.intValue();
                                    } else {
                                        iIntValue2 = i34;
                                    }
                                    List listA7 = LazyLayoutMeasuredItemKt.a(iIntValue, iIntValue2, arrayList3, listA6);
                                    if (z10) {
                                        orientation3 = Orientation.Vertical;
                                    } else {
                                        orientation3 = Orientation.Horizontal;
                                    }
                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2;
                                    lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem10, i30, i42, f4, measureResultV2, f2, z18, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.d, listA7, i65, i68, i78, false, orientation3, i64, iB4, null);
                                }
                                i38 = i37;
                                i39 = i98;
                                lazyListMeasuredItem2 = (LazyListMeasuredItem) arrayDeque.n();
                                if (lazyListMeasuredItem2 != null) {
                                    i40 = lazyListMeasuredItem2.f5212a;
                                } else {
                                    i40 = i34;
                                }
                                lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.p();
                                if (lazyListMeasuredItem3 != null) {
                                    i41 = lazyListMeasuredItem3.f5212a;
                                } else {
                                    i41 = i34;
                                }
                                List listA8 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i40, i41, arrayList3, lazyListItemProvider.e(), i51, i64, i39, i38, new l00(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2, 20));
                                if (z19) {
                                    lazyListMeasuredItem7 = (LazyListMeasuredItem) CollectionsKt.firstOrNull(arrayList3);
                                    if (lazyListMeasuredItem7 != null) {
                                        numValueOf = Integer.valueOf(lazyListMeasuredItem7.f5212a);
                                    } else {
                                        numValueOf = null;
                                    }
                                } else {
                                    lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.n();
                                    if (lazyListMeasuredItem4 != null) {
                                        numValueOf = Integer.valueOf(lazyListMeasuredItem4.f5212a);
                                    } else {
                                        numValueOf = null;
                                    }
                                }
                                if (z19) {
                                    lazyListMeasuredItem6 = (LazyListMeasuredItem) CollectionsKt.N(arrayList3);
                                    if (lazyListMeasuredItem6 != null) {
                                        numValueOf2 = Integer.valueOf(lazyListMeasuredItem6.f5212a);
                                    } else {
                                        numValueOf2 = null;
                                    }
                                } else {
                                    lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayDeque.p();
                                    if (lazyListMeasuredItem5 != null) {
                                        numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.f5212a);
                                    } else {
                                        numValueOf2 = null;
                                    }
                                }
                                if (i31 >= i78) {
                                    i42 = 1;
                                } else {
                                    i42 = 1;
                                }
                                MeasureResult measureResultV3 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i39 + i45, j2), ConstraintsKt.f(i38 + iB3, j2), MapsKt.c(), new d90(mutableState, arrayList3, listA8, zU0, 1));
                                if (numValueOf != null) {
                                    iIntValue = numValueOf.intValue();
                                } else {
                                    iIntValue = i34;
                                }
                                if (numValueOf2 != null) {
                                    iIntValue2 = numValueOf2.intValue();
                                } else {
                                    iIntValue2 = i34;
                                }
                                List listA9 = LazyLayoutMeasuredItemKt.a(iIntValue, iIntValue2, arrayList3, listA8);
                                if (z10) {
                                    orientation3 = Orientation.Vertical;
                                } else {
                                    orientation3 = Orientation.Horizontal;
                                }
                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2;
                                lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem10, i30, i42, f4, measureResultV3, f2, z18, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$2.d, listA9, i65, i68, i78, false, orientation3, i64, iB4, null);
                            }
                            LazyListMeasureResult lazyListMeasureResult2 = lazyListMeasureResult;
                            lazyListState4.g(lazyListMeasureResult2, subcomposeMeasureScope.u0(), false);
                            Object obj2 = lazyListState4.f5232a;
                            CacheWindowLogic cacheWindowLogic = obj2 instanceof CacheWindowLogic ? (CacheWindowLogic) obj2 : null;
                            if (cacheWindowLogic == null) {
                                return lazyListMeasureResult2;
                            }
                            List list3 = lazyListMeasureResult2.f5211k;
                            Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
                            try {
                                if (cacheWindowLogic.g() && !list3.isEmpty()) {
                                    int i113 = ((LazyListMeasuredItem) CollectionsKt.B(list3)).f5212a;
                                    int i114 = ((LazyListMeasuredItem) CollectionsKt.M(list3)).f5212a;
                                    int i115 = cacheWindowLogic.f5398j;
                                    LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                    while (true) {
                                        lazyLayoutMeasureScope = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$3.f5222c;
                                        if (i115 >= i113) {
                                            break;
                                        }
                                        if (i115 >= 0 && i115 < lazyListItemProvider.b()) {
                                            lazyLayoutMeasureScope.C1(i115);
                                        }
                                        i115++;
                                    }
                                    int i116 = i114 + 1;
                                    int i117 = cacheWindowLogic.f5399k;
                                    if (i116 <= i117) {
                                        while (true) {
                                            if (i116 >= 0 && i116 < lazyListItemProvider.b()) {
                                                lazyLayoutMeasureScope.C1(i116);
                                            }
                                            if (i116 == i117) {
                                                break;
                                            }
                                            i116++;
                                        }
                                    }
                                }
                                return lazyListMeasureResult2;
                            } finally {
                                Trace.endSection();
                            }
                        } catch (Throwable th) {
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            throw th;
                        }
                    }
                };
                horizontal7 = horizontal14;
                horizontal8 = horizontal13;
                lazyListState2 = lazyListState;
                kProperty1 = kProperty0;
                gapComposer.q(obj);
            }
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) obj;
            if (z) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Horizontal;
            }
            orientation2 = orientation;
            if (z2) {
                DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposer, -2077147368, "LazyList");
                z7 = ((i9 & 14) ^ 6) > i11 ? false : false;
                zD2 = z7 | gapComposer.d(0);
                objX4 = gapComposer.x();
                if (zD2) {
                    objX4 = new LazyListBeyondBoundsState(lazyListState2, 0);
                    gapComposer.q(objX4);
                } else {
                    objX4 = new LazyListBeyondBoundsState(lazyListState2, 0);
                    gapComposer.q(objX4);
                }
                z6 = false;
                modifierJ = LazyLayoutBeyondBoundsModifierLocalKt.a(dTFunctionNameModifierI2, (LazyListBeyondBoundsState) objX4, lazyListState2.p, false, orientation2);
                gapComposer.Z(false);
            } else {
                z6 = false;
                modifierJ = n00.j(gapComposer, -2076718545, false, r30);
            }
            KProperty0 kProperty3 = kProperty1;
            lazyListState3 = lazyListState2;
            LazyLayoutKt.a(kProperty3, ScrollableAreaKt.a(LazyLayoutSemanticsKt.a(modifier2.o(lazyListState2.m).o(lazyListState2.n), kProperty1, lazyLayoutSemanticState2, orientation2, z2, z6).o(modifierJ).o(lazyListState2.o.f5462k), lazyListState3, orientation2, overscrollEffect, z2, false, flingBehavior, lazyListState2.g, null), lazyListState3.q, lazyLayoutMeasurePolicy2, gapComposer, 0);
            horizontal4 = horizontal8;
            vertical3 = vertical6;
            vertical4 = vertical5;
            horizontal5 = horizontal7;
        } else {
            gapComposerH.D();
            vertical3 = vertical2;
            horizontal4 = horizontal3;
            gapComposer = gapComposerH;
            vertical4 = vertical;
            horizontal5 = horizontal2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h70(modifier2, lazyListState3, paddingValues, z, flingBehavior, z2, overscrollEffect, horizontal4, vertical4, vertical3, horizontal5, function1, i2, i3, i4);
        }
    }
}
