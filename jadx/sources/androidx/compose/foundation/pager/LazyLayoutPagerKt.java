package androidx.compose.foundation.pager;

import android.os.Trace;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProviderKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.foundation.pager.LazyLayoutPagerKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.ag;
import defpackage.md;
import defpackage.n00;
import defpackage.u2;
import defpackage.xg0;
import defpackage.yk0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
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
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty0;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutPagerKt {
    /* JADX WARN: Code duplicated, block: B:244:0x0384 A[PHI: r2
      0x0384: PHI (r2v60 int) = (r2v52 int), (r2v61 int) binds: [B:243:0x0382, B:239:0x037b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:249:0x0396  */
    /* JADX WARN: Code duplicated, block: B:254:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:255:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:266:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:269:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:273:0x0402  */
    /* JADX WARN: Code duplicated, block: B:274:0x0405  */
    /* JADX WARN: Code duplicated, block: B:277:0x040c  */
    /* JADX WARN: Code duplicated, block: B:278:0x040f  */
    /* JADX WARN: Code duplicated, block: B:281:0x0417 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:284:0x041d  */
    /* JADX WARN: Code duplicated, block: B:287:0x0445  */
    /* JADX WARN: Code duplicated, block: B:288:0x0448  */
    /* JADX WARN: Code duplicated, block: B:291:0x045d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:292:0x045f  */
    /* JADX WARN: Code duplicated, block: B:295:0x0470  */
    /* JADX WARN: Code duplicated, block: B:297:0x0488  */
    /* JADX WARN: Code duplicated, block: B:299:0x048e  */
    /* JADX WARN: Code duplicated, block: B:305:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:307:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:313:0x04b6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:314:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:317:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:320:0x04f5  */
    /* JADX WARN: Code duplicated, block: B:321:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:324:0x04fd  */
    /* JADX WARN: Code duplicated, block: B:325:0x050d  */
    public static final void a(Modifier modifier, final PagerState pagerState, final PaddingValues paddingValues, final boolean z, final Orientation orientation, TargetedFlingBehavior targetedFlingBehavior, final boolean z2, final OverscrollEffect overscrollEffect, int i2, final float f2, final PageSize pageSize, NestedScrollConnection nestedScrollConnection, final Alignment.Horizontal horizontal, final Alignment.Vertical vertical, final SnapPosition snapPosition, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i3, final int i4) {
        int i5;
        int i6;
        final SnapPosition snapPosition2;
        TargetedFlingBehavior targetedFlingBehavior2;
        final NestedScrollConnection nestedScrollConnection2;
        final PagerState pagerState2;
        GapComposer gapComposer;
        int i7;
        boolean z3;
        boolean zK;
        final CoroutineScope coroutineScope;
        Object obj;
        int i8;
        final Orientation orientation2;
        final PagerState pagerState3;
        KProperty0 kProperty0;
        Orientation orientation3;
        final boolean z4;
        boolean zB;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z5;
        boolean z6;
        boolean z7;
        Object objX2;
        BringIntoViewSpec bringIntoViewSpec;
        LayoutDirection layoutDirection;
        boolean z8;
        boolean zK2;
        Object objX3;
        Modifier modifierJ;
        Orientation orientation4;
        Modifier modifierA;
        boolean z9;
        Modifier.Companion companion;
        Modifier modifierO;
        boolean z10;
        Object objX4;
        Modifier modifierE = modifier;
        final int i9 = i2;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Pager-eLwUrMk");
        }
        GapComposer gapComposerH = composer.h(-572816025);
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.K(modifierE) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.K(pagerState) ? 32 : 16;
        }
        final Modifier modifier2 = modifierE;
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(paddingValues) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.d(orientation.ordinal()) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.K(targetedFlingBehavior) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposerH.b(z2) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposerH.K(overscrollEffect) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i5 |= gapComposerH.d(i9) ? 67108864 : 33554432;
        }
        if ((i3 & 805306368) == 0) {
            i5 |= gapComposerH.c(f2) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i4 & 6) == 0) {
            i6 = i4 | (gapComposerH.K(pageSize) ? 4 : 2);
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i6 |= gapComposerH.y(nestedScrollConnection) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(null) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i6 |= gapComposerH.K(horizontal) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i6 |= gapComposerH.K(vertical) ? 16384 : 8192;
        }
        if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            snapPosition2 = snapPosition;
            i6 |= gapComposerH.K(snapPosition2) ? 131072 : 65536;
        } else {
            snapPosition2 = snapPosition;
        }
        if ((i4 & 1572864) == 0) {
            i6 |= gapComposerH.y(composableLambdaImpl) ? 1048576 : 524288;
        }
        int i10 = i6;
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (599187 & i10) == 599186) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (i9 < 0) {
                InlineClassHelperKt.a("beyondViewportPageCount should be greater than or equal to 0, you selected " + i9);
            }
            int i11 = i5 & 112;
            boolean z11 = i11 == 32;
            Object objX5 = gapComposerH.x();
            boolean z12 = z11;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z12 || objX5 == composer$Companion$Empty$2) {
                objX5 = new u2(pagerState, 8);
                gapComposerH.q(objX5);
            }
            final Function0 function0 = (Function0) objX5;
            int i12 = i5 >> 3;
            int i13 = i12 & 14;
            int i14 = i10 >> 15;
            int i15 = i13 | (i14 & 112) | (i10 & 896);
            final MutableState mutableStateL = SnapshotStateKt.l(composableLambdaImpl, gapComposerH);
            final MutableState mutableStateL2 = SnapshotStateKt.l(null, gapComposerH);
            boolean zK3 = ((((i15 & 14) ^ 6) > 4 && gapComposerH.K(pagerState)) || (i15 & 6) == 4) | gapComposerH.K(mutableStateL) | gapComposerH.K(mutableStateL2) | gapComposerH.K(function0);
            Object objX6 = gapComposerH.x();
            if (zK3 || objX6 == composer$Companion$Empty$2) {
                objX6 = new LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1(SnapshotStateKt.d(SnapshotStateKt.k(), new f(SnapshotStateKt.d(SnapshotStateKt.k(), new Function0() { // from class: androidx.compose.foundation.pager.d
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new PagerLayoutIntervalContent((Function4) mutableStateL.getF10755b(), (Function1) mutableStateL2.getF10755b(), ((Number) function0.mo47invoke()).intValue());
                    }
                }), pagerState)), State.class, "value", "getValue()Ljava/lang/Object;", 0);
                gapComposerH.q(objX6);
            }
            final KProperty0 kProperty1 = (KProperty0) objX6;
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$2) {
                objX7 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX7);
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) objX7;
            boolean z13 = i11 == 32;
            Object objX8 = gapComposerH.x();
            if (z13 || objX8 == composer$Companion$Empty$2) {
                objX8 = new u2(pagerState, 9);
                gapComposerH.q(objX8);
            }
            final Function0 function1 = (Function0) objX8;
            int i16 = i5 >> 9;
            int i17 = (i5 & 65520) | (i16 & ImageMetadata.JPEG_GPS_COORDINATES) | (i16 & 3670016) | ((i10 << 21) & 29360128);
            int i18 = i10 << 15;
            int i19 = i17 | (i18 & 234881024) | (i18 & 1879048192);
            boolean zK4 = ((((i19 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && gapComposerH.K(paddingValues)) || (i19 & KyberEngine.KyberPolyBytes) == 256) | ((((i19 & 112) ^ 48) > 32 && gapComposerH.K(pagerState)) || (i19 & 48) == 32) | ((((i19 & 7168) ^ 3072) > 2048 && gapComposerH.b(z)) || (i19 & 3072) == 2048) | ((((57344 & i19) ^ 24576) > 16384 && gapComposerH.d(orientation.ordinal())) || (i19 & 24576) == 16384) | ((((i19 & 234881024) ^ 100663296) > 67108864 && gapComposerH.K(horizontal)) || (i19 & 100663296) == 67108864) | ((((i19 & 1879048192) ^ 805306368) > 536870912 && gapComposerH.K(vertical)) || (i19 & 805306368) == 536870912) | ((((i19 & 3670016) ^ 1572864) > 1048576 && gapComposerH.c(f2)) || (i19 & 1572864) == 1048576) | ((((i19 & 29360128) ^ 12582912) > 8388608 && gapComposerH.K(pageSize)) || (i19 & 12582912) == 8388608) | ((((i14 & 14) ^ 6) > 4 && gapComposerH.K(snapPosition2)) || (i14 & 6) == 4) | gapComposerH.K(function1);
            if (((i19 & ImageMetadata.JPEG_GPS_COORDINATES) ^ ImageMetadata.EDGE_MODE) > 131072) {
                i7 = i2;
                if (gapComposerH.d(i7)) {
                    z3 = true;
                }
                zK = zK4 | z3 | gapComposerH.K(coroutineScope2);
                Object objX9 = gapComposerH.x();
                if (!zK || objX9 == composer$Companion$Empty$2) {
                    coroutineScope = coroutineScope2;
                    gapComposer = gapComposerH;
                    i8 = 4;
                    final int i20 = i7;
                    orientation2 = orientation;
                    obj = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.pager.PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1
                        /* JADX WARN: Code duplicated, block: B:176:0x048f  */
                        /* JADX WARN: Code duplicated, block: B:178:0x0492  */
                        /* JADX WARN: Code duplicated, block: B:181:0x04b9 A[LOOP:7: B:177:0x0490->B:181:0x04b9, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:183:0x04d0  */
                        /* JADX WARN: Code duplicated, block: B:186:0x04ed  */
                        /* JADX WARN: Code duplicated, block: B:188:0x04fb A[DONT_INVERT] */
                        /* JADX WARN: Code duplicated, block: B:189:0x04fd  */
                        /* JADX WARN: Code duplicated, block: B:191:0x051d  */
                        /* JADX WARN: Code duplicated, block: B:195:0x0532  */
                        /* JADX WARN: Code duplicated, block: B:198:0x0541 A[LOOP:9: B:197:0x053f->B:198:0x0541, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:201:0x056f  */
                        /* JADX WARN: Code duplicated, block: B:203:0x0573  */
                        /* JADX WARN: Code duplicated, block: B:206:0x0591 A[LOOP:10: B:202:0x0571->B:206:0x0591, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:207:0x059d  */
                        /* JADX WARN: Code duplicated, block: B:210:0x05ad  */
                        /* JADX WARN: Code duplicated, block: B:212:0x05c1  */
                        /* JADX WARN: Code duplicated, block: B:214:0x05c5 A[DONT_INVERT] */
                        /* JADX WARN: Code duplicated, block: B:215:0x05c7  */
                        /* JADX WARN: Code duplicated, block: B:217:0x05ed  */
                        /* JADX WARN: Code duplicated, block: B:219:0x05ff  */
                        /* JADX WARN: Code duplicated, block: B:224:0x0622  */
                        /* JADX WARN: Code duplicated, block: B:225:0x0626  */
                        /* JADX WARN: Code duplicated, block: B:228:0x0634 A[LOOP:12: B:227:0x0632->B:228:0x0634, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:236:0x065e  */
                        /* JADX WARN: Code duplicated, block: B:239:0x0663  */
                        /* JADX WARN: Code duplicated, block: B:241:0x0667  */
                        /* JADX WARN: Code duplicated, block: B:244:0x0670  */
                        /* JADX WARN: Code duplicated, block: B:248:0x067c  */
                        /* JADX WARN: Code duplicated, block: B:251:0x0686  */
                        /* JADX WARN: Code duplicated, block: B:252:0x0689  */
                        /* JADX WARN: Code duplicated, block: B:257:0x06a7  */
                        /* JADX WARN: Code duplicated, block: B:260:0x06c6  */
                        /* JADX WARN: Code duplicated, block: B:265:0x06d3  */
                        /* JADX WARN: Code duplicated, block: B:268:0x06e3 A[LOOP:13: B:267:0x06e1->B:268:0x06e3, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:271:0x0703  */
                        /* JADX WARN: Code duplicated, block: B:272:0x0713  */
                        /* JADX WARN: Code duplicated, block: B:276:0x0730  */
                        /* JADX WARN: Code duplicated, block: B:295:0x078d  */
                        /* JADX WARN: Code duplicated, block: B:297:0x07a9 A[LOOP:19: B:296:0x07a7->B:297:0x07a9, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:300:0x07c7 A[LOOP:20: B:299:0x07c5->B:300:0x07c7, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:303:0x07e2 A[LOOP:21: B:302:0x07e0->B:303:0x07e2, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:305:0x07f5  */
                        /* JADX WARN: Code duplicated, block: B:307:0x07f9  */
                        /* JADX WARN: Code duplicated, block: B:309:0x0809  */
                        /* JADX WARN: Code duplicated, block: B:317:0x083e  */
                        /* JADX WARN: Code duplicated, block: B:318:0x0841  */
                        /* JADX WARN: Code duplicated, block: B:320:0x0851  */
                        /* JADX WARN: Code duplicated, block: B:322:0x0864  */
                        /* JADX WARN: Code duplicated, block: B:326:0x0870  */
                        /* JADX WARN: Code duplicated, block: B:327:0x0873  */
                        /* JADX WARN: Code duplicated, block: B:329:0x0883  */
                        /* JADX WARN: Code duplicated, block: B:331:0x0896  */
                        /* JADX WARN: Code duplicated, block: B:335:0x08a2  */
                        /* JADX WARN: Code duplicated, block: B:336:0x08b6  */
                        /* JADX WARN: Code duplicated, block: B:338:0x08e4  */
                        /* JADX WARN: Code duplicated, block: B:341:0x090b  */
                        /* JADX WARN: Code duplicated, block: B:343:0x0910 A[LOOP:15: B:339:0x08eb->B:343:0x0910, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:344:0x0917  */
                        /* JADX WARN: Code duplicated, block: B:347:0x0927  */
                        /* JADX WARN: Code duplicated, block: B:349:0x092c  */
                        /* JADX WARN: Code duplicated, block: B:351:0x0930  */
                        /* JADX WARN: Code duplicated, block: B:352:0x0932  */
                        /* JADX WARN: Code duplicated, block: B:360:0x096c  */
                        /* JADX WARN: Code duplicated, block: B:405:0x04cd A[EDGE_INSN: B:405:0x04cd->B:182:0x04cd BREAK  A[LOOP:7: B:177:0x0490->B:181:0x04b9], SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:410:0x05a5 A[EDGE_INSN: B:410:0x05a5->B:208:0x05a5 BREAK  A[LOOP:10: B:202:0x0571->B:206:0x0591], SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:418:0x091d A[EDGE_INSN: B:418:0x091d->B:345:0x091d BREAK  A[LOOP:15: B:339:0x08eb->B:343:0x0910], SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:421:0x0899 A[SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:424:0x0867 A[SYNTHETIC] */
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v44, types: [java.util.ArrayList] */
                        /* JADX WARN: Type inference failed for: r0v45 */
                        /* JADX WARN: Type inference failed for: r0v58, types: [kotlin.collections.EmptyList] */
                        /* JADX WARN: Type inference failed for: r18v2, types: [java.util.List] */
                        /* JADX WARN: Type inference failed for: r19v1, types: [java.util.List] */
                        /* JADX WARN: Type inference failed for: r21v10 */
                        /* JADX WARN: Type inference failed for: r21v12 */
                        /* JADX WARN: Type inference failed for: r21v9 */
                        /* JADX WARN: Type inference failed for: r23v1 */
                        /* JADX WARN: Type inference failed for: r23v2 */
                        /* JADX WARN: Type inference failed for: r23v3 */
                        /* JADX WARN: Type inference failed for: r23v4 */
                        /* JADX WARN: Type inference failed for: r2v47, types: [java.util.ArrayList] */
                        /* JADX WARN: Type inference failed for: r2v48 */
                        /* JADX WARN: Type inference failed for: r2v60, types: [kotlin.collections.EmptyList] */
                        /* JADX WARN: Type inference failed for: r57v2 */
                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                        public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j2) {
                            long j3;
                            int i21;
                            Alignment.Vertical vertical2;
                            int i22;
                            Alignment.Horizontal horizontal2;
                            SnapPosition snapPosition3;
                            int i23;
                            boolean z14;
                            int i24;
                            int i25;
                            int i26;
                            int i27;
                            int i28;
                            ArrayDeque arrayDeque;
                            long j4;
                            int i29;
                            int i30;
                            int i31;
                            int i32;
                            int i33;
                            long j5;
                            int i34;
                            int i35;
                            int i36;
                            int i37;
                            boolean z15;
                            int iMax;
                            int i38;
                            int i39;
                            int i40;
                            MeasuredPage measuredPage;
                            int i41;
                            long j6;
                            int i42;
                            int i43;
                            ArrayDeque arrayDeque2;
                            ArrayList arrayList;
                            List list;
                            int size;
                            List arrayList2;
                            int i44;
                            List list2;
                            List list3;
                            int size2;
                            int iMax2;
                            int i45;
                            int i46;
                            int iMin;
                            int i47;
                            int i48;
                            List list4;
                            int i49;
                            int i50;
                            ArrayList arrayList3;
                            int size3;
                            ArrayList arrayList4;
                            int i51;
                            ArrayList arrayList5;
                            Orientation orientation5;
                            int i52;
                            List list5;
                            int size4;
                            int iMax3;
                            int i53;
                            MeasuredPage measuredPage2;
                            int i54;
                            Orientation orientation6;
                            int i55;
                            int iG;
                            int iF;
                            int i56;
                            int i57;
                            int i58;
                            int i59;
                            int i60;
                            ArrayList arrayList6;
                            int i61;
                            ArrayDeque arrayDeque3;
                            ArrayList arrayList7;
                            int size5;
                            int i62;
                            int i63;
                            int f74615i;
                            int i64;
                            int i65;
                            int size6;
                            int i66;
                            ArrayList arrayList8;
                            int size7;
                            int i67;
                            MeasuredPage measuredPage3;
                            ArrayDeque arrayDeque4;
                            ?? arrayList9;
                            int size8;
                            int i68;
                            Object obj2;
                            ?? arrayList10;
                            int size9;
                            int i69;
                            Object obj3;
                            ?? r21;
                            Object obj4;
                            int i70;
                            int i71;
                            int i72;
                            SnapPosition snapPosition4;
                            float f3;
                            int size10;
                            int i73;
                            ArrayList arrayList11;
                            ?? r23;
                            int i74;
                            int i75;
                            float f4;
                            Object obj5;
                            float f5;
                            MeasuredPage measuredPage4;
                            int iD;
                            int i76;
                            int i77;
                            float fC;
                            boolean z16;
                            PagerMeasureResult pagerMeasureResult;
                            LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl2;
                            int f74615i2;
                            int[] iArr;
                            int i78;
                            int[] iArr2;
                            Arrangement.SpacedAligned spacedAligned;
                            int i79;
                            IntProgression intProgressionY;
                            int i80;
                            int i81;
                            int iIntValue;
                            ArrayList arrayList12;
                            int i82;
                            long j7;
                            int i83;
                            ArrayList arrayList13;
                            int i84;
                            int iIntValue2;
                            ArrayList arrayList14;
                            int i85;
                            ArrayDeque arrayDeque5;
                            PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                            SubcomposeMeasureScope subcomposeMeasureScope = lazyLayoutMeasureScopeImpl.f5487c;
                            PagerState pagerState4 = pagerState;
                            pagerState4.C.getF10755b();
                            Orientation orientation7 = Orientation.Vertical;
                            Orientation orientation8 = orientation2;
                            boolean z17 = orientation8 == orientation7;
                            CheckScrollableContainerConstraintsKt.a(j2, z17 ? orientation7 : Orientation.Horizontal);
                            PaddingValues paddingValues2 = paddingValues;
                            int iB0 = z17 ? subcomposeMeasureScope.B0(paddingValues2.b(subcomposeMeasureScope.getF9495b())) : subcomposeMeasureScope.B0(PaddingKt.g(paddingValues2, subcomposeMeasureScope.getF9495b()));
                            int iB1 = z17 ? subcomposeMeasureScope.B0(paddingValues2.c(subcomposeMeasureScope.getF9495b())) : subcomposeMeasureScope.B0(PaddingKt.f(paddingValues2, subcomposeMeasureScope.getF9495b()));
                            int iB2 = subcomposeMeasureScope.B0(paddingValues2.getF5031b());
                            int iB3 = subcomposeMeasureScope.B0(paddingValues2.getD());
                            int i86 = iB2 + iB3;
                            int i87 = iB0 + iB1;
                            int i88 = z17 ? i86 : i87;
                            boolean z18 = z;
                            if (z17 && !z18) {
                                iB3 = iB2;
                            } else if (!z17 || !z18) {
                                iB3 = (z17 || z18) ? iB1 : iB0;
                            }
                            int i89 = i88 - iB3;
                            long jI = ConstraintsKt.i(-i87, -i86, j2);
                            pagerState4.n = lazyLayoutMeasureScopeImpl;
                            int iB4 = subcomposeMeasureScope.B0(f2);
                            int iG2 = z17 ? Constraints.g(j2) - i86 : Constraints.h(j2) - i87;
                            if (!z18 || iG2 > 0) {
                                j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                                IntOffset.Companion companion2 = IntOffset.f11012b;
                            } else {
                                if (!z17) {
                                    iB0 += iG2;
                                }
                                if (z17) {
                                    iB2 += iG2;
                                }
                                j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                                IntOffset.Companion companion3 = IntOffset.f11012b;
                            }
                            int iA = pageSize.a(lazyLayoutMeasureScopeImpl, iG2);
                            int i90 = iA < 0 ? 0 : iA;
                            ConstraintsKt.b(0, orientation8 == orientation7 ? Constraints.h(jI) : i90, 0, orientation8 != orientation7 ? Constraints.g(jI) : i90, 5);
                            PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider = (PagerLazyLayoutItemProvider) kProperty1.mo47invoke();
                            int i91 = iG2 + iB3 + i89;
                            Snapshot.Companion companion4 = Snapshot.f8462e;
                            SnapPosition snapPosition5 = snapPosition2;
                            companion4.getClass();
                            Snapshot snapshotA = Snapshot.Companion.a();
                            Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                            long j8 = j3;
                            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                            try {
                                int iK = pagerState4.k();
                                PagerScrollPosition pagerScrollPosition = pagerState4.d;
                                int i92 = iG2;
                                int iA2 = LazyLayoutItemProviderKt.a(iK, pagerLazyLayoutItemProvider, pagerScrollPosition.f5752e);
                                if (iK != iA2) {
                                    ((SnapshotMutableIntStateImpl) pagerScrollPosition.f5750b).i(iA2);
                                    pagerScrollPosition.f5753f.h(iK);
                                }
                                pagerState4.k();
                                float fL = pagerState4.l();
                                pagerState4.o();
                                int i93 = i90 + iB4;
                                int iC = MathKt.c(snapPosition5.d(i91, i90, iB3, i89) - (fL * i93));
                                Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                List listA = LazyLayoutBeyondBoundsStateKt.a(pagerLazyLayoutItemProvider, pagerState4.A, pagerState4.w);
                                MutableIntObjectMap mutableIntObjectMapA = IntObjectMapKt.a();
                                int iIntValue3 = ((Number) function1.mo47invoke()).intValue();
                                MutableState mutableState = pagerState4.B;
                                if (iB3 < 0) {
                                    InlineClassHelperKt.a("negative beforeContentPadding");
                                }
                                if (i89 < 0) {
                                    InlineClassHelperKt.a("negative afterContentPadding");
                                }
                                int i94 = i93 < 0 ? 0 : i93;
                                PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider;
                                int i95 = i20;
                                if (i95 > iIntValue3) {
                                    i95 = iIntValue3;
                                }
                                Orientation orientation9 = orientation2;
                                MutableState mutableState2 = mutableState;
                                long jB = ConstraintsKt.b(0, orientation9 == orientation7 ? Constraints.h(jI) : i90, 0, orientation9 != orientation7 ? Constraints.g(jI) : i90, 5);
                                SnapPosition snapPosition6 = snapPosition2;
                                CoroutineScope coroutineScope3 = coroutineScope;
                                if (iIntValue3 <= 0) {
                                    pagerMeasureResult = new PagerMeasureResult(EmptyList.f71768b, i90, iB4, i89, orientation9, -iB3, i92 + i89, false, i95, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, false, snapPosition6, subcomposeMeasureScope.V0(ConstraintsKt.g(Constraints.j(jI) + i87, j2), ConstraintsKt.f(Constraints.i(jI) + i86, j2), MapsKt.c(), new yk0(13)), false, null, null, coroutineScope3, lazyLayoutMeasureScopeImpl, jB, ImageMetadata.HOT_PIXEL_MODE, null);
                                    lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                                } else {
                                    Orientation orientation10 = orientation9;
                                    long j9 = jB;
                                    int i96 = i89;
                                    SnapPosition snapPosition7 = snapPosition6;
                                    List list6 = listA;
                                    int i97 = iA2;
                                    while (true) {
                                        if (i97 <= 0) {
                                            i21 = iC;
                                            break;
                                        }
                                        if (i21 <= 0) {
                                            break;
                                        }
                                        i97--;
                                        i21 -= i94;
                                    }
                                    int i98 = i21 * (-1);
                                    if (i97 >= iIntValue3) {
                                        i97 = iIntValue3 - 1;
                                        i98 = 0;
                                    }
                                    ArrayDeque arrayDeque6 = new ArrayDeque();
                                    int i99 = -iB3;
                                    int i100 = i99 + (iB4 < 0 ? iB4 : 0);
                                    int i101 = i98 + i100;
                                    int i102 = i94;
                                    int iMax4 = 0;
                                    while (true) {
                                        vertical2 = vertical;
                                        i22 = i91;
                                        horizontal2 = horizontal;
                                        snapPosition3 = snapPosition7;
                                        i23 = i90;
                                        z14 = z;
                                        if (i101 >= 0 || i97 <= 0) {
                                            break;
                                        }
                                        int i103 = i97 - 1;
                                        MutableState mutableState3 = mutableState2;
                                        int i104 = i101;
                                        long j10 = j9;
                                        long j11 = j8;
                                        PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider3 = pagerLazyLayoutItemProvider2;
                                        MeasuredPage measuredPageA = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i103, j10, pagerLazyLayoutItemProvider3, j11, orientation10, horizontal2, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMapA);
                                        i90 = i23;
                                        arrayDeque6.add(0, measuredPageA);
                                        iMax4 = Math.max(iMax4, measuredPageA.f5708k);
                                        i101 = i104 + i102;
                                        i97 = i103;
                                        pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider3;
                                        j8 = j11;
                                        j9 = j10;
                                        orientation10 = orientation10;
                                        i93 = i93;
                                        iB3 = iB3;
                                        i96 = i96;
                                        i91 = i22;
                                        list6 = list6;
                                        iIntValue3 = iIntValue3;
                                        mutableState2 = mutableState3;
                                        pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                                        mutableIntObjectMapA = mutableIntObjectMapA;
                                        snapPosition7 = snapPosition3;
                                    }
                                    Orientation orientation11 = orientation10;
                                    Alignment.Horizontal horizontal3 = horizontal2;
                                    int i105 = iIntValue3;
                                    int i106 = i96;
                                    int i107 = iB3;
                                    MutableIntObjectMap mutableIntObjectMap = mutableIntObjectMapA;
                                    List list7 = list6;
                                    MutableState mutableState4 = mutableState2;
                                    ArrayDeque arrayDeque7 = arrayDeque6;
                                    PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider4 = pagerLazyLayoutItemProvider2;
                                    int i108 = i95;
                                    long j12 = j9;
                                    int i109 = i93;
                                    long j13 = j8;
                                    int i110 = i101;
                                    int i111 = i100;
                                    if (i110 < i111) {
                                        i110 = i111;
                                    }
                                    int i112 = i110 - i111;
                                    int i113 = iMax4;
                                    int i114 = i92;
                                    int i115 = i114 + i106;
                                    int i116 = i115 < 0 ? 0 : i115;
                                    int i117 = i97;
                                    int i118 = -i112;
                                    long j14 = j12;
                                    int i119 = i117;
                                    int i120 = 0;
                                    boolean z19 = false;
                                    while (i120 < arrayDeque7.d) {
                                        if (i118 >= i116) {
                                            arrayDeque7.h(i120);
                                            z19 = true;
                                        } else {
                                            i119++;
                                            i118 += i102;
                                            i120++;
                                        }
                                    }
                                    int i121 = i118;
                                    int iMax5 = i113;
                                    boolean z20 = z19;
                                    int i122 = i119;
                                    int i123 = i112;
                                    while (true) {
                                        i24 = i105;
                                        if (i122 >= i24) {
                                            i25 = i121;
                                            break;
                                        }
                                        if (i121 >= i116 && i121 > 0 && !arrayDeque7.isEmpty()) {
                                            i25 = i121;
                                            break;
                                        }
                                        int i124 = i111;
                                        Orientation orientation12 = orientation11;
                                        ArrayDeque arrayDeque8 = arrayDeque7;
                                        int i125 = i121;
                                        i105 = i24;
                                        int i126 = i116;
                                        int i127 = iMax5;
                                        int i128 = i122;
                                        long j15 = j14;
                                        MeasuredPage measuredPageA2 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i128, j15, pagerLazyLayoutItemProvider4, j13, orientation12, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap);
                                        int i129 = i105 - 1;
                                        int i130 = i125 + (i128 == i129 ? i23 : i102);
                                        if (i130 > i124 || i128 == i129) {
                                            iMax5 = Math.max(i127, measuredPageA2.f5708k);
                                            arrayDeque5 = arrayDeque8;
                                            arrayDeque5.addLast(measuredPageA2);
                                        } else {
                                            i123 -= i102;
                                            i117 = i128 + 1;
                                            iMax5 = i127;
                                            arrayDeque5 = arrayDeque8;
                                            z20 = true;
                                        }
                                        i122 = i128 + 1;
                                        i121 = i130;
                                        orientation11 = orientation12;
                                        i111 = i124;
                                        i116 = i126;
                                        j14 = j15;
                                        arrayDeque7 = arrayDeque5;
                                    }
                                    if (i25 < i114) {
                                        int i131 = i114 - i25;
                                        int i132 = i25 + i131;
                                        int i133 = i123 - i131;
                                        int i134 = i107;
                                        while (i133 < i134 && i117 > 0) {
                                            i117--;
                                            int i135 = i114;
                                            ArrayDeque arrayDeque9 = arrayDeque7;
                                            MeasuredPage measuredPageA3 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i117, j14, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap);
                                            arrayDeque9.add(0, measuredPageA3);
                                            iMax5 = Math.max(iMax5, measuredPageA3.f5708k);
                                            i133 += i102;
                                            arrayDeque7 = arrayDeque9;
                                            i114 = i135;
                                            i134 = i134;
                                            i122 = i122;
                                        }
                                        i26 = i122;
                                        int i136 = i133;
                                        i28 = i134;
                                        i27 = i114;
                                        arrayDeque = arrayDeque7;
                                        j4 = j14;
                                        if (i136 < 0) {
                                            i29 = i117;
                                            i30 = iMax5;
                                            i31 = i132 + i136;
                                            i32 = 0;
                                        } else {
                                            i29 = i117;
                                            i32 = i136;
                                            i30 = iMax5;
                                            i31 = i132;
                                        }
                                    } else {
                                        i26 = i122;
                                        i27 = i114;
                                        i28 = i107;
                                        j4 = j14;
                                        i29 = i117;
                                        i30 = iMax5;
                                        i31 = i25;
                                        i32 = i123;
                                    }
                                    if (i32 < 0) {
                                        arrayDeque = arrayDeque7;
                                        InlineClassHelperKt.a("invalid currentFirstPageScrollOffset");
                                    }
                                    arrayDeque = arrayDeque7;
                                    int i137 = -i32;
                                    MeasuredPage measuredPage5 = (MeasuredPage) arrayDeque.first();
                                    if (i28 > 0 || iB4 < 0) {
                                        i33 = i137;
                                        int f74615i3 = arrayDeque.getF74615i();
                                        j5 = j4;
                                        int i138 = 0;
                                        while (true) {
                                            if (i138 >= f74615i3 || i32 == 0) {
                                                i34 = i31;
                                                i35 = i102;
                                            } else {
                                                i35 = i102;
                                                if (i35 <= i32) {
                                                    i34 = i31;
                                                    i36 = 1;
                                                    if (i138 == arrayDeque.getF74615i() - 1) {
                                                        break;
                                                    }
                                                    i32 -= i35;
                                                    i138++;
                                                    measuredPage5 = (MeasuredPage) arrayDeque.get(i138);
                                                    i102 = i35;
                                                    i31 = i34;
                                                } else {
                                                    i34 = i31;
                                                }
                                            }
                                        }
                                        i37 = i32;
                                        z15 = false;
                                        iMax = Math.max(0, i29 - i108);
                                        i38 = i29 - 1;
                                        if (iMax <= i38) {
                                            arrayList14 = null;
                                            while (true) {
                                                if (arrayList14 == null) {
                                                    arrayList14 = new ArrayList();
                                                }
                                                i85 = i38;
                                                i39 = i35;
                                                i40 = i37;
                                                measuredPage = measuredPage5;
                                                i41 = i33;
                                                i43 = iMax;
                                                arrayDeque2 = arrayDeque;
                                                arrayList = arrayList14;
                                                j6 = j5;
                                                i42 = i108;
                                                arrayList.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i85, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap));
                                                if (i85 != i43) {
                                                    break;
                                                }
                                                i38 = i85 - 1;
                                                iMax = i43;
                                                i108 = i42;
                                                z15 = false;
                                                i37 = i40;
                                                j5 = j6;
                                                arrayList14 = arrayList;
                                                arrayDeque = arrayDeque2;
                                                i35 = i39;
                                                i33 = i41;
                                                measuredPage5 = measuredPage;
                                            }
                                        } else {
                                            i39 = i35;
                                            i40 = i37;
                                            measuredPage = measuredPage5;
                                            i41 = i33;
                                            j6 = j5;
                                            i42 = i108;
                                            i43 = iMax;
                                            arrayDeque2 = arrayDeque;
                                            arrayList = null;
                                        }
                                        list = list7;
                                        List list8 = list;
                                        size = list8.size();
                                        arrayList2 = arrayList;
                                        i44 = 0;
                                        while (i44 < size) {
                                            List list9 = list;
                                            iIntValue2 = ((Number) list.get(i44)).intValue();
                                            if (iIntValue2 >= i43) {
                                                if (arrayList2 == null) {
                                                    arrayList2 = new ArrayList();
                                                }
                                                List list10 = arrayList2;
                                                list10.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue2, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap));
                                                arrayList2 = list10;
                                            }
                                            i44++;
                                            list = list9;
                                            size = size;
                                            i43 = i43;
                                        }
                                        list2 = list;
                                        if (arrayList2 == null) {
                                            arrayList2 = EmptyList.f71768b;
                                        }
                                        list3 = arrayList2;
                                        iMax2 = i30;
                                        i45 = 0;
                                        for (size2 = list3.size(); i45 < size2; size2 = size2) {
                                            iMax2 = Math.max(iMax2, ((MeasuredPage) list3.get(i45)).f5708k);
                                            i45++;
                                        }
                                        int i139 = ((MeasuredPage) arrayDeque2.last()).f5700a;
                                        i46 = i42;
                                        iMin = Math.min(i46, (i24 - i139) - 1) + i139;
                                        i47 = i139 + 1;
                                        if (i47 <= iMin) {
                                            arrayList13 = null;
                                            while (true) {
                                                if (arrayList13 == null) {
                                                    arrayList13 = new ArrayList();
                                                }
                                                i49 = i46;
                                                arrayList3 = arrayList13;
                                                i48 = iMax2;
                                                list4 = list2;
                                                i50 = iMin;
                                                i84 = i47;
                                                arrayList3.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i84, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap));
                                                if (i84 != i50) {
                                                    break;
                                                }
                                                i47 = i84 + 1;
                                                iMin = i50;
                                                iMax2 = i48;
                                                list2 = list4;
                                                arrayList13 = arrayList3;
                                                i46 = i49;
                                            }
                                        } else {
                                            i48 = iMax2;
                                            list4 = list2;
                                            i49 = i46;
                                            i50 = iMin;
                                            arrayList3 = null;
                                        }
                                        size3 = list8.size();
                                        arrayList4 = arrayList3;
                                        i51 = 0;
                                        while (i51 < size3) {
                                            list4 = list4;
                                            i81 = size3;
                                            iIntValue = ((Number) list4.get(i51)).intValue();
                                            arrayList12 = arrayList4;
                                            if (i50 + 1 <= iIntValue) {
                                                i83 = i24;
                                                if (iIntValue < i83) {
                                                    if (arrayList12 == null) {
                                                        arrayList12 = new ArrayList();
                                                    }
                                                    ArrayList arrayList15 = arrayList12;
                                                    i81 = i81;
                                                    i51 = i51;
                                                    i82 = i83;
                                                    MeasuredPage measuredPageA4 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap);
                                                    j7 = j6;
                                                    arrayList15.add(measuredPageA4);
                                                    arrayList4 = arrayList15;
                                                } else {
                                                    i82 = i83;
                                                }
                                                i24 = i82;
                                                i50 = i50;
                                                size3 = i81;
                                                i51++;
                                                horizontal3 = horizontal3;
                                                j6 = j7;
                                                orientation11 = orientation11;
                                            } else {
                                                i82 = i24;
                                            }
                                            j7 = j6;
                                            arrayList4 = arrayList12;
                                            i24 = i82;
                                            i50 = i50;
                                            size3 = i81;
                                            i51++;
                                            horizontal3 = horizontal3;
                                            j6 = j7;
                                            orientation11 = orientation11;
                                        }
                                        arrayList5 = arrayList4;
                                        orientation5 = orientation11;
                                        i52 = i24;
                                        long j16 = j6;
                                        if (arrayList5 == null) {
                                            list5 = EmptyList.f71768b;
                                        } else {
                                            list5 = arrayList5;
                                        }
                                        size4 = list5.size();
                                        iMax3 = i48;
                                        for (i53 = 0; i53 < size4; i53++) {
                                            iMax3 = Math.max(iMax3, ((MeasuredPage) list5.get(i53)).f5708k);
                                        }
                                        measuredPage2 = measuredPage;
                                        if (!Intrinsics.c(measuredPage2, arrayDeque2.first()) && list3.isEmpty() && list5.isEmpty()) {
                                            i54 = i36;
                                        } else {
                                            i54 = 0;
                                        }
                                        orientation6 = Orientation.Vertical;
                                        if (orientation5 == orientation6) {
                                            i55 = iMax3;
                                        } else {
                                            i55 = i34;
                                        }
                                        iG = ConstraintsKt.g(i55, jI);
                                        if (orientation5 == orientation6) {
                                            iMax3 = i34;
                                        }
                                        iF = ConstraintsKt.f(iMax3, jI);
                                        i56 = iF;
                                        if (orientation5 != orientation6) {
                                            iF = iG;
                                        }
                                        i57 = i27;
                                        i58 = i34;
                                        if (i58 < Math.min(iF, i57)) {
                                            i59 = i36;
                                        } else {
                                            i59 = 0;
                                        }
                                        if (i59 != 0 || i41 == 0) {
                                            i60 = i41;
                                        } else {
                                            StringBuilder sb = new StringBuilder("non-zero pagesScrollOffset=");
                                            i60 = i41;
                                            sb.append(i60);
                                            InlineClassHelperKt.c(sb.toString());
                                        }
                                        i61 = i60;
                                        arrayList6 = new ArrayList(list5.size() + list3.size() + arrayDeque2.getF74615i());
                                        if (i59 != 0) {
                                            if (list3.isEmpty() || !list5.isEmpty()) {
                                                InlineClassHelperKt.a("No extra pages");
                                            }
                                            f74615i2 = arrayDeque2.getF74615i();
                                            iArr = new int[f74615i2];
                                            arrayList7 = arrayList6;
                                            for (i78 = 0; i78 < f74615i2; i78++) {
                                                iArr[i78] = i23;
                                            }
                                            iArr2 = new int[f74615i2];
                                            spacedAligned = new Arrangement.SpacedAligned(subcomposeMeasureScope.k1(iB4), false, null, null);
                                            if (orientation5 == Orientation.Vertical) {
                                                spacedAligned.b(lazyLayoutMeasureScopeImpl, iF, iArr, iArr2);
                                                i79 = f74615i2;
                                            } else {
                                                i79 = f74615i2;
                                                spacedAligned.c(lazyLayoutMeasureScopeImpl, iF, iArr, LayoutDirection.Ltr, iArr2);
                                            }
                                            intProgressionY = ArraysKt.y(iArr2);
                                            if (z14) {
                                                IntProgression.Companion companion5 = IntProgression.INSTANCE;
                                                int i140 = intProgressionY.f71952c;
                                                int i141 = intProgressionY.f71951b;
                                                int i142 = -intProgressionY.d;
                                                companion5.getClass();
                                                intProgressionY = new IntProgression(i140, i141, i142);
                                            }
                                            int i143 = intProgressionY.f71951b;
                                            int i144 = intProgressionY.f71952c;
                                            i80 = intProgressionY.d;
                                            if ((i80 <= 0 && i143 <= i144) || (i80 < 0 && i144 <= i143)) {
                                                while (true) {
                                                    int i145 = iArr2[i143];
                                                    int i146 = iF;
                                                    arrayDeque3 = arrayDeque2;
                                                    MeasuredPage measuredPage6 = (MeasuredPage) arrayDeque3.get(!z14 ? i143 : (i79 - i143) - 1);
                                                    if (z14) {
                                                        i145 = (i146 - i145) - measuredPage6.f5701b;
                                                    }
                                                    measuredPage6.b(i145, iG, i56);
                                                    arrayList7.add(measuredPage6);
                                                    if (i143 == i144) {
                                                        break;
                                                    }
                                                    i143 += i80;
                                                    arrayDeque2 = arrayDeque3;
                                                    iF = i146;
                                                    i80 = i80;
                                                }
                                            }
                                        } else {
                                            arrayDeque3 = arrayDeque2;
                                            i57 = i57;
                                            subcomposeMeasureScope = subcomposeMeasureScope;
                                            i56 = i56;
                                            arrayList7 = arrayList6;
                                            size5 = list3.size();
                                            i62 = i61;
                                            for (i63 = 0; i63 < size5; i63++) {
                                                MeasuredPage measuredPage7 = (MeasuredPage) list3.get(i63);
                                                i62 -= i109;
                                                measuredPage7.b(i62, iG, i56);
                                                arrayList7.add(measuredPage7);
                                            }
                                            f74615i = arrayDeque3.getF74615i();
                                            i64 = i61;
                                            for (i65 = 0; i65 < f74615i; i65++) {
                                                MeasuredPage measuredPage8 = (MeasuredPage) arrayDeque3.get(i65);
                                                measuredPage8.b(i64, iG, i56);
                                                arrayList7.add(measuredPage8);
                                                i64 += i109;
                                            }
                                            size6 = list5.size();
                                            for (i66 = 0; i66 < size6; i66++) {
                                                MeasuredPage measuredPage9 = (MeasuredPage) list5.get(i66);
                                                measuredPage9.b(i64, iG, i56);
                                                arrayList7.add(measuredPage9);
                                                i64 += i109;
                                            }
                                        }
                                        if (i54 != 0) {
                                            arrayList8 = arrayList7;
                                        } else {
                                            arrayList8 = new ArrayList(arrayList7.size());
                                            size7 = arrayList7.size();
                                            i67 = 0;
                                            while (i67 < size7) {
                                                Object obj6 = arrayList7.get(i67);
                                                measuredPage3 = (MeasuredPage) obj6;
                                                int i147 = size7;
                                                ArrayDeque arrayDeque10 = arrayDeque3;
                                                if (measuredPage3.f5700a < ((MeasuredPage) arrayDeque3.first()).f5700a && measuredPage3.f5700a <= ((MeasuredPage) arrayDeque10.last()).f5700a) {
                                                    arrayList8.add(obj6);
                                                }
                                                i67++;
                                                size7 = i147;
                                                arrayDeque3 = arrayDeque10;
                                            }
                                        }
                                        arrayDeque4 = arrayDeque3;
                                        if (list3.isEmpty()) {
                                            arrayList9 = EmptyList.f71768b;
                                        } else {
                                            arrayList9 = new ArrayList(arrayList7.size());
                                            size8 = arrayList7.size();
                                            for (i68 = 0; i68 < size8; i68++) {
                                                obj2 = arrayList7.get(i68);
                                                if (((MeasuredPage) obj2).f5700a < ((MeasuredPage) arrayDeque4.first()).f5700a) {
                                                    arrayList9.add(obj2);
                                                }
                                            }
                                        }
                                        if (list5.isEmpty()) {
                                            arrayList10 = EmptyList.f71768b;
                                        } else {
                                            arrayList10 = new ArrayList(arrayList7.size());
                                            size9 = arrayList7.size();
                                            for (i69 = 0; i69 < size9; i69++) {
                                                obj3 = arrayList7.get(i69);
                                                if (((MeasuredPage) obj3).f5700a > ((MeasuredPage) arrayDeque4.last()).f5700a) {
                                                    arrayList10.add(obj3);
                                                }
                                            }
                                        }
                                        if (arrayList8.isEmpty()) {
                                            r21 = arrayList9;
                                            arrayList11 = arrayList8;
                                            r23 = arrayList10;
                                            i74 = i56;
                                            i70 = i28;
                                            i71 = i106;
                                            i72 = i22;
                                            snapPosition4 = snapPosition3;
                                            obj4 = null;
                                        } else {
                                            Object obj7 = arrayList8.get(0);
                                            int i148 = ((MeasuredPage) obj7).m;
                                            r21 = arrayList9;
                                            obj4 = obj7;
                                            i70 = i28;
                                            i71 = i106;
                                            i72 = i22;
                                            snapPosition4 = snapPosition3;
                                            f3 = -Math.abs(i148 - snapPosition4.d(i72, i23, i70, i71));
                                            size10 = arrayList8.size() - 1;
                                            i73 = i36;
                                            if (i73 <= size10) {
                                                ?? r57 = arrayList10;
                                                i75 = i73;
                                                f4 = f3;
                                                r23 = r57;
                                                while (true) {
                                                    obj5 = arrayList8.get(i75);
                                                    arrayList11 = arrayList8;
                                                    i74 = i56;
                                                    f5 = -Math.abs(((MeasuredPage) obj5).m - snapPosition4.d(i72, i23, i70, i71));
                                                    if (Float.compare(f4, f5) < 0) {
                                                        f4 = f5;
                                                        obj4 = obj5;
                                                    }
                                                    if (i75 != size10) {
                                                        break;
                                                    }
                                                    i75++;
                                                    arrayList8 = arrayList11;
                                                    i56 = i74;
                                                }
                                            } else {
                                                arrayList11 = arrayList8;
                                                r23 = arrayList10;
                                                i74 = i56;
                                            }
                                        }
                                        measuredPage4 = (MeasuredPage) obj4;
                                        iD = snapPosition4.d(i72, i23, i70, i71);
                                        if (measuredPage4 != null) {
                                            i76 = measuredPage4.m;
                                        } else {
                                            i76 = 0;
                                        }
                                        i77 = i39;
                                        if (i77 == 0) {
                                            fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        } else {
                                            fC = RangesKt.c((iD - i76) / i77, -0.5f, 0.5f);
                                        }
                                        SubcomposeMeasureScope subcomposeMeasureScope2 = subcomposeMeasureScope;
                                        MeasureResult measureResultV0 = subcomposeMeasureScope2.V0(ConstraintsKt.g(iG + i87, j2), ConstraintsKt.f(i74 + i86, j2), MapsKt.c(), new xg0(mutableState4, arrayList7, 11));
                                        if (i26 >= i52 || i58 > i57) {
                                            z16 = true;
                                        } else {
                                            z16 = false;
                                        }
                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                        pagerMeasureResult = new PagerMeasureResult(arrayList11, i23, iB4, i71, orientation5, i99, i115, z14, i49, measuredPage2, measuredPage4, fC, i40, z16, snapPosition4, measureResultV0, z20, r21, r23, coroutineScope3, lazyLayoutMeasureScopeImpl, j16, null);
                                        lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                                    } else {
                                        i33 = i137;
                                        j5 = j4;
                                        i34 = i31;
                                        i35 = i102;
                                    }
                                    i36 = 1;
                                    i37 = i32;
                                    z15 = false;
                                    iMax = Math.max(0, i29 - i108);
                                    i38 = i29 - 1;
                                    if (iMax <= i38) {
                                        arrayList14 = null;
                                        while (true) {
                                            if (arrayList14 == null) {
                                                arrayList14 = new ArrayList();
                                            }
                                            i85 = i38;
                                            i39 = i35;
                                            i40 = i37;
                                            measuredPage = measuredPage5;
                                            i41 = i33;
                                            i43 = iMax;
                                            arrayDeque2 = arrayDeque;
                                            arrayList = arrayList14;
                                            j6 = j5;
                                            i42 = i108;
                                            arrayList.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i85, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap));
                                            if (i85 != i43) {
                                                break;
                                                break;
                                            }
                                            i38 = i85 - 1;
                                            iMax = i43;
                                            i108 = i42;
                                            z15 = false;
                                            i37 = i40;
                                            j5 = j6;
                                            arrayList14 = arrayList;
                                            arrayDeque = arrayDeque2;
                                            i35 = i39;
                                            i33 = i41;
                                            measuredPage5 = measuredPage;
                                        }
                                    } else {
                                        i39 = i35;
                                        i40 = i37;
                                        measuredPage = measuredPage5;
                                        i41 = i33;
                                        j6 = j5;
                                        i42 = i108;
                                        i43 = iMax;
                                        arrayDeque2 = arrayDeque;
                                        arrayList = null;
                                    }
                                    list = list7;
                                    List list11 = list;
                                    size = list11.size();
                                    arrayList2 = arrayList;
                                    i44 = 0;
                                    while (i44 < size) {
                                        List list12 = list;
                                        iIntValue2 = ((Number) list.get(i44)).intValue();
                                        if (iIntValue2 >= i43) {
                                            if (arrayList2 == null) {
                                                arrayList2 = new ArrayList();
                                            }
                                            List list13 = arrayList2;
                                            list13.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue2, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap));
                                            arrayList2 = list13;
                                        }
                                        i44++;
                                        list = list12;
                                        size = size;
                                        i43 = i43;
                                    }
                                    list2 = list;
                                    if (arrayList2 == null) {
                                        arrayList2 = EmptyList.f71768b;
                                    }
                                    list3 = arrayList2;
                                    iMax2 = i30;
                                    i45 = 0;
                                    while (i45 < size2) {
                                        iMax2 = Math.max(iMax2, ((MeasuredPage) list3.get(i45)).f5708k);
                                        i45++;
                                    }
                                    int i1310 = ((MeasuredPage) arrayDeque2.last()).f5700a;
                                    i46 = i42;
                                    iMin = Math.min(i46, (i24 - i1310) - 1) + i1310;
                                    i47 = i1310 + 1;
                                    if (i47 <= iMin) {
                                        arrayList13 = null;
                                        while (true) {
                                            if (arrayList13 == null) {
                                                arrayList13 = new ArrayList();
                                            }
                                            i49 = i46;
                                            arrayList3 = arrayList13;
                                            i48 = iMax2;
                                            list4 = list2;
                                            i50 = iMin;
                                            i84 = i47;
                                            arrayList3.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i84, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap));
                                            if (i84 != i50) {
                                                break;
                                                break;
                                            }
                                            i47 = i84 + 1;
                                            iMin = i50;
                                            iMax2 = i48;
                                            list2 = list4;
                                            arrayList13 = arrayList3;
                                            i46 = i49;
                                        }
                                    } else {
                                        i48 = iMax2;
                                        list4 = list2;
                                        i49 = i46;
                                        i50 = iMin;
                                        arrayList3 = null;
                                    }
                                    size3 = list11.size();
                                    arrayList4 = arrayList3;
                                    i51 = 0;
                                    while (i51 < size3) {
                                        list4 = list4;
                                        i81 = size3;
                                        iIntValue = ((Number) list4.get(i51)).intValue();
                                        arrayList12 = arrayList4;
                                        if (i50 + 1 <= iIntValue) {
                                            i83 = i24;
                                            if (iIntValue < i83) {
                                                if (arrayList12 == null) {
                                                    arrayList12 = new ArrayList();
                                                }
                                                ArrayList arrayList16 = arrayList12;
                                                i81 = i81;
                                                i51 = i51;
                                                i82 = i83;
                                                MeasuredPage measuredPageA5 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i23, mutableIntObjectMap);
                                                j7 = j6;
                                                arrayList16.add(measuredPageA5);
                                                arrayList4 = arrayList16;
                                            } else {
                                                i82 = i83;
                                            }
                                            i24 = i82;
                                            i50 = i50;
                                            size3 = i81;
                                            i51++;
                                            horizontal3 = horizontal3;
                                            j6 = j7;
                                            orientation11 = orientation11;
                                        } else {
                                            i82 = i24;
                                        }
                                        j7 = j6;
                                        arrayList4 = arrayList12;
                                        i24 = i82;
                                        i50 = i50;
                                        size3 = i81;
                                        i51++;
                                        horizontal3 = horizontal3;
                                        j6 = j7;
                                        orientation11 = orientation11;
                                    }
                                    arrayList5 = arrayList4;
                                    orientation5 = orientation11;
                                    i52 = i24;
                                    long j17 = j6;
                                    if (arrayList5 == null) {
                                        list5 = EmptyList.f71768b;
                                    } else {
                                        list5 = arrayList5;
                                    }
                                    size4 = list5.size();
                                    iMax3 = i48;
                                    while (i53 < size4) {
                                        iMax3 = Math.max(iMax3, ((MeasuredPage) list5.get(i53)).f5708k);
                                    }
                                    measuredPage2 = measuredPage;
                                    if (!Intrinsics.c(measuredPage2, arrayDeque2.first())) {
                                        i54 = 0;
                                    } else {
                                        i54 = 0;
                                    }
                                    orientation6 = Orientation.Vertical;
                                    if (orientation5 == orientation6) {
                                        i55 = iMax3;
                                    } else {
                                        i55 = i34;
                                    }
                                    iG = ConstraintsKt.g(i55, jI);
                                    if (orientation5 == orientation6) {
                                        iMax3 = i34;
                                    }
                                    iF = ConstraintsKt.f(iMax3, jI);
                                    i56 = iF;
                                    if (orientation5 != orientation6) {
                                        iF = iG;
                                    }
                                    i57 = i27;
                                    i58 = i34;
                                    if (i58 < Math.min(iF, i57)) {
                                        i59 = i36;
                                    } else {
                                        i59 = 0;
                                    }
                                    if (i59 != 0) {
                                        i60 = i41;
                                    } else {
                                        i60 = i41;
                                    }
                                    i61 = i60;
                                    arrayList6 = new ArrayList(list5.size() + list3.size() + arrayDeque2.getF74615i());
                                    if (i59 != 0) {
                                        if (list3.isEmpty()) {
                                            InlineClassHelperKt.a("No extra pages");
                                        } else {
                                            InlineClassHelperKt.a("No extra pages");
                                        }
                                        f74615i2 = arrayDeque2.getF74615i();
                                        iArr = new int[f74615i2];
                                        arrayList7 = arrayList6;
                                        while (i78 < f74615i2) {
                                            iArr[i78] = i23;
                                        }
                                        iArr2 = new int[f74615i2];
                                        spacedAligned = new Arrangement.SpacedAligned(subcomposeMeasureScope.k1(iB4), false, null, null);
                                        if (orientation5 == Orientation.Vertical) {
                                            spacedAligned.b(lazyLayoutMeasureScopeImpl, iF, iArr, iArr2);
                                            i79 = f74615i2;
                                        } else {
                                            i79 = f74615i2;
                                            spacedAligned.c(lazyLayoutMeasureScopeImpl, iF, iArr, LayoutDirection.Ltr, iArr2);
                                        }
                                        intProgressionY = ArraysKt.y(iArr2);
                                        if (z14) {
                                            IntProgression.Companion companion6 = IntProgression.INSTANCE;
                                            int i149 = intProgressionY.f71952c;
                                            int i1410 = intProgressionY.f71951b;
                                            int i1411 = -intProgressionY.d;
                                            companion6.getClass();
                                            intProgressionY = new IntProgression(i149, i1410, i1411);
                                        }
                                        int i1412 = intProgressionY.f71951b;
                                        int i1413 = intProgressionY.f71952c;
                                        i80 = intProgressionY.d;
                                        arrayDeque3 = i80 <= 0 ? arrayDeque2 : arrayDeque2;
                                    } else {
                                        arrayDeque3 = arrayDeque2;
                                        i57 = i57;
                                        subcomposeMeasureScope = subcomposeMeasureScope;
                                        i56 = i56;
                                        arrayList7 = arrayList6;
                                        size5 = list3.size();
                                        i62 = i61;
                                        while (i63 < size5) {
                                            MeasuredPage measuredPage10 = (MeasuredPage) list3.get(i63);
                                            i62 -= i109;
                                            measuredPage10.b(i62, iG, i56);
                                            arrayList7.add(measuredPage10);
                                        }
                                        f74615i = arrayDeque3.getF74615i();
                                        i64 = i61;
                                        while (i65 < f74615i) {
                                            MeasuredPage measuredPage11 = (MeasuredPage) arrayDeque3.get(i65);
                                            measuredPage11.b(i64, iG, i56);
                                            arrayList7.add(measuredPage11);
                                            i64 += i109;
                                        }
                                        size6 = list5.size();
                                        while (i66 < size6) {
                                            MeasuredPage measuredPage12 = (MeasuredPage) list5.get(i66);
                                            measuredPage12.b(i64, iG, i56);
                                            arrayList7.add(measuredPage12);
                                            i64 += i109;
                                        }
                                    }
                                    if (i54 != 0) {
                                        arrayList8 = arrayList7;
                                    } else {
                                        arrayList8 = new ArrayList(arrayList7.size());
                                        size7 = arrayList7.size();
                                        i67 = 0;
                                        while (i67 < size7) {
                                            Object obj8 = arrayList7.get(i67);
                                            measuredPage3 = (MeasuredPage) obj8;
                                            int i1414 = size7;
                                            ArrayDeque arrayDeque11 = arrayDeque3;
                                            if (measuredPage3.f5700a < ((MeasuredPage) arrayDeque3.first()).f5700a) {
                                            }
                                            i67++;
                                            size7 = i1414;
                                            arrayDeque3 = arrayDeque11;
                                        }
                                    }
                                    arrayDeque4 = arrayDeque3;
                                    if (list3.isEmpty()) {
                                        arrayList9 = EmptyList.f71768b;
                                    } else {
                                        arrayList9 = new ArrayList(arrayList7.size());
                                        size8 = arrayList7.size();
                                        while (i68 < size8) {
                                            obj2 = arrayList7.get(i68);
                                            if (((MeasuredPage) obj2).f5700a < ((MeasuredPage) arrayDeque4.first()).f5700a) {
                                                arrayList9.add(obj2);
                                            }
                                        }
                                    }
                                    if (list5.isEmpty()) {
                                        arrayList10 = EmptyList.f71768b;
                                    } else {
                                        arrayList10 = new ArrayList(arrayList7.size());
                                        size9 = arrayList7.size();
                                        while (i69 < size9) {
                                            obj3 = arrayList7.get(i69);
                                            if (((MeasuredPage) obj3).f5700a > ((MeasuredPage) arrayDeque4.last()).f5700a) {
                                                arrayList10.add(obj3);
                                            }
                                        }
                                    }
                                    if (arrayList8.isEmpty()) {
                                        r21 = arrayList9;
                                        arrayList11 = arrayList8;
                                        r23 = arrayList10;
                                        i74 = i56;
                                        i70 = i28;
                                        i71 = i106;
                                        i72 = i22;
                                        snapPosition4 = snapPosition3;
                                        obj4 = null;
                                    } else {
                                        Object obj9 = arrayList8.get(0);
                                        int i1415 = ((MeasuredPage) obj9).m;
                                        r21 = arrayList9;
                                        obj4 = obj9;
                                        i70 = i28;
                                        i71 = i106;
                                        i72 = i22;
                                        snapPosition4 = snapPosition3;
                                        f3 = -Math.abs(i1415 - snapPosition4.d(i72, i23, i70, i71));
                                        size10 = arrayList8.size() - 1;
                                        i73 = i36;
                                        if (i73 <= size10) {
                                            ?? r58 = arrayList10;
                                            i75 = i73;
                                            f4 = f3;
                                            r23 = r58;
                                            while (true) {
                                                obj5 = arrayList8.get(i75);
                                                arrayList11 = arrayList8;
                                                i74 = i56;
                                                f5 = -Math.abs(((MeasuredPage) obj5).m - snapPosition4.d(i72, i23, i70, i71));
                                                if (Float.compare(f4, f5) < 0) {
                                                    f4 = f5;
                                                    obj4 = obj5;
                                                }
                                                if (i75 != size10) {
                                                    break;
                                                    break;
                                                }
                                                i75++;
                                                arrayList8 = arrayList11;
                                                i56 = i74;
                                            }
                                        } else {
                                            arrayList11 = arrayList8;
                                            r23 = arrayList10;
                                            i74 = i56;
                                        }
                                    }
                                    measuredPage4 = (MeasuredPage) obj4;
                                    iD = snapPosition4.d(i72, i23, i70, i71);
                                    if (measuredPage4 != null) {
                                        i76 = measuredPage4.m;
                                    } else {
                                        i76 = 0;
                                    }
                                    i77 = i39;
                                    if (i77 == 0) {
                                        fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    } else {
                                        fC = RangesKt.c((iD - i76) / i77, -0.5f, 0.5f);
                                    }
                                    SubcomposeMeasureScope subcomposeMeasureScope3 = subcomposeMeasureScope;
                                    MeasureResult measureResultV1 = subcomposeMeasureScope3.V0(ConstraintsKt.g(iG + i87, j2), ConstraintsKt.f(i74 + i86, j2), MapsKt.c(), new xg0(mutableState4, arrayList7, 11));
                                    if (i26 >= i52) {
                                        z16 = true;
                                    } else {
                                        z16 = true;
                                    }
                                    subcomposeMeasureScope = subcomposeMeasureScope3;
                                    pagerMeasureResult = new PagerMeasureResult(arrayList11, i23, iB4, i71, orientation5, i99, i115, z14, i49, measuredPage2, measuredPage4, fC, i40, z16, snapPosition4, measureResultV1, z20, r21, r23, coroutineScope3, lazyLayoutMeasureScopeImpl, j17, null);
                                    lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                                }
                                pagerState4.h(pagerMeasureResult, subcomposeMeasureScope.u0(), false);
                                PagerCacheWindowLogic pagerCacheWindowLogic = pagerState4.v;
                                List list14 = pagerMeasureResult.f5739a;
                                Trace.beginSection("compose:pager:cache_window:keepAroundItems");
                                try {
                                    if (pagerCacheWindowLogic.g() && !list14.isEmpty()) {
                                        int f5700a = ((PageInfo) CollectionsKt.B(list14)).getF5700a();
                                        int f5700a2 = ((PageInfo) CollectionsKt.M(list14)).getF5700a();
                                        for (int i150 = pagerCacheWindowLogic.f5398j; i150 < f5700a; i150++) {
                                            lazyLayoutMeasureScopeImpl2.C1(i150);
                                        }
                                        int i151 = f5700a2 + 1;
                                        int i152 = pagerCacheWindowLogic.f5399k;
                                        if (i151 <= i152) {
                                            while (true) {
                                                lazyLayoutMeasureScopeImpl2.C1(i151);
                                                if (i151 == i152) {
                                                    break;
                                                }
                                                i151++;
                                            }
                                        }
                                    }
                                    return pagerMeasureResult;
                                } finally {
                                    Trace.endSection();
                                }
                            } catch (Throwable th) {
                                Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                throw th;
                            }
                        }
                    };
                    pagerState3 = pagerState;
                    kProperty0 = kProperty1;
                    i9 = i20;
                    gapComposer.q(obj);
                } else {
                    pagerState3 = pagerState;
                    coroutineScope = coroutineScope2;
                    gapComposer = gapComposerH;
                    obj = objX9;
                    kProperty0 = kProperty1;
                    i8 = 4;
                    i9 = i7;
                    orientation2 = orientation;
                }
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = (LazyLayoutMeasurePolicy) obj;
                orientation3 = Orientation.Vertical;
                if (orientation2 == orientation3) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                zB = (((i13 ^ 6) <= i8 && gapComposer.K(pagerState3)) || (i12 & 6) == i8) | gapComposer.b(z4);
                objX = gapComposer.x();
                if (zB) {
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                } else {
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    if (objX == composer$Companion$Empty$1) {
                    }
                    LazyLayoutSemanticState lazyLayoutSemanticState = (LazyLayoutSemanticState) objX;
                    if (i11 == 32) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = z5 | z6;
                    objX2 = gapComposer.x();
                    if (!z7 || objX2 == composer$Companion$Empty$1) {
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        objX2 = new PagerWrapperFlingBehavior(targetedFlingBehavior2, pagerState3);
                        gapComposer.q(objX2);
                    } else {
                        targetedFlingBehavior2 = targetedFlingBehavior;
                    }
                    PagerWrapperFlingBehavior pagerWrapperFlingBehavior = (PagerWrapperFlingBehavior) objX2;
                    bringIntoViewSpec = (BringIntoViewSpec) gapComposer.k(BringIntoViewSpec_androidKt.f4428a);
                    layoutDirection = (LayoutDirection) gapComposer.k(CompositionLocalsKt.n);
                    KProperty0 kProperty2 = kProperty0;
                    gapComposer.L(-853904960);
                    if (i11 == 32) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    zK2 = z8 | gapComposer.K(bringIntoViewSpec) | gapComposer.d(layoutDirection.ordinal());
                    objX3 = gapComposer.x();
                    if (zK2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new PagerBringIntoViewSpec(pagerState3, bringIntoViewSpec, layoutDirection);
                        gapComposer.q(objX3);
                    }
                    PagerBringIntoViewSpec pagerBringIntoViewSpec = (PagerBringIntoViewSpec) objX3;
                    gapComposer.Z(false);
                    if (z2) {
                        DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer, -853484445, "Pager-eLwUrMk");
                        int i21 = i13 | ((i5 >> 21) & 112);
                        z10 = ((((i21 & 14) ^ 6) <= 4 && gapComposer.K(pagerState3)) || (i21 & 6) == 4) | ((((i21 & 112) ^ 48) <= 32 && gapComposer.d(i9)) || (i21 & 48) == 32);
                        objX4 = gapComposer.x();
                        if (z10 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new PagerBeyondBoundsState(pagerState3, i9);
                            gapComposer.q(objX4);
                        }
                        modifierJ = LazyLayoutBeyondBoundsModifierLocalKt.a(dTFunctionNameModifierI, (PagerBeyondBoundsState) objX4, pagerState3.w, z, orientation2);
                        gapComposer.Z(false);
                    } else {
                        modifierJ = n00.j(gapComposer, -853054661, false, r16);
                    }
                    Modifier modifier3 = modifierJ;
                    orientation4 = orientation2;
                    modifierA = LazyLayoutSemanticsKt.a(modifier2.o(pagerState3.z).o(pagerState3.x), kProperty2, lazyLayoutSemanticState, orientation4, z2, z);
                    if (orientation4 == orientation3) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    companion = Modifier.Companion.f8607b;
                    if (z2) {
                        modifierO = modifierA.o(SemanticsModifierKt.b(companion, false, new ag(z9, pagerState3, coroutineScope, 7)));
                    } else {
                        modifierO = modifierA.o(companion);
                    }
                    PagerState pagerState4 = pagerState3;
                    Modifier modifierA2 = ScrollableAreaKt.a(modifierO.o(modifier3), pagerState4, orientation4, overscrollEffect, z2, z, pagerWrapperFlingBehavior, pagerState3.p, pagerBringIntoViewSpec);
                    pagerState2 = pagerState4;
                    nestedScrollConnection2 = nestedScrollConnection;
                    LazyLayoutKt.a(kProperty2, NestedScrollModifierKt.a(modifierA2.o(SuspendingPointerInputFilterKt.a(companion, pagerState2, new PointerInputEventHandler() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1

                        /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1", f = "LazyLayoutPager.kt", l = {296}, m = "invokeSuspend", v = 1)
                        final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public int f5693b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ PointerInputScope f5694c;
                            public final /* synthetic */ PagerState d;

                            /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
                            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                            @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1", f = "LazyLayoutPager.kt", l = {298, 302}, m = "invokeSuspend", v = 1)
                            final class C00141 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public PointerInputChange f5695c;
                                public PointerInputChange d;

                                /* JADX INFO: renamed from: e, reason: collision with root package name */
                                public int f5696e;

                                /* JADX INFO: renamed from: f, reason: collision with root package name */
                                public /* synthetic */ Object f5697f;
                                public final /* synthetic */ PagerState g;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public C00141(PagerState pagerState, Continuation continuation) {
                                    super(2, continuation);
                                    this.g = pagerState;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation create(Object obj, Continuation continuation) {
                                    C00141 c00141 = new C00141(this.g, continuation);
                                    c00141.f5697f = obj;
                                    return c00141;
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    return ((C00141) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                                }

                                /* JADX WARN: Code duplicated, block: B:21:0x007a  */
                                /* JADX WARN: Code duplicated, block: B:24:0x0089 A[LOOP:0: B:20:0x0078->B:24:0x0089, LOOP_END] */
                                /* JADX WARN: Code duplicated, block: B:28:0x008c A[SYNTHETIC] */
                                /* JADX WARN: Code duplicated, block: B:29:0x0086 A[SYNTHETIC] */
                                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0068 -> B:19:0x006c). Please report as a decompilation issue!!! */
                                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                                    jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                                    */
                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final java.lang.Object invokeSuspend(java.lang.Object r13) {
                                    /*
                                        r12 = this;
                                        kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                        int r1 = r12.f5696e
                                        r2 = 0
                                        androidx.compose.foundation.pager.PagerState r3 = r12.g
                                        r4 = 2
                                        r5 = 0
                                        r6 = 1
                                        if (r1 == 0) goto L2a
                                        if (r1 == r6) goto L22
                                        if (r1 != r4) goto L1c
                                        androidx.compose.ui.input.pointer.PointerInputChange r1 = r12.d
                                        androidx.compose.ui.input.pointer.PointerInputChange r2 = r12.f5695c
                                        java.lang.Object r6 = r12.f5697f
                                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r6 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r6
                                        kotlin.ResultKt.b(r13)
                                        goto L6c
                                    L1c:
                                        java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                                        defpackage.md.k(r12)
                                        return r2
                                    L22:
                                        java.lang.Object r1 = r12.f5697f
                                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                        kotlin.ResultKt.b(r13)
                                        goto L3f
                                    L2a:
                                        kotlin.ResultKt.b(r13)
                                        java.lang.Object r13 = r12.f5697f
                                        r1 = r13
                                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                        androidx.compose.ui.input.pointer.PointerEventPass r13 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                        r12.f5697f = r1
                                        r12.f5696e = r6
                                        java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.a(r1, r5, r13, r12)
                                        if (r13 != r0) goto L3f
                                        goto L67
                                    L3f:
                                        androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                                        androidx.compose.ui.geometry.Offset$Companion r6 = androidx.compose.ui.geometry.Offset.f8806b
                                        r6.getClass()
                                        androidx.compose.runtime.MutableState r6 = r3.f5759c
                                        androidx.compose.ui.geometry.Offset r7 = new androidx.compose.ui.geometry.Offset
                                        r8 = 0
                                        r7.<init>(r8)
                                        androidx.compose.runtime.SnapshotMutableStateImpl r6 = (androidx.compose.runtime.SnapshotMutableStateImpl) r6
                                        r6.setValue(r7)
                                        r6 = r1
                                    L55:
                                        if (r2 != 0) goto L98
                                        androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                        r12.f5697f = r6
                                        r12.f5695c = r13
                                        r12.d = r2
                                        r12.f5696e = r4
                                        java.lang.Object r1 = r6.N0(r1, r12)
                                        if (r1 != r0) goto L68
                                    L67:
                                        return r0
                                    L68:
                                        r11 = r2
                                        r2 = r13
                                        r13 = r1
                                        r1 = r11
                                    L6c:
                                        androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
                                        java.util.List r7 = r13.f9305a
                                        r8 = r7
                                        java.util.Collection r8 = (java.util.Collection) r8
                                        int r8 = r8.size()
                                        r9 = r5
                                    L78:
                                        if (r9 >= r8) goto L8c
                                        java.lang.Object r10 = r7.get(r9)
                                        androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
                                        boolean r10 = androidx.compose.ui.input.pointer.PointerEventKt.c(r10)
                                        if (r10 != 0) goto L89
                                        r13 = r2
                                        r2 = r1
                                        goto L55
                                    L89:
                                        int r9 = r9 + 1
                                        goto L78
                                    L8c:
                                        java.util.List r13 = r13.f9305a
                                        java.lang.Object r13 = r13.get(r5)
                                        androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                                        r11 = r2
                                        r2 = r13
                                        r13 = r11
                                        goto L55
                                    L98:
                                        long r0 = r2.f9330c
                                        long r12 = r13.f9330c
                                        long r12 = androidx.compose.ui.geometry.Offset.e(r0, r12)
                                        androidx.compose.runtime.MutableState r0 = r3.f5759c
                                        androidx.compose.ui.geometry.Offset r1 = new androidx.compose.ui.geometry.Offset
                                        r1.<init>(r12)
                                        androidx.compose.runtime.SnapshotMutableStateImpl r0 = (androidx.compose.runtime.SnapshotMutableStateImpl) r0
                                        r0.setValue(r1)
                                        kotlin.Unit r12 = kotlin.Unit.f71739a
                                        return r12
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1.AnonymousClass1.C00141.invokeSuspend(java.lang.Object):java.lang.Object");
                                }
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass1(PointerInputScope pointerInputScope, PagerState pagerState, Continuation continuation) {
                                super(2, continuation);
                                this.f5694c = pointerInputScope;
                                this.d = pagerState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation create(Object obj, Continuation continuation) {
                                return new AnonymousClass1(this.f5694c, this.d, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i2 = this.f5693b;
                                if (i2 == 0) {
                                    ResultKt.b(obj);
                                    C00141 c00141 = new C00141(this.d, null);
                                    this.f5693b = 1;
                                    if (ForEachGestureKt.b(this.f5694c, c00141, this) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                } else {
                                    if (i2 != 1) {
                                        md.k("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                    ResultKt.b(obj);
                                }
                                return Unit.f71739a;
                            }
                        }

                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objD = CoroutineScopeKt.d(new AnonymousClass1(pointerInputScope, pagerState2, null), continuation);
                            return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
                        }
                    })), nestedScrollConnection2, null), pagerState2.u, lazyLayoutMeasurePolicy, gapComposer, 0);
                }
                objX = new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.pager.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int a() {
                        PagerState pagerState5 = pagerState3;
                        return pagerState5.n().getD() + pagerState5.n().e();
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float b() {
                        PagerState pagerState5 = pagerState3;
                        return PagerStateKt.a(pagerState5.n(), pagerState5.o());
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final Object c(int i22, Continuation continuation) {
                        Object objV = PagerState.v(pagerState3, i22, (ContinuationImpl) continuation);
                        return objV == CoroutineSingletons.COROUTINE_SUSPENDED ? objV : Unit.f71739a;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final CollectionInfo d() {
                        boolean z14 = z4;
                        PagerState pagerState5 = pagerState3;
                        return z14 ? new CollectionInfo(pagerState5.o(), 1) : new CollectionInfo(1, pagerState5.o());
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int e() {
                        PagerState pagerState5 = pagerState3;
                        return (int) (pagerState5.n().getF5742e() == Orientation.Vertical ? pagerState5.n().a() & BodyPartID.bodyIdMax : pagerState5.n().a() >> 32);
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float f() {
                        return PagerScrollPositionKt.a(pagerState3);
                    }
                };
                gapComposer.q(objX);
                LazyLayoutSemanticState lazyLayoutSemanticState2 = (LazyLayoutSemanticState) objX;
                if (i11 == 32) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z5 | z6;
                objX2 = gapComposer.x();
                if (z7) {
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    objX2 = new PagerWrapperFlingBehavior(targetedFlingBehavior2, pagerState3);
                    gapComposer.q(objX2);
                } else {
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    objX2 = new PagerWrapperFlingBehavior(targetedFlingBehavior2, pagerState3);
                    gapComposer.q(objX2);
                }
                PagerWrapperFlingBehavior pagerWrapperFlingBehavior2 = (PagerWrapperFlingBehavior) objX2;
                bringIntoViewSpec = (BringIntoViewSpec) gapComposer.k(BringIntoViewSpec_androidKt.f4428a);
                layoutDirection = (LayoutDirection) gapComposer.k(CompositionLocalsKt.n);
                KProperty0 kProperty3 = kProperty0;
                gapComposer.L(-853904960);
                if (i11 == 32) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                zK2 = z8 | gapComposer.K(bringIntoViewSpec) | gapComposer.d(layoutDirection.ordinal());
                objX3 = gapComposer.x();
                if (zK2) {
                    objX3 = new PagerBringIntoViewSpec(pagerState3, bringIntoViewSpec, layoutDirection);
                    gapComposer.q(objX3);
                } else {
                    objX3 = new PagerBringIntoViewSpec(pagerState3, bringIntoViewSpec, layoutDirection);
                    gapComposer.q(objX3);
                }
                PagerBringIntoViewSpec pagerBringIntoViewSpec2 = (PagerBringIntoViewSpec) objX3;
                gapComposer.Z(false);
                if (z2) {
                    DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposer, -853484445, "Pager-eLwUrMk");
                    int i22 = i13 | ((i5 >> 21) & 112);
                    z10 = ((((i22 & 14) ^ 6) <= 4 && gapComposer.K(pagerState3)) || (i22 & 6) == 4) | ((((i22 & 112) ^ 48) <= 32 && gapComposer.d(i9)) || (i22 & 48) == 32);
                    objX4 = gapComposer.x();
                    if (z10) {
                        objX4 = new PagerBeyondBoundsState(pagerState3, i9);
                        gapComposer.q(objX4);
                    } else {
                        objX4 = new PagerBeyondBoundsState(pagerState3, i9);
                        gapComposer.q(objX4);
                    }
                    modifierJ = LazyLayoutBeyondBoundsModifierLocalKt.a(dTFunctionNameModifierI2, (PagerBeyondBoundsState) objX4, pagerState3.w, z, orientation2);
                    gapComposer.Z(false);
                } else {
                    modifierJ = n00.j(gapComposer, -853054661, false, r16);
                }
                Modifier modifier4 = modifierJ;
                orientation4 = orientation2;
                modifierA = LazyLayoutSemanticsKt.a(modifier2.o(pagerState3.z).o(pagerState3.x), kProperty3, lazyLayoutSemanticState2, orientation4, z2, z);
                if (orientation4 == orientation3) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                companion = Modifier.Companion.f8607b;
                if (z2) {
                    modifierO = modifierA.o(SemanticsModifierKt.b(companion, false, new ag(z9, pagerState3, coroutineScope, 7)));
                } else {
                    modifierO = modifierA.o(companion);
                }
                PagerState pagerState5 = pagerState3;
                Modifier modifierA3 = ScrollableAreaKt.a(modifierO.o(modifier4), pagerState5, orientation4, overscrollEffect, z2, z, pagerWrapperFlingBehavior2, pagerState3.p, pagerBringIntoViewSpec2);
                pagerState2 = pagerState5;
                nestedScrollConnection2 = nestedScrollConnection;
                LazyLayoutKt.a(kProperty3, NestedScrollModifierKt.a(modifierA3.o(SuspendingPointerInputFilterKt.a(companion, pagerState2, new PointerInputEventHandler() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1

                    /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1", f = "LazyLayoutPager.kt", l = {296}, m = "invokeSuspend", v = 1)
                    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public int f5693b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ PointerInputScope f5694c;
                        public final /* synthetic */ PagerState d;

                        /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1", f = "LazyLayoutPager.kt", l = {298, 302}, m = "invokeSuspend", v = 1)
                        final class C00141 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public PointerInputChange f5695c;
                            public PointerInputChange d;

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public int f5696e;

                            /* JADX INFO: renamed from: f, reason: collision with root package name */
                            public /* synthetic */ Object f5697f;
                            public final /* synthetic */ PagerState g;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public C00141(PagerState pagerState, Continuation continuation) {
                                super(2, continuation);
                                this.g = pagerState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation create(Object obj, Continuation continuation) {
                                C00141 c00141 = new C00141(this.g, continuation);
                                c00141.f5697f = obj;
                                return c00141;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ((C00141) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                            }

                            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                                jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                                */
                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final java.lang.Object invokeSuspend(java.lang.Object r13) {
                                /*
                                    r12 = this;
                                    kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                    int r1 = r12.f5696e
                                    r2 = 0
                                    androidx.compose.foundation.pager.PagerState r3 = r12.g
                                    r4 = 2
                                    r5 = 0
                                    r6 = 1
                                    if (r1 == 0) goto L2a
                                    if (r1 == r6) goto L22
                                    if (r1 != r4) goto L1c
                                    androidx.compose.ui.input.pointer.PointerInputChange r1 = r12.d
                                    androidx.compose.ui.input.pointer.PointerInputChange r2 = r12.f5695c
                                    java.lang.Object r6 = r12.f5697f
                                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r6 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r6
                                    kotlin.ResultKt.b(r13)
                                    goto L6c
                                L1c:
                                    java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                                    defpackage.md.k(r12)
                                    return r2
                                L22:
                                    java.lang.Object r1 = r12.f5697f
                                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                    kotlin.ResultKt.b(r13)
                                    goto L3f
                                L2a:
                                    kotlin.ResultKt.b(r13)
                                    java.lang.Object r13 = r12.f5697f
                                    r1 = r13
                                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                    androidx.compose.ui.input.pointer.PointerEventPass r13 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                    r12.f5697f = r1
                                    r12.f5696e = r6
                                    java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.a(r1, r5, r13, r12)
                                    if (r13 != r0) goto L3f
                                    goto L67
                                L3f:
                                    androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                                    androidx.compose.ui.geometry.Offset$Companion r6 = androidx.compose.ui.geometry.Offset.f8806b
                                    r6.getClass()
                                    androidx.compose.runtime.MutableState r6 = r3.f5759c
                                    androidx.compose.ui.geometry.Offset r7 = new androidx.compose.ui.geometry.Offset
                                    r8 = 0
                                    r7.<init>(r8)
                                    androidx.compose.runtime.SnapshotMutableStateImpl r6 = (androidx.compose.runtime.SnapshotMutableStateImpl) r6
                                    r6.setValue(r7)
                                    r6 = r1
                                L55:
                                    if (r2 != 0) goto L98
                                    androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                    r12.f5697f = r6
                                    r12.f5695c = r13
                                    r12.d = r2
                                    r12.f5696e = r4
                                    java.lang.Object r1 = r6.N0(r1, r12)
                                    if (r1 != r0) goto L68
                                L67:
                                    return r0
                                L68:
                                    r11 = r2
                                    r2 = r13
                                    r13 = r1
                                    r1 = r11
                                L6c:
                                    androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
                                    java.util.List r7 = r13.f9305a
                                    r8 = r7
                                    java.util.Collection r8 = (java.util.Collection) r8
                                    int r8 = r8.size()
                                    r9 = r5
                                L78:
                                    if (r9 >= r8) goto L8c
                                    java.lang.Object r10 = r7.get(r9)
                                    androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
                                    boolean r10 = androidx.compose.ui.input.pointer.PointerEventKt.c(r10)
                                    if (r10 != 0) goto L89
                                    r13 = r2
                                    r2 = r1
                                    goto L55
                                L89:
                                    int r9 = r9 + 1
                                    goto L78
                                L8c:
                                    java.util.List r13 = r13.f9305a
                                    java.lang.Object r13 = r13.get(r5)
                                    androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                                    r11 = r2
                                    r2 = r13
                                    r13 = r11
                                    goto L55
                                L98:
                                    long r0 = r2.f9330c
                                    long r12 = r13.f9330c
                                    long r12 = androidx.compose.ui.geometry.Offset.e(r0, r12)
                                    androidx.compose.runtime.MutableState r0 = r3.f5759c
                                    androidx.compose.ui.geometry.Offset r1 = new androidx.compose.ui.geometry.Offset
                                    r1.<init>(r12)
                                    androidx.compose.runtime.SnapshotMutableStateImpl r0 = (androidx.compose.runtime.SnapshotMutableStateImpl) r0
                                    r0.setValue(r1)
                                    kotlin.Unit r12 = kotlin.Unit.f71739a
                                    return r12
                                */
                                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1.AnonymousClass1.C00141.invokeSuspend(java.lang.Object):java.lang.Object");
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(PointerInputScope pointerInputScope, PagerState pagerState, Continuation continuation) {
                            super(2, continuation);
                            this.f5694c = pointerInputScope;
                            this.d = pagerState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            return new AnonymousClass1(this.f5694c, this.d, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i2 = this.f5693b;
                            if (i2 == 0) {
                                ResultKt.b(obj);
                                C00141 c00141 = new C00141(this.d, null);
                                this.f5693b = 1;
                                if (ForEachGestureKt.b(this.f5694c, c00141, this) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            } else {
                                if (i2 != 1) {
                                    md.k("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj);
                            }
                            return Unit.f71739a;
                        }
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objD = CoroutineScopeKt.d(new AnonymousClass1(pointerInputScope, pagerState2, null), continuation);
                        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
                    }
                })), nestedScrollConnection2, null), pagerState2.u, lazyLayoutMeasurePolicy, gapComposer, 0);
            } else {
                i7 = i2;
            }
            if ((i19 & ImageMetadata.EDGE_MODE) == 131072) {
                z3 = true;
            } else {
                z3 = false;
            }
            zK = zK4 | z3 | gapComposerH.K(coroutineScope2);
            Object objX10 = gapComposerH.x();
            if (zK) {
                coroutineScope = coroutineScope2;
                gapComposer = gapComposerH;
                i8 = 4;
                final int i23 = i7;
                orientation2 = orientation;
                obj = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.pager.PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1
                    /* JADX WARN: Code duplicated, block: B:176:0x048f  */
                    /* JADX WARN: Code duplicated, block: B:178:0x0492  */
                    /* JADX WARN: Code duplicated, block: B:181:0x04b9 A[LOOP:7: B:177:0x0490->B:181:0x04b9, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:183:0x04d0  */
                    /* JADX WARN: Code duplicated, block: B:186:0x04ed  */
                    /* JADX WARN: Code duplicated, block: B:188:0x04fb A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:189:0x04fd  */
                    /* JADX WARN: Code duplicated, block: B:191:0x051d  */
                    /* JADX WARN: Code duplicated, block: B:195:0x0532  */
                    /* JADX WARN: Code duplicated, block: B:198:0x0541 A[LOOP:9: B:197:0x053f->B:198:0x0541, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:201:0x056f  */
                    /* JADX WARN: Code duplicated, block: B:203:0x0573  */
                    /* JADX WARN: Code duplicated, block: B:206:0x0591 A[LOOP:10: B:202:0x0571->B:206:0x0591, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:207:0x059d  */
                    /* JADX WARN: Code duplicated, block: B:210:0x05ad  */
                    /* JADX WARN: Code duplicated, block: B:212:0x05c1  */
                    /* JADX WARN: Code duplicated, block: B:214:0x05c5 A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:215:0x05c7  */
                    /* JADX WARN: Code duplicated, block: B:217:0x05ed  */
                    /* JADX WARN: Code duplicated, block: B:219:0x05ff  */
                    /* JADX WARN: Code duplicated, block: B:224:0x0622  */
                    /* JADX WARN: Code duplicated, block: B:225:0x0626  */
                    /* JADX WARN: Code duplicated, block: B:228:0x0634 A[LOOP:12: B:227:0x0632->B:228:0x0634, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:236:0x065e  */
                    /* JADX WARN: Code duplicated, block: B:239:0x0663  */
                    /* JADX WARN: Code duplicated, block: B:241:0x0667  */
                    /* JADX WARN: Code duplicated, block: B:244:0x0670  */
                    /* JADX WARN: Code duplicated, block: B:248:0x067c  */
                    /* JADX WARN: Code duplicated, block: B:251:0x0686  */
                    /* JADX WARN: Code duplicated, block: B:252:0x0689  */
                    /* JADX WARN: Code duplicated, block: B:257:0x06a7  */
                    /* JADX WARN: Code duplicated, block: B:260:0x06c6  */
                    /* JADX WARN: Code duplicated, block: B:265:0x06d3  */
                    /* JADX WARN: Code duplicated, block: B:268:0x06e3 A[LOOP:13: B:267:0x06e1->B:268:0x06e3, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:271:0x0703  */
                    /* JADX WARN: Code duplicated, block: B:272:0x0713  */
                    /* JADX WARN: Code duplicated, block: B:276:0x0730  */
                    /* JADX WARN: Code duplicated, block: B:295:0x078d  */
                    /* JADX WARN: Code duplicated, block: B:297:0x07a9 A[LOOP:19: B:296:0x07a7->B:297:0x07a9, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:300:0x07c7 A[LOOP:20: B:299:0x07c5->B:300:0x07c7, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:303:0x07e2 A[LOOP:21: B:302:0x07e0->B:303:0x07e2, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:305:0x07f5  */
                    /* JADX WARN: Code duplicated, block: B:307:0x07f9  */
                    /* JADX WARN: Code duplicated, block: B:309:0x0809  */
                    /* JADX WARN: Code duplicated, block: B:317:0x083e  */
                    /* JADX WARN: Code duplicated, block: B:318:0x0841  */
                    /* JADX WARN: Code duplicated, block: B:320:0x0851  */
                    /* JADX WARN: Code duplicated, block: B:322:0x0864  */
                    /* JADX WARN: Code duplicated, block: B:326:0x0870  */
                    /* JADX WARN: Code duplicated, block: B:327:0x0873  */
                    /* JADX WARN: Code duplicated, block: B:329:0x0883  */
                    /* JADX WARN: Code duplicated, block: B:331:0x0896  */
                    /* JADX WARN: Code duplicated, block: B:335:0x08a2  */
                    /* JADX WARN: Code duplicated, block: B:336:0x08b6  */
                    /* JADX WARN: Code duplicated, block: B:338:0x08e4  */
                    /* JADX WARN: Code duplicated, block: B:341:0x090b  */
                    /* JADX WARN: Code duplicated, block: B:343:0x0910 A[LOOP:15: B:339:0x08eb->B:343:0x0910, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:344:0x0917  */
                    /* JADX WARN: Code duplicated, block: B:347:0x0927  */
                    /* JADX WARN: Code duplicated, block: B:349:0x092c  */
                    /* JADX WARN: Code duplicated, block: B:351:0x0930  */
                    /* JADX WARN: Code duplicated, block: B:352:0x0932  */
                    /* JADX WARN: Code duplicated, block: B:360:0x096c  */
                    /* JADX WARN: Code duplicated, block: B:405:0x04cd A[EDGE_INSN: B:405:0x04cd->B:182:0x04cd BREAK  A[LOOP:7: B:177:0x0490->B:181:0x04b9], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:410:0x05a5 A[EDGE_INSN: B:410:0x05a5->B:208:0x05a5 BREAK  A[LOOP:10: B:202:0x0571->B:206:0x0591], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:418:0x091d A[EDGE_INSN: B:418:0x091d->B:345:0x091d BREAK  A[LOOP:15: B:339:0x08eb->B:343:0x0910], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:421:0x0899 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:424:0x0867 A[SYNTHETIC] */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v44, types: [java.util.ArrayList] */
                    /* JADX WARN: Type inference failed for: r0v45 */
                    /* JADX WARN: Type inference failed for: r0v58, types: [kotlin.collections.EmptyList] */
                    /* JADX WARN: Type inference failed for: r18v2, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r19v1, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r21v10 */
                    /* JADX WARN: Type inference failed for: r21v12 */
                    /* JADX WARN: Type inference failed for: r21v9 */
                    /* JADX WARN: Type inference failed for: r23v1 */
                    /* JADX WARN: Type inference failed for: r23v2 */
                    /* JADX WARN: Type inference failed for: r23v3 */
                    /* JADX WARN: Type inference failed for: r23v4 */
                    /* JADX WARN: Type inference failed for: r2v47, types: [java.util.ArrayList] */
                    /* JADX WARN: Type inference failed for: r2v48 */
                    /* JADX WARN: Type inference failed for: r2v60, types: [kotlin.collections.EmptyList] */
                    /* JADX WARN: Type inference failed for: r57v2 */
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                    public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j2) {
                        long j3;
                        int i24;
                        Alignment.Vertical vertical2;
                        int i25;
                        Alignment.Horizontal horizontal2;
                        SnapPosition snapPosition3;
                        int i26;
                        boolean z14;
                        int i27;
                        int i28;
                        int i29;
                        int i210;
                        int i211;
                        ArrayDeque arrayDeque;
                        long j4;
                        int i212;
                        int i30;
                        int i31;
                        int i32;
                        int i33;
                        long j5;
                        int i34;
                        int i35;
                        int i36;
                        int i37;
                        boolean z15;
                        int iMax;
                        int i38;
                        int i39;
                        int i40;
                        MeasuredPage measuredPage;
                        int i41;
                        long j6;
                        int i42;
                        int i43;
                        ArrayDeque arrayDeque2;
                        ArrayList arrayList;
                        List list;
                        int size;
                        List arrayList2;
                        int i44;
                        List list2;
                        List list3;
                        int size2;
                        int iMax2;
                        int i45;
                        int i46;
                        int iMin;
                        int i47;
                        int i48;
                        List list4;
                        int i49;
                        int i50;
                        ArrayList arrayList3;
                        int size3;
                        ArrayList arrayList4;
                        int i51;
                        ArrayList arrayList5;
                        Orientation orientation5;
                        int i52;
                        List list5;
                        int size4;
                        int iMax3;
                        int i53;
                        MeasuredPage measuredPage2;
                        int i54;
                        Orientation orientation6;
                        int i55;
                        int iG;
                        int iF;
                        int i56;
                        int i57;
                        int i58;
                        int i59;
                        int i60;
                        ArrayList arrayList6;
                        int i61;
                        ArrayDeque arrayDeque3;
                        ArrayList arrayList7;
                        int size5;
                        int i62;
                        int i63;
                        int f74615i;
                        int i64;
                        int i65;
                        int size6;
                        int i66;
                        ArrayList arrayList8;
                        int size7;
                        int i67;
                        MeasuredPage measuredPage3;
                        ArrayDeque arrayDeque4;
                        ?? arrayList9;
                        int size8;
                        int i68;
                        Object obj2;
                        ?? arrayList10;
                        int size9;
                        int i69;
                        Object obj3;
                        ?? r21;
                        Object obj4;
                        int i70;
                        int i71;
                        int i72;
                        SnapPosition snapPosition4;
                        float f3;
                        int size10;
                        int i73;
                        ArrayList arrayList11;
                        ?? r23;
                        int i74;
                        int i75;
                        float f4;
                        Object obj5;
                        float f5;
                        MeasuredPage measuredPage4;
                        int iD;
                        int i76;
                        int i77;
                        float fC;
                        boolean z16;
                        PagerMeasureResult pagerMeasureResult;
                        LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl2;
                        int f74615i2;
                        int[] iArr;
                        int i78;
                        int[] iArr2;
                        Arrangement.SpacedAligned spacedAligned;
                        int i79;
                        IntProgression intProgressionY;
                        int i80;
                        int i81;
                        int iIntValue;
                        ArrayList arrayList12;
                        int i82;
                        long j7;
                        int i83;
                        ArrayList arrayList13;
                        int i84;
                        int iIntValue2;
                        ArrayList arrayList14;
                        int i85;
                        ArrayDeque arrayDeque5;
                        PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                        SubcomposeMeasureScope subcomposeMeasureScope = lazyLayoutMeasureScopeImpl.f5487c;
                        PagerState pagerState6 = pagerState;
                        pagerState6.C.getF10755b();
                        Orientation orientation7 = Orientation.Vertical;
                        Orientation orientation8 = orientation2;
                        boolean z17 = orientation8 == orientation7;
                        CheckScrollableContainerConstraintsKt.a(j2, z17 ? orientation7 : Orientation.Horizontal);
                        PaddingValues paddingValues2 = paddingValues;
                        int iB0 = z17 ? subcomposeMeasureScope.B0(paddingValues2.b(subcomposeMeasureScope.getF9495b())) : subcomposeMeasureScope.B0(PaddingKt.g(paddingValues2, subcomposeMeasureScope.getF9495b()));
                        int iB1 = z17 ? subcomposeMeasureScope.B0(paddingValues2.c(subcomposeMeasureScope.getF9495b())) : subcomposeMeasureScope.B0(PaddingKt.f(paddingValues2, subcomposeMeasureScope.getF9495b()));
                        int iB2 = subcomposeMeasureScope.B0(paddingValues2.getF5031b());
                        int iB3 = subcomposeMeasureScope.B0(paddingValues2.getD());
                        int i86 = iB2 + iB3;
                        int i87 = iB0 + iB1;
                        int i88 = z17 ? i86 : i87;
                        boolean z18 = z;
                        if (z17 && !z18) {
                            iB3 = iB2;
                        } else if (!z17 || !z18) {
                            iB3 = (z17 || z18) ? iB1 : iB0;
                        }
                        int i89 = i88 - iB3;
                        long jI = ConstraintsKt.i(-i87, -i86, j2);
                        pagerState6.n = lazyLayoutMeasureScopeImpl;
                        int iB4 = subcomposeMeasureScope.B0(f2);
                        int iG2 = z17 ? Constraints.g(j2) - i86 : Constraints.h(j2) - i87;
                        if (!z18 || iG2 > 0) {
                            j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                            IntOffset.Companion companion2 = IntOffset.f11012b;
                        } else {
                            if (!z17) {
                                iB0 += iG2;
                            }
                            if (z17) {
                                iB2 += iG2;
                            }
                            j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                            IntOffset.Companion companion3 = IntOffset.f11012b;
                        }
                        int iA = pageSize.a(lazyLayoutMeasureScopeImpl, iG2);
                        int i90 = iA < 0 ? 0 : iA;
                        ConstraintsKt.b(0, orientation8 == orientation7 ? Constraints.h(jI) : i90, 0, orientation8 != orientation7 ? Constraints.g(jI) : i90, 5);
                        PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider = (PagerLazyLayoutItemProvider) kProperty1.mo47invoke();
                        int i91 = iG2 + iB3 + i89;
                        Snapshot.Companion companion4 = Snapshot.f8462e;
                        SnapPosition snapPosition5 = snapPosition2;
                        companion4.getClass();
                        Snapshot snapshotA = Snapshot.Companion.a();
                        Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                        long j8 = j3;
                        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                        try {
                            int iK = pagerState6.k();
                            PagerScrollPosition pagerScrollPosition = pagerState6.d;
                            int i92 = iG2;
                            int iA2 = LazyLayoutItemProviderKt.a(iK, pagerLazyLayoutItemProvider, pagerScrollPosition.f5752e);
                            if (iK != iA2) {
                                ((SnapshotMutableIntStateImpl) pagerScrollPosition.f5750b).i(iA2);
                                pagerScrollPosition.f5753f.h(iK);
                            }
                            pagerState6.k();
                            float fL = pagerState6.l();
                            pagerState6.o();
                            int i93 = i90 + iB4;
                            int iC = MathKt.c(snapPosition5.d(i91, i90, iB3, i89) - (fL * i93));
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            List listA = LazyLayoutBeyondBoundsStateKt.a(pagerLazyLayoutItemProvider, pagerState6.A, pagerState6.w);
                            MutableIntObjectMap mutableIntObjectMapA = IntObjectMapKt.a();
                            int iIntValue3 = ((Number) function1.mo47invoke()).intValue();
                            MutableState mutableState = pagerState6.B;
                            if (iB3 < 0) {
                                InlineClassHelperKt.a("negative beforeContentPadding");
                            }
                            if (i89 < 0) {
                                InlineClassHelperKt.a("negative afterContentPadding");
                            }
                            int i94 = i93 < 0 ? 0 : i93;
                            PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider;
                            int i95 = i23;
                            if (i95 > iIntValue3) {
                                i95 = iIntValue3;
                            }
                            Orientation orientation9 = orientation2;
                            MutableState mutableState2 = mutableState;
                            long jB = ConstraintsKt.b(0, orientation9 == orientation7 ? Constraints.h(jI) : i90, 0, orientation9 != orientation7 ? Constraints.g(jI) : i90, 5);
                            SnapPosition snapPosition6 = snapPosition2;
                            CoroutineScope coroutineScope3 = coroutineScope;
                            if (iIntValue3 <= 0) {
                                pagerMeasureResult = new PagerMeasureResult(EmptyList.f71768b, i90, iB4, i89, orientation9, -iB3, i92 + i89, false, i95, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, false, snapPosition6, subcomposeMeasureScope.V0(ConstraintsKt.g(Constraints.j(jI) + i87, j2), ConstraintsKt.f(Constraints.i(jI) + i86, j2), MapsKt.c(), new yk0(13)), false, null, null, coroutineScope3, lazyLayoutMeasureScopeImpl, jB, ImageMetadata.HOT_PIXEL_MODE, null);
                                lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                            } else {
                                Orientation orientation10 = orientation9;
                                long j9 = jB;
                                int i96 = i89;
                                SnapPosition snapPosition7 = snapPosition6;
                                List list6 = listA;
                                int i97 = iA2;
                                while (true) {
                                    if (i97 <= 0) {
                                        i24 = iC;
                                        break;
                                    }
                                    if (i24 <= 0) {
                                        break;
                                    }
                                    i97--;
                                    i24 -= i94;
                                }
                                int i98 = i24 * (-1);
                                if (i97 >= iIntValue3) {
                                    i97 = iIntValue3 - 1;
                                    i98 = 0;
                                }
                                ArrayDeque arrayDeque6 = new ArrayDeque();
                                int i99 = -iB3;
                                int i100 = i99 + (iB4 < 0 ? iB4 : 0);
                                int i101 = i98 + i100;
                                int i102 = i94;
                                int iMax4 = 0;
                                while (true) {
                                    vertical2 = vertical;
                                    i25 = i91;
                                    horizontal2 = horizontal;
                                    snapPosition3 = snapPosition7;
                                    i26 = i90;
                                    z14 = z;
                                    if (i101 >= 0 || i97 <= 0) {
                                        break;
                                    }
                                    int i103 = i97 - 1;
                                    MutableState mutableState3 = mutableState2;
                                    int i104 = i101;
                                    long j10 = j9;
                                    long j11 = j8;
                                    PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider3 = pagerLazyLayoutItemProvider2;
                                    MeasuredPage measuredPageA = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i103, j10, pagerLazyLayoutItemProvider3, j11, orientation10, horizontal2, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMapA);
                                    i90 = i26;
                                    arrayDeque6.add(0, measuredPageA);
                                    iMax4 = Math.max(iMax4, measuredPageA.f5708k);
                                    i101 = i104 + i102;
                                    i97 = i103;
                                    pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider3;
                                    j8 = j11;
                                    j9 = j10;
                                    orientation10 = orientation10;
                                    i93 = i93;
                                    iB3 = iB3;
                                    i96 = i96;
                                    i91 = i25;
                                    list6 = list6;
                                    iIntValue3 = iIntValue3;
                                    mutableState2 = mutableState3;
                                    pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                                    mutableIntObjectMapA = mutableIntObjectMapA;
                                    snapPosition7 = snapPosition3;
                                }
                                Orientation orientation11 = orientation10;
                                Alignment.Horizontal horizontal3 = horizontal2;
                                int i105 = iIntValue3;
                                int i106 = i96;
                                int i107 = iB3;
                                MutableIntObjectMap mutableIntObjectMap = mutableIntObjectMapA;
                                List list7 = list6;
                                MutableState mutableState4 = mutableState2;
                                ArrayDeque arrayDeque7 = arrayDeque6;
                                PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider4 = pagerLazyLayoutItemProvider2;
                                int i108 = i95;
                                long j12 = j9;
                                int i109 = i93;
                                long j13 = j8;
                                int i110 = i101;
                                int i111 = i100;
                                if (i110 < i111) {
                                    i110 = i111;
                                }
                                int i112 = i110 - i111;
                                int i113 = iMax4;
                                int i114 = i92;
                                int i115 = i114 + i106;
                                int i116 = i115 < 0 ? 0 : i115;
                                int i117 = i97;
                                int i118 = -i112;
                                long j14 = j12;
                                int i119 = i117;
                                int i120 = 0;
                                boolean z19 = false;
                                while (i120 < arrayDeque7.d) {
                                    if (i118 >= i116) {
                                        arrayDeque7.h(i120);
                                        z19 = true;
                                    } else {
                                        i119++;
                                        i118 += i102;
                                        i120++;
                                    }
                                }
                                int i121 = i118;
                                int iMax5 = i113;
                                boolean z20 = z19;
                                int i122 = i119;
                                int i123 = i112;
                                while (true) {
                                    i27 = i105;
                                    if (i122 >= i27) {
                                        i28 = i121;
                                        break;
                                    }
                                    if (i121 >= i116 && i121 > 0 && !arrayDeque7.isEmpty()) {
                                        i28 = i121;
                                        break;
                                    }
                                    int i124 = i111;
                                    Orientation orientation12 = orientation11;
                                    ArrayDeque arrayDeque8 = arrayDeque7;
                                    int i125 = i121;
                                    i105 = i27;
                                    int i126 = i116;
                                    int i127 = iMax5;
                                    int i128 = i122;
                                    long j15 = j14;
                                    MeasuredPage measuredPageA2 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i128, j15, pagerLazyLayoutItemProvider4, j13, orientation12, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap);
                                    int i129 = i105 - 1;
                                    int i130 = i125 + (i128 == i129 ? i26 : i102);
                                    if (i130 > i124 || i128 == i129) {
                                        iMax5 = Math.max(i127, measuredPageA2.f5708k);
                                        arrayDeque5 = arrayDeque8;
                                        arrayDeque5.addLast(measuredPageA2);
                                    } else {
                                        i123 -= i102;
                                        i117 = i128 + 1;
                                        iMax5 = i127;
                                        arrayDeque5 = arrayDeque8;
                                        z20 = true;
                                    }
                                    i122 = i128 + 1;
                                    i121 = i130;
                                    orientation11 = orientation12;
                                    i111 = i124;
                                    i116 = i126;
                                    j14 = j15;
                                    arrayDeque7 = arrayDeque5;
                                }
                                if (i28 < i114) {
                                    int i131 = i114 - i28;
                                    int i132 = i28 + i131;
                                    int i133 = i123 - i131;
                                    int i134 = i107;
                                    while (i133 < i134 && i117 > 0) {
                                        i117--;
                                        int i135 = i114;
                                        ArrayDeque arrayDeque9 = arrayDeque7;
                                        MeasuredPage measuredPageA3 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i117, j14, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap);
                                        arrayDeque9.add(0, measuredPageA3);
                                        iMax5 = Math.max(iMax5, measuredPageA3.f5708k);
                                        i133 += i102;
                                        arrayDeque7 = arrayDeque9;
                                        i114 = i135;
                                        i134 = i134;
                                        i122 = i122;
                                    }
                                    i29 = i122;
                                    int i136 = i133;
                                    i211 = i134;
                                    i210 = i114;
                                    arrayDeque = arrayDeque7;
                                    j4 = j14;
                                    if (i136 < 0) {
                                        i212 = i117;
                                        i30 = iMax5;
                                        i31 = i132 + i136;
                                        i32 = 0;
                                    } else {
                                        i212 = i117;
                                        i32 = i136;
                                        i30 = iMax5;
                                        i31 = i132;
                                    }
                                } else {
                                    i29 = i122;
                                    i210 = i114;
                                    i211 = i107;
                                    j4 = j14;
                                    i212 = i117;
                                    i30 = iMax5;
                                    i31 = i28;
                                    i32 = i123;
                                }
                                if (i32 < 0) {
                                    arrayDeque = arrayDeque7;
                                    InlineClassHelperKt.a("invalid currentFirstPageScrollOffset");
                                }
                                arrayDeque = arrayDeque7;
                                int i137 = -i32;
                                MeasuredPage measuredPage5 = (MeasuredPage) arrayDeque.first();
                                if (i211 > 0 || iB4 < 0) {
                                    i33 = i137;
                                    int f74615i3 = arrayDeque.getF74615i();
                                    j5 = j4;
                                    int i138 = 0;
                                    while (true) {
                                        if (i138 >= f74615i3 || i32 == 0) {
                                            i34 = i31;
                                            i35 = i102;
                                        } else {
                                            i35 = i102;
                                            if (i35 <= i32) {
                                                i34 = i31;
                                                i36 = 1;
                                                if (i138 == arrayDeque.getF74615i() - 1) {
                                                    break;
                                                }
                                                i32 -= i35;
                                                i138++;
                                                measuredPage5 = (MeasuredPage) arrayDeque.get(i138);
                                                i102 = i35;
                                                i31 = i34;
                                            } else {
                                                i34 = i31;
                                            }
                                        }
                                    }
                                    i37 = i32;
                                    z15 = false;
                                    iMax = Math.max(0, i212 - i108);
                                    i38 = i212 - 1;
                                    if (iMax <= i38) {
                                        arrayList14 = null;
                                        while (true) {
                                            if (arrayList14 == null) {
                                                arrayList14 = new ArrayList();
                                            }
                                            i85 = i38;
                                            i39 = i35;
                                            i40 = i37;
                                            measuredPage = measuredPage5;
                                            i41 = i33;
                                            i43 = iMax;
                                            arrayDeque2 = arrayDeque;
                                            arrayList = arrayList14;
                                            j6 = j5;
                                            i42 = i108;
                                            arrayList.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i85, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap));
                                            if (i85 != i43) {
                                                break;
                                            }
                                            i38 = i85 - 1;
                                            iMax = i43;
                                            i108 = i42;
                                            z15 = false;
                                            i37 = i40;
                                            j5 = j6;
                                            arrayList14 = arrayList;
                                            arrayDeque = arrayDeque2;
                                            i35 = i39;
                                            i33 = i41;
                                            measuredPage5 = measuredPage;
                                        }
                                    } else {
                                        i39 = i35;
                                        i40 = i37;
                                        measuredPage = measuredPage5;
                                        i41 = i33;
                                        j6 = j5;
                                        i42 = i108;
                                        i43 = iMax;
                                        arrayDeque2 = arrayDeque;
                                        arrayList = null;
                                    }
                                    list = list7;
                                    List list11 = list;
                                    size = list11.size();
                                    arrayList2 = arrayList;
                                    i44 = 0;
                                    while (i44 < size) {
                                        List list12 = list;
                                        iIntValue2 = ((Number) list.get(i44)).intValue();
                                        if (iIntValue2 >= i43) {
                                            if (arrayList2 == null) {
                                                arrayList2 = new ArrayList();
                                            }
                                            List list13 = arrayList2;
                                            list13.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue2, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap));
                                            arrayList2 = list13;
                                        }
                                        i44++;
                                        list = list12;
                                        size = size;
                                        i43 = i43;
                                    }
                                    list2 = list;
                                    if (arrayList2 == null) {
                                        arrayList2 = EmptyList.f71768b;
                                    }
                                    list3 = arrayList2;
                                    iMax2 = i30;
                                    i45 = 0;
                                    for (size2 = list3.size(); i45 < size2; size2 = size2) {
                                        iMax2 = Math.max(iMax2, ((MeasuredPage) list3.get(i45)).f5708k);
                                        i45++;
                                    }
                                    int i1310 = ((MeasuredPage) arrayDeque2.last()).f5700a;
                                    i46 = i42;
                                    iMin = Math.min(i46, (i27 - i1310) - 1) + i1310;
                                    i47 = i1310 + 1;
                                    if (i47 <= iMin) {
                                        arrayList13 = null;
                                        while (true) {
                                            if (arrayList13 == null) {
                                                arrayList13 = new ArrayList();
                                            }
                                            i49 = i46;
                                            arrayList3 = arrayList13;
                                            i48 = iMax2;
                                            list4 = list2;
                                            i50 = iMin;
                                            i84 = i47;
                                            arrayList3.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i84, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap));
                                            if (i84 != i50) {
                                                break;
                                            }
                                            i47 = i84 + 1;
                                            iMin = i50;
                                            iMax2 = i48;
                                            list2 = list4;
                                            arrayList13 = arrayList3;
                                            i46 = i49;
                                        }
                                    } else {
                                        i48 = iMax2;
                                        list4 = list2;
                                        i49 = i46;
                                        i50 = iMin;
                                        arrayList3 = null;
                                    }
                                    size3 = list11.size();
                                    arrayList4 = arrayList3;
                                    i51 = 0;
                                    while (i51 < size3) {
                                        list4 = list4;
                                        i81 = size3;
                                        iIntValue = ((Number) list4.get(i51)).intValue();
                                        arrayList12 = arrayList4;
                                        if (i50 + 1 <= iIntValue) {
                                            i83 = i27;
                                            if (iIntValue < i83) {
                                                if (arrayList12 == null) {
                                                    arrayList12 = new ArrayList();
                                                }
                                                ArrayList arrayList16 = arrayList12;
                                                i81 = i81;
                                                i51 = i51;
                                                i82 = i83;
                                                MeasuredPage measuredPageA5 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap);
                                                j7 = j6;
                                                arrayList16.add(measuredPageA5);
                                                arrayList4 = arrayList16;
                                            } else {
                                                i82 = i83;
                                            }
                                            i27 = i82;
                                            i50 = i50;
                                            size3 = i81;
                                            i51++;
                                            horizontal3 = horizontal3;
                                            j6 = j7;
                                            orientation11 = orientation11;
                                        } else {
                                            i82 = i27;
                                        }
                                        j7 = j6;
                                        arrayList4 = arrayList12;
                                        i27 = i82;
                                        i50 = i50;
                                        size3 = i81;
                                        i51++;
                                        horizontal3 = horizontal3;
                                        j6 = j7;
                                        orientation11 = orientation11;
                                    }
                                    arrayList5 = arrayList4;
                                    orientation5 = orientation11;
                                    i52 = i27;
                                    long j17 = j6;
                                    if (arrayList5 == null) {
                                        list5 = EmptyList.f71768b;
                                    } else {
                                        list5 = arrayList5;
                                    }
                                    size4 = list5.size();
                                    iMax3 = i48;
                                    for (i53 = 0; i53 < size4; i53++) {
                                        iMax3 = Math.max(iMax3, ((MeasuredPage) list5.get(i53)).f5708k);
                                    }
                                    measuredPage2 = measuredPage;
                                    if (!Intrinsics.c(measuredPage2, arrayDeque2.first()) && list3.isEmpty() && list5.isEmpty()) {
                                        i54 = i36;
                                    } else {
                                        i54 = 0;
                                    }
                                    orientation6 = Orientation.Vertical;
                                    if (orientation5 == orientation6) {
                                        i55 = iMax3;
                                    } else {
                                        i55 = i34;
                                    }
                                    iG = ConstraintsKt.g(i55, jI);
                                    if (orientation5 == orientation6) {
                                        iMax3 = i34;
                                    }
                                    iF = ConstraintsKt.f(iMax3, jI);
                                    i56 = iF;
                                    if (orientation5 != orientation6) {
                                        iF = iG;
                                    }
                                    i57 = i210;
                                    i58 = i34;
                                    if (i58 < Math.min(iF, i57)) {
                                        i59 = i36;
                                    } else {
                                        i59 = 0;
                                    }
                                    if (i59 != 0 || i41 == 0) {
                                        i60 = i41;
                                    } else {
                                        StringBuilder sb = new StringBuilder("non-zero pagesScrollOffset=");
                                        i60 = i41;
                                        sb.append(i60);
                                        InlineClassHelperKt.c(sb.toString());
                                    }
                                    i61 = i60;
                                    arrayList6 = new ArrayList(list5.size() + list3.size() + arrayDeque2.getF74615i());
                                    if (i59 != 0) {
                                        if (list3.isEmpty() || !list5.isEmpty()) {
                                            InlineClassHelperKt.a("No extra pages");
                                        }
                                        f74615i2 = arrayDeque2.getF74615i();
                                        iArr = new int[f74615i2];
                                        arrayList7 = arrayList6;
                                        for (i78 = 0; i78 < f74615i2; i78++) {
                                            iArr[i78] = i26;
                                        }
                                        iArr2 = new int[f74615i2];
                                        spacedAligned = new Arrangement.SpacedAligned(subcomposeMeasureScope.k1(iB4), false, null, null);
                                        if (orientation5 == Orientation.Vertical) {
                                            spacedAligned.b(lazyLayoutMeasureScopeImpl, iF, iArr, iArr2);
                                            i79 = f74615i2;
                                        } else {
                                            i79 = f74615i2;
                                            spacedAligned.c(lazyLayoutMeasureScopeImpl, iF, iArr, LayoutDirection.Ltr, iArr2);
                                        }
                                        intProgressionY = ArraysKt.y(iArr2);
                                        if (z14) {
                                            IntProgression.Companion companion6 = IntProgression.INSTANCE;
                                            int i149 = intProgressionY.f71952c;
                                            int i1410 = intProgressionY.f71951b;
                                            int i1411 = -intProgressionY.d;
                                            companion6.getClass();
                                            intProgressionY = new IntProgression(i149, i1410, i1411);
                                        }
                                        int i1412 = intProgressionY.f71951b;
                                        int i1413 = intProgressionY.f71952c;
                                        i80 = intProgressionY.d;
                                        if ((i80 <= 0 && i1412 <= i1413) || (i80 < 0 && i1413 <= i1412)) {
                                            while (true) {
                                                int i145 = iArr2[i1412];
                                                int i146 = iF;
                                                arrayDeque3 = arrayDeque2;
                                                MeasuredPage measuredPage6 = (MeasuredPage) arrayDeque3.get(!z14 ? i1412 : (i79 - i1412) - 1);
                                                if (z14) {
                                                    i145 = (i146 - i145) - measuredPage6.f5701b;
                                                }
                                                measuredPage6.b(i145, iG, i56);
                                                arrayList7.add(measuredPage6);
                                                if (i1412 == i1413) {
                                                    break;
                                                }
                                                i1412 += i80;
                                                arrayDeque2 = arrayDeque3;
                                                iF = i146;
                                                i80 = i80;
                                            }
                                        }
                                    } else {
                                        arrayDeque3 = arrayDeque2;
                                        i57 = i57;
                                        subcomposeMeasureScope = subcomposeMeasureScope;
                                        i56 = i56;
                                        arrayList7 = arrayList6;
                                        size5 = list3.size();
                                        i62 = i61;
                                        for (i63 = 0; i63 < size5; i63++) {
                                            MeasuredPage measuredPage10 = (MeasuredPage) list3.get(i63);
                                            i62 -= i109;
                                            measuredPage10.b(i62, iG, i56);
                                            arrayList7.add(measuredPage10);
                                        }
                                        f74615i = arrayDeque3.getF74615i();
                                        i64 = i61;
                                        for (i65 = 0; i65 < f74615i; i65++) {
                                            MeasuredPage measuredPage11 = (MeasuredPage) arrayDeque3.get(i65);
                                            measuredPage11.b(i64, iG, i56);
                                            arrayList7.add(measuredPage11);
                                            i64 += i109;
                                        }
                                        size6 = list5.size();
                                        for (i66 = 0; i66 < size6; i66++) {
                                            MeasuredPage measuredPage12 = (MeasuredPage) list5.get(i66);
                                            measuredPage12.b(i64, iG, i56);
                                            arrayList7.add(measuredPage12);
                                            i64 += i109;
                                        }
                                    }
                                    if (i54 != 0) {
                                        arrayList8 = arrayList7;
                                    } else {
                                        arrayList8 = new ArrayList(arrayList7.size());
                                        size7 = arrayList7.size();
                                        i67 = 0;
                                        while (i67 < size7) {
                                            Object obj8 = arrayList7.get(i67);
                                            measuredPage3 = (MeasuredPage) obj8;
                                            int i1414 = size7;
                                            ArrayDeque arrayDeque11 = arrayDeque3;
                                            if (measuredPage3.f5700a < ((MeasuredPage) arrayDeque3.first()).f5700a && measuredPage3.f5700a <= ((MeasuredPage) arrayDeque11.last()).f5700a) {
                                                arrayList8.add(obj8);
                                            }
                                            i67++;
                                            size7 = i1414;
                                            arrayDeque3 = arrayDeque11;
                                        }
                                    }
                                    arrayDeque4 = arrayDeque3;
                                    if (list3.isEmpty()) {
                                        arrayList9 = EmptyList.f71768b;
                                    } else {
                                        arrayList9 = new ArrayList(arrayList7.size());
                                        size8 = arrayList7.size();
                                        for (i68 = 0; i68 < size8; i68++) {
                                            obj2 = arrayList7.get(i68);
                                            if (((MeasuredPage) obj2).f5700a < ((MeasuredPage) arrayDeque4.first()).f5700a) {
                                                arrayList9.add(obj2);
                                            }
                                        }
                                    }
                                    if (list5.isEmpty()) {
                                        arrayList10 = EmptyList.f71768b;
                                    } else {
                                        arrayList10 = new ArrayList(arrayList7.size());
                                        size9 = arrayList7.size();
                                        for (i69 = 0; i69 < size9; i69++) {
                                            obj3 = arrayList7.get(i69);
                                            if (((MeasuredPage) obj3).f5700a > ((MeasuredPage) arrayDeque4.last()).f5700a) {
                                                arrayList10.add(obj3);
                                            }
                                        }
                                    }
                                    if (arrayList8.isEmpty()) {
                                        r21 = arrayList9;
                                        arrayList11 = arrayList8;
                                        r23 = arrayList10;
                                        i74 = i56;
                                        i70 = i211;
                                        i71 = i106;
                                        i72 = i25;
                                        snapPosition4 = snapPosition3;
                                        obj4 = null;
                                    } else {
                                        Object obj9 = arrayList8.get(0);
                                        int i1415 = ((MeasuredPage) obj9).m;
                                        r21 = arrayList9;
                                        obj4 = obj9;
                                        i70 = i211;
                                        i71 = i106;
                                        i72 = i25;
                                        snapPosition4 = snapPosition3;
                                        f3 = -Math.abs(i1415 - snapPosition4.d(i72, i26, i70, i71));
                                        size10 = arrayList8.size() - 1;
                                        i73 = i36;
                                        if (i73 <= size10) {
                                            ?? r58 = arrayList10;
                                            i75 = i73;
                                            f4 = f3;
                                            r23 = r58;
                                            while (true) {
                                                obj5 = arrayList8.get(i75);
                                                arrayList11 = arrayList8;
                                                i74 = i56;
                                                f5 = -Math.abs(((MeasuredPage) obj5).m - snapPosition4.d(i72, i26, i70, i71));
                                                if (Float.compare(f4, f5) < 0) {
                                                    f4 = f5;
                                                    obj4 = obj5;
                                                }
                                                if (i75 != size10) {
                                                    break;
                                                }
                                                i75++;
                                                arrayList8 = arrayList11;
                                                i56 = i74;
                                            }
                                        } else {
                                            arrayList11 = arrayList8;
                                            r23 = arrayList10;
                                            i74 = i56;
                                        }
                                    }
                                    measuredPage4 = (MeasuredPage) obj4;
                                    iD = snapPosition4.d(i72, i26, i70, i71);
                                    if (measuredPage4 != null) {
                                        i76 = measuredPage4.m;
                                    } else {
                                        i76 = 0;
                                    }
                                    i77 = i39;
                                    if (i77 == 0) {
                                        fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    } else {
                                        fC = RangesKt.c((iD - i76) / i77, -0.5f, 0.5f);
                                    }
                                    SubcomposeMeasureScope subcomposeMeasureScope3 = subcomposeMeasureScope;
                                    MeasureResult measureResultV1 = subcomposeMeasureScope3.V0(ConstraintsKt.g(iG + i87, j2), ConstraintsKt.f(i74 + i86, j2), MapsKt.c(), new xg0(mutableState4, arrayList7, 11));
                                    if (i29 >= i52 || i58 > i57) {
                                        z16 = true;
                                    } else {
                                        z16 = false;
                                    }
                                    subcomposeMeasureScope = subcomposeMeasureScope3;
                                    pagerMeasureResult = new PagerMeasureResult(arrayList11, i26, iB4, i71, orientation5, i99, i115, z14, i49, measuredPage2, measuredPage4, fC, i40, z16, snapPosition4, measureResultV1, z20, r21, r23, coroutineScope3, lazyLayoutMeasureScopeImpl, j17, null);
                                    lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                                } else {
                                    i33 = i137;
                                    j5 = j4;
                                    i34 = i31;
                                    i35 = i102;
                                }
                                i36 = 1;
                                i37 = i32;
                                z15 = false;
                                iMax = Math.max(0, i212 - i108);
                                i38 = i212 - 1;
                                if (iMax <= i38) {
                                    arrayList14 = null;
                                    while (true) {
                                        if (arrayList14 == null) {
                                            arrayList14 = new ArrayList();
                                        }
                                        i85 = i38;
                                        i39 = i35;
                                        i40 = i37;
                                        measuredPage = measuredPage5;
                                        i41 = i33;
                                        i43 = iMax;
                                        arrayDeque2 = arrayDeque;
                                        arrayList = arrayList14;
                                        j6 = j5;
                                        i42 = i108;
                                        arrayList.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i85, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap));
                                        if (i85 != i43) {
                                            break;
                                            break;
                                        }
                                        i38 = i85 - 1;
                                        iMax = i43;
                                        i108 = i42;
                                        z15 = false;
                                        i37 = i40;
                                        j5 = j6;
                                        arrayList14 = arrayList;
                                        arrayDeque = arrayDeque2;
                                        i35 = i39;
                                        i33 = i41;
                                        measuredPage5 = measuredPage;
                                    }
                                } else {
                                    i39 = i35;
                                    i40 = i37;
                                    measuredPage = measuredPage5;
                                    i41 = i33;
                                    j6 = j5;
                                    i42 = i108;
                                    i43 = iMax;
                                    arrayDeque2 = arrayDeque;
                                    arrayList = null;
                                }
                                list = list7;
                                List list14 = list;
                                size = list14.size();
                                arrayList2 = arrayList;
                                i44 = 0;
                                while (i44 < size) {
                                    List list15 = list;
                                    iIntValue2 = ((Number) list.get(i44)).intValue();
                                    if (iIntValue2 >= i43) {
                                        if (arrayList2 == null) {
                                            arrayList2 = new ArrayList();
                                        }
                                        List list16 = arrayList2;
                                        list16.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue2, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap));
                                        arrayList2 = list16;
                                    }
                                    i44++;
                                    list = list15;
                                    size = size;
                                    i43 = i43;
                                }
                                list2 = list;
                                if (arrayList2 == null) {
                                    arrayList2 = EmptyList.f71768b;
                                }
                                list3 = arrayList2;
                                iMax2 = i30;
                                i45 = 0;
                                while (i45 < size2) {
                                    iMax2 = Math.max(iMax2, ((MeasuredPage) list3.get(i45)).f5708k);
                                    i45++;
                                }
                                int i1311 = ((MeasuredPage) arrayDeque2.last()).f5700a;
                                i46 = i42;
                                iMin = Math.min(i46, (i27 - i1311) - 1) + i1311;
                                i47 = i1311 + 1;
                                if (i47 <= iMin) {
                                    arrayList13 = null;
                                    while (true) {
                                        if (arrayList13 == null) {
                                            arrayList13 = new ArrayList();
                                        }
                                        i49 = i46;
                                        arrayList3 = arrayList13;
                                        i48 = iMax2;
                                        list4 = list2;
                                        i50 = iMin;
                                        i84 = i47;
                                        arrayList3.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i84, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap));
                                        if (i84 != i50) {
                                            break;
                                            break;
                                        }
                                        i47 = i84 + 1;
                                        iMin = i50;
                                        iMax2 = i48;
                                        list2 = list4;
                                        arrayList13 = arrayList3;
                                        i46 = i49;
                                    }
                                } else {
                                    i48 = iMax2;
                                    list4 = list2;
                                    i49 = i46;
                                    i50 = iMin;
                                    arrayList3 = null;
                                }
                                size3 = list14.size();
                                arrayList4 = arrayList3;
                                i51 = 0;
                                while (i51 < size3) {
                                    list4 = list4;
                                    i81 = size3;
                                    iIntValue = ((Number) list4.get(i51)).intValue();
                                    arrayList12 = arrayList4;
                                    if (i50 + 1 <= iIntValue) {
                                        i83 = i27;
                                        if (iIntValue < i83) {
                                            if (arrayList12 == null) {
                                                arrayList12 = new ArrayList();
                                            }
                                            ArrayList arrayList17 = arrayList12;
                                            i81 = i81;
                                            i51 = i51;
                                            i82 = i83;
                                            MeasuredPage measuredPageA6 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i26, mutableIntObjectMap);
                                            j7 = j6;
                                            arrayList17.add(measuredPageA6);
                                            arrayList4 = arrayList17;
                                        } else {
                                            i82 = i83;
                                        }
                                        i27 = i82;
                                        i50 = i50;
                                        size3 = i81;
                                        i51++;
                                        horizontal3 = horizontal3;
                                        j6 = j7;
                                        orientation11 = orientation11;
                                    } else {
                                        i82 = i27;
                                    }
                                    j7 = j6;
                                    arrayList4 = arrayList12;
                                    i27 = i82;
                                    i50 = i50;
                                    size3 = i81;
                                    i51++;
                                    horizontal3 = horizontal3;
                                    j6 = j7;
                                    orientation11 = orientation11;
                                }
                                arrayList5 = arrayList4;
                                orientation5 = orientation11;
                                i52 = i27;
                                long j18 = j6;
                                if (arrayList5 == null) {
                                    list5 = EmptyList.f71768b;
                                } else {
                                    list5 = arrayList5;
                                }
                                size4 = list5.size();
                                iMax3 = i48;
                                while (i53 < size4) {
                                    iMax3 = Math.max(iMax3, ((MeasuredPage) list5.get(i53)).f5708k);
                                }
                                measuredPage2 = measuredPage;
                                if (!Intrinsics.c(measuredPage2, arrayDeque2.first())) {
                                    i54 = 0;
                                } else {
                                    i54 = 0;
                                }
                                orientation6 = Orientation.Vertical;
                                if (orientation5 == orientation6) {
                                    i55 = iMax3;
                                } else {
                                    i55 = i34;
                                }
                                iG = ConstraintsKt.g(i55, jI);
                                if (orientation5 == orientation6) {
                                    iMax3 = i34;
                                }
                                iF = ConstraintsKt.f(iMax3, jI);
                                i56 = iF;
                                if (orientation5 != orientation6) {
                                    iF = iG;
                                }
                                i57 = i210;
                                i58 = i34;
                                if (i58 < Math.min(iF, i57)) {
                                    i59 = i36;
                                } else {
                                    i59 = 0;
                                }
                                if (i59 != 0) {
                                    i60 = i41;
                                } else {
                                    i60 = i41;
                                }
                                i61 = i60;
                                arrayList6 = new ArrayList(list5.size() + list3.size() + arrayDeque2.getF74615i());
                                if (i59 != 0) {
                                    if (list3.isEmpty()) {
                                        InlineClassHelperKt.a("No extra pages");
                                    } else {
                                        InlineClassHelperKt.a("No extra pages");
                                    }
                                    f74615i2 = arrayDeque2.getF74615i();
                                    iArr = new int[f74615i2];
                                    arrayList7 = arrayList6;
                                    while (i78 < f74615i2) {
                                        iArr[i78] = i26;
                                    }
                                    iArr2 = new int[f74615i2];
                                    spacedAligned = new Arrangement.SpacedAligned(subcomposeMeasureScope.k1(iB4), false, null, null);
                                    if (orientation5 == Orientation.Vertical) {
                                        spacedAligned.b(lazyLayoutMeasureScopeImpl, iF, iArr, iArr2);
                                        i79 = f74615i2;
                                    } else {
                                        i79 = f74615i2;
                                        spacedAligned.c(lazyLayoutMeasureScopeImpl, iF, iArr, LayoutDirection.Ltr, iArr2);
                                    }
                                    intProgressionY = ArraysKt.y(iArr2);
                                    if (z14) {
                                        IntProgression.Companion companion7 = IntProgression.INSTANCE;
                                        int i1416 = intProgressionY.f71952c;
                                        int i1417 = intProgressionY.f71951b;
                                        int i1418 = -intProgressionY.d;
                                        companion7.getClass();
                                        intProgressionY = new IntProgression(i1416, i1417, i1418);
                                    }
                                    int i1419 = intProgressionY.f71951b;
                                    int i14110 = intProgressionY.f71952c;
                                    i80 = intProgressionY.d;
                                    arrayDeque3 = i80 <= 0 ? arrayDeque2 : arrayDeque2;
                                } else {
                                    arrayDeque3 = arrayDeque2;
                                    i57 = i57;
                                    subcomposeMeasureScope = subcomposeMeasureScope;
                                    i56 = i56;
                                    arrayList7 = arrayList6;
                                    size5 = list3.size();
                                    i62 = i61;
                                    while (i63 < size5) {
                                        MeasuredPage measuredPage13 = (MeasuredPage) list3.get(i63);
                                        i62 -= i109;
                                        measuredPage13.b(i62, iG, i56);
                                        arrayList7.add(measuredPage13);
                                    }
                                    f74615i = arrayDeque3.getF74615i();
                                    i64 = i61;
                                    while (i65 < f74615i) {
                                        MeasuredPage measuredPage14 = (MeasuredPage) arrayDeque3.get(i65);
                                        measuredPage14.b(i64, iG, i56);
                                        arrayList7.add(measuredPage14);
                                        i64 += i109;
                                    }
                                    size6 = list5.size();
                                    while (i66 < size6) {
                                        MeasuredPage measuredPage15 = (MeasuredPage) list5.get(i66);
                                        measuredPage15.b(i64, iG, i56);
                                        arrayList7.add(measuredPage15);
                                        i64 += i109;
                                    }
                                }
                                if (i54 != 0) {
                                    arrayList8 = arrayList7;
                                } else {
                                    arrayList8 = new ArrayList(arrayList7.size());
                                    size7 = arrayList7.size();
                                    i67 = 0;
                                    while (i67 < size7) {
                                        Object obj10 = arrayList7.get(i67);
                                        measuredPage3 = (MeasuredPage) obj10;
                                        int i14111 = size7;
                                        ArrayDeque arrayDeque12 = arrayDeque3;
                                        if (measuredPage3.f5700a < ((MeasuredPage) arrayDeque3.first()).f5700a) {
                                        }
                                        i67++;
                                        size7 = i14111;
                                        arrayDeque3 = arrayDeque12;
                                    }
                                }
                                arrayDeque4 = arrayDeque3;
                                if (list3.isEmpty()) {
                                    arrayList9 = EmptyList.f71768b;
                                } else {
                                    arrayList9 = new ArrayList(arrayList7.size());
                                    size8 = arrayList7.size();
                                    while (i68 < size8) {
                                        obj2 = arrayList7.get(i68);
                                        if (((MeasuredPage) obj2).f5700a < ((MeasuredPage) arrayDeque4.first()).f5700a) {
                                            arrayList9.add(obj2);
                                        }
                                    }
                                }
                                if (list5.isEmpty()) {
                                    arrayList10 = EmptyList.f71768b;
                                } else {
                                    arrayList10 = new ArrayList(arrayList7.size());
                                    size9 = arrayList7.size();
                                    while (i69 < size9) {
                                        obj3 = arrayList7.get(i69);
                                        if (((MeasuredPage) obj3).f5700a > ((MeasuredPage) arrayDeque4.last()).f5700a) {
                                            arrayList10.add(obj3);
                                        }
                                    }
                                }
                                if (arrayList8.isEmpty()) {
                                    r21 = arrayList9;
                                    arrayList11 = arrayList8;
                                    r23 = arrayList10;
                                    i74 = i56;
                                    i70 = i211;
                                    i71 = i106;
                                    i72 = i25;
                                    snapPosition4 = snapPosition3;
                                    obj4 = null;
                                } else {
                                    Object obj11 = arrayList8.get(0);
                                    int i14112 = ((MeasuredPage) obj11).m;
                                    r21 = arrayList9;
                                    obj4 = obj11;
                                    i70 = i211;
                                    i71 = i106;
                                    i72 = i25;
                                    snapPosition4 = snapPosition3;
                                    f3 = -Math.abs(i14112 - snapPosition4.d(i72, i26, i70, i71));
                                    size10 = arrayList8.size() - 1;
                                    i73 = i36;
                                    if (i73 <= size10) {
                                        ?? r59 = arrayList10;
                                        i75 = i73;
                                        f4 = f3;
                                        r23 = r59;
                                        while (true) {
                                            obj5 = arrayList8.get(i75);
                                            arrayList11 = arrayList8;
                                            i74 = i56;
                                            f5 = -Math.abs(((MeasuredPage) obj5).m - snapPosition4.d(i72, i26, i70, i71));
                                            if (Float.compare(f4, f5) < 0) {
                                                f4 = f5;
                                                obj4 = obj5;
                                            }
                                            if (i75 != size10) {
                                                break;
                                                break;
                                            }
                                            i75++;
                                            arrayList8 = arrayList11;
                                            i56 = i74;
                                        }
                                    } else {
                                        arrayList11 = arrayList8;
                                        r23 = arrayList10;
                                        i74 = i56;
                                    }
                                }
                                measuredPage4 = (MeasuredPage) obj4;
                                iD = snapPosition4.d(i72, i26, i70, i71);
                                if (measuredPage4 != null) {
                                    i76 = measuredPage4.m;
                                } else {
                                    i76 = 0;
                                }
                                i77 = i39;
                                if (i77 == 0) {
                                    fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                } else {
                                    fC = RangesKt.c((iD - i76) / i77, -0.5f, 0.5f);
                                }
                                SubcomposeMeasureScope subcomposeMeasureScope4 = subcomposeMeasureScope;
                                MeasureResult measureResultV2 = subcomposeMeasureScope4.V0(ConstraintsKt.g(iG + i87, j2), ConstraintsKt.f(i74 + i86, j2), MapsKt.c(), new xg0(mutableState4, arrayList7, 11));
                                if (i29 >= i52) {
                                    z16 = true;
                                } else {
                                    z16 = true;
                                }
                                subcomposeMeasureScope = subcomposeMeasureScope4;
                                pagerMeasureResult = new PagerMeasureResult(arrayList11, i26, iB4, i71, orientation5, i99, i115, z14, i49, measuredPage2, measuredPage4, fC, i40, z16, snapPosition4, measureResultV2, z20, r21, r23, coroutineScope3, lazyLayoutMeasureScopeImpl, j18, null);
                                lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                            }
                            pagerState6.h(pagerMeasureResult, subcomposeMeasureScope.u0(), false);
                            PagerCacheWindowLogic pagerCacheWindowLogic = pagerState6.v;
                            List list17 = pagerMeasureResult.f5739a;
                            Trace.beginSection("compose:pager:cache_window:keepAroundItems");
                            try {
                                if (pagerCacheWindowLogic.g() && !list17.isEmpty()) {
                                    int f5700a = ((PageInfo) CollectionsKt.B(list17)).getF5700a();
                                    int f5700a2 = ((PageInfo) CollectionsKt.M(list17)).getF5700a();
                                    for (int i150 = pagerCacheWindowLogic.f5398j; i150 < f5700a; i150++) {
                                        lazyLayoutMeasureScopeImpl2.C1(i150);
                                    }
                                    int i151 = f5700a2 + 1;
                                    int i152 = pagerCacheWindowLogic.f5399k;
                                    if (i151 <= i152) {
                                        while (true) {
                                            lazyLayoutMeasureScopeImpl2.C1(i151);
                                            if (i151 == i152) {
                                                break;
                                            }
                                            i151++;
                                        }
                                    }
                                }
                                return pagerMeasureResult;
                            } finally {
                                Trace.endSection();
                            }
                        } catch (Throwable th) {
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            throw th;
                        }
                    }
                };
                pagerState3 = pagerState;
                kProperty0 = kProperty1;
                i9 = i23;
                gapComposer.q(obj);
            } else {
                coroutineScope = coroutineScope2;
                gapComposer = gapComposerH;
                i8 = 4;
                final int i24 = i7;
                orientation2 = orientation;
                obj = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.pager.PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1
                    /* JADX WARN: Code duplicated, block: B:176:0x048f  */
                    /* JADX WARN: Code duplicated, block: B:178:0x0492  */
                    /* JADX WARN: Code duplicated, block: B:181:0x04b9 A[LOOP:7: B:177:0x0490->B:181:0x04b9, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:183:0x04d0  */
                    /* JADX WARN: Code duplicated, block: B:186:0x04ed  */
                    /* JADX WARN: Code duplicated, block: B:188:0x04fb A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:189:0x04fd  */
                    /* JADX WARN: Code duplicated, block: B:191:0x051d  */
                    /* JADX WARN: Code duplicated, block: B:195:0x0532  */
                    /* JADX WARN: Code duplicated, block: B:198:0x0541 A[LOOP:9: B:197:0x053f->B:198:0x0541, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:201:0x056f  */
                    /* JADX WARN: Code duplicated, block: B:203:0x0573  */
                    /* JADX WARN: Code duplicated, block: B:206:0x0591 A[LOOP:10: B:202:0x0571->B:206:0x0591, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:207:0x059d  */
                    /* JADX WARN: Code duplicated, block: B:210:0x05ad  */
                    /* JADX WARN: Code duplicated, block: B:212:0x05c1  */
                    /* JADX WARN: Code duplicated, block: B:214:0x05c5 A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:215:0x05c7  */
                    /* JADX WARN: Code duplicated, block: B:217:0x05ed  */
                    /* JADX WARN: Code duplicated, block: B:219:0x05ff  */
                    /* JADX WARN: Code duplicated, block: B:224:0x0622  */
                    /* JADX WARN: Code duplicated, block: B:225:0x0626  */
                    /* JADX WARN: Code duplicated, block: B:228:0x0634 A[LOOP:12: B:227:0x0632->B:228:0x0634, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:236:0x065e  */
                    /* JADX WARN: Code duplicated, block: B:239:0x0663  */
                    /* JADX WARN: Code duplicated, block: B:241:0x0667  */
                    /* JADX WARN: Code duplicated, block: B:244:0x0670  */
                    /* JADX WARN: Code duplicated, block: B:248:0x067c  */
                    /* JADX WARN: Code duplicated, block: B:251:0x0686  */
                    /* JADX WARN: Code duplicated, block: B:252:0x0689  */
                    /* JADX WARN: Code duplicated, block: B:257:0x06a7  */
                    /* JADX WARN: Code duplicated, block: B:260:0x06c6  */
                    /* JADX WARN: Code duplicated, block: B:265:0x06d3  */
                    /* JADX WARN: Code duplicated, block: B:268:0x06e3 A[LOOP:13: B:267:0x06e1->B:268:0x06e3, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:271:0x0703  */
                    /* JADX WARN: Code duplicated, block: B:272:0x0713  */
                    /* JADX WARN: Code duplicated, block: B:276:0x0730  */
                    /* JADX WARN: Code duplicated, block: B:295:0x078d  */
                    /* JADX WARN: Code duplicated, block: B:297:0x07a9 A[LOOP:19: B:296:0x07a7->B:297:0x07a9, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:300:0x07c7 A[LOOP:20: B:299:0x07c5->B:300:0x07c7, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:303:0x07e2 A[LOOP:21: B:302:0x07e0->B:303:0x07e2, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:305:0x07f5  */
                    /* JADX WARN: Code duplicated, block: B:307:0x07f9  */
                    /* JADX WARN: Code duplicated, block: B:309:0x0809  */
                    /* JADX WARN: Code duplicated, block: B:317:0x083e  */
                    /* JADX WARN: Code duplicated, block: B:318:0x0841  */
                    /* JADX WARN: Code duplicated, block: B:320:0x0851  */
                    /* JADX WARN: Code duplicated, block: B:322:0x0864  */
                    /* JADX WARN: Code duplicated, block: B:326:0x0870  */
                    /* JADX WARN: Code duplicated, block: B:327:0x0873  */
                    /* JADX WARN: Code duplicated, block: B:329:0x0883  */
                    /* JADX WARN: Code duplicated, block: B:331:0x0896  */
                    /* JADX WARN: Code duplicated, block: B:335:0x08a2  */
                    /* JADX WARN: Code duplicated, block: B:336:0x08b6  */
                    /* JADX WARN: Code duplicated, block: B:338:0x08e4  */
                    /* JADX WARN: Code duplicated, block: B:341:0x090b  */
                    /* JADX WARN: Code duplicated, block: B:343:0x0910 A[LOOP:15: B:339:0x08eb->B:343:0x0910, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:344:0x0917  */
                    /* JADX WARN: Code duplicated, block: B:347:0x0927  */
                    /* JADX WARN: Code duplicated, block: B:349:0x092c  */
                    /* JADX WARN: Code duplicated, block: B:351:0x0930  */
                    /* JADX WARN: Code duplicated, block: B:352:0x0932  */
                    /* JADX WARN: Code duplicated, block: B:360:0x096c  */
                    /* JADX WARN: Code duplicated, block: B:405:0x04cd A[EDGE_INSN: B:405:0x04cd->B:182:0x04cd BREAK  A[LOOP:7: B:177:0x0490->B:181:0x04b9], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:410:0x05a5 A[EDGE_INSN: B:410:0x05a5->B:208:0x05a5 BREAK  A[LOOP:10: B:202:0x0571->B:206:0x0591], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:418:0x091d A[EDGE_INSN: B:418:0x091d->B:345:0x091d BREAK  A[LOOP:15: B:339:0x08eb->B:343:0x0910], SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:421:0x0899 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:424:0x0867 A[SYNTHETIC] */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v44, types: [java.util.ArrayList] */
                    /* JADX WARN: Type inference failed for: r0v45 */
                    /* JADX WARN: Type inference failed for: r0v58, types: [kotlin.collections.EmptyList] */
                    /* JADX WARN: Type inference failed for: r18v2, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r19v1, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r21v10 */
                    /* JADX WARN: Type inference failed for: r21v12 */
                    /* JADX WARN: Type inference failed for: r21v9 */
                    /* JADX WARN: Type inference failed for: r23v1 */
                    /* JADX WARN: Type inference failed for: r23v2 */
                    /* JADX WARN: Type inference failed for: r23v3 */
                    /* JADX WARN: Type inference failed for: r23v4 */
                    /* JADX WARN: Type inference failed for: r2v47, types: [java.util.ArrayList] */
                    /* JADX WARN: Type inference failed for: r2v48 */
                    /* JADX WARN: Type inference failed for: r2v60, types: [kotlin.collections.EmptyList] */
                    /* JADX WARN: Type inference failed for: r57v2 */
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                    public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j2) {
                        long j3;
                        int i25;
                        Alignment.Vertical vertical2;
                        int i26;
                        Alignment.Horizontal horizontal2;
                        SnapPosition snapPosition3;
                        int i27;
                        boolean z14;
                        int i28;
                        int i29;
                        int i210;
                        int i211;
                        int i212;
                        ArrayDeque arrayDeque;
                        long j4;
                        int i213;
                        int i30;
                        int i31;
                        int i32;
                        int i33;
                        long j5;
                        int i34;
                        int i35;
                        int i36;
                        int i37;
                        boolean z15;
                        int iMax;
                        int i38;
                        int i39;
                        int i40;
                        MeasuredPage measuredPage;
                        int i41;
                        long j6;
                        int i42;
                        int i43;
                        ArrayDeque arrayDeque2;
                        ArrayList arrayList;
                        List list;
                        int size;
                        List arrayList2;
                        int i44;
                        List list2;
                        List list3;
                        int size2;
                        int iMax2;
                        int i45;
                        int i46;
                        int iMin;
                        int i47;
                        int i48;
                        List list4;
                        int i49;
                        int i50;
                        ArrayList arrayList3;
                        int size3;
                        ArrayList arrayList4;
                        int i51;
                        ArrayList arrayList5;
                        Orientation orientation5;
                        int i52;
                        List list5;
                        int size4;
                        int iMax3;
                        int i53;
                        MeasuredPage measuredPage2;
                        int i54;
                        Orientation orientation6;
                        int i55;
                        int iG;
                        int iF;
                        int i56;
                        int i57;
                        int i58;
                        int i59;
                        int i60;
                        ArrayList arrayList6;
                        int i61;
                        ArrayDeque arrayDeque3;
                        ArrayList arrayList7;
                        int size5;
                        int i62;
                        int i63;
                        int f74615i;
                        int i64;
                        int i65;
                        int size6;
                        int i66;
                        ArrayList arrayList8;
                        int size7;
                        int i67;
                        MeasuredPage measuredPage3;
                        ArrayDeque arrayDeque4;
                        ?? arrayList9;
                        int size8;
                        int i68;
                        Object obj2;
                        ?? arrayList10;
                        int size9;
                        int i69;
                        Object obj3;
                        ?? r21;
                        Object obj4;
                        int i70;
                        int i71;
                        int i72;
                        SnapPosition snapPosition4;
                        float f3;
                        int size10;
                        int i73;
                        ArrayList arrayList11;
                        ?? r23;
                        int i74;
                        int i75;
                        float f4;
                        Object obj5;
                        float f5;
                        MeasuredPage measuredPage4;
                        int iD;
                        int i76;
                        int i77;
                        float fC;
                        boolean z16;
                        PagerMeasureResult pagerMeasureResult;
                        LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl2;
                        int f74615i2;
                        int[] iArr;
                        int i78;
                        int[] iArr2;
                        Arrangement.SpacedAligned spacedAligned;
                        int i79;
                        IntProgression intProgressionY;
                        int i80;
                        int i81;
                        int iIntValue;
                        ArrayList arrayList12;
                        int i82;
                        long j7;
                        int i83;
                        ArrayList arrayList13;
                        int i84;
                        int iIntValue2;
                        ArrayList arrayList14;
                        int i85;
                        ArrayDeque arrayDeque5;
                        PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                        SubcomposeMeasureScope subcomposeMeasureScope = lazyLayoutMeasureScopeImpl.f5487c;
                        PagerState pagerState6 = pagerState;
                        pagerState6.C.getF10755b();
                        Orientation orientation7 = Orientation.Vertical;
                        Orientation orientation8 = orientation2;
                        boolean z17 = orientation8 == orientation7;
                        CheckScrollableContainerConstraintsKt.a(j2, z17 ? orientation7 : Orientation.Horizontal);
                        PaddingValues paddingValues2 = paddingValues;
                        int iB0 = z17 ? subcomposeMeasureScope.B0(paddingValues2.b(subcomposeMeasureScope.getF9495b())) : subcomposeMeasureScope.B0(PaddingKt.g(paddingValues2, subcomposeMeasureScope.getF9495b()));
                        int iB1 = z17 ? subcomposeMeasureScope.B0(paddingValues2.c(subcomposeMeasureScope.getF9495b())) : subcomposeMeasureScope.B0(PaddingKt.f(paddingValues2, subcomposeMeasureScope.getF9495b()));
                        int iB2 = subcomposeMeasureScope.B0(paddingValues2.getF5031b());
                        int iB3 = subcomposeMeasureScope.B0(paddingValues2.getD());
                        int i86 = iB2 + iB3;
                        int i87 = iB0 + iB1;
                        int i88 = z17 ? i86 : i87;
                        boolean z18 = z;
                        if (z17 && !z18) {
                            iB3 = iB2;
                        } else if (!z17 || !z18) {
                            iB3 = (z17 || z18) ? iB1 : iB0;
                        }
                        int i89 = i88 - iB3;
                        long jI = ConstraintsKt.i(-i87, -i86, j2);
                        pagerState6.n = lazyLayoutMeasureScopeImpl;
                        int iB4 = subcomposeMeasureScope.B0(f2);
                        int iG2 = z17 ? Constraints.g(j2) - i86 : Constraints.h(j2) - i87;
                        if (!z18 || iG2 > 0) {
                            j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                            IntOffset.Companion companion2 = IntOffset.f11012b;
                        } else {
                            if (!z17) {
                                iB0 += iG2;
                            }
                            if (z17) {
                                iB2 += iG2;
                            }
                            j3 = (((long) iB0) << 32) | (((long) iB2) & BodyPartID.bodyIdMax);
                            IntOffset.Companion companion3 = IntOffset.f11012b;
                        }
                        int iA = pageSize.a(lazyLayoutMeasureScopeImpl, iG2);
                        int i90 = iA < 0 ? 0 : iA;
                        ConstraintsKt.b(0, orientation8 == orientation7 ? Constraints.h(jI) : i90, 0, orientation8 != orientation7 ? Constraints.g(jI) : i90, 5);
                        PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider = (PagerLazyLayoutItemProvider) kProperty1.mo47invoke();
                        int i91 = iG2 + iB3 + i89;
                        Snapshot.Companion companion4 = Snapshot.f8462e;
                        SnapPosition snapPosition5 = snapPosition2;
                        companion4.getClass();
                        Snapshot snapshotA = Snapshot.Companion.a();
                        Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                        long j8 = j3;
                        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                        try {
                            int iK = pagerState6.k();
                            PagerScrollPosition pagerScrollPosition = pagerState6.d;
                            int i92 = iG2;
                            int iA2 = LazyLayoutItemProviderKt.a(iK, pagerLazyLayoutItemProvider, pagerScrollPosition.f5752e);
                            if (iK != iA2) {
                                ((SnapshotMutableIntStateImpl) pagerScrollPosition.f5750b).i(iA2);
                                pagerScrollPosition.f5753f.h(iK);
                            }
                            pagerState6.k();
                            float fL = pagerState6.l();
                            pagerState6.o();
                            int i93 = i90 + iB4;
                            int iC = MathKt.c(snapPosition5.d(i91, i90, iB3, i89) - (fL * i93));
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            List listA = LazyLayoutBeyondBoundsStateKt.a(pagerLazyLayoutItemProvider, pagerState6.A, pagerState6.w);
                            MutableIntObjectMap mutableIntObjectMapA = IntObjectMapKt.a();
                            int iIntValue3 = ((Number) function1.mo47invoke()).intValue();
                            MutableState mutableState = pagerState6.B;
                            if (iB3 < 0) {
                                InlineClassHelperKt.a("negative beforeContentPadding");
                            }
                            if (i89 < 0) {
                                InlineClassHelperKt.a("negative afterContentPadding");
                            }
                            int i94 = i93 < 0 ? 0 : i93;
                            PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider;
                            int i95 = i24;
                            if (i95 > iIntValue3) {
                                i95 = iIntValue3;
                            }
                            Orientation orientation9 = orientation2;
                            MutableState mutableState2 = mutableState;
                            long jB = ConstraintsKt.b(0, orientation9 == orientation7 ? Constraints.h(jI) : i90, 0, orientation9 != orientation7 ? Constraints.g(jI) : i90, 5);
                            SnapPosition snapPosition6 = snapPosition2;
                            CoroutineScope coroutineScope3 = coroutineScope;
                            if (iIntValue3 <= 0) {
                                pagerMeasureResult = new PagerMeasureResult(EmptyList.f71768b, i90, iB4, i89, orientation9, -iB3, i92 + i89, false, i95, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, false, snapPosition6, subcomposeMeasureScope.V0(ConstraintsKt.g(Constraints.j(jI) + i87, j2), ConstraintsKt.f(Constraints.i(jI) + i86, j2), MapsKt.c(), new yk0(13)), false, null, null, coroutineScope3, lazyLayoutMeasureScopeImpl, jB, ImageMetadata.HOT_PIXEL_MODE, null);
                                lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                            } else {
                                Orientation orientation10 = orientation9;
                                long j9 = jB;
                                int i96 = i89;
                                SnapPosition snapPosition7 = snapPosition6;
                                List list6 = listA;
                                int i97 = iA2;
                                while (true) {
                                    if (i97 <= 0) {
                                        i25 = iC;
                                        break;
                                    }
                                    if (i25 <= 0) {
                                        break;
                                    }
                                    i97--;
                                    i25 -= i94;
                                }
                                int i98 = i25 * (-1);
                                if (i97 >= iIntValue3) {
                                    i97 = iIntValue3 - 1;
                                    i98 = 0;
                                }
                                ArrayDeque arrayDeque6 = new ArrayDeque();
                                int i99 = -iB3;
                                int i100 = i99 + (iB4 < 0 ? iB4 : 0);
                                int i101 = i98 + i100;
                                int i102 = i94;
                                int iMax4 = 0;
                                while (true) {
                                    vertical2 = vertical;
                                    i26 = i91;
                                    horizontal2 = horizontal;
                                    snapPosition3 = snapPosition7;
                                    i27 = i90;
                                    z14 = z;
                                    if (i101 >= 0 || i97 <= 0) {
                                        break;
                                    }
                                    int i103 = i97 - 1;
                                    MutableState mutableState3 = mutableState2;
                                    int i104 = i101;
                                    long j10 = j9;
                                    long j11 = j8;
                                    PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider3 = pagerLazyLayoutItemProvider2;
                                    MeasuredPage measuredPageA = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i103, j10, pagerLazyLayoutItemProvider3, j11, orientation10, horizontal2, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMapA);
                                    i90 = i27;
                                    arrayDeque6.add(0, measuredPageA);
                                    iMax4 = Math.max(iMax4, measuredPageA.f5708k);
                                    i101 = i104 + i102;
                                    i97 = i103;
                                    pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider3;
                                    j8 = j11;
                                    j9 = j10;
                                    orientation10 = orientation10;
                                    i93 = i93;
                                    iB3 = iB3;
                                    i96 = i96;
                                    i91 = i26;
                                    list6 = list6;
                                    iIntValue3 = iIntValue3;
                                    mutableState2 = mutableState3;
                                    pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                                    mutableIntObjectMapA = mutableIntObjectMapA;
                                    snapPosition7 = snapPosition3;
                                }
                                Orientation orientation11 = orientation10;
                                Alignment.Horizontal horizontal3 = horizontal2;
                                int i105 = iIntValue3;
                                int i106 = i96;
                                int i107 = iB3;
                                MutableIntObjectMap mutableIntObjectMap = mutableIntObjectMapA;
                                List list7 = list6;
                                MutableState mutableState4 = mutableState2;
                                ArrayDeque arrayDeque7 = arrayDeque6;
                                PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider4 = pagerLazyLayoutItemProvider2;
                                int i108 = i95;
                                long j12 = j9;
                                int i109 = i93;
                                long j13 = j8;
                                int i110 = i101;
                                int i111 = i100;
                                if (i110 < i111) {
                                    i110 = i111;
                                }
                                int i112 = i110 - i111;
                                int i113 = iMax4;
                                int i114 = i92;
                                int i115 = i114 + i106;
                                int i116 = i115 < 0 ? 0 : i115;
                                int i117 = i97;
                                int i118 = -i112;
                                long j14 = j12;
                                int i119 = i117;
                                int i120 = 0;
                                boolean z19 = false;
                                while (i120 < arrayDeque7.d) {
                                    if (i118 >= i116) {
                                        arrayDeque7.h(i120);
                                        z19 = true;
                                    } else {
                                        i119++;
                                        i118 += i102;
                                        i120++;
                                    }
                                }
                                int i121 = i118;
                                int iMax5 = i113;
                                boolean z20 = z19;
                                int i122 = i119;
                                int i123 = i112;
                                while (true) {
                                    i28 = i105;
                                    if (i122 >= i28) {
                                        i29 = i121;
                                        break;
                                    }
                                    if (i121 >= i116 && i121 > 0 && !arrayDeque7.isEmpty()) {
                                        i29 = i121;
                                        break;
                                    }
                                    int i124 = i111;
                                    Orientation orientation12 = orientation11;
                                    ArrayDeque arrayDeque8 = arrayDeque7;
                                    int i125 = i121;
                                    i105 = i28;
                                    int i126 = i116;
                                    int i127 = iMax5;
                                    int i128 = i122;
                                    long j15 = j14;
                                    MeasuredPage measuredPageA2 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i128, j15, pagerLazyLayoutItemProvider4, j13, orientation12, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap);
                                    int i129 = i105 - 1;
                                    int i130 = i125 + (i128 == i129 ? i27 : i102);
                                    if (i130 > i124 || i128 == i129) {
                                        iMax5 = Math.max(i127, measuredPageA2.f5708k);
                                        arrayDeque5 = arrayDeque8;
                                        arrayDeque5.addLast(measuredPageA2);
                                    } else {
                                        i123 -= i102;
                                        i117 = i128 + 1;
                                        iMax5 = i127;
                                        arrayDeque5 = arrayDeque8;
                                        z20 = true;
                                    }
                                    i122 = i128 + 1;
                                    i121 = i130;
                                    orientation11 = orientation12;
                                    i111 = i124;
                                    i116 = i126;
                                    j14 = j15;
                                    arrayDeque7 = arrayDeque5;
                                }
                                if (i29 < i114) {
                                    int i131 = i114 - i29;
                                    int i132 = i29 + i131;
                                    int i133 = i123 - i131;
                                    int i134 = i107;
                                    while (i133 < i134 && i117 > 0) {
                                        i117--;
                                        int i135 = i114;
                                        ArrayDeque arrayDeque9 = arrayDeque7;
                                        MeasuredPage measuredPageA3 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i117, j14, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap);
                                        arrayDeque9.add(0, measuredPageA3);
                                        iMax5 = Math.max(iMax5, measuredPageA3.f5708k);
                                        i133 += i102;
                                        arrayDeque7 = arrayDeque9;
                                        i114 = i135;
                                        i134 = i134;
                                        i122 = i122;
                                    }
                                    i210 = i122;
                                    int i136 = i133;
                                    i212 = i134;
                                    i211 = i114;
                                    arrayDeque = arrayDeque7;
                                    j4 = j14;
                                    if (i136 < 0) {
                                        i213 = i117;
                                        i30 = iMax5;
                                        i31 = i132 + i136;
                                        i32 = 0;
                                    } else {
                                        i213 = i117;
                                        i32 = i136;
                                        i30 = iMax5;
                                        i31 = i132;
                                    }
                                } else {
                                    i210 = i122;
                                    i211 = i114;
                                    i212 = i107;
                                    j4 = j14;
                                    i213 = i117;
                                    i30 = iMax5;
                                    i31 = i29;
                                    i32 = i123;
                                }
                                if (i32 < 0) {
                                    arrayDeque = arrayDeque7;
                                    InlineClassHelperKt.a("invalid currentFirstPageScrollOffset");
                                }
                                arrayDeque = arrayDeque7;
                                int i137 = -i32;
                                MeasuredPage measuredPage5 = (MeasuredPage) arrayDeque.first();
                                if (i212 > 0 || iB4 < 0) {
                                    i33 = i137;
                                    int f74615i3 = arrayDeque.getF74615i();
                                    j5 = j4;
                                    int i138 = 0;
                                    while (true) {
                                        if (i138 >= f74615i3 || i32 == 0) {
                                            i34 = i31;
                                            i35 = i102;
                                        } else {
                                            i35 = i102;
                                            if (i35 <= i32) {
                                                i34 = i31;
                                                i36 = 1;
                                                if (i138 == arrayDeque.getF74615i() - 1) {
                                                    break;
                                                }
                                                i32 -= i35;
                                                i138++;
                                                measuredPage5 = (MeasuredPage) arrayDeque.get(i138);
                                                i102 = i35;
                                                i31 = i34;
                                            } else {
                                                i34 = i31;
                                            }
                                        }
                                    }
                                    i37 = i32;
                                    z15 = false;
                                    iMax = Math.max(0, i213 - i108);
                                    i38 = i213 - 1;
                                    if (iMax <= i38) {
                                        arrayList14 = null;
                                        while (true) {
                                            if (arrayList14 == null) {
                                                arrayList14 = new ArrayList();
                                            }
                                            i85 = i38;
                                            i39 = i35;
                                            i40 = i37;
                                            measuredPage = measuredPage5;
                                            i41 = i33;
                                            i43 = iMax;
                                            arrayDeque2 = arrayDeque;
                                            arrayList = arrayList14;
                                            j6 = j5;
                                            i42 = i108;
                                            arrayList.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i85, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap));
                                            if (i85 != i43) {
                                                break;
                                            }
                                            i38 = i85 - 1;
                                            iMax = i43;
                                            i108 = i42;
                                            z15 = false;
                                            i37 = i40;
                                            j5 = j6;
                                            arrayList14 = arrayList;
                                            arrayDeque = arrayDeque2;
                                            i35 = i39;
                                            i33 = i41;
                                            measuredPage5 = measuredPage;
                                        }
                                    } else {
                                        i39 = i35;
                                        i40 = i37;
                                        measuredPage = measuredPage5;
                                        i41 = i33;
                                        j6 = j5;
                                        i42 = i108;
                                        i43 = iMax;
                                        arrayDeque2 = arrayDeque;
                                        arrayList = null;
                                    }
                                    list = list7;
                                    List list14 = list;
                                    size = list14.size();
                                    arrayList2 = arrayList;
                                    i44 = 0;
                                    while (i44 < size) {
                                        List list15 = list;
                                        iIntValue2 = ((Number) list.get(i44)).intValue();
                                        if (iIntValue2 >= i43) {
                                            if (arrayList2 == null) {
                                                arrayList2 = new ArrayList();
                                            }
                                            List list16 = arrayList2;
                                            list16.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue2, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap));
                                            arrayList2 = list16;
                                        }
                                        i44++;
                                        list = list15;
                                        size = size;
                                        i43 = i43;
                                    }
                                    list2 = list;
                                    if (arrayList2 == null) {
                                        arrayList2 = EmptyList.f71768b;
                                    }
                                    list3 = arrayList2;
                                    iMax2 = i30;
                                    i45 = 0;
                                    for (size2 = list3.size(); i45 < size2; size2 = size2) {
                                        iMax2 = Math.max(iMax2, ((MeasuredPage) list3.get(i45)).f5708k);
                                        i45++;
                                    }
                                    int i1311 = ((MeasuredPage) arrayDeque2.last()).f5700a;
                                    i46 = i42;
                                    iMin = Math.min(i46, (i28 - i1311) - 1) + i1311;
                                    i47 = i1311 + 1;
                                    if (i47 <= iMin) {
                                        arrayList13 = null;
                                        while (true) {
                                            if (arrayList13 == null) {
                                                arrayList13 = new ArrayList();
                                            }
                                            i49 = i46;
                                            arrayList3 = arrayList13;
                                            i48 = iMax2;
                                            list4 = list2;
                                            i50 = iMin;
                                            i84 = i47;
                                            arrayList3.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i84, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap));
                                            if (i84 != i50) {
                                                break;
                                            }
                                            i47 = i84 + 1;
                                            iMin = i50;
                                            iMax2 = i48;
                                            list2 = list4;
                                            arrayList13 = arrayList3;
                                            i46 = i49;
                                        }
                                    } else {
                                        i48 = iMax2;
                                        list4 = list2;
                                        i49 = i46;
                                        i50 = iMin;
                                        arrayList3 = null;
                                    }
                                    size3 = list14.size();
                                    arrayList4 = arrayList3;
                                    i51 = 0;
                                    while (i51 < size3) {
                                        list4 = list4;
                                        i81 = size3;
                                        iIntValue = ((Number) list4.get(i51)).intValue();
                                        arrayList12 = arrayList4;
                                        if (i50 + 1 <= iIntValue) {
                                            i83 = i28;
                                            if (iIntValue < i83) {
                                                if (arrayList12 == null) {
                                                    arrayList12 = new ArrayList();
                                                }
                                                ArrayList arrayList17 = arrayList12;
                                                i81 = i81;
                                                i51 = i51;
                                                i82 = i83;
                                                MeasuredPage measuredPageA6 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap);
                                                j7 = j6;
                                                arrayList17.add(measuredPageA6);
                                                arrayList4 = arrayList17;
                                            } else {
                                                i82 = i83;
                                            }
                                            i28 = i82;
                                            i50 = i50;
                                            size3 = i81;
                                            i51++;
                                            horizontal3 = horizontal3;
                                            j6 = j7;
                                            orientation11 = orientation11;
                                        } else {
                                            i82 = i28;
                                        }
                                        j7 = j6;
                                        arrayList4 = arrayList12;
                                        i28 = i82;
                                        i50 = i50;
                                        size3 = i81;
                                        i51++;
                                        horizontal3 = horizontal3;
                                        j6 = j7;
                                        orientation11 = orientation11;
                                    }
                                    arrayList5 = arrayList4;
                                    orientation5 = orientation11;
                                    i52 = i28;
                                    long j18 = j6;
                                    if (arrayList5 == null) {
                                        list5 = EmptyList.f71768b;
                                    } else {
                                        list5 = arrayList5;
                                    }
                                    size4 = list5.size();
                                    iMax3 = i48;
                                    for (i53 = 0; i53 < size4; i53++) {
                                        iMax3 = Math.max(iMax3, ((MeasuredPage) list5.get(i53)).f5708k);
                                    }
                                    measuredPage2 = measuredPage;
                                    if (!Intrinsics.c(measuredPage2, arrayDeque2.first()) && list3.isEmpty() && list5.isEmpty()) {
                                        i54 = i36;
                                    } else {
                                        i54 = 0;
                                    }
                                    orientation6 = Orientation.Vertical;
                                    if (orientation5 == orientation6) {
                                        i55 = iMax3;
                                    } else {
                                        i55 = i34;
                                    }
                                    iG = ConstraintsKt.g(i55, jI);
                                    if (orientation5 == orientation6) {
                                        iMax3 = i34;
                                    }
                                    iF = ConstraintsKt.f(iMax3, jI);
                                    i56 = iF;
                                    if (orientation5 != orientation6) {
                                        iF = iG;
                                    }
                                    i57 = i211;
                                    i58 = i34;
                                    if (i58 < Math.min(iF, i57)) {
                                        i59 = i36;
                                    } else {
                                        i59 = 0;
                                    }
                                    if (i59 != 0 || i41 == 0) {
                                        i60 = i41;
                                    } else {
                                        StringBuilder sb = new StringBuilder("non-zero pagesScrollOffset=");
                                        i60 = i41;
                                        sb.append(i60);
                                        InlineClassHelperKt.c(sb.toString());
                                    }
                                    i61 = i60;
                                    arrayList6 = new ArrayList(list5.size() + list3.size() + arrayDeque2.getF74615i());
                                    if (i59 != 0) {
                                        if (list3.isEmpty() || !list5.isEmpty()) {
                                            InlineClassHelperKt.a("No extra pages");
                                        }
                                        f74615i2 = arrayDeque2.getF74615i();
                                        iArr = new int[f74615i2];
                                        arrayList7 = arrayList6;
                                        for (i78 = 0; i78 < f74615i2; i78++) {
                                            iArr[i78] = i27;
                                        }
                                        iArr2 = new int[f74615i2];
                                        spacedAligned = new Arrangement.SpacedAligned(subcomposeMeasureScope.k1(iB4), false, null, null);
                                        if (orientation5 == Orientation.Vertical) {
                                            spacedAligned.b(lazyLayoutMeasureScopeImpl, iF, iArr, iArr2);
                                            i79 = f74615i2;
                                        } else {
                                            i79 = f74615i2;
                                            spacedAligned.c(lazyLayoutMeasureScopeImpl, iF, iArr, LayoutDirection.Ltr, iArr2);
                                        }
                                        intProgressionY = ArraysKt.y(iArr2);
                                        if (z14) {
                                            IntProgression.Companion companion7 = IntProgression.INSTANCE;
                                            int i1416 = intProgressionY.f71952c;
                                            int i1417 = intProgressionY.f71951b;
                                            int i1418 = -intProgressionY.d;
                                            companion7.getClass();
                                            intProgressionY = new IntProgression(i1416, i1417, i1418);
                                        }
                                        int i1419 = intProgressionY.f71951b;
                                        int i14110 = intProgressionY.f71952c;
                                        i80 = intProgressionY.d;
                                        if ((i80 <= 0 && i1419 <= i14110) || (i80 < 0 && i14110 <= i1419)) {
                                            while (true) {
                                                int i145 = iArr2[i1419];
                                                int i146 = iF;
                                                arrayDeque3 = arrayDeque2;
                                                MeasuredPage measuredPage6 = (MeasuredPage) arrayDeque3.get(!z14 ? i1419 : (i79 - i1419) - 1);
                                                if (z14) {
                                                    i145 = (i146 - i145) - measuredPage6.f5701b;
                                                }
                                                measuredPage6.b(i145, iG, i56);
                                                arrayList7.add(measuredPage6);
                                                if (i1419 == i14110) {
                                                    break;
                                                }
                                                i1419 += i80;
                                                arrayDeque2 = arrayDeque3;
                                                iF = i146;
                                                i80 = i80;
                                            }
                                        }
                                    } else {
                                        arrayDeque3 = arrayDeque2;
                                        i57 = i57;
                                        subcomposeMeasureScope = subcomposeMeasureScope;
                                        i56 = i56;
                                        arrayList7 = arrayList6;
                                        size5 = list3.size();
                                        i62 = i61;
                                        for (i63 = 0; i63 < size5; i63++) {
                                            MeasuredPage measuredPage13 = (MeasuredPage) list3.get(i63);
                                            i62 -= i109;
                                            measuredPage13.b(i62, iG, i56);
                                            arrayList7.add(measuredPage13);
                                        }
                                        f74615i = arrayDeque3.getF74615i();
                                        i64 = i61;
                                        for (i65 = 0; i65 < f74615i; i65++) {
                                            MeasuredPage measuredPage14 = (MeasuredPage) arrayDeque3.get(i65);
                                            measuredPage14.b(i64, iG, i56);
                                            arrayList7.add(measuredPage14);
                                            i64 += i109;
                                        }
                                        size6 = list5.size();
                                        for (i66 = 0; i66 < size6; i66++) {
                                            MeasuredPage measuredPage15 = (MeasuredPage) list5.get(i66);
                                            measuredPage15.b(i64, iG, i56);
                                            arrayList7.add(measuredPage15);
                                            i64 += i109;
                                        }
                                    }
                                    if (i54 != 0) {
                                        arrayList8 = arrayList7;
                                    } else {
                                        arrayList8 = new ArrayList(arrayList7.size());
                                        size7 = arrayList7.size();
                                        i67 = 0;
                                        while (i67 < size7) {
                                            Object obj10 = arrayList7.get(i67);
                                            measuredPage3 = (MeasuredPage) obj10;
                                            int i14111 = size7;
                                            ArrayDeque arrayDeque12 = arrayDeque3;
                                            if (measuredPage3.f5700a < ((MeasuredPage) arrayDeque3.first()).f5700a && measuredPage3.f5700a <= ((MeasuredPage) arrayDeque12.last()).f5700a) {
                                                arrayList8.add(obj10);
                                            }
                                            i67++;
                                            size7 = i14111;
                                            arrayDeque3 = arrayDeque12;
                                        }
                                    }
                                    arrayDeque4 = arrayDeque3;
                                    if (list3.isEmpty()) {
                                        arrayList9 = EmptyList.f71768b;
                                    } else {
                                        arrayList9 = new ArrayList(arrayList7.size());
                                        size8 = arrayList7.size();
                                        for (i68 = 0; i68 < size8; i68++) {
                                            obj2 = arrayList7.get(i68);
                                            if (((MeasuredPage) obj2).f5700a < ((MeasuredPage) arrayDeque4.first()).f5700a) {
                                                arrayList9.add(obj2);
                                            }
                                        }
                                    }
                                    if (list5.isEmpty()) {
                                        arrayList10 = EmptyList.f71768b;
                                    } else {
                                        arrayList10 = new ArrayList(arrayList7.size());
                                        size9 = arrayList7.size();
                                        for (i69 = 0; i69 < size9; i69++) {
                                            obj3 = arrayList7.get(i69);
                                            if (((MeasuredPage) obj3).f5700a > ((MeasuredPage) arrayDeque4.last()).f5700a) {
                                                arrayList10.add(obj3);
                                            }
                                        }
                                    }
                                    if (arrayList8.isEmpty()) {
                                        r21 = arrayList9;
                                        arrayList11 = arrayList8;
                                        r23 = arrayList10;
                                        i74 = i56;
                                        i70 = i212;
                                        i71 = i106;
                                        i72 = i26;
                                        snapPosition4 = snapPosition3;
                                        obj4 = null;
                                    } else {
                                        Object obj11 = arrayList8.get(0);
                                        int i14112 = ((MeasuredPage) obj11).m;
                                        r21 = arrayList9;
                                        obj4 = obj11;
                                        i70 = i212;
                                        i71 = i106;
                                        i72 = i26;
                                        snapPosition4 = snapPosition3;
                                        f3 = -Math.abs(i14112 - snapPosition4.d(i72, i27, i70, i71));
                                        size10 = arrayList8.size() - 1;
                                        i73 = i36;
                                        if (i73 <= size10) {
                                            ?? r59 = arrayList10;
                                            i75 = i73;
                                            f4 = f3;
                                            r23 = r59;
                                            while (true) {
                                                obj5 = arrayList8.get(i75);
                                                arrayList11 = arrayList8;
                                                i74 = i56;
                                                f5 = -Math.abs(((MeasuredPage) obj5).m - snapPosition4.d(i72, i27, i70, i71));
                                                if (Float.compare(f4, f5) < 0) {
                                                    f4 = f5;
                                                    obj4 = obj5;
                                                }
                                                if (i75 != size10) {
                                                    break;
                                                }
                                                i75++;
                                                arrayList8 = arrayList11;
                                                i56 = i74;
                                            }
                                        } else {
                                            arrayList11 = arrayList8;
                                            r23 = arrayList10;
                                            i74 = i56;
                                        }
                                    }
                                    measuredPage4 = (MeasuredPage) obj4;
                                    iD = snapPosition4.d(i72, i27, i70, i71);
                                    if (measuredPage4 != null) {
                                        i76 = measuredPage4.m;
                                    } else {
                                        i76 = 0;
                                    }
                                    i77 = i39;
                                    if (i77 == 0) {
                                        fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    } else {
                                        fC = RangesKt.c((iD - i76) / i77, -0.5f, 0.5f);
                                    }
                                    SubcomposeMeasureScope subcomposeMeasureScope4 = subcomposeMeasureScope;
                                    MeasureResult measureResultV2 = subcomposeMeasureScope4.V0(ConstraintsKt.g(iG + i87, j2), ConstraintsKt.f(i74 + i86, j2), MapsKt.c(), new xg0(mutableState4, arrayList7, 11));
                                    if (i210 >= i52 || i58 > i57) {
                                        z16 = true;
                                    } else {
                                        z16 = false;
                                    }
                                    subcomposeMeasureScope = subcomposeMeasureScope4;
                                    pagerMeasureResult = new PagerMeasureResult(arrayList11, i27, iB4, i71, orientation5, i99, i115, z14, i49, measuredPage2, measuredPage4, fC, i40, z16, snapPosition4, measureResultV2, z20, r21, r23, coroutineScope3, lazyLayoutMeasureScopeImpl, j18, null);
                                    lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                                } else {
                                    i33 = i137;
                                    j5 = j4;
                                    i34 = i31;
                                    i35 = i102;
                                }
                                i36 = 1;
                                i37 = i32;
                                z15 = false;
                                iMax = Math.max(0, i213 - i108);
                                i38 = i213 - 1;
                                if (iMax <= i38) {
                                    arrayList14 = null;
                                    while (true) {
                                        if (arrayList14 == null) {
                                            arrayList14 = new ArrayList();
                                        }
                                        i85 = i38;
                                        i39 = i35;
                                        i40 = i37;
                                        measuredPage = measuredPage5;
                                        i41 = i33;
                                        i43 = iMax;
                                        arrayDeque2 = arrayDeque;
                                        arrayList = arrayList14;
                                        j6 = j5;
                                        i42 = i108;
                                        arrayList.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i85, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap));
                                        if (i85 != i43) {
                                            break;
                                            break;
                                        }
                                        i38 = i85 - 1;
                                        iMax = i43;
                                        i108 = i42;
                                        z15 = false;
                                        i37 = i40;
                                        j5 = j6;
                                        arrayList14 = arrayList;
                                        arrayDeque = arrayDeque2;
                                        i35 = i39;
                                        i33 = i41;
                                        measuredPage5 = measuredPage;
                                    }
                                } else {
                                    i39 = i35;
                                    i40 = i37;
                                    measuredPage = measuredPage5;
                                    i41 = i33;
                                    j6 = j5;
                                    i42 = i108;
                                    i43 = iMax;
                                    arrayDeque2 = arrayDeque;
                                    arrayList = null;
                                }
                                list = list7;
                                List list17 = list;
                                size = list17.size();
                                arrayList2 = arrayList;
                                i44 = 0;
                                while (i44 < size) {
                                    List list18 = list;
                                    iIntValue2 = ((Number) list.get(i44)).intValue();
                                    if (iIntValue2 >= i43) {
                                        if (arrayList2 == null) {
                                            arrayList2 = new ArrayList();
                                        }
                                        List list19 = arrayList2;
                                        list19.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue2, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap));
                                        arrayList2 = list19;
                                    }
                                    i44++;
                                    list = list18;
                                    size = size;
                                    i43 = i43;
                                }
                                list2 = list;
                                if (arrayList2 == null) {
                                    arrayList2 = EmptyList.f71768b;
                                }
                                list3 = arrayList2;
                                iMax2 = i30;
                                i45 = 0;
                                while (i45 < size2) {
                                    iMax2 = Math.max(iMax2, ((MeasuredPage) list3.get(i45)).f5708k);
                                    i45++;
                                }
                                int i1312 = ((MeasuredPage) arrayDeque2.last()).f5700a;
                                i46 = i42;
                                iMin = Math.min(i46, (i28 - i1312) - 1) + i1312;
                                i47 = i1312 + 1;
                                if (i47 <= iMin) {
                                    arrayList13 = null;
                                    while (true) {
                                        if (arrayList13 == null) {
                                            arrayList13 = new ArrayList();
                                        }
                                        i49 = i46;
                                        arrayList3 = arrayList13;
                                        i48 = iMax2;
                                        list4 = list2;
                                        i50 = iMin;
                                        i84 = i47;
                                        arrayList3.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i84, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap));
                                        if (i84 != i50) {
                                            break;
                                            break;
                                        }
                                        i47 = i84 + 1;
                                        iMin = i50;
                                        iMax2 = i48;
                                        list2 = list4;
                                        arrayList13 = arrayList3;
                                        i46 = i49;
                                    }
                                } else {
                                    i48 = iMax2;
                                    list4 = list2;
                                    i49 = i46;
                                    i50 = iMin;
                                    arrayList3 = null;
                                }
                                size3 = list17.size();
                                arrayList4 = arrayList3;
                                i51 = 0;
                                while (i51 < size3) {
                                    list4 = list4;
                                    i81 = size3;
                                    iIntValue = ((Number) list4.get(i51)).intValue();
                                    arrayList12 = arrayList4;
                                    if (i50 + 1 <= iIntValue) {
                                        i83 = i28;
                                        if (iIntValue < i83) {
                                            if (arrayList12 == null) {
                                                arrayList12 = new ArrayList();
                                            }
                                            ArrayList arrayList18 = arrayList12;
                                            i81 = i81;
                                            i51 = i51;
                                            i82 = i83;
                                            MeasuredPage measuredPageA7 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, iIntValue, j6, pagerLazyLayoutItemProvider4, j13, orientation11, horizontal3, vertical2, subcomposeMeasureScope.getF9495b(), z14, i27, mutableIntObjectMap);
                                            j7 = j6;
                                            arrayList18.add(measuredPageA7);
                                            arrayList4 = arrayList18;
                                        } else {
                                            i82 = i83;
                                        }
                                        i28 = i82;
                                        i50 = i50;
                                        size3 = i81;
                                        i51++;
                                        horizontal3 = horizontal3;
                                        j6 = j7;
                                        orientation11 = orientation11;
                                    } else {
                                        i82 = i28;
                                    }
                                    j7 = j6;
                                    arrayList4 = arrayList12;
                                    i28 = i82;
                                    i50 = i50;
                                    size3 = i81;
                                    i51++;
                                    horizontal3 = horizontal3;
                                    j6 = j7;
                                    orientation11 = orientation11;
                                }
                                arrayList5 = arrayList4;
                                orientation5 = orientation11;
                                i52 = i28;
                                long j19 = j6;
                                if (arrayList5 == null) {
                                    list5 = EmptyList.f71768b;
                                } else {
                                    list5 = arrayList5;
                                }
                                size4 = list5.size();
                                iMax3 = i48;
                                while (i53 < size4) {
                                    iMax3 = Math.max(iMax3, ((MeasuredPage) list5.get(i53)).f5708k);
                                }
                                measuredPage2 = measuredPage;
                                if (!Intrinsics.c(measuredPage2, arrayDeque2.first())) {
                                    i54 = 0;
                                } else {
                                    i54 = 0;
                                }
                                orientation6 = Orientation.Vertical;
                                if (orientation5 == orientation6) {
                                    i55 = iMax3;
                                } else {
                                    i55 = i34;
                                }
                                iG = ConstraintsKt.g(i55, jI);
                                if (orientation5 == orientation6) {
                                    iMax3 = i34;
                                }
                                iF = ConstraintsKt.f(iMax3, jI);
                                i56 = iF;
                                if (orientation5 != orientation6) {
                                    iF = iG;
                                }
                                i57 = i211;
                                i58 = i34;
                                if (i58 < Math.min(iF, i57)) {
                                    i59 = i36;
                                } else {
                                    i59 = 0;
                                }
                                if (i59 != 0) {
                                    i60 = i41;
                                } else {
                                    i60 = i41;
                                }
                                i61 = i60;
                                arrayList6 = new ArrayList(list5.size() + list3.size() + arrayDeque2.getF74615i());
                                if (i59 != 0) {
                                    if (list3.isEmpty()) {
                                        InlineClassHelperKt.a("No extra pages");
                                    } else {
                                        InlineClassHelperKt.a("No extra pages");
                                    }
                                    f74615i2 = arrayDeque2.getF74615i();
                                    iArr = new int[f74615i2];
                                    arrayList7 = arrayList6;
                                    while (i78 < f74615i2) {
                                        iArr[i78] = i27;
                                    }
                                    iArr2 = new int[f74615i2];
                                    spacedAligned = new Arrangement.SpacedAligned(subcomposeMeasureScope.k1(iB4), false, null, null);
                                    if (orientation5 == Orientation.Vertical) {
                                        spacedAligned.b(lazyLayoutMeasureScopeImpl, iF, iArr, iArr2);
                                        i79 = f74615i2;
                                    } else {
                                        i79 = f74615i2;
                                        spacedAligned.c(lazyLayoutMeasureScopeImpl, iF, iArr, LayoutDirection.Ltr, iArr2);
                                    }
                                    intProgressionY = ArraysKt.y(iArr2);
                                    if (z14) {
                                        IntProgression.Companion companion8 = IntProgression.INSTANCE;
                                        int i14113 = intProgressionY.f71952c;
                                        int i14114 = intProgressionY.f71951b;
                                        int i14115 = -intProgressionY.d;
                                        companion8.getClass();
                                        intProgressionY = new IntProgression(i14113, i14114, i14115);
                                    }
                                    int i14116 = intProgressionY.f71951b;
                                    int i14117 = intProgressionY.f71952c;
                                    i80 = intProgressionY.d;
                                    arrayDeque3 = i80 <= 0 ? arrayDeque2 : arrayDeque2;
                                } else {
                                    arrayDeque3 = arrayDeque2;
                                    i57 = i57;
                                    subcomposeMeasureScope = subcomposeMeasureScope;
                                    i56 = i56;
                                    arrayList7 = arrayList6;
                                    size5 = list3.size();
                                    i62 = i61;
                                    while (i63 < size5) {
                                        MeasuredPage measuredPage16 = (MeasuredPage) list3.get(i63);
                                        i62 -= i109;
                                        measuredPage16.b(i62, iG, i56);
                                        arrayList7.add(measuredPage16);
                                    }
                                    f74615i = arrayDeque3.getF74615i();
                                    i64 = i61;
                                    while (i65 < f74615i) {
                                        MeasuredPage measuredPage17 = (MeasuredPage) arrayDeque3.get(i65);
                                        measuredPage17.b(i64, iG, i56);
                                        arrayList7.add(measuredPage17);
                                        i64 += i109;
                                    }
                                    size6 = list5.size();
                                    while (i66 < size6) {
                                        MeasuredPage measuredPage18 = (MeasuredPage) list5.get(i66);
                                        measuredPage18.b(i64, iG, i56);
                                        arrayList7.add(measuredPage18);
                                        i64 += i109;
                                    }
                                }
                                if (i54 != 0) {
                                    arrayList8 = arrayList7;
                                } else {
                                    arrayList8 = new ArrayList(arrayList7.size());
                                    size7 = arrayList7.size();
                                    i67 = 0;
                                    while (i67 < size7) {
                                        Object obj12 = arrayList7.get(i67);
                                        measuredPage3 = (MeasuredPage) obj12;
                                        int i14118 = size7;
                                        ArrayDeque arrayDeque13 = arrayDeque3;
                                        if (measuredPage3.f5700a < ((MeasuredPage) arrayDeque3.first()).f5700a) {
                                        }
                                        i67++;
                                        size7 = i14118;
                                        arrayDeque3 = arrayDeque13;
                                    }
                                }
                                arrayDeque4 = arrayDeque3;
                                if (list3.isEmpty()) {
                                    arrayList9 = EmptyList.f71768b;
                                } else {
                                    arrayList9 = new ArrayList(arrayList7.size());
                                    size8 = arrayList7.size();
                                    while (i68 < size8) {
                                        obj2 = arrayList7.get(i68);
                                        if (((MeasuredPage) obj2).f5700a < ((MeasuredPage) arrayDeque4.first()).f5700a) {
                                            arrayList9.add(obj2);
                                        }
                                    }
                                }
                                if (list5.isEmpty()) {
                                    arrayList10 = EmptyList.f71768b;
                                } else {
                                    arrayList10 = new ArrayList(arrayList7.size());
                                    size9 = arrayList7.size();
                                    while (i69 < size9) {
                                        obj3 = arrayList7.get(i69);
                                        if (((MeasuredPage) obj3).f5700a > ((MeasuredPage) arrayDeque4.last()).f5700a) {
                                            arrayList10.add(obj3);
                                        }
                                    }
                                }
                                if (arrayList8.isEmpty()) {
                                    r21 = arrayList9;
                                    arrayList11 = arrayList8;
                                    r23 = arrayList10;
                                    i74 = i56;
                                    i70 = i212;
                                    i71 = i106;
                                    i72 = i26;
                                    snapPosition4 = snapPosition3;
                                    obj4 = null;
                                } else {
                                    Object obj13 = arrayList8.get(0);
                                    int i14119 = ((MeasuredPage) obj13).m;
                                    r21 = arrayList9;
                                    obj4 = obj13;
                                    i70 = i212;
                                    i71 = i106;
                                    i72 = i26;
                                    snapPosition4 = snapPosition3;
                                    f3 = -Math.abs(i14119 - snapPosition4.d(i72, i27, i70, i71));
                                    size10 = arrayList8.size() - 1;
                                    i73 = i36;
                                    if (i73 <= size10) {
                                        ?? r510 = arrayList10;
                                        i75 = i73;
                                        f4 = f3;
                                        r23 = r510;
                                        while (true) {
                                            obj5 = arrayList8.get(i75);
                                            arrayList11 = arrayList8;
                                            i74 = i56;
                                            f5 = -Math.abs(((MeasuredPage) obj5).m - snapPosition4.d(i72, i27, i70, i71));
                                            if (Float.compare(f4, f5) < 0) {
                                                f4 = f5;
                                                obj4 = obj5;
                                            }
                                            if (i75 != size10) {
                                                break;
                                                break;
                                            }
                                            i75++;
                                            arrayList8 = arrayList11;
                                            i56 = i74;
                                        }
                                    } else {
                                        arrayList11 = arrayList8;
                                        r23 = arrayList10;
                                        i74 = i56;
                                    }
                                }
                                measuredPage4 = (MeasuredPage) obj4;
                                iD = snapPosition4.d(i72, i27, i70, i71);
                                if (measuredPage4 != null) {
                                    i76 = measuredPage4.m;
                                } else {
                                    i76 = 0;
                                }
                                i77 = i39;
                                if (i77 == 0) {
                                    fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                } else {
                                    fC = RangesKt.c((iD - i76) / i77, -0.5f, 0.5f);
                                }
                                SubcomposeMeasureScope subcomposeMeasureScope5 = subcomposeMeasureScope;
                                MeasureResult measureResultV3 = subcomposeMeasureScope5.V0(ConstraintsKt.g(iG + i87, j2), ConstraintsKt.f(i74 + i86, j2), MapsKt.c(), new xg0(mutableState4, arrayList7, 11));
                                if (i210 >= i52) {
                                    z16 = true;
                                } else {
                                    z16 = true;
                                }
                                subcomposeMeasureScope = subcomposeMeasureScope5;
                                pagerMeasureResult = new PagerMeasureResult(arrayList11, i27, iB4, i71, orientation5, i99, i115, z14, i49, measuredPage2, measuredPage4, fC, i40, z16, snapPosition4, measureResultV3, z20, r21, r23, coroutineScope3, lazyLayoutMeasureScopeImpl, j19, null);
                                lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                            }
                            pagerState6.h(pagerMeasureResult, subcomposeMeasureScope.u0(), false);
                            PagerCacheWindowLogic pagerCacheWindowLogic = pagerState6.v;
                            List list110 = pagerMeasureResult.f5739a;
                            Trace.beginSection("compose:pager:cache_window:keepAroundItems");
                            try {
                                if (pagerCacheWindowLogic.g() && !list110.isEmpty()) {
                                    int f5700a = ((PageInfo) CollectionsKt.B(list110)).getF5700a();
                                    int f5700a2 = ((PageInfo) CollectionsKt.M(list110)).getF5700a();
                                    for (int i150 = pagerCacheWindowLogic.f5398j; i150 < f5700a; i150++) {
                                        lazyLayoutMeasureScopeImpl2.C1(i150);
                                    }
                                    int i151 = f5700a2 + 1;
                                    int i152 = pagerCacheWindowLogic.f5399k;
                                    if (i151 <= i152) {
                                        while (true) {
                                            lazyLayoutMeasureScopeImpl2.C1(i151);
                                            if (i151 == i152) {
                                                break;
                                            }
                                            i151++;
                                        }
                                    }
                                }
                                return pagerMeasureResult;
                            } finally {
                                Trace.endSection();
                            }
                        } catch (Throwable th) {
                            Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                            throw th;
                        }
                    }
                };
                pagerState3 = pagerState;
                kProperty0 = kProperty1;
                i9 = i24;
                gapComposer.q(obj);
            }
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) obj;
            orientation3 = Orientation.Vertical;
            if (orientation2 == orientation3) {
                z4 = true;
            } else {
                z4 = false;
            }
            zB = (((i13 ^ 6) <= i8 && gapComposer.K(pagerState3)) || (i12 & 6) == i8) | gapComposer.b(z4);
            objX = gapComposer.x();
            if (zB) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX == composer$Companion$Empty$1) {
                }
                LazyLayoutSemanticState lazyLayoutSemanticState3 = (LazyLayoutSemanticState) objX;
                if (i11 == 32) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z5 | z6;
                objX2 = gapComposer.x();
                if (z7) {
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    objX2 = new PagerWrapperFlingBehavior(targetedFlingBehavior2, pagerState3);
                    gapComposer.q(objX2);
                } else {
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    objX2 = new PagerWrapperFlingBehavior(targetedFlingBehavior2, pagerState3);
                    gapComposer.q(objX2);
                }
                PagerWrapperFlingBehavior pagerWrapperFlingBehavior3 = (PagerWrapperFlingBehavior) objX2;
                bringIntoViewSpec = (BringIntoViewSpec) gapComposer.k(BringIntoViewSpec_androidKt.f4428a);
                layoutDirection = (LayoutDirection) gapComposer.k(CompositionLocalsKt.n);
                KProperty0 kProperty4 = kProperty0;
                gapComposer.L(-853904960);
                if (i11 == 32) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                zK2 = z8 | gapComposer.K(bringIntoViewSpec) | gapComposer.d(layoutDirection.ordinal());
                objX3 = gapComposer.x();
                if (zK2) {
                    objX3 = new PagerBringIntoViewSpec(pagerState3, bringIntoViewSpec, layoutDirection);
                    gapComposer.q(objX3);
                } else {
                    objX3 = new PagerBringIntoViewSpec(pagerState3, bringIntoViewSpec, layoutDirection);
                    gapComposer.q(objX3);
                }
                PagerBringIntoViewSpec pagerBringIntoViewSpec3 = (PagerBringIntoViewSpec) objX3;
                gapComposer.Z(false);
                if (z2) {
                    DTFunctionNameModifier dTFunctionNameModifierI3 = n00.i(gapComposer, -853484445, "Pager-eLwUrMk");
                    int i25 = i13 | ((i5 >> 21) & 112);
                    z10 = ((((i25 & 14) ^ 6) <= 4 && gapComposer.K(pagerState3)) || (i25 & 6) == 4) | ((((i25 & 112) ^ 48) <= 32 && gapComposer.d(i9)) || (i25 & 48) == 32);
                    objX4 = gapComposer.x();
                    if (z10) {
                        objX4 = new PagerBeyondBoundsState(pagerState3, i9);
                        gapComposer.q(objX4);
                    } else {
                        objX4 = new PagerBeyondBoundsState(pagerState3, i9);
                        gapComposer.q(objX4);
                    }
                    modifierJ = LazyLayoutBeyondBoundsModifierLocalKt.a(dTFunctionNameModifierI3, (PagerBeyondBoundsState) objX4, pagerState3.w, z, orientation2);
                    gapComposer.Z(false);
                } else {
                    modifierJ = n00.j(gapComposer, -853054661, false, r16);
                }
                Modifier modifier5 = modifierJ;
                orientation4 = orientation2;
                modifierA = LazyLayoutSemanticsKt.a(modifier2.o(pagerState3.z).o(pagerState3.x), kProperty4, lazyLayoutSemanticState3, orientation4, z2, z);
                if (orientation4 == orientation3) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                companion = Modifier.Companion.f8607b;
                if (z2) {
                    modifierO = modifierA.o(SemanticsModifierKt.b(companion, false, new ag(z9, pagerState3, coroutineScope, 7)));
                } else {
                    modifierO = modifierA.o(companion);
                }
                PagerState pagerState6 = pagerState3;
                Modifier modifierA4 = ScrollableAreaKt.a(modifierO.o(modifier5), pagerState6, orientation4, overscrollEffect, z2, z, pagerWrapperFlingBehavior3, pagerState3.p, pagerBringIntoViewSpec3);
                pagerState2 = pagerState6;
                nestedScrollConnection2 = nestedScrollConnection;
                LazyLayoutKt.a(kProperty4, NestedScrollModifierKt.a(modifierA4.o(SuspendingPointerInputFilterKt.a(companion, pagerState2, new PointerInputEventHandler() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1

                    /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1", f = "LazyLayoutPager.kt", l = {296}, m = "invokeSuspend", v = 1)
                    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public int f5693b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ PointerInputScope f5694c;
                        public final /* synthetic */ PagerState d;

                        /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1", f = "LazyLayoutPager.kt", l = {298, 302}, m = "invokeSuspend", v = 1)
                        final class C00141 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public PointerInputChange f5695c;
                            public PointerInputChange d;

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public int f5696e;

                            /* JADX INFO: renamed from: f, reason: collision with root package name */
                            public /* synthetic */ Object f5697f;
                            public final /* synthetic */ PagerState g;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public C00141(PagerState pagerState, Continuation continuation) {
                                super(2, continuation);
                                this.g = pagerState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation create(Object obj, Continuation continuation) {
                                C00141 c00141 = new C00141(this.g, continuation);
                                c00141.f5697f = obj;
                                return c00141;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ((C00141) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                            }

                            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                                jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                                */
                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final java.lang.Object invokeSuspend(java.lang.Object r13) {
                                /*
                                    r12 = this;
                                    kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                    int r1 = r12.f5696e
                                    r2 = 0
                                    androidx.compose.foundation.pager.PagerState r3 = r12.g
                                    r4 = 2
                                    r5 = 0
                                    r6 = 1
                                    if (r1 == 0) goto L2a
                                    if (r1 == r6) goto L22
                                    if (r1 != r4) goto L1c
                                    androidx.compose.ui.input.pointer.PointerInputChange r1 = r12.d
                                    androidx.compose.ui.input.pointer.PointerInputChange r2 = r12.f5695c
                                    java.lang.Object r6 = r12.f5697f
                                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r6 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r6
                                    kotlin.ResultKt.b(r13)
                                    goto L6c
                                L1c:
                                    java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                                    defpackage.md.k(r12)
                                    return r2
                                L22:
                                    java.lang.Object r1 = r12.f5697f
                                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                    kotlin.ResultKt.b(r13)
                                    goto L3f
                                L2a:
                                    kotlin.ResultKt.b(r13)
                                    java.lang.Object r13 = r12.f5697f
                                    r1 = r13
                                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                    androidx.compose.ui.input.pointer.PointerEventPass r13 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                    r12.f5697f = r1
                                    r12.f5696e = r6
                                    java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.a(r1, r5, r13, r12)
                                    if (r13 != r0) goto L3f
                                    goto L67
                                L3f:
                                    androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                                    androidx.compose.ui.geometry.Offset$Companion r6 = androidx.compose.ui.geometry.Offset.f8806b
                                    r6.getClass()
                                    androidx.compose.runtime.MutableState r6 = r3.f5759c
                                    androidx.compose.ui.geometry.Offset r7 = new androidx.compose.ui.geometry.Offset
                                    r8 = 0
                                    r7.<init>(r8)
                                    androidx.compose.runtime.SnapshotMutableStateImpl r6 = (androidx.compose.runtime.SnapshotMutableStateImpl) r6
                                    r6.setValue(r7)
                                    r6 = r1
                                L55:
                                    if (r2 != 0) goto L98
                                    androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                    r12.f5697f = r6
                                    r12.f5695c = r13
                                    r12.d = r2
                                    r12.f5696e = r4
                                    java.lang.Object r1 = r6.N0(r1, r12)
                                    if (r1 != r0) goto L68
                                L67:
                                    return r0
                                L68:
                                    r11 = r2
                                    r2 = r13
                                    r13 = r1
                                    r1 = r11
                                L6c:
                                    androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
                                    java.util.List r7 = r13.f9305a
                                    r8 = r7
                                    java.util.Collection r8 = (java.util.Collection) r8
                                    int r8 = r8.size()
                                    r9 = r5
                                L78:
                                    if (r9 >= r8) goto L8c
                                    java.lang.Object r10 = r7.get(r9)
                                    androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
                                    boolean r10 = androidx.compose.ui.input.pointer.PointerEventKt.c(r10)
                                    if (r10 != 0) goto L89
                                    r13 = r2
                                    r2 = r1
                                    goto L55
                                L89:
                                    int r9 = r9 + 1
                                    goto L78
                                L8c:
                                    java.util.List r13 = r13.f9305a
                                    java.lang.Object r13 = r13.get(r5)
                                    androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                                    r11 = r2
                                    r2 = r13
                                    r13 = r11
                                    goto L55
                                L98:
                                    long r0 = r2.f9330c
                                    long r12 = r13.f9330c
                                    long r12 = androidx.compose.ui.geometry.Offset.e(r0, r12)
                                    androidx.compose.runtime.MutableState r0 = r3.f5759c
                                    androidx.compose.ui.geometry.Offset r1 = new androidx.compose.ui.geometry.Offset
                                    r1.<init>(r12)
                                    androidx.compose.runtime.SnapshotMutableStateImpl r0 = (androidx.compose.runtime.SnapshotMutableStateImpl) r0
                                    r0.setValue(r1)
                                    kotlin.Unit r12 = kotlin.Unit.f71739a
                                    return r12
                                */
                                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1.AnonymousClass1.C00141.invokeSuspend(java.lang.Object):java.lang.Object");
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(PointerInputScope pointerInputScope, PagerState pagerState, Continuation continuation) {
                            super(2, continuation);
                            this.f5694c = pointerInputScope;
                            this.d = pagerState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            return new AnonymousClass1(this.f5694c, this.d, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i2 = this.f5693b;
                            if (i2 == 0) {
                                ResultKt.b(obj);
                                C00141 c00141 = new C00141(this.d, null);
                                this.f5693b = 1;
                                if (ForEachGestureKt.b(this.f5694c, c00141, this) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            } else {
                                if (i2 != 1) {
                                    md.k("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj);
                            }
                            return Unit.f71739a;
                        }
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objD = CoroutineScopeKt.d(new AnonymousClass1(pointerInputScope, pagerState2, null), continuation);
                        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
                    }
                })), nestedScrollConnection2, null), pagerState2.u, lazyLayoutMeasurePolicy2, gapComposer, 0);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            objX = new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.pager.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1
                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final int a() {
                    PagerState pagerState7 = pagerState3;
                    return pagerState7.n().getD() + pagerState7.n().e();
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final float b() {
                    PagerState pagerState7 = pagerState3;
                    return PagerStateKt.a(pagerState7.n(), pagerState7.o());
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final Object c(int i26, Continuation continuation) {
                    Object objV = PagerState.v(pagerState3, i26, (ContinuationImpl) continuation);
                    return objV == CoroutineSingletons.COROUTINE_SUSPENDED ? objV : Unit.f71739a;
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final CollectionInfo d() {
                    boolean z14 = z4;
                    PagerState pagerState7 = pagerState3;
                    return z14 ? new CollectionInfo(pagerState7.o(), 1) : new CollectionInfo(1, pagerState7.o());
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final int e() {
                    PagerState pagerState7 = pagerState3;
                    return (int) (pagerState7.n().getF5742e() == Orientation.Vertical ? pagerState7.n().a() & BodyPartID.bodyIdMax : pagerState7.n().a() >> 32);
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final float f() {
                    return PagerScrollPositionKt.a(pagerState3);
                }
            };
            gapComposer.q(objX);
            LazyLayoutSemanticState lazyLayoutSemanticState4 = (LazyLayoutSemanticState) objX;
            if (i11 == 32) {
                z5 = true;
            } else {
                z5 = false;
            }
            if ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = z5 | z6;
            objX2 = gapComposer.x();
            if (z7) {
                targetedFlingBehavior2 = targetedFlingBehavior;
                objX2 = new PagerWrapperFlingBehavior(targetedFlingBehavior2, pagerState3);
                gapComposer.q(objX2);
            } else {
                targetedFlingBehavior2 = targetedFlingBehavior;
                objX2 = new PagerWrapperFlingBehavior(targetedFlingBehavior2, pagerState3);
                gapComposer.q(objX2);
            }
            PagerWrapperFlingBehavior pagerWrapperFlingBehavior4 = (PagerWrapperFlingBehavior) objX2;
            bringIntoViewSpec = (BringIntoViewSpec) gapComposer.k(BringIntoViewSpec_androidKt.f4428a);
            layoutDirection = (LayoutDirection) gapComposer.k(CompositionLocalsKt.n);
            KProperty0 kProperty5 = kProperty0;
            gapComposer.L(-853904960);
            if (i11 == 32) {
                z8 = true;
            } else {
                z8 = false;
            }
            zK2 = z8 | gapComposer.K(bringIntoViewSpec) | gapComposer.d(layoutDirection.ordinal());
            objX3 = gapComposer.x();
            if (zK2) {
                objX3 = new PagerBringIntoViewSpec(pagerState3, bringIntoViewSpec, layoutDirection);
                gapComposer.q(objX3);
            } else {
                objX3 = new PagerBringIntoViewSpec(pagerState3, bringIntoViewSpec, layoutDirection);
                gapComposer.q(objX3);
            }
            PagerBringIntoViewSpec pagerBringIntoViewSpec4 = (PagerBringIntoViewSpec) objX3;
            gapComposer.Z(false);
            if (z2) {
                DTFunctionNameModifier dTFunctionNameModifierI4 = n00.i(gapComposer, -853484445, "Pager-eLwUrMk");
                int i26 = i13 | ((i5 >> 21) & 112);
                z10 = ((((i26 & 14) ^ 6) <= 4 && gapComposer.K(pagerState3)) || (i26 & 6) == 4) | ((((i26 & 112) ^ 48) <= 32 && gapComposer.d(i9)) || (i26 & 48) == 32);
                objX4 = gapComposer.x();
                if (z10) {
                    objX4 = new PagerBeyondBoundsState(pagerState3, i9);
                    gapComposer.q(objX4);
                } else {
                    objX4 = new PagerBeyondBoundsState(pagerState3, i9);
                    gapComposer.q(objX4);
                }
                modifierJ = LazyLayoutBeyondBoundsModifierLocalKt.a(dTFunctionNameModifierI4, (PagerBeyondBoundsState) objX4, pagerState3.w, z, orientation2);
                gapComposer.Z(false);
            } else {
                modifierJ = n00.j(gapComposer, -853054661, false, r16);
            }
            Modifier modifier6 = modifierJ;
            orientation4 = orientation2;
            modifierA = LazyLayoutSemanticsKt.a(modifier2.o(pagerState3.z).o(pagerState3.x), kProperty5, lazyLayoutSemanticState4, orientation4, z2, z);
            if (orientation4 == orientation3) {
                z9 = true;
            } else {
                z9 = false;
            }
            companion = Modifier.Companion.f8607b;
            if (z2) {
                modifierO = modifierA.o(SemanticsModifierKt.b(companion, false, new ag(z9, pagerState3, coroutineScope, 7)));
            } else {
                modifierO = modifierA.o(companion);
            }
            PagerState pagerState7 = pagerState3;
            Modifier modifierA5 = ScrollableAreaKt.a(modifierO.o(modifier6), pagerState7, orientation4, overscrollEffect, z2, z, pagerWrapperFlingBehavior4, pagerState3.p, pagerBringIntoViewSpec4);
            pagerState2 = pagerState7;
            nestedScrollConnection2 = nestedScrollConnection;
            LazyLayoutKt.a(kProperty5, NestedScrollModifierKt.a(modifierA5.o(SuspendingPointerInputFilterKt.a(companion, pagerState2, new PointerInputEventHandler() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1

                /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1", f = "LazyLayoutPager.kt", l = {296}, m = "invokeSuspend", v = 1)
                final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public int f5693b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ PointerInputScope f5694c;
                    public final /* synthetic */ PagerState d;

                    /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1", f = "LazyLayoutPager.kt", l = {298, 302}, m = "invokeSuspend", v = 1)
                    final class C00141 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public PointerInputChange f5695c;
                        public PointerInputChange d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public int f5696e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public /* synthetic */ Object f5697f;
                        public final /* synthetic */ PagerState g;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00141(PagerState pagerState, Continuation continuation) {
                            super(2, continuation);
                            this.g = pagerState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            C00141 c00141 = new C00141(this.g, continuation);
                            c00141.f5697f = obj;
                            return c00141;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((C00141) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                        }

                        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                            */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
                            /*
                                r12 = this;
                                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                int r1 = r12.f5696e
                                r2 = 0
                                androidx.compose.foundation.pager.PagerState r3 = r12.g
                                r4 = 2
                                r5 = 0
                                r6 = 1
                                if (r1 == 0) goto L2a
                                if (r1 == r6) goto L22
                                if (r1 != r4) goto L1c
                                androidx.compose.ui.input.pointer.PointerInputChange r1 = r12.d
                                androidx.compose.ui.input.pointer.PointerInputChange r2 = r12.f5695c
                                java.lang.Object r6 = r12.f5697f
                                androidx.compose.ui.input.pointer.AwaitPointerEventScope r6 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r6
                                kotlin.ResultKt.b(r13)
                                goto L6c
                            L1c:
                                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                                defpackage.md.k(r12)
                                return r2
                            L22:
                                java.lang.Object r1 = r12.f5697f
                                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                kotlin.ResultKt.b(r13)
                                goto L3f
                            L2a:
                                kotlin.ResultKt.b(r13)
                                java.lang.Object r13 = r12.f5697f
                                r1 = r13
                                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                androidx.compose.ui.input.pointer.PointerEventPass r13 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                r12.f5697f = r1
                                r12.f5696e = r6
                                java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.a(r1, r5, r13, r12)
                                if (r13 != r0) goto L3f
                                goto L67
                            L3f:
                                androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                                androidx.compose.ui.geometry.Offset$Companion r6 = androidx.compose.ui.geometry.Offset.f8806b
                                r6.getClass()
                                androidx.compose.runtime.MutableState r6 = r3.f5759c
                                androidx.compose.ui.geometry.Offset r7 = new androidx.compose.ui.geometry.Offset
                                r8 = 0
                                r7.<init>(r8)
                                androidx.compose.runtime.SnapshotMutableStateImpl r6 = (androidx.compose.runtime.SnapshotMutableStateImpl) r6
                                r6.setValue(r7)
                                r6 = r1
                            L55:
                                if (r2 != 0) goto L98
                                androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                r12.f5697f = r6
                                r12.f5695c = r13
                                r12.d = r2
                                r12.f5696e = r4
                                java.lang.Object r1 = r6.N0(r1, r12)
                                if (r1 != r0) goto L68
                            L67:
                                return r0
                            L68:
                                r11 = r2
                                r2 = r13
                                r13 = r1
                                r1 = r11
                            L6c:
                                androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
                                java.util.List r7 = r13.f9305a
                                r8 = r7
                                java.util.Collection r8 = (java.util.Collection) r8
                                int r8 = r8.size()
                                r9 = r5
                            L78:
                                if (r9 >= r8) goto L8c
                                java.lang.Object r10 = r7.get(r9)
                                androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
                                boolean r10 = androidx.compose.ui.input.pointer.PointerEventKt.c(r10)
                                if (r10 != 0) goto L89
                                r13 = r2
                                r2 = r1
                                goto L55
                            L89:
                                int r9 = r9 + 1
                                goto L78
                            L8c:
                                java.util.List r13 = r13.f9305a
                                java.lang.Object r13 = r13.get(r5)
                                androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                                r11 = r2
                                r2 = r13
                                r13 = r11
                                goto L55
                            L98:
                                long r0 = r2.f9330c
                                long r12 = r13.f9330c
                                long r12 = androidx.compose.ui.geometry.Offset.e(r0, r12)
                                androidx.compose.runtime.MutableState r0 = r3.f5759c
                                androidx.compose.ui.geometry.Offset r1 = new androidx.compose.ui.geometry.Offset
                                r1.<init>(r12)
                                androidx.compose.runtime.SnapshotMutableStateImpl r0 = (androidx.compose.runtime.SnapshotMutableStateImpl) r0
                                r0.setValue(r1)
                                kotlin.Unit r12 = kotlin.Unit.f71739a
                                return r12
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1.AnonymousClass1.C00141.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(PointerInputScope pointerInputScope, PagerState pagerState, Continuation continuation) {
                        super(2, continuation);
                        this.f5694c = pointerInputScope;
                        this.d = pagerState;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        return new AnonymousClass1(this.f5694c, this.d, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i2 = this.f5693b;
                        if (i2 == 0) {
                            ResultKt.b(obj);
                            C00141 c00141 = new C00141(this.d, null);
                            this.f5693b = 1;
                            if (ForEachGestureKt.b(this.f5694c, c00141, this) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        } else {
                            if (i2 != 1) {
                                md.k("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ResultKt.b(obj);
                        }
                        return Unit.f71739a;
                    }
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    Object objD = CoroutineScopeKt.d(new AnonymousClass1(pointerInputScope, pagerState2, null), continuation);
                    return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
                }
            })), nestedScrollConnection2, null), pagerState2.u, lazyLayoutMeasurePolicy2, gapComposer, 0);
        } else {
            targetedFlingBehavior2 = targetedFlingBehavior;
            nestedScrollConnection2 = nestedScrollConnection;
            pagerState2 = pagerState;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final PagerState pagerState8 = pagerState2;
            final TargetedFlingBehavior targetedFlingBehavior3 = targetedFlingBehavior2;
            recomposeScopeImplB0.d = new Function2() { // from class: g90
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i4);
                    LazyLayoutPagerKt.a(modifier2, pagerState8, paddingValues, z, orientation, targetedFlingBehavior3, z2, overscrollEffect, i9, f2, pageSize, nestedScrollConnection2, horizontal, vertical, snapPosition, composableLambdaImpl, (Composer) obj2, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}
