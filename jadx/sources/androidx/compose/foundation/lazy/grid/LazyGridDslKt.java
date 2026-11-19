package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import com.google.ar.core.ImageMetadata;
import defpackage.a90;
import defpackage.rs;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyGridDslKt {
    public static final void a(GridCells.Fixed fixed, Modifier modifier, LazyGridState lazyGridState, PaddingValuesImpl paddingValuesImpl, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Function1 function1, Composer composer, int i2) {
        LazyGridState lazyGridStateA;
        FlingBehavior flingBehavior2;
        boolean z2;
        OverscrollEffect overscrollEffectA;
        FlingBehavior flingBehaviorA;
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LazyHorizontalGrid");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(635941664);
        int i4 = i2 | (gapComposerH.K(fixed) ? 4 : 2) | (gapComposerH.K(modifier2) ? 32 : 16) | 128 | (gapComposerH.K(paddingValuesImpl) ? 2048 : 1024) | 24576 | (gapComposerH.K(vertical) ? 1048576 : 524288) | 373293056;
        int i5 = gapComposerH.y(function1) ? 4 : 2;
        boolean z3 = true;
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                lazyGridStateA = LazyGridStateKt.a(0, gapComposerH, 3);
                flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                i3 = i4 & (-1908409217);
                overscrollEffectA = OverscrollKt.a(gapComposerH);
                z2 = true;
            } else {
                gapComposerH.D();
                i3 = i4 & (-1908409217);
                lazyGridStateA = lazyGridState;
                flingBehaviorA = flingBehavior;
                overscrollEffectA = overscrollEffect;
                z2 = z;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i6 = (i3 & 14) | ((i3 >> 15) & 112);
            boolean z4 = (((i6 & 14) ^ 6) > 4 && gapComposerH.K(fixed)) || (i6 & 6) == 4;
            if ((((i6 & 112) ^ 48) <= 32 || !gapComposerH.K(vertical)) && (i6 & 48) != 32) {
                z3 = false;
            }
            boolean z5 = z4 | z3;
            Object objX = gapComposerH.x();
            if (z5 || objX == Composer.Companion.f7939a) {
                objX = new GridSlotCache(new rs(fixed, vertical, 25));
                gapComposerH.q(objX);
            }
            flingBehavior2 = flingBehaviorA;
            LazyGridKt.a(modifier2, lazyGridStateA, (LazyGridSlotsProvider) objX, paddingValuesImpl, false, flingBehavior2, z2, overscrollEffectA, vertical, horizontal, function1, gapComposerH, ((i3 >> 3) & 14) | ImageMetadata.EDGE_MODE | (i3 & 7168) | 12607488 | ((i3 << 9) & 1879048192), 6 | ((i5 << 3) & 112));
        } else {
            gapComposerH.D();
            lazyGridStateA = lazyGridState;
            flingBehavior2 = flingBehavior;
            z2 = z;
            overscrollEffectA = overscrollEffect;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a90(fixed, modifier2, lazyGridStateA, paddingValuesImpl, horizontal, vertical, flingBehavior2, z2, overscrollEffectA, function1, i2);
        }
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v1 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public static final void b(androidx.compose.foundation.lazy.grid.GridCells.Fixed r27, androidx.compose.ui.Modifier r28, androidx.compose.foundation.lazy.grid.LazyGridState r29, androidx.compose.foundation.layout.PaddingValues r30, androidx.compose.foundation.layout.Arrangement.Vertical r31, androidx.compose.foundation.layout.Arrangement.Horizontal r32, androidx.compose.foundation.gestures.FlingBehavior r33, boolean r34, androidx.compose.foundation.OverscrollEffect r35, kotlin.jvm.functions.Function1 r36, androidx.compose.runtime.Composer r37, int r38, int r39) {
        /*
            Method dump skipped, instruction units count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridDslKt.b(androidx.compose.foundation.lazy.grid.GridCells$Fixed, androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.grid.LazyGridState, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.OverscrollEffect, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }
}
