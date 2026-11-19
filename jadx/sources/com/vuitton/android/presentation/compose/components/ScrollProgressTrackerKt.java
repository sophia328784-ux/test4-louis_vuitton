package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.lazy.LazyListState;
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
import androidx.compose.runtime.snapshots.SnapshotStateList;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import defpackage.g2;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "hasUserScrolled", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ScrollProgressTrackerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f51021a = CollectionsKt.P(25, 50, 75, 100);

    public static final void a(final LazyListState lazyListState, final int i2, final int i3, final Function1 function1, Composer composer, final int i4) {
        int i5;
        int i6;
        Function1 function2;
        lazyListState.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1373650780);
        if ((i4 & 6) == 0) {
            i5 = (gapComposerH.K(lazyListState) ? 4 : 2) | i4;
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            i5 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i6 = i3;
            i5 |= gapComposerH.d(i6) ? 256 : 128;
        } else {
            i6 = i3;
        }
        if ((i4 & 3072) == 0) {
            function2 = function1;
            i5 |= gapComposerH.y(function2) ? 2048 : 1024;
        } else {
            function2 = function1;
        }
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new SnapshotStateList();
                gapComposerH.q(objX2);
            }
            SnapshotStateList snapshotStateList = (SnapshotStateList) objX2;
            if (((Boolean) mutableState.getF10755b()).booleanValue() || !(lazyListState.d() || lazyListState.b())) {
                gapComposerH.L(18733470);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(18464390);
                boolean z = (i5 & 14) == 4;
                Object objX3 = gapComposerH.x();
                if (z || objX3 == composer$Companion$Empty$1) {
                    objX3 = new ScrollProgressTrackerKt$PaginatedScrollProgressTracker$1$1(lazyListState, mutableState, null);
                    gapComposerH.q(objX3);
                }
                EffectsKt.e(gapComposerH, lazyListState, (Function2) objX3);
                gapComposerH.Z(false);
            }
            if (snapshotStateList.size() == f51021a.size() || !((Boolean) mutableState.getF10755b()).booleanValue() || i2 <= 0) {
                gapComposerH.L(20097470);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(18964451);
                Integer numValueOf = Integer.valueOf(i2);
                boolean z2 = ((i5 & 14) == 4) | ((i5 & 896) == 256) | ((i5 & 112) == 32) | ((i5 & 7168) == 2048);
                Object objX4 = gapComposerH.x();
                if (z2 || objX4 == composer$Companion$Empty$1) {
                    ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1 scrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1 = new ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1(lazyListState, i6, i2, snapshotStateList, function2, null);
                    gapComposerH.q(scrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1);
                    objX4 = scrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1;
                }
                EffectsKt.g(lazyListState, numValueOf, (Function2) objX4, gapComposerH);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: hu0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ScrollProgressTrackerKt.a(lazyListState, i2, i3, function1, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(ScrollState scrollState, Function1 function1, Composer composer, int i2) {
        int i3;
        scrollState.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(538889780);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(scrollState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new SnapshotStateList();
                gapComposerH.q(objX2);
            }
            SnapshotStateList snapshotStateList = (SnapshotStateList) objX2;
            if (((Boolean) mutableState.getF10755b()).booleanValue() || !(scrollState.d() || scrollState.b())) {
                gapComposerH.L(-521659762);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-521924998);
                boolean z = (i3 & 14) == 4;
                Object objX3 = gapComposerH.x();
                if (z || objX3 == composer$Companion$Empty$1) {
                    objX3 = new ScrollProgressTrackerKt$ScrollProgressTracker$4$1(scrollState, mutableState, null);
                    gapComposerH.q(objX3);
                }
                EffectsKt.e(gapComposerH, scrollState, (Function2) objX3);
                gapComposerH.Z(false);
            }
            if (snapshotStateList.size() == f51021a.size() || !((Boolean) mutableState.getF10755b()).booleanValue()) {
                gapComposerH.L(-520876082);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-521463253);
                boolean z2 = ((i3 & 14) == 4) | ((i3 & 112) == 32);
                Object objX4 = gapComposerH.x();
                if (z2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new ScrollProgressTrackerKt$ScrollProgressTracker$5$1(scrollState, snapshotStateList, function1, null);
                    gapComposerH.q(objX4);
                }
                EffectsKt.e(gapComposerH, scrollState, (Function2) objX4);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(scrollState, function1, i2, 29);
        }
    }

    public static final void c(LazyListState lazyListState, Function1 function1, Composer composer, int i2) {
        int i3;
        lazyListState.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1371492697);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(lazyListState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new SnapshotStateList();
                gapComposerH.q(objX2);
            }
            SnapshotStateList snapshotStateList = (SnapshotStateList) objX2;
            if (((Boolean) mutableState.getF10755b()).booleanValue() || !(lazyListState.d() || lazyListState.b())) {
                gapComposerH.L(115718089);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(115449009);
                boolean z = (i3 & 14) == 4;
                Object objX3 = gapComposerH.x();
                if (z || objX3 == composer$Companion$Empty$1) {
                    objX3 = new ScrollProgressTrackerKt$ScrollProgressTracker$1$1(lazyListState, mutableState, null);
                    gapComposerH.q(objX3);
                }
                EffectsKt.e(gapComposerH, lazyListState, (Function2) objX3);
                gapComposerH.Z(false);
            }
            if (snapshotStateList.size() == f51021a.size() || !((Boolean) mutableState.getF10755b()).booleanValue()) {
                gapComposerH.L(116924361);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(115927804);
                boolean z2 = ((i3 & 14) == 4) | ((i3 & 112) == 32);
                Object objX4 = gapComposerH.x();
                if (z2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new ScrollProgressTrackerKt$ScrollProgressTracker$2$1(lazyListState, snapshotStateList, function1, null);
                    gapComposerH.q(objX4);
                }
                EffectsKt.e(gapComposerH, lazyListState, (Function2) objX4);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(lazyListState, function1, i2, 28);
        }
    }
}
