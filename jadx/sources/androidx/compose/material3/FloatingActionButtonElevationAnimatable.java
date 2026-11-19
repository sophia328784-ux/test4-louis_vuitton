package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.material3.internal.ElevationKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.unit.Dp;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/FloatingActionButtonElevationAnimatable;", "", "Landroidx/compose/ui/unit/Dp;", "defaultElevation", "pressedElevation", "hoveredElevation", "focusedElevation", "<init>", "(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class FloatingActionButtonElevationAnimatable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f6978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f6979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f6980c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Animatable f6981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Interaction f6982f;
    public Interaction g;

    public FloatingActionButtonElevationAnimatable(float f2, float f3, float f4, float f5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6978a = f2;
        this.f6979b = f3;
        this.f6980c = f4;
        this.d = f5;
        this.f6981e = new Animatable(new Dp(f2), VectorConvertersKt.f4038c, null, null, 12, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, kotlin.Unit] */
    public final Object a(Interaction interaction, ContinuationImpl continuationImpl) {
        FloatingActionButtonElevationAnimatable$animateElevation$1 floatingActionButtonElevationAnimatable$animateElevation$1;
        float f2;
        Animatable animatable = this.f6981e;
        if (continuationImpl instanceof FloatingActionButtonElevationAnimatable$animateElevation$1) {
            floatingActionButtonElevationAnimatable$animateElevation$1 = (FloatingActionButtonElevationAnimatable$animateElevation$1) continuationImpl;
            int i2 = floatingActionButtonElevationAnimatable$animateElevation$1.f6985e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                floatingActionButtonElevationAnimatable$animateElevation$1.f6985e = i2 - Integer.MIN_VALUE;
            } else {
                floatingActionButtonElevationAnimatable$animateElevation$1 = new FloatingActionButtonElevationAnimatable$animateElevation$1(this, continuationImpl);
            }
        } else {
            floatingActionButtonElevationAnimatable$animateElevation$1 = new FloatingActionButtonElevationAnimatable$animateElevation$1(this, continuationImpl);
        }
        Object obj = floatingActionButtonElevationAnimatable$animateElevation$1.f6984c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = floatingActionButtonElevationAnimatable$animateElevation$1.f6985e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                if (interaction instanceof PressInteraction.Press) {
                    f2 = this.f6979b;
                } else if (interaction instanceof HoverInteraction.Enter) {
                    f2 = this.f6980c;
                } else {
                    f2 = interaction instanceof FocusInteraction.Focus ? this.d : this.f6978a;
                }
                this.g = interaction;
                if (!Dp.b(((Dp) ((SnapshotMutableStateImpl) animatable.f3775e).getF10755b()).f11006b, f2)) {
                    Interaction interaction2 = this.f6982f;
                    floatingActionButtonElevationAnimatable$animateElevation$1.f6983b = interaction;
                    floatingActionButtonElevationAnimatable$animateElevation$1.f6985e = 1;
                    if (ElevationKt.a(animatable, f2, interaction2, interaction, floatingActionButtonElevationAnimatable$animateElevation$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                interaction = floatingActionButtonElevationAnimatable$animateElevation$1.f6983b;
                ResultKt.b(obj);
            }
            this.f6982f = interaction;
            this = Unit.f71739a;
            return this;
        } catch (Throwable th) {
            this.f6982f = interaction;
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) {
        FloatingActionButtonElevationAnimatable$snapElevation$1 floatingActionButtonElevationAnimatable$snapElevation$1;
        float f2;
        if (continuationImpl instanceof FloatingActionButtonElevationAnimatable$snapElevation$1) {
            floatingActionButtonElevationAnimatable$snapElevation$1 = (FloatingActionButtonElevationAnimatable$snapElevation$1) continuationImpl;
            int i2 = floatingActionButtonElevationAnimatable$snapElevation$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                floatingActionButtonElevationAnimatable$snapElevation$1.d = i2 - Integer.MIN_VALUE;
            } else {
                floatingActionButtonElevationAnimatable$snapElevation$1 = new FloatingActionButtonElevationAnimatable$snapElevation$1(this, continuationImpl);
            }
        } else {
            floatingActionButtonElevationAnimatable$snapElevation$1 = new FloatingActionButtonElevationAnimatable$snapElevation$1(this, continuationImpl);
        }
        Object obj = floatingActionButtonElevationAnimatable$snapElevation$1.f6986b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = floatingActionButtonElevationAnimatable$snapElevation$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Interaction interaction = this.g;
                if (interaction instanceof PressInteraction.Press) {
                    f2 = this.f6979b;
                } else if (interaction instanceof HoverInteraction.Enter) {
                    f2 = this.f6980c;
                } else {
                    f2 = interaction instanceof FocusInteraction.Focus ? this.d : this.f6978a;
                }
                Animatable animatable = this.f6981e;
                if (!Dp.b(((Dp) ((SnapshotMutableStateImpl) animatable.f3775e).getF10755b()).f11006b, f2)) {
                    Dp dp = new Dp(f2);
                    floatingActionButtonElevationAnimatable$snapElevation$1.d = 1;
                    if (animatable.f(dp, floatingActionButtonElevationAnimatable$snapElevation$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.f71739a;
            }
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            this.f6982f = this.g;
            return Unit.f71739a;
        } catch (Throwable th) {
            this.f6982f = this.g;
            throw th;
        }
    }
}
