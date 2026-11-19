package defpackage;

import android.view.View;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.CrossAxisAlignment;
import androidx.compose.foundation.layout.RowColumnParentData;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.DisplayMode;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.material3.WindowBoundsCalculator;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class um implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80350b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f80351c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80353f;
    public final /* synthetic */ Object g;

    public /* synthetic */ um(int i2, State state, MutableState mutableState, MutableState mutableState2, MutableState mutableState3) {
        this.f80351c = i2;
        this.d = state;
        this.f80352e = mutableState;
        this.f80353f = mutableState2;
        this.g = mutableState3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Rect rectA;
        int i2 = this.f80350b;
        Object obj2 = this.g;
        Object obj3 = this.f80353f;
        Object obj4 = this.f80352e;
        Object obj5 = this.d;
        int i3 = this.f80351c;
        switch (i2) {
            case 0:
                Placeable[] placeableArr = (Placeable[]) obj5;
                ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) obj4;
                MeasureScope measureScope = (MeasureScope) obj3;
                int[] iArr = (int[]) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int length = placeableArr.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length) {
                    Placeable placeable = placeableArr[i4];
                    int i6 = i5 + 1;
                    placeable.getClass();
                    Object z = placeable.getT();
                    RowColumnParentData rowColumnParentData = z instanceof RowColumnParentData ? (RowColumnParentData) z : null;
                    LayoutDirection f9421c = measureScope.getF9495b();
                    CrossAxisAlignment crossAxisAlignment = rowColumnParentData != null ? rowColumnParentData.f5036c : null;
                    placementScope.j(placeable, crossAxisAlignment != null ? crossAxisAlignment.a(i3, placeable.f9548b, f9421c) : columnMeasurePolicy.f4943b.a(placeable.f9548b, i3, f9421c), iArr[i5], Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    i4++;
                    i5 = i6;
                }
                return Unit.f71739a;
            case 1:
                FiniteAnimationSpec finiteAnimationSpec = (FiniteAnimationSpec) obj5;
                FiniteAnimationSpec finiteAnimationSpec2 = (FiniteAnimationSpec) obj4;
                FiniteAnimationSpec finiteAnimationSpec3 = (FiniteAnimationSpec) obj3;
                FiniteAnimationSpec finiteAnimationSpec4 = (FiniteAnimationSpec) obj2;
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                float f2 = DatePickerKt.f6780a;
                int i7 = ((DisplayMode) animatedContentTransitionScope.getF4004b()).f6902a;
                DisplayMode.f6900b.getClass();
                int i8 = 6;
                int i9 = 10;
                return animatedContentTransitionScope.d(i7 == DisplayMode.f6901c ? AnimatedContentKt.e(EnterExitTransitionKt.q(new bp(i9), finiteAnimationSpec).b(EnterExitTransitionKt.f(finiteAnimationSpec2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), EnterExitTransitionKt.h(finiteAnimationSpec3, 2).b(EnterExitTransitionKt.u(new hb(i3, i8), finiteAnimationSpec))) : AnimatedContentKt.e(EnterExitTransitionKt.q(new hb(i3, i8), finiteAnimationSpec).b(EnterExitTransitionKt.f(finiteAnimationSpec2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), EnterExitTransitionKt.u(new bp(i9), finiteAnimationSpec).b(EnterExitTransitionKt.h(finiteAnimationSpec3, 2))), AnimatedContentKt.c(new c(finiteAnimationSpec4, 19)));
            case 2:
                MutableState mutableState = (MutableState) obj4;
                MutableIntState mutableIntState = (MutableIntState) obj2;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                int i10 = ExposedDropdownMenuKt.f6925a;
                mutableState.setValue(layoutCoordinates);
                ((MutableIntState) obj3).i((int) (layoutCoordinates.a() >> 32));
                View view = ((WindowBoundsCalculator) obj5).f7453a;
                android.graphics.Rect rect = new android.graphics.Rect();
                view.getWindowVisibleDisplayFrame(rect);
                IntRect intRect = new IntRect(rect.left, rect.top, rect.right, rect.bottom);
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) mutableState.getF10755b();
                if (layoutCoordinates2 == null || !layoutCoordinates2.c()) {
                    Rect.f8809e.getClass();
                    rectA = Rect.f8810f;
                } else {
                    rectA = RectKt.a(LayoutCoordinatesKt.f(layoutCoordinates2), IntSizeKt.d(layoutCoordinates2.a()));
                }
                mutableIntState.i(ExposedDropdownMenuKt.b(intRect, rectA, i3));
                return Unit.f71739a;
            default:
                State state = (State) obj5;
                MutableState mutableState2 = (MutableState) obj4;
                MutableState mutableState3 = (MutableState) obj3;
                MutableState mutableState4 = (MutableState) obj2;
                LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) obj;
                layoutCoordinates3.getClass();
                if (i3 == ((Number) state.getF10755b()).intValue()) {
                    mutableState2.setValue(Float.valueOf(Float.intBitsToFloat((int) (LayoutCoordinatesKt.f(layoutCoordinates3) >> 32))));
                } else if (i3 == ((Number) state.getF10755b()).intValue() + 1) {
                    mutableState3.setValue(Float.valueOf(Float.intBitsToFloat((int) (LayoutCoordinatesKt.f(layoutCoordinates3) >> 32))));
                } else if (i3 == ((Number) state.getF10755b()).intValue() - 1) {
                    mutableState4.setValue(Float.valueOf(Float.intBitsToFloat((int) (LayoutCoordinatesKt.f(layoutCoordinates3) >> 32))));
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ um(FiniteAnimationSpec finiteAnimationSpec, FiniteAnimationSpec finiteAnimationSpec2, FiniteAnimationSpec finiteAnimationSpec3, int i2, FiniteAnimationSpec finiteAnimationSpec4) {
        this.d = finiteAnimationSpec;
        this.f80352e = finiteAnimationSpec2;
        this.f80353f = finiteAnimationSpec3;
        this.f80351c = i2;
        this.g = finiteAnimationSpec4;
    }

    public /* synthetic */ um(WindowBoundsCalculator windowBoundsCalculator, int i2, MutableState mutableState, MutableIntState mutableIntState, MutableIntState mutableIntState2) {
        this.d = windowBoundsCalculator;
        this.f80351c = i2;
        this.f80352e = mutableState;
        this.f80353f = mutableIntState;
        this.g = mutableIntState2;
    }

    public /* synthetic */ um(Placeable[] placeableArr, ColumnMeasurePolicy columnMeasurePolicy, int i2, MeasureScope measureScope, int[] iArr) {
        this.d = placeableArr;
        this.f80352e = columnMeasurePolicy;
        this.f80351c = i2;
        this.f80353f = measureScope;
        this.g = iArr;
    }
}
