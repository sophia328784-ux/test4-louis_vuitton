package androidx.compose.material3;

import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.AnchoredDraggableDefaults;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.ui.unit.Density;
import defpackage.j5;
import defpackage.l01;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0011B4\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\n\u0010\u000bBR\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u0004\u0012!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/compose/material3/SwipeToDismissBoxState;", "", "Landroidx/compose/material3/SwipeToDismissBoxValue;", "initialValue", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "totalDistance", "positionalThreshold", "<init>", "(Landroidx/compose/material3/SwipeToDismissBoxValue;Lkotlin/jvm/functions/Function1;)V", "Landroidx/compose/ui/unit/Density;", "density", "", "confirmValueChange", "(Landroidx/compose/material3/SwipeToDismissBoxValue;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "Companion", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SwipeToDismissBoxState {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f7345c = new Companion(null);
    public static final int d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnchoredDraggableState f7346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f7347b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/SwipeToDismissBoxState$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Deprecated
    public SwipeToDismissBoxState(SwipeToDismissBoxValue swipeToDismissBoxValue, Density density, Function1<? super SwipeToDismissBoxValue, Boolean> function1, Function1<? super Float, Float> function2) {
        TweenSpec tweenSpec = AnchoredDraggableDefaults.f4336a;
        DecayAnimationSpec decayAnimationSpec = AnchoredDraggableDefaults.f4338c;
        j5 j5Var = new j5(density, 3);
        defpackage.p pVar = AnchoredDraggableKt.f4345a;
        AnchoredDraggableState anchoredDraggableState = new AnchoredDraggableState(swipeToDismissBoxValue, function1);
        anchoredDraggableState.f4398b = function2;
        anchoredDraggableState.f4399c = j5Var;
        anchoredDraggableState.d = tweenSpec;
        anchoredDraggableState.f4400e = decayAnimationSpec;
        this.f7346a = anchoredDraggableState;
    }

    public /* synthetic */ SwipeToDismissBoxState(SwipeToDismissBoxValue swipeToDismissBoxValue, Density density, Function1 function1, Function1 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(swipeToDismissBoxValue, density, (i2 & 4) != 0 ? new l01(23) : function1, function2);
    }

    public SwipeToDismissBoxState(SwipeToDismissBoxValue swipeToDismissBoxValue, Function1<? super Float, Float> function1) {
        this.f7346a = new AnchoredDraggableState(swipeToDismissBoxValue);
        this.f7347b = function1;
    }
}
