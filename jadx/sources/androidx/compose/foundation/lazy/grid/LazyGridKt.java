package androidx.compose.foundation.lazy.grid;

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
import com.google.ar.core.ImageMetadata;
import defpackage.d90;
import defpackage.k60;
import defpackage.l00;
import defpackage.n00;
import defpackage.n60;
import defpackage.o60;
import defpackage.ry;
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
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import kotlin.reflect.KProperty0;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyGridKt {
    public static final void a(Modifier modifier, final LazyGridState lazyGridState, final LazyGridSlotsProvider lazyGridSlotsProvider, final PaddingValues paddingValues, final boolean z, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, final Arrangement.Vertical vertical, final Arrangement.Horizontal horizontal, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        int i5;
        GapComposer gapComposer;
        GapComposer gapComposer2;
        int i6;
        LazyGridState lazyGridState2;
        KProperty0 kProperty0;
        boolean z3;
        Modifier modifierJ;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LazyGrid");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(708740370);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(lazyGridState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= (i2 & 512) == 0 ? gapComposerH.K(lazyGridSlotsProvider) : gapComposerH.y(lazyGridSlotsProvider) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.K(paddingValues) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.b(false) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.b(z) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.K(flingBehavior) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.b(z2) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.K(overscrollEffect) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.K(vertical) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.K(horizontal) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function1) ? 32 : 16;
        }
        int i7 = i4;
        if (gapComposerH.p(i7 & 1, ((i4 & 306783379) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i8 = i7 >> 3;
            int i9 = i8 & 14;
            int i10 = i9 | (i5 & 112);
            MutableState mutableStateL = SnapshotStateKt.l(function1, gapComposerH);
            boolean z4 = (((i10 & 14) ^ 6) > 4 && gapComposerH.K(lazyGridState)) || (i10 & 6) == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z4 || objX == composer$Companion$Empty$1) {
                final State stateD = SnapshotStateKt.d(SnapshotStateKt.k(), new u00(5, mutableStateL));
                objX = new LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$1(SnapshotStateKt.d(SnapshotStateKt.k(), new Function0() { // from class: androidx.compose.foundation.lazy.grid.c
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        LazyGridIntervalContent lazyGridIntervalContent = (LazyGridIntervalContent) stateD.getF10755b();
                        LazyGridState lazyGridState3 = lazyGridState;
                        return new LazyGridItemProviderImpl(lazyGridState3, lazyGridIntervalContent, new NearestRangeKeyIndexMap((IntRange) lazyGridState3.d.f5338e.getF10755b(), lazyGridIntervalContent));
                    }
                }), State.class, "value", "getValue()Ljava/lang/Object;", 0);
                gapComposerH.q(objX);
            }
            final KProperty0 kProperty1 = (KProperty0) objX;
            int i11 = i9 | ((i7 >> 9) & 112);
            boolean z5 = ((((i11 & 112) ^ 48) > 32 && gapComposerH.b(false)) || (i11 & 48) == 32) | ((((i11 & 14) ^ 6) > 4 && gapComposerH.K(lazyGridState)) || (i11 & 6) == 4);
            Object objX2 = gapComposerH.x();
            if (z5 || objX2 == composer$Companion$Empty$1) {
                objX2 = new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.lazy.grid.LazySemanticsKt$rememberLazyGridSemanticState$1$1
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int a() {
                        LazyGridState lazyGridState3 = lazyGridState;
                        return lazyGridState3.h().getS() + lazyGridState3.h().e();
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float b() {
                        LazyGridState lazyGridState3 = lazyGridState;
                        int iG = lazyGridState3.g();
                        int iF = ((SnapshotMutableIntStateImpl) lazyGridState3.d.f5336b).f();
                        return lazyGridState3.d() ? (iG * 500) + iF + 100.0f : (iG * 500) + iF;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final Object c(int i12, Continuation continuation) {
                        Object objJ = LazyGridState.j(lazyGridState, i12, (SuspendLambda) continuation);
                        return objJ == CoroutineSingletons.COROUTINE_SUSPENDED ? objJ : Unit.f71739a;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final CollectionInfo d() {
                        return new CollectionInfo(-1, -1);
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int e() {
                        LazyGridState lazyGridState3 = lazyGridState;
                        return (int) (lazyGridState3.h().getR() == Orientation.Vertical ? lazyGridState3.h().a() & BodyPartID.bodyIdMax : lazyGridState3.h().a() >> 32);
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float f() {
                        LazyGridState lazyGridState3 = lazyGridState;
                        return (lazyGridState3.g() * 500) + ((SnapshotMutableIntStateImpl) lazyGridState3.d.f5336b).f();
                    }
                };
                gapComposerH.q(objX2);
            }
            LazySemanticsKt$rememberLazyGridSemanticState$1$1 lazySemanticsKt$rememberLazyGridSemanticState$1$1 = (LazySemanticsKt$rememberLazyGridSemanticState$1$1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX3);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX3;
            final GraphicsContext graphicsContext = (GraphicsContext) gapComposerH.k(CompositionLocalsKt.g);
            final StickyItemsPlacement$Companion$StickToTopPlacement$1 stickyItemsPlacement$Companion$StickToTopPlacement$1 = !((Boolean) gapComposerH.k(CompositionLocalsKt.x)).booleanValue() ? StickyItemsPlacement.Companion.f5568a : null;
            int i12 = (i7 & 524272) | ((i5 << 18) & 3670016) | ((i7 >> 6) & 29360128);
            boolean zK = ((((i12 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && gapComposerH.K(lazyGridSlotsProvider)) || (i12 & KyberEngine.KyberPolyBytes) == 256) | ((((i12 & 112) ^ 48) > 32 && gapComposerH.K(lazyGridState)) || (i12 & 48) == 32) | ((((i12 & 7168) ^ 3072) > 2048 && gapComposerH.K(paddingValues)) || (i12 & 3072) == 2048) | ((((57344 & i12) ^ 24576) > 16384 && gapComposerH.b(false)) || (i12 & 24576) == 16384) | ((((458752 & i12) ^ ImageMetadata.EDGE_MODE) > 131072 && gapComposerH.b(z)) || (i12 & ImageMetadata.EDGE_MODE) == 131072) | ((((i12 & 3670016) ^ 1572864) > 1048576 && gapComposerH.K(horizontal)) || (i12 & 1572864) == 1048576) | ((((i12 & 29360128) ^ 12582912) > 8388608 && gapComposerH.K(vertical)) || (i12 & 12582912) == 8388608) | gapComposerH.K(graphicsContext);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                gapComposer2 = gapComposerH;
                i6 = 4;
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1
                    /* JADX WARN: Code duplicated, block: B:182:0x0467  */
                    /* JADX WARN: Code duplicated, block: B:189:0x04a3  */
                    /* JADX WARN: Code duplicated, block: B:193:0x04b0  */
                    /* JADX WARN: Code duplicated, block: B:234:0x0576 A[LOOP:8: B:217:0x0525->B:234:0x0576, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:238:0x0587  */
                    /* JADX WARN: Code duplicated, block: B:241:0x0593  */
                    /* JADX WARN: Code duplicated, block: B:244:0x059e  */
                    /* JADX WARN: Code duplicated, block: B:263:0x060d  */
                    /* JADX WARN: Code duplicated, block: B:266:0x061a  */
                    /* JADX WARN: Code duplicated, block: B:271:0x0626  */
                    /* JADX WARN: Code duplicated, block: B:273:0x0631  */
                    /* JADX WARN: Code duplicated, block: B:275:0x063b A[ADDED_TO_REGION] */
                    /* JADX WARN: Code duplicated, block: B:281:0x0654  */
                    /* JADX WARN: Code duplicated, block: B:283:0x065a  */
                    /* JADX WARN: Code duplicated, block: B:285:0x0661  */
                    /* JADX WARN: Code duplicated, block: B:287:0x0667  */
                    /* JADX WARN: Code duplicated, block: B:291:0x0674  */
                    /* JADX WARN: Code duplicated, block: B:293:0x067d  */
                    /* JADX WARN: Code duplicated, block: B:294:0x067f  */
                    /* JADX WARN: Code duplicated, block: B:297:0x0686  */
                    /* JADX WARN: Code duplicated, block: B:298:0x0689  */
                    /* JADX WARN: Code duplicated, block: B:305:0x069e A[LOOP:14: B:304:0x069c->B:305:0x069e, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:308:0x06ba  */
                    /* JADX WARN: Code duplicated, block: B:313:0x06c7  */
                    /* JADX WARN: Code duplicated, block: B:316:0x06d5 A[LOOP:15: B:315:0x06d3->B:316:0x06d5, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:319:0x06e6  */
                    /* JADX WARN: Code duplicated, block: B:321:0x06ea  */
                    /* JADX WARN: Code duplicated, block: B:322:0x06f6  */
                    /* JADX WARN: Code duplicated, block: B:324:0x06fd  */
                    /* JADX WARN: Code duplicated, block: B:326:0x0701  */
                    /* JADX WARN: Code duplicated, block: B:334:0x0735 A[LOOP:17: B:333:0x0733->B:334:0x0735, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:336:0x0741 A[LOOP:16: B:332:0x0723->B:336:0x0741, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:338:0x074d  */
                    /* JADX WARN: Code duplicated, block: B:340:0x0754  */
                    /* JADX WARN: Code duplicated, block: B:342:0x0768  */
                    /* JADX WARN: Code duplicated, block: B:346:0x0786 A[LOOP:19: B:343:0x076a->B:346:0x0786, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:349:0x0794  */
                    /* JADX WARN: Code duplicated, block: B:351:0x07a8 A[LOOP:21: B:350:0x07a6->B:351:0x07a8, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:355:0x07c4 A[LOOP:22: B:354:0x07c2->B:355:0x07c4, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:359:0x07fe  */
                    /* JADX WARN: Code duplicated, block: B:361:0x0815 A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:362:0x0817  */
                    /* JADX WARN: Code duplicated, block: B:364:0x081b  */
                    /* JADX WARN: Code duplicated, block: B:367:0x0835  */
                    /* JADX WARN: Code duplicated, block: B:368:0x0837  */
                    /* JADX WARN: Code duplicated, block: B:370:0x083a  */
                    /* JADX WARN: Code duplicated, block: B:372:0x0841 A[LOOP:18: B:371:0x083f->B:372:0x0841, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:375:0x0859  */
                    /* JADX WARN: Code duplicated, block: B:378:0x088a  */
                    /* JADX WARN: Code duplicated, block: B:382:0x0891  */
                    /* JADX WARN: Code duplicated, block: B:385:0x08c2  */
                    /* JADX WARN: Code duplicated, block: B:387:0x08c9  */
                    /* JADX WARN: Code duplicated, block: B:446:0x04ac A[EDGE_INSN: B:446:0x04ac->B:191:0x04ac BREAK  A[LOOP:6: B:180:0x0463->B:190:0x04a5], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:454:0x0591 A[EDGE_INSN: B:454:0x0591->B:240:0x0591 BREAK  A[LOOP:8: B:217:0x0525->B:234:0x0576], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:466:0x0746 A[EDGE_INSN: B:466:0x0746->B:337:0x0746 BREAK  A[LOOP:16: B:332:0x0723->B:336:0x0741], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:470:0x078b A[EDGE_INSN: B:470:0x078b->B:347:0x078b BREAK  A[LOOP:19: B:343:0x076a->B:346:0x0786], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:475:0x0650 A[ADDED_TO_REGION, EDGE_INSN: B:475:0x0650->B:279:0x0650 BREAK  A[LOOP:23: B:272:0x062f->B:278:0x0645], REMOVE, SYNTHETIC] */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r15v2 */
                    /* JADX WARN: Type inference failed for: r15v3 */
                    /* JADX WARN: Type inference failed for: r15v30 */
                    /* JADX WARN: Type inference failed for: r24v10 */
                    /* JADX WARN: Type inference failed for: r24v6, types: [androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator] */
                    /* JADX WARN: Type inference failed for: r28v0, types: [androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, androidx.compose.foundation.lazy.grid.LazyGridMeasuredItemProvider, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider] */
                    /* JADX WARN: Type inference failed for: r28v12 */
                    /* JADX WARN: Type inference failed for: r28v13 */
                    /* JADX WARN: Type inference failed for: r28v14 */
                    /* JADX WARN: Type inference failed for: r28v17 */
                    /* JADX WARN: Type inference failed for: r28v35 */
                    /* JADX WARN: Type inference failed for: r5v14, types: [androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator] */
                    /* JADX WARN: Type inference failed for: r7v11, types: [java.lang.Object] */
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                    public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j2) {
                        float d;
                        int iC;
                        int iF;
                        LazyGridState lazyGridState3;
                        boolean z6;
                        int i13;
                        int i14;
                        int i15;
                        int i16;
                        int size;
                        List arrayList;
                        int i17;
                        LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider;
                        int i18;
                        List list;
                        int i19;
                        List arrayList2;
                        int size2;
                        List arrayList3;
                        int i20;
                        int f74615i;
                        int i21;
                        LazyGridMeasuredLine lazyGridMeasuredLine;
                        int i22;
                        int i23;
                        int iG;
                        int iG2;
                        int iG3;
                        int i24;
                        List listY;
                        List list2;
                        int i25;
                        boolean z7;
                        int size3;
                        int length;
                        int i26;
                        int i27;
                        ArrayList arrayList4;
                        int size4;
                        int size5;
                        int i28;
                        int i29;
                        int size6;
                        int i30;
                        LazyGridMeasuredItem[] lazyGridMeasuredItemArrA;
                        int length2;
                        int i31;
                        int i32;
                        int i33;
                        List list3;
                        ArrayList arrayList5;
                        int iF2;
                        boolean z8;
                        int i34;
                        ?? r28;
                        float f2;
                        int i35;
                        boolean z9;
                        Orientation orientation;
                        LazyGridMeasureResult lazyGridMeasureResult;
                        LazyGridMeasuredLineProvider lazyGridMeasuredLineProvider;
                        SubcomposeMeasureScope subcomposeMeasureScope;
                        long jB;
                        int i36;
                        int i37;
                        int size7;
                        int i38;
                        int size8;
                        int[] iArr;
                        int i39;
                        int[] iArr2;
                        int i40;
                        int i41;
                        int i42;
                        LazyGridMeasuredItem[] lazyGridMeasuredItemArrA2;
                        int length3;
                        int i43;
                        int i44;
                        int iIntValue;
                        int i45;
                        List list4;
                        LazyGridItemInfo lazyGridItemInfo;
                        int iIntValue2;
                        LazyGridMeasuredItem[] lazyGridMeasuredItemArr;
                        LazyGridMeasuredItem[] lazyGridMeasuredItemArr2;
                        LazyGridMeasuredItem lazyGridMeasuredItem;
                        SubcomposeMeasureScope subcomposeMeasureScope2 = lazyLayoutMeasureScopeImpl.f5487c;
                        LazyGridState lazyGridState4 = lazyGridState;
                        MutableState mutableState = lazyGridState4.s;
                        LazyGridScrollPosition lazyGridScrollPosition = lazyGridState4.d;
                        mutableState.getF10755b();
                        boolean z10 = lazyGridState4.f5355b || subcomposeMeasureScope2.u0();
                        boolean z11 = z;
                        CheckScrollableContainerConstraintsKt.a(j2, z11 ? Orientation.Vertical : Orientation.Horizontal);
                        PaddingValues paddingValues2 = paddingValues;
                        int iB0 = z11 ? subcomposeMeasureScope2.B0(paddingValues2.b(subcomposeMeasureScope2.getF9495b())) : subcomposeMeasureScope2.B0(PaddingKt.g(paddingValues2, subcomposeMeasureScope2.getF9495b()));
                        int iB1 = z11 ? subcomposeMeasureScope2.B0(paddingValues2.c(subcomposeMeasureScope2.getF9495b())) : subcomposeMeasureScope2.B0(PaddingKt.f(paddingValues2, subcomposeMeasureScope2.getF9495b()));
                        int iB2 = subcomposeMeasureScope2.B0(paddingValues2.getF5031b());
                        int iB3 = subcomposeMeasureScope2.B0(paddingValues2.getD()) + iB2;
                        int i46 = iB0 + iB1;
                        int i47 = z11 ? iB3 : i46;
                        int i48 = z11 ? iB2 : !z11 ? iB0 : iB1;
                        int i49 = i47 - i48;
                        long jI = ConstraintsKt.i(-i46, -iB3, j2);
                        LazyGridItemProvider lazyGridItemProvider = (LazyGridItemProvider) kProperty1.mo47invoke();
                        LazyGridSpanLayoutProvider lazyGridSpanLayoutProviderJ = lazyGridItemProvider.j();
                        LazyGridSlots lazyGridSlotsA = lazyGridSlotsProvider.a(lazyLayoutMeasureScopeImpl, jI);
                        int length4 = lazyGridSlotsA.f5339a.length;
                        if (length4 != lazyGridSpanLayoutProviderJ.f5347i) {
                            lazyGridSpanLayoutProviderJ.f5347i = length4;
                            ArrayList arrayList6 = lazyGridSpanLayoutProviderJ.f5342b;
                            arrayList6.clear();
                            arrayList6.add(new LazyGridSpanLayoutProvider.Bucket(0, 0, 2, null));
                            lazyGridSpanLayoutProviderJ.f5343c = 0;
                            lazyGridSpanLayoutProviderJ.d = 0;
                            lazyGridSpanLayoutProviderJ.f5344e = 0;
                            lazyGridSpanLayoutProviderJ.f5345f = -1;
                            lazyGridSpanLayoutProviderJ.g.clear();
                        }
                        Arrangement.Horizontal horizontal2 = horizontal;
                        Arrangement.Vertical vertical2 = vertical;
                        if (z11) {
                            if (vertical2 == null) {
                                throw o60.u("null verticalArrangement when isVertical == true");
                            }
                            d = vertical2.getD();
                        } else {
                            if (horizontal2 == null) {
                                throw o60.u("null horizontalArrangement when isVertical == false");
                            }
                            d = horizontal2.getD();
                        }
                        int iB4 = subcomposeMeasureScope2.B0(d);
                        int iB = lazyGridItemProvider.b();
                        int iG4 = z11 ? Constraints.g(j2) - iB3 : Constraints.h(j2) - i46;
                        long j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                        IntOffset.Companion companion = IntOffset.f11012b;
                        int i50 = iG4;
                        int i51 = i48;
                        ?? r29 = new LazyGridMeasuredItemProvider(lazyGridItemProvider, lazyLayoutMeasureScopeImpl, iB4, lazyGridState, z, i51, i49, j3) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ LazyLayoutMeasureScopeImpl f5296e;

                            /* JADX INFO: renamed from: f, reason: collision with root package name */
                            public final /* synthetic */ LazyGridState f5297f;
                            public final /* synthetic */ boolean g;

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public final /* synthetic */ int f5298h;

                            /* JADX INFO: renamed from: i, reason: collision with root package name */
                            public final /* synthetic */ int f5299i;

                            /* JADX INFO: renamed from: j, reason: collision with root package name */
                            public final /* synthetic */ long f5300j;

                            {
                                this.f5296e = lazyLayoutMeasureScopeImpl;
                                this.f5297f = lazyGridState;
                                this.g = z;
                                this.f5298h = i51;
                                this.f5299i = i49;
                                this.f5300j = j3;
                            }

                            @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredItemProvider
                            public final LazyGridMeasuredItem c(int i52, Object obj, Object obj2, int i53, int i54, List list5, long j4, int i55, int i56) {
                                LayoutDirection f9421c = this.f5296e.f5487c.getF9495b();
                                LazyLayoutItemAnimator lazyLayoutItemAnimator = this.f5297f.m;
                                return new LazyGridMeasuredItem(i52, obj, this.g, i53, i54, false, f9421c, this.f5298h, this.f5299i, list5, this.f5300j, obj2, lazyLayoutItemAnimator, j4, i55, i56, null);
                            }
                        };
                        LazyGridMeasuredLineProvider lazyGridMeasuredLineProvider2 = new LazyGridMeasuredLineProvider(z, lazyGridSlotsA, iB, iB4, r29, lazyGridSpanLayoutProviderJ) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1
                            public final /* synthetic */ boolean g;

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public final /* synthetic */ LazyGridSlots f5301h;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(z, lazyGridSlotsA, iB, iB4, r29, lazyGridSpanLayoutProviderJ);
                                this.g = z;
                                this.f5301h = lazyGridSlotsA;
                            }

                            @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredLineProvider
                            public final LazyGridMeasuredLine b(int i52, LazyGridMeasuredItem[] lazyGridMeasuredItemArr3, List list5, int i53) {
                                return new LazyGridMeasuredLine(i52, lazyGridMeasuredItemArr3, this.f5301h, list5, this.g, i53);
                            }
                        };
                        k60 k60Var = new k60(lazyGridSpanLayoutProviderJ, lazyGridMeasuredLineProvider2, 5);
                        l00 l00Var = new l00(lazyGridSpanLayoutProviderJ, 18);
                        Snapshot.f8462e.getClass();
                        Snapshot snapshotA = Snapshot.Companion.a();
                        Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                        try {
                            int iG5 = lazyGridState4.g();
                            int iA = LazyLayoutItemProviderKt.a(iG5, lazyGridItemProvider, lazyGridScrollPosition.d);
                            if (iG5 != iA) {
                                ((SnapshotMutableIntStateImpl) lazyGridScrollPosition.f5335a).i(iA);
                                lazyGridScrollPosition.f5338e.h(iG5);
                            }
                            if (iA < iB || iB <= 0) {
                                iC = lazyGridSpanLayoutProviderJ.c(iA);
                                iF = ((SnapshotMutableIntStateImpl) lazyGridScrollPosition.f5336b).f();
                            } else {
                                iC = lazyGridSpanLayoutProviderJ.c(iB - 1);
                                iF = 0;
                            }
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            List listA = LazyLayoutBeyondBoundsStateKt.a(lazyGridItemProvider, lazyGridState4.q, lazyGridState4.n);
                            float fFloatValue = (subcomposeMeasureScope2.u0() || !z10) ? lazyGridState4.g : ((Number) ((SnapshotMutableStateImpl) lazyGridState4.v.f5512b.f3818c).getF10755b()).floatValue();
                            ?? r5 = lazyGridState4.m;
                            boolean zU0 = subcomposeMeasureScope2.u0();
                            LazyGridMeasureResult lazyGridMeasureResult2 = lazyGridState4.f5356c;
                            MutableState mutableState2 = lazyGridState4.r;
                            if (i51 < 0) {
                                InlineClassHelperKt.a("negative beforeContentPadding");
                            }
                            if (i49 < 0) {
                                InlineClassHelperKt.a("negative afterContentPadding");
                            }
                            LazyGridItemProvider lazyGridItemProvider2 = r29.f5320b;
                            boolean z12 = z;
                            int i52 = iC;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            GraphicsContext graphicsContext2 = graphicsContext;
                            int i53 = iF;
                            if (iB <= 0) {
                                int iJ = Constraints.j(jI);
                                int i54 = Constraints.i(jI);
                                r5.d(0, iJ, i54, new ArrayList(), lazyGridItemProvider2.getF5286c(), r29, z12, zU0, length4, z10, 0, 0, coroutineScope2, graphicsContext2);
                                if (!zU0) {
                                    long jB2 = r5.b();
                                    IntSize.f11020b.getClass();
                                    if (!IntSize.b(jB2, 0L)) {
                                        iJ = ConstraintsKt.g((int) (jB2 >> 32), jI);
                                        i54 = ConstraintsKt.f((int) (jB2 & BodyPartID.bodyIdMax), jI);
                                    }
                                }
                                lazyGridState3 = lazyGridState4;
                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                lazyGridMeasureResult = new LazyGridMeasureResult(null, 0, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, subcomposeMeasureScope2.V0(ConstraintsKt.g(iJ + i46, j2), ConstraintsKt.f(i54 + iB3, j2), MapsKt.c(), new n60(17)), Call.Parameters.DEFAULT_CAMERA_ZOOM, false, coroutineScope2, lazyLayoutMeasureScopeImpl, length4, k60Var, l00Var, EmptyList.f71768b, -i51, i50 + i49, 0, false, z12 ? Orientation.Vertical : Orientation.Horizontal, i49, iB4);
                                lazyGridMeasuredLineProvider = lazyGridMeasuredLineProvider2;
                            } else {
                                lazyGridState3 = lazyGridState4;
                                int i55 = i50;
                                ?? r15 = r5;
                                int iRound = Math.round(fFloatValue);
                                int i56 = i53 - iRound;
                                if (i52 == 0 && i56 < 0) {
                                    iRound += i56;
                                    i56 = 0;
                                }
                                float f3 = fFloatValue;
                                ArrayDeque arrayDeque = new ArrayDeque();
                                int i57 = -i51;
                                int i58 = i57 + (iB4 < 0 ? iB4 : 0);
                                int i59 = i56 + i58;
                                while (i59 < 0 && i52 > 0) {
                                    ?? r24 = r15;
                                    int i60 = i52 - 1;
                                    LazyGridMeasuredLine lazyGridMeasuredLineC = r5.c(i60);
                                    i52 = i60;
                                    arrayDeque.add(0, lazyGridMeasuredLineC);
                                    i59 += lazyGridMeasuredLineC.f5327h;
                                    r15 = r24;
                                }
                                ?? r25 = r15;
                                if (i59 < i58) {
                                    iRound -= i58 - i59;
                                    i59 = i58;
                                }
                                int i61 = iRound;
                                int i62 = i59 - i58;
                                int i63 = i55 + i49;
                                int i64 = i63 >= 0 ? i63 : 0;
                                int i65 = -i62;
                                int i66 = i62;
                                int i67 = i52;
                                int i68 = 0;
                                boolean z13 = false;
                                while (i68 < arrayDeque.d) {
                                    if (i65 >= i64) {
                                        arrayDeque.h(i68);
                                        z13 = true;
                                    } else {
                                        i67++;
                                        i65 += ((LazyGridMeasuredLine) arrayDeque.get(i68)).f5327h;
                                        i68++;
                                    }
                                }
                                boolean z14 = z13;
                                int i69 = i67;
                                while (true) {
                                    if (i69 >= iB || (i65 >= i64 && i65 > 0 && !arrayDeque.isEmpty())) {
                                        z6 = z14;
                                        break;
                                    }
                                    z6 = z14;
                                    LazyGridMeasuredLine lazyGridMeasuredLineC2 = r5.c(i69);
                                    int i70 = i69;
                                    LazyGridMeasuredItem[] lazyGridMeasuredItemArr3 = lazyGridMeasuredLineC2.f5323b;
                                    int i71 = i64;
                                    int i72 = lazyGridMeasuredLineC2.f5327h;
                                    if (lazyGridMeasuredItemArr3.length == 0) {
                                        break;
                                    }
                                    i65 += i72;
                                    if (i65 > i58 || ((LazyGridMeasuredItem) ArraysKt.I(lazyGridMeasuredItemArr3)).f5311a == iB - 1) {
                                        arrayDeque.addLast(lazyGridMeasuredLineC2);
                                        z14 = z6;
                                    } else {
                                        i66 -= i72;
                                        i52 = i70 + 1;
                                        z14 = true;
                                    }
                                    i69 = i70 + 1;
                                    i64 = i71;
                                }
                                if (i65 < i55) {
                                    int i73 = i55 - i65;
                                    int i74 = i65 + i73;
                                    i14 = i66 - i73;
                                    while (i14 < i51 && i52 > 0) {
                                        int i75 = i52 - 1;
                                        LazyGridMeasuredLine lazyGridMeasuredLineC3 = r5.c(i75);
                                        arrayDeque.add(0, lazyGridMeasuredLineC3);
                                        i14 += lazyGridMeasuredLineC3.f5327h;
                                        i74 = i74;
                                        i52 = i75;
                                    }
                                    int i76 = i74;
                                    i13 = i73 + i61;
                                    if (i14 < 0) {
                                        i13 += i14;
                                        i65 = i76 + i14;
                                        i14 = 0;
                                    } else {
                                        i65 = i76;
                                    }
                                } else {
                                    i13 = i61;
                                    i14 = i66;
                                }
                                float f4 = (Integer.signum(Math.round(f3)) != Integer.signum(i13) || Math.abs(Math.round(f3)) < Math.abs(i13)) ? f3 : i13;
                                float f5 = f3 - f4;
                                float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                if (zU0 && i13 > i61 && f5 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f6 = (i13 - i61) + f5;
                                }
                                float f7 = f6;
                                if (i14 < 0) {
                                    InlineClassHelperKt.a("negative initial offset");
                                }
                                int i77 = -i14;
                                LazyGridMeasuredLine lazyGridMeasuredLine2 = (LazyGridMeasuredLine) arrayDeque.n();
                                int i78 = i51;
                                int i79 = (lazyGridMeasuredLine2 == null || (lazyGridMeasuredItemArr2 = lazyGridMeasuredLine2.f5323b) == null || (lazyGridMeasuredItem = (LazyGridMeasuredItem) ArraysKt.x(lazyGridMeasuredItemArr2)) == null) ? 0 : lazyGridMeasuredItem.f5311a;
                                LazyGridMeasuredLine lazyGridMeasuredLine3 = (LazyGridMeasuredLine) arrayDeque.p();
                                if (lazyGridMeasuredLine3 == null || (lazyGridMeasuredItemArr = lazyGridMeasuredLine3.f5323b) == null) {
                                    i15 = i14;
                                } else {
                                    i15 = i14;
                                    LazyGridMeasuredItem lazyGridMeasuredItem2 = lazyGridMeasuredItemArr.length == 0 ? null : lazyGridMeasuredItemArr[lazyGridMeasuredItemArr.length - 1];
                                    i16 = lazyGridMeasuredItem2 != null ? lazyGridMeasuredItem2.f5311a : 0;
                                    List list5 = listA;
                                    size = list5.size();
                                    arrayList = null;
                                    i17 = 0;
                                    while (true) {
                                        lazyGridSpanLayoutProvider = r5.f5332f;
                                        if (i17 < size) {
                                            break;
                                        }
                                        int i80 = size;
                                        iIntValue2 = ((Number) listA.get(i17)).intValue();
                                        if (iIntValue2 < 0 && iIntValue2 < i79) {
                                            int i81 = lazyGridSpanLayoutProvider.f5347i;
                                            int iE = lazyGridSpanLayoutProvider.e(iIntValue2);
                                            LazyGridMeasuredItem lazyGridMeasuredItemD = r29.d(iIntValue2, 0, iE, r29.d, r5.a(0, iE));
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            List list6 = arrayList;
                                            list6.add(lazyGridMeasuredItemD);
                                            arrayList = list6;
                                        }
                                        i17++;
                                        i79 = i79;
                                        size = i80;
                                    }
                                    i18 = i79;
                                    if (arrayList == null) {
                                        arrayList = EmptyList.f71768b;
                                    }
                                    list = arrayList;
                                    if (zU0 || lazyGridMeasureResult2 == null) {
                                        list = list;
                                        i19 = i16;
                                        arrayList2 = null;
                                    } else {
                                        List list7 = lazyGridMeasureResult2.m;
                                        if (list7.isEmpty()) {
                                            list = list;
                                            i19 = i16;
                                        } else {
                                            int size9 = list7.size() - 1;
                                            int i82 = -1;
                                            while (true) {
                                                if (i82 >= size9) {
                                                    lazyGridItemInfo = null;
                                                    break;
                                                }
                                                int i83 = i82;
                                                if (((LazyGridItemInfo) list7.get(size9)).getF5212a() > i16 && (size9 == 0 || ((LazyGridItemInfo) list7.get(size9 - 1)).getF5212a() <= i16)) {
                                                    lazyGridItemInfo = (LazyGridItemInfo) list7.get(size9);
                                                    break;
                                                }
                                                size9--;
                                                i82 = i83;
                                            }
                                            LazyGridItemInfo lazyGridItemInfo2 = (LazyGridItemInfo) CollectionsKt.M(list7);
                                            LazyGridMeasuredLine lazyGridMeasuredLine4 = (LazyGridMeasuredLine) CollectionsKt.N(arrayDeque);
                                            int i84 = lazyGridMeasuredLine4 != null ? lazyGridMeasuredLine4.f5322a + 1 : 0;
                                            if (lazyGridItemInfo != null) {
                                                int f5212a = lazyGridItemInfo.getF5212a();
                                                i19 = i16;
                                                int iMin = Math.min(lazyGridItemInfo2.getF5212a(), iB - 1);
                                                if (f5212a <= iMin) {
                                                    int i85 = f5212a;
                                                    arrayList2 = null;
                                                    while (true) {
                                                        if (arrayList2 != null) {
                                                            f4 = f4;
                                                            int size10 = arrayList2.size();
                                                            list = list;
                                                            int i86 = 0;
                                                            while (true) {
                                                                if (i86 < size10) {
                                                                    int i87 = i86;
                                                                    LazyGridMeasuredItem[] lazyGridMeasuredItemArr4 = ((LazyGridMeasuredLine) arrayList2.get(i86)).f5323b;
                                                                    List list8 = arrayList2;
                                                                    int length5 = lazyGridMeasuredItemArr4.length;
                                                                    int i88 = 0;
                                                                    while (true) {
                                                                        if (i88 < length5) {
                                                                            int i89 = i88;
                                                                            if (lazyGridMeasuredItemArr4[i89].f5311a == i85) {
                                                                                arrayList2 = list8;
                                                                            } else {
                                                                                i88 = i89 + 1;
                                                                            }
                                                                        } else {
                                                                            i86 = i87 + 1;
                                                                            arrayList2 = list8;
                                                                        }
                                                                    }
                                                                }
                                                                if (i85 != iMin) {
                                                                    break;
                                                                }
                                                                i85++;
                                                                list = list;
                                                                f4 = f4;
                                                            }
                                                        } else {
                                                            list = list;
                                                            f4 = f4;
                                                        }
                                                        List list9 = arrayList2;
                                                        arrayList2 = list9 == null ? new ArrayList() : list9;
                                                        LazyGridMeasuredLine lazyGridMeasuredLineC4 = r5.c(i84);
                                                        i84++;
                                                        arrayList2.add(lazyGridMeasuredLineC4);
                                                        if (i85 != iMin) {
                                                            break;
                                                            break;
                                                        }
                                                        i85++;
                                                        list = list;
                                                        f4 = f4;
                                                    }
                                                }
                                            } else {
                                                i19 = i16;
                                            }
                                        }
                                        arrayList2 = null;
                                    }
                                    if (arrayList2 == null) {
                                        arrayList2 = EmptyList.f71768b;
                                    }
                                    size2 = list5.size();
                                    arrayList3 = null;
                                    i20 = 0;
                                    while (i20 < size2) {
                                        iIntValue = ((Number) listA.get(i20)).intValue();
                                        if (i19 + 1 <= iIntValue || iIntValue >= iB) {
                                            i45 = size2;
                                            list4 = listA;
                                        } else {
                                            if (zU0) {
                                                int size11 = arrayList2.size();
                                                i45 = size2;
                                                int i90 = 0;
                                                while (true) {
                                                    if (i90 < size11) {
                                                        int i91 = i90;
                                                        LazyGridMeasuredItem[] lazyGridMeasuredItemArr5 = ((LazyGridMeasuredLine) arrayList2.get(i90)).f5323b;
                                                        list4 = listA;
                                                        int length6 = lazyGridMeasuredItemArr5.length;
                                                        int i92 = 0;
                                                        while (true) {
                                                            if (i92 < length6) {
                                                                int i93 = i92;
                                                                if (lazyGridMeasuredItemArr5[i93].f5311a != iIntValue) {
                                                                    i92 = i93 + 1;
                                                                }
                                                            } else {
                                                                i90 = i91 + 1;
                                                                listA = list4;
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                i45 = size2;
                                            }
                                            list4 = listA;
                                            int i94 = lazyGridSpanLayoutProvider.f5347i;
                                            int iE2 = lazyGridSpanLayoutProvider.e(iIntValue);
                                            LazyGridMeasuredItem lazyGridMeasuredItemD2 = r29.d(iIntValue, 0, iE2, r29.d, r5.a(0, iE2));
                                            if (arrayList3 == null) {
                                                arrayList3 = new ArrayList();
                                            }
                                            arrayList3.add(lazyGridMeasuredItemD2);
                                        }
                                        i20++;
                                        size2 = i45;
                                        listA = list4;
                                    }
                                    if (arrayList3 == null) {
                                        arrayList3 = EmptyList.f71768b;
                                    }
                                    if (i78 <= 0 || iB4 < 0) {
                                        f74615i = arrayDeque.getF74615i();
                                        i21 = i15;
                                        lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                        i22 = 0;
                                        while (i22 < f74615i) {
                                            int i95 = ((LazyGridMeasuredLine) arrayDeque.get(i22)).f5327h;
                                            if (i21 != 0 || i95 > i21 || i22 == arrayDeque.getF74615i() - 1) {
                                                break;
                                            }
                                            i21 -= i95;
                                            i22++;
                                            lazyGridMeasuredLine = (LazyGridMeasuredLine) arrayDeque.get(i22);
                                        }
                                        i23 = i21;
                                    } else {
                                        i23 = i15;
                                    }
                                    if (z12) {
                                        lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                        iG = Constraints.h(jI);
                                    } else {
                                        lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                        iG = ConstraintsKt.g(i65, jI);
                                    }
                                    iG2 = iG;
                                    if (z12) {
                                        iG3 = ConstraintsKt.f(i65, jI);
                                    } else {
                                        iG3 = Constraints.g(jI);
                                    }
                                    i24 = iG3;
                                    listY = arrayDeque;
                                    if (!arrayList2.isEmpty()) {
                                        listY = CollectionsKt.Y(arrayDeque, arrayList2);
                                    }
                                    list2 = listY;
                                    if (z12) {
                                        i25 = i24;
                                    } else {
                                        i25 = iG2;
                                    }
                                    if (i65 < Math.min(i25, i55)) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    if (z7 && i77 != 0) {
                                        InlineClassHelperKt.c("non-zero firstLineScrollOffset");
                                    }
                                    size3 = list2.size();
                                    int i96 = i65;
                                    length = 0;
                                    i26 = 0;
                                    while (i26 < size3) {
                                        length += ((LazyGridMeasuredLine) list2.get(i26)).f5323b.length;
                                        i26++;
                                        i55 = i55;
                                    }
                                    i27 = i55;
                                    arrayList4 = new ArrayList(length);
                                    if (z7) {
                                        if (list.isEmpty() || !arrayList3.isEmpty()) {
                                            InlineClassHelperKt.a("no items");
                                        }
                                        size8 = list2.size();
                                        iArr = new int[size8];
                                        for (i39 = 0; i39 < size8; i39++) {
                                            iArr[i39] = ((LazyGridMeasuredLine) list2.get(i39)).g;
                                        }
                                        iArr2 = new int[size8];
                                        if (z12) {
                                            if (vertical2 != null) {
                                                throw o60.u("null verticalArrangement");
                                            }
                                            vertical2.b(lazyLayoutMeasureScopeImpl, i25, iArr, iArr2);
                                        } else {
                                            if (horizontal2 != null) {
                                                throw o60.u("null horizontalArrangement");
                                            }
                                            horizontal2.c(lazyLayoutMeasureScopeImpl, i25, iArr, LayoutDirection.Ltr, iArr2);
                                        }
                                        IntRange intRangeY = ArraysKt.y(iArr2);
                                        i40 = intRangeY.f71951b;
                                        i41 = intRangeY.f71952c;
                                        i42 = intRangeY.d;
                                        if ((i42 > 0 && i40 <= i41) || (i42 < 0 && i41 <= i40)) {
                                            while (true) {
                                                lazyGridMeasuredItemArrA2 = ((LazyGridMeasuredLine) list2.get(i40)).a(iArr2[i40], iG2, i24);
                                                length3 = lazyGridMeasuredItemArrA2.length;
                                                i43 = i42;
                                                i44 = 0;
                                                while (i44 < length3) {
                                                    int i97 = i44;
                                                    arrayList4.add(lazyGridMeasuredItemArrA2[i97]);
                                                    i44 = i97 + 1;
                                                }
                                                if (i40 == i41) {
                                                    break;
                                                }
                                                i40 += i43;
                                                i42 = i43;
                                            }
                                        }
                                    } else {
                                        arrayList4 = arrayList4;
                                        i78 = i78;
                                        i18 = i18;
                                        size4 = list.size() - 1;
                                        if (size4 >= 0) {
                                            i32 = i77;
                                            while (true) {
                                                i33 = size4 - 1;
                                                list3 = list;
                                                LazyGridMeasuredItem lazyGridMeasuredItem3 = (LazyGridMeasuredItem) list3.get(size4);
                                                i32 -= lazyGridMeasuredItem3.q;
                                                lazyGridMeasuredItem3.d(i32, 0, iG2, i24);
                                                arrayList4.add(lazyGridMeasuredItem3);
                                                if (i33 < 0) {
                                                    break;
                                                }
                                                list = list3;
                                                size4 = i33;
                                            }
                                        }
                                        size5 = list2.size();
                                        i28 = i77;
                                        i29 = 0;
                                        while (i29 < size5) {
                                            LazyGridMeasuredLine lazyGridMeasuredLine5 = (LazyGridMeasuredLine) list2.get(i29);
                                            int i98 = size5;
                                            lazyGridMeasuredItemArrA = lazyGridMeasuredLine5.a(i28, iG2, i24);
                                            int i99 = i29;
                                            length2 = lazyGridMeasuredItemArrA.length;
                                            i31 = 0;
                                            while (i31 < length2) {
                                                int i100 = i31;
                                                arrayList4.add(lazyGridMeasuredItemArrA[i100]);
                                                i31 = i100 + 1;
                                            }
                                            i28 += lazyGridMeasuredLine5.f5327h;
                                            i29 = i99 + 1;
                                            size5 = i98;
                                        }
                                        size6 = arrayList3.size();
                                        for (i30 = 0; i30 < size6; i30++) {
                                            LazyGridMeasuredItem lazyGridMeasuredItem4 = (LazyGridMeasuredItem) arrayList3.get(i30);
                                            lazyGridMeasuredItem4.d(i28, 0, iG2, i24);
                                            arrayList4.add(lazyGridMeasuredItem4);
                                            i28 += lazyGridMeasuredItem4.q;
                                        }
                                    }
                                    arrayList5 = arrayList4;
                                    r25.d((int) f4, iG2, i24, arrayList5, lazyGridItemProvider2.getF5286c(), r29, z12, zU0, length4, z10, i23, i96, coroutineScope2, graphicsContext2);
                                    iF2 = i24;
                                    if (zU0) {
                                        z8 = zU0;
                                        i34 = i27;
                                        r28 = r29;
                                    } else {
                                        jB = r25.b();
                                        IntSize.f11020b.getClass();
                                        z8 = zU0;
                                        if (!IntSize.b(jB, 0L)) {
                                            if (z12) {
                                                i36 = iF2;
                                            } else {
                                                i36 = iG2;
                                            }
                                            f2 = f4;
                                            iG2 = ConstraintsKt.g(Math.max(iG2, (int) (jB >> 32)), jI);
                                            iF2 = ConstraintsKt.f(Math.max(iF2, (int) (jB & BodyPartID.bodyIdMax)), jI);
                                            if (z12) {
                                                i37 = iF2;
                                            } else {
                                                i37 = iG2;
                                            }
                                            if (i37 != i36) {
                                                size7 = arrayList5.size();
                                                for (i38 = 0; i38 < size7; i38++) {
                                                    LazyGridMeasuredItem lazyGridMeasuredItem5 = (LazyGridMeasuredItem) arrayList5.get(i38);
                                                    lazyGridMeasuredItem5.r = i37;
                                                    lazyGridMeasuredItem5.t = lazyGridMeasuredItem5.f5316h + i37;
                                                }
                                            }
                                        }
                                        int i101 = iF2;
                                        int i102 = iG2;
                                        int i103 = i18;
                                        i35 = i19;
                                        List listA2 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i103, i35, arrayList5, lazyGridItemProvider2.e(), i78, i49, i102, i101, new k60(r5, r28, 6));
                                        if (i35 == iB - 1 || i96 > i34) {
                                            z9 = true;
                                        } else {
                                            z9 = false;
                                        }
                                        MeasureResult measureResultV0 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i102 + i46, j2), ConstraintsKt.f(i101 + iB3, j2), MapsKt.c(), new d90(mutableState2, arrayList5, listA2, z8, 0));
                                        List listA3 = LazyLayoutMeasuredItemKt.a(i103, i35, arrayList5, listA2);
                                        if (z12) {
                                            orientation = Orientation.Vertical;
                                        } else {
                                            orientation = Orientation.Horizontal;
                                        }
                                        lazyGridMeasuredLineProvider = r5;
                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                        lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i23, z9, f2, measureResultV0, f7, z6, coroutineScope2, lazyLayoutMeasureScopeImpl, length4, k60Var, l00Var, listA3, i57, i63, iB, false, orientation, i49, iB4);
                                    }
                                    r28 = r29;
                                    i34 = i27;
                                    r28 = r28;
                                    f2 = f4;
                                    int i104 = iF2;
                                    int i105 = iG2;
                                    int i106 = i18;
                                    i35 = i19;
                                    List listA4 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i106, i35, arrayList5, lazyGridItemProvider2.e(), i78, i49, i105, i104, new k60(r5, r28, 6));
                                    if (i35 == iB - 1) {
                                        z9 = true;
                                    } else {
                                        z9 = true;
                                    }
                                    MeasureResult measureResultV1 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i105 + i46, j2), ConstraintsKt.f(i104 + iB3, j2), MapsKt.c(), new d90(mutableState2, arrayList5, listA4, z8, 0));
                                    List listA5 = LazyLayoutMeasuredItemKt.a(i106, i35, arrayList5, listA4);
                                    if (z12) {
                                        orientation = Orientation.Vertical;
                                    } else {
                                        orientation = Orientation.Horizontal;
                                    }
                                    lazyGridMeasuredLineProvider = r5;
                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                    lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i23, z9, f2, measureResultV1, f7, z6, coroutineScope2, lazyLayoutMeasureScopeImpl, length4, k60Var, l00Var, listA5, i57, i63, iB, false, orientation, i49, iB4);
                                }
                                List list10 = listA;
                                size = list10.size();
                                arrayList = null;
                                i17 = 0;
                                while (true) {
                                    lazyGridSpanLayoutProvider = r5.f5332f;
                                    if (i17 < size) {
                                        break;
                                        break;
                                    }
                                    int i810 = size;
                                    iIntValue2 = ((Number) listA.get(i17)).intValue();
                                    if (iIntValue2 < 0) {
                                    }
                                    i17++;
                                    i79 = i79;
                                    size = i810;
                                }
                                i18 = i79;
                                if (arrayList == null) {
                                    arrayList = EmptyList.f71768b;
                                }
                                list = arrayList;
                                if (zU0) {
                                    list = list;
                                    i19 = i16;
                                    arrayList2 = null;
                                } else {
                                    list = list;
                                    i19 = i16;
                                    arrayList2 = null;
                                }
                                if (arrayList2 == null) {
                                    arrayList2 = EmptyList.f71768b;
                                }
                                size2 = list10.size();
                                arrayList3 = null;
                                i20 = 0;
                                while (i20 < size2) {
                                    iIntValue = ((Number) listA.get(i20)).intValue();
                                    if (i19 + 1 <= iIntValue) {
                                        i45 = size2;
                                        list4 = listA;
                                    } else {
                                        i45 = size2;
                                        list4 = listA;
                                    }
                                    i20++;
                                    size2 = i45;
                                    listA = list4;
                                }
                                if (arrayList3 == null) {
                                    arrayList3 = EmptyList.f71768b;
                                }
                                if (i78 <= 0) {
                                    f74615i = arrayDeque.getF74615i();
                                    i21 = i15;
                                    lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                    i22 = 0;
                                    while (i22 < f74615i) {
                                        int i910 = ((LazyGridMeasuredLine) arrayDeque.get(i22)).f5327h;
                                        if (i21 != 0) {
                                            break;
                                        }
                                        break;
                                    }
                                    i23 = i21;
                                } else {
                                    f74615i = arrayDeque.getF74615i();
                                    i21 = i15;
                                    lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                    i22 = 0;
                                    while (i22 < f74615i) {
                                        int i911 = ((LazyGridMeasuredLine) arrayDeque.get(i22)).f5327h;
                                        if (i21 != 0) {
                                            break;
                                            break;
                                        }
                                        break;
                                        break;
                                    }
                                    i23 = i21;
                                }
                                if (z12) {
                                    lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                    iG = Constraints.h(jI);
                                } else {
                                    lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                    iG = ConstraintsKt.g(i65, jI);
                                }
                                iG2 = iG;
                                if (z12) {
                                    iG3 = ConstraintsKt.f(i65, jI);
                                } else {
                                    iG3 = Constraints.g(jI);
                                }
                                i24 = iG3;
                                listY = arrayDeque;
                                if (!arrayList2.isEmpty()) {
                                    listY = CollectionsKt.Y(arrayDeque, arrayList2);
                                }
                                list2 = listY;
                                if (z12) {
                                    i25 = i24;
                                } else {
                                    i25 = iG2;
                                }
                                if (i65 < Math.min(i25, i55)) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                if (z7) {
                                    InlineClassHelperKt.c("non-zero firstLineScrollOffset");
                                }
                                size3 = list2.size();
                                int i912 = i65;
                                length = 0;
                                i26 = 0;
                                while (i26 < size3) {
                                    length += ((LazyGridMeasuredLine) list2.get(i26)).f5323b.length;
                                    i26++;
                                    i55 = i55;
                                }
                                i27 = i55;
                                arrayList4 = new ArrayList(length);
                                if (z7) {
                                    if (list.isEmpty()) {
                                        InlineClassHelperKt.a("no items");
                                    } else {
                                        InlineClassHelperKt.a("no items");
                                    }
                                    size8 = list2.size();
                                    iArr = new int[size8];
                                    while (i39 < size8) {
                                        iArr[i39] = ((LazyGridMeasuredLine) list2.get(i39)).g;
                                    }
                                    iArr2 = new int[size8];
                                    if (z12) {
                                        if (vertical2 != null) {
                                            throw o60.u("null verticalArrangement");
                                        }
                                        vertical2.b(lazyLayoutMeasureScopeImpl, i25, iArr, iArr2);
                                    } else {
                                        if (horizontal2 != null) {
                                            throw o60.u("null horizontalArrangement");
                                        }
                                        horizontal2.c(lazyLayoutMeasureScopeImpl, i25, iArr, LayoutDirection.Ltr, iArr2);
                                    }
                                    IntRange intRangeY2 = ArraysKt.y(iArr2);
                                    i40 = intRangeY2.f71951b;
                                    i41 = intRangeY2.f71952c;
                                    i42 = intRangeY2.d;
                                    if (i42 > 0) {
                                        while (true) {
                                            lazyGridMeasuredItemArrA2 = ((LazyGridMeasuredLine) list2.get(i40)).a(iArr2[i40], iG2, i24);
                                            length3 = lazyGridMeasuredItemArrA2.length;
                                            i43 = i42;
                                            i44 = 0;
                                            while (i44 < length3) {
                                                int i913 = i44;
                                                arrayList4.add(lazyGridMeasuredItemArrA2[i913]);
                                                i44 = i913 + 1;
                                            }
                                            if (i40 == i41) {
                                                break;
                                                break;
                                            }
                                            i40 += i43;
                                            i42 = i43;
                                        }
                                    } else {
                                        while (true) {
                                            lazyGridMeasuredItemArrA2 = ((LazyGridMeasuredLine) list2.get(i40)).a(iArr2[i40], iG2, i24);
                                            length3 = lazyGridMeasuredItemArrA2.length;
                                            i43 = i42;
                                            i44 = 0;
                                            while (i44 < length3) {
                                                int i914 = i44;
                                                arrayList4.add(lazyGridMeasuredItemArrA2[i914]);
                                                i44 = i914 + 1;
                                            }
                                            if (i40 == i41) {
                                                break;
                                                break;
                                            }
                                            i40 += i43;
                                            i42 = i43;
                                        }
                                    }
                                } else {
                                    arrayList4 = arrayList4;
                                    i78 = i78;
                                    i18 = i18;
                                    size4 = list.size() - 1;
                                    if (size4 >= 0) {
                                        i32 = i77;
                                        while (true) {
                                            i33 = size4 - 1;
                                            list3 = list;
                                            LazyGridMeasuredItem lazyGridMeasuredItem6 = (LazyGridMeasuredItem) list3.get(size4);
                                            i32 -= lazyGridMeasuredItem6.q;
                                            lazyGridMeasuredItem6.d(i32, 0, iG2, i24);
                                            arrayList4.add(lazyGridMeasuredItem6);
                                            if (i33 < 0) {
                                                break;
                                                break;
                                            }
                                            list = list3;
                                            size4 = i33;
                                        }
                                    }
                                    size5 = list2.size();
                                    i28 = i77;
                                    i29 = 0;
                                    while (i29 < size5) {
                                        LazyGridMeasuredLine lazyGridMeasuredLine6 = (LazyGridMeasuredLine) list2.get(i29);
                                        int i915 = size5;
                                        lazyGridMeasuredItemArrA = lazyGridMeasuredLine6.a(i28, iG2, i24);
                                        int i916 = i29;
                                        length2 = lazyGridMeasuredItemArrA.length;
                                        i31 = 0;
                                        while (i31 < length2) {
                                            int i107 = i31;
                                            arrayList4.add(lazyGridMeasuredItemArrA[i107]);
                                            i31 = i107 + 1;
                                        }
                                        i28 += lazyGridMeasuredLine6.f5327h;
                                        i29 = i916 + 1;
                                        size5 = i915;
                                    }
                                    size6 = arrayList3.size();
                                    while (i30 < size6) {
                                        LazyGridMeasuredItem lazyGridMeasuredItem7 = (LazyGridMeasuredItem) arrayList3.get(i30);
                                        lazyGridMeasuredItem7.d(i28, 0, iG2, i24);
                                        arrayList4.add(lazyGridMeasuredItem7);
                                        i28 += lazyGridMeasuredItem7.q;
                                    }
                                }
                                arrayList5 = arrayList4;
                                r25.d((int) f4, iG2, i24, arrayList5, lazyGridItemProvider2.getF5286c(), r29, z12, zU0, length4, z10, i23, i912, coroutineScope2, graphicsContext2);
                                iF2 = i24;
                                if (zU0) {
                                    jB = r25.b();
                                    IntSize.f11020b.getClass();
                                    z8 = zU0;
                                    if (!IntSize.b(jB, 0L)) {
                                        if (z12) {
                                            i36 = iF2;
                                        } else {
                                            i36 = iG2;
                                        }
                                        f2 = f4;
                                        iG2 = ConstraintsKt.g(Math.max(iG2, (int) (jB >> 32)), jI);
                                        iF2 = ConstraintsKt.f(Math.max(iF2, (int) (jB & BodyPartID.bodyIdMax)), jI);
                                        if (z12) {
                                            i37 = iF2;
                                        } else {
                                            i37 = iG2;
                                        }
                                        if (i37 != i36) {
                                            size7 = arrayList5.size();
                                            while (i38 < size7) {
                                                LazyGridMeasuredItem lazyGridMeasuredItem8 = (LazyGridMeasuredItem) arrayList5.get(i38);
                                                lazyGridMeasuredItem8.r = i37;
                                                lazyGridMeasuredItem8.t = lazyGridMeasuredItem8.f5316h + i37;
                                            }
                                        }
                                    }
                                    int i108 = iF2;
                                    int i109 = iG2;
                                    int i1010 = i18;
                                    i35 = i19;
                                    List listA6 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i1010, i35, arrayList5, lazyGridItemProvider2.e(), i78, i49, i109, i108, new k60(r5, r28, 6));
                                    if (i35 == iB - 1) {
                                        z9 = true;
                                    } else {
                                        z9 = true;
                                    }
                                    MeasureResult measureResultV2 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i109 + i46, j2), ConstraintsKt.f(i108 + iB3, j2), MapsKt.c(), new d90(mutableState2, arrayList5, listA6, z8, 0));
                                    List listA7 = LazyLayoutMeasuredItemKt.a(i1010, i35, arrayList5, listA6);
                                    if (z12) {
                                        orientation = Orientation.Vertical;
                                    } else {
                                        orientation = Orientation.Horizontal;
                                    }
                                    lazyGridMeasuredLineProvider = r5;
                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                    lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i23, z9, f2, measureResultV2, f7, z6, coroutineScope2, lazyLayoutMeasureScopeImpl, length4, k60Var, l00Var, listA7, i57, i63, iB, false, orientation, i49, iB4);
                                } else {
                                    z8 = zU0;
                                    i34 = i27;
                                    r28 = r29;
                                }
                                r28 = r29;
                                i34 = i27;
                                r28 = r28;
                                f2 = f4;
                                int i1011 = iF2;
                                int i1012 = iG2;
                                int i1013 = i18;
                                i35 = i19;
                                List listA8 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1, i1013, i35, arrayList5, lazyGridItemProvider2.e(), i78, i49, i1012, i1011, new k60(r5, r28, 6));
                                if (i35 == iB - 1) {
                                    z9 = true;
                                } else {
                                    z9 = true;
                                }
                                MeasureResult measureResultV3 = subcomposeMeasureScope2.V0(ConstraintsKt.g(i1012 + i46, j2), ConstraintsKt.f(i1011 + iB3, j2), MapsKt.c(), new d90(mutableState2, arrayList5, listA8, z8, 0));
                                List listA9 = LazyLayoutMeasuredItemKt.a(i1013, i35, arrayList5, listA8);
                                if (z12) {
                                    orientation = Orientation.Vertical;
                                } else {
                                    orientation = Orientation.Horizontal;
                                }
                                lazyGridMeasuredLineProvider = r5;
                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i23, z9, f2, measureResultV3, f7, z6, coroutineScope2, lazyLayoutMeasureScopeImpl, length4, k60Var, l00Var, listA9, i57, i63, iB, false, orientation, i49, iB4);
                            }
                            LazyGridState lazyGridState5 = lazyGridState3;
                            lazyGridState5.f(lazyGridMeasureResult, subcomposeMeasureScope.u0(), false);
                            Object obj = lazyGridState5.f5354a;
                            CacheWindowLogic cacheWindowLogic = obj instanceof CacheWindowLogic ? (CacheWindowLogic) obj : null;
                            if (cacheWindowLogic == null) {
                                return lazyGridMeasureResult;
                            }
                            List list11 = lazyGridMeasureResult.m;
                            Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
                            try {
                                if (cacheWindowLogic.g() && !list11.isEmpty()) {
                                    LazyGridItemInfo lazyGridItemInfo3 = (LazyGridItemInfo) CollectionsKt.B(list11);
                                    Orientation orientation2 = Orientation.Vertical;
                                    Orientation orientation3 = lazyGridMeasureResult.r;
                                    int w = orientation3 == orientation2 ? lazyGridItemInfo3.getW() : lazyGridItemInfo3.getX();
                                    LazyGridItemInfo lazyGridItemInfo4 = (LazyGridItemInfo) CollectionsKt.M(list11);
                                    int w2 = orientation3 == orientation2 ? lazyGridItemInfo4.getW() : lazyGridItemInfo4.getX();
                                    int i110 = cacheWindowLogic.f5398j;
                                    while (i110 < w) {
                                        LazyGridMeasuredLineProvider lazyGridMeasuredLineProvider3 = lazyGridMeasuredLineProvider;
                                        lazyGridMeasuredLineProvider3.c(i110);
                                        i110++;
                                        lazyGridMeasuredLineProvider = lazyGridMeasuredLineProvider3;
                                    }
                                    LazyGridMeasuredLineProvider lazyGridMeasuredLineProvider4 = lazyGridMeasuredLineProvider;
                                    int i111 = w2 + 1;
                                    int i112 = cacheWindowLogic.f5399k;
                                    if (i111 <= i112) {
                                        while (true) {
                                            lazyGridMeasuredLineProvider4.c(i111);
                                            if (i111 == i112) {
                                                break;
                                            }
                                            i111++;
                                        }
                                    }
                                }
                                return lazyGridMeasureResult;
                            } finally {
                                Trace.endSection();
                            }
                        } catch (Throwable th) {
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            throw th;
                        }
                    }
                };
                lazyGridState2 = lazyGridState;
                kProperty0 = kProperty1;
                gapComposer2.q(lazyLayoutMeasurePolicy);
                objX4 = lazyLayoutMeasurePolicy;
            } else {
                lazyGridState2 = lazyGridState;
                gapComposer2 = gapComposerH;
                kProperty0 = kProperty1;
                i6 = 4;
            }
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) objX4;
            Orientation orientation = z ? Orientation.Vertical : Orientation.Horizontal;
            if (z2) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer2, 27281635, "LazyGrid");
                boolean z6 = ((i9 ^ 6) > i6 && gapComposer2.K(lazyGridState2)) || (i8 & 6) == i6;
                Object objX5 = gapComposer2.x();
                if (z6 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new LazyGridBeyondBoundsState(lazyGridState2);
                    gapComposer2.q(objX5);
                }
                z3 = false;
                modifierJ = LazyLayoutBeyondBoundsModifierLocalKt.a(dTFunctionNameModifierI, (LazyGridBeyondBoundsState) objX5, lazyGridState2.n, false, orientation);
                gapComposer2.Z(false);
            } else {
                z3 = false;
                modifierJ = n00.j(gapComposer2, 27577840, false, "LazyGrid");
            }
            KProperty0 kProperty2 = kProperty0;
            LazyGridState lazyGridState3 = lazyGridState2;
            gapComposer = gapComposer2;
            LazyLayoutKt.a(kProperty2, ScrollableAreaKt.a(LazyLayoutSemanticsKt.a(modifier2.o(lazyGridState2.f5362k).o(lazyGridState2.l), kProperty0, lazySemanticsKt$rememberLazyGridSemanticState$1$1, orientation, z2, z3).o(modifierJ).o(lazyGridState2.m.f5462k), lazyGridState3, orientation, overscrollEffect, z2, false, flingBehavior, lazyGridState2.f5358f, null), lazyGridState3.o, lazyLayoutMeasurePolicy2, gapComposer, 0);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ry(modifier2, lazyGridState, lazyGridSlotsProvider, paddingValues, z, flingBehavior, z2, overscrollEffect, vertical, horizontal, function1, i2, i3);
        }
    }
}
