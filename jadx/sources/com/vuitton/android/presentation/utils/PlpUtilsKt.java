package com.vuitton.android.presentation.utils;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModesKt;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import defpackage.v40;
import defpackage.wd0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PlpUtilsKt {
    public static final int a(int i2, List list, int i3, int i4) {
        int iIntValue;
        IntRange intRange;
        IntRange intRange2;
        int i5;
        list.getClass();
        ArrayList arrayListF = f(i3, list);
        ArrayList<GridLineRange> arrayListF2 = f(i4, list);
        int i6 = -1;
        Integer num = null;
        if (((GridLineRange) CollectionsKt.G(i2, arrayListF)) instanceof GridLineRange.BrandContentLine) {
            List listQ0 = CollectionsKt.q0(arrayListF, i2 + 1);
            if ((listQ0 instanceof Collection) && listQ0.isEmpty()) {
                i5 = 0;
            } else {
                Iterator it = listQ0.iterator();
                i5 = 0;
                while (it.hasNext()) {
                    if ((((GridLineRange) it.next()) instanceof GridLineRange.BrandContentLine) && (i5 = i5 + 1) < 0) {
                        CollectionsKt.s0();
                        throw null;
                    }
                }
            }
            Iterator it2 = arrayListF2.iterator();
            int i7 = 0;
            int i8 = 0;
            while (it2.hasNext()) {
                if ((((GridLineRange) it2.next()) instanceof GridLineRange.BrandContentLine) && (i7 = i7 + 1) == i5) {
                    i6 = i8;
                    break;
                }
                i8++;
            }
            if (i6 >= 0) {
                return i6;
            }
        } else {
            Object objG = CollectionsKt.G(i2, arrayListF);
            GridLineRange.ProductRange productRange = objG instanceof GridLineRange.ProductRange ? (GridLineRange.ProductRange) objG : null;
            if (productRange == null || (intRange2 = productRange.f65849a) == null) {
                for (GridLineRange gridLineRange : CollectionsKt.w(arrayListF, i2 + 1)) {
                    GridLineRange.ProductRange productRange2 = gridLineRange instanceof GridLineRange.ProductRange ? (GridLineRange.ProductRange) gridLineRange : null;
                    Integer numValueOf = (productRange2 == null || (intRange = productRange2.f65849a) == null) ? null : Integer.valueOf(intRange.f71951b);
                    if (numValueOf != null) {
                        num = numValueOf;
                        break;
                    }
                }
                if (num != null) {
                    iIntValue = num.intValue();
                }
            } else {
                iIntValue = intRange2.f71951b;
            }
            int i9 = 0;
            for (GridLineRange gridLineRange2 : arrayListF2) {
                if (gridLineRange2 instanceof GridLineRange.ProductRange) {
                    IntRange intRange3 = ((GridLineRange.ProductRange) gridLineRange2).f65849a;
                    int i10 = intRange3.f71951b;
                    if (iIntValue <= intRange3.f71952c && i10 <= iIntValue) {
                        i6 = i9;
                        break;
                    }
                }
                i9++;
            }
            if (i6 >= 0) {
                return i6;
            }
        }
        return 0;
    }

    public static final int b(int i2, GridModes gridModes) {
        gridModes.getClass();
        if (Intrinsics.c(gridModes, GridModes.Full.f55430b)) {
            int i3 = i2 - 1;
            if (i3 < 0) {
                return 0;
            }
            return i3;
        }
        if (Intrinsics.c(gridModes, GridModes.Reduced.f55431b)) {
            return i2 + 1;
        }
        v40.g();
        return 0;
    }

    public static final void c(CoroutineScope coroutineScope, Animatable animatable, Animatable animatable2, Function1 function1) {
        coroutineScope.getClass();
        animatable.getClass();
        animatable2.getClass();
        function1.getClass();
        BuildersKt.c(coroutineScope, null, null, new PlpUtilsKt$launchSwitchGridAnimation$1(function1, animatable, animatable2, null), 3);
    }

    public static final Modifier d(DTFunctionNameModifier dTFunctionNameModifier, GridModes gridModes, GridModes gridModes2, FocusRequester focusRequester, FocusRequester focusRequester2, Composer composer) {
        Modifier modifierO = dTFunctionNameModifier.o(new DTFunctionNameModifier("setGivenGridMode"));
        gridModes.getClass();
        gridModes2.getClass();
        focusRequester.getClass();
        focusRequester2.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return ModifierExtKt.b(ZIndexModifierKt.a(modifierO, GridModesKt.a(gridModes, gridModes2)), gridModes.equals(gridModes2), new wd0(focusRequester, focusRequester2, 27), composer, 0);
    }

    public static final void e(CoroutineScope coroutineScope, LazyGridState lazyGridState, LazyGridState lazyGridState2, GridModes gridModes) {
        coroutineScope.getClass();
        lazyGridState.getClass();
        lazyGridState2.getClass();
        gridModes.getClass();
        BuildersKt.c(coroutineScope, null, null, new PlpUtilsKt$syncThematicGridScroll$1(lazyGridState2, b(lazyGridState.g(), gridModes), null), 3);
    }

    public static final ArrayList f(int i2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            PlpSectionUiModel plpSectionUiModel = (PlpSectionUiModel) it.next();
            if (plpSectionUiModel instanceof PlpSectionUiModel.Products) {
                int i4 = 0;
                while (true) {
                    List list2 = ((PlpSectionUiModel.Products) plpSectionUiModel).f62933b;
                    if (i4 < list2.size()) {
                        int iMin = Math.min(i2, list2.size() - i4);
                        int i5 = i3 + iMin;
                        arrayList.add(new GridLineRange.ProductRange(RangesKt.j(i3, i5)));
                        i4 += iMin;
                        i3 = i5;
                    }
                }
            } else {
                arrayList.add(GridLineRange.BrandContentLine.f65848a);
            }
        }
        return arrayList;
    }
}
