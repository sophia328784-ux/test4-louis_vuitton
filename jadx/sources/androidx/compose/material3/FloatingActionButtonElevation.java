package androidx.compose.material3;

import androidx.compose.ui.unit.Dp;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u0001B)\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/FloatingActionButtonElevation;", "", "Landroidx/compose/ui/unit/Dp;", "defaultElevation", "pressedElevation", "focusedElevation", "hoveredElevation", "<init>", "(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class FloatingActionButtonElevation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f6966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f6967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f6968c;
    public final float d;

    public FloatingActionButtonElevation(float f2, float f3, float f4, float f5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6966a = f2;
        this.f6967b = f3;
        this.f6968c = f4;
        this.d = f5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof FloatingActionButtonElevation)) {
            return false;
        }
        FloatingActionButtonElevation floatingActionButtonElevation = (FloatingActionButtonElevation) obj;
        if (Dp.b(this.f6966a, floatingActionButtonElevation.f6966a) && Dp.b(this.f6967b, floatingActionButtonElevation.f6967b) && Dp.b(this.f6968c, floatingActionButtonElevation.f6968c)) {
            return Dp.b(this.d, floatingActionButtonElevation.d);
        }
        return false;
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f6966a) * 31, 31, this.f6967b), 31, this.f6968c);
    }
}
