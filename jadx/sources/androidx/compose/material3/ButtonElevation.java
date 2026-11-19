package androidx.compose.material3;

import androidx.compose.ui.unit.Dp;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B1\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/material3/ButtonElevation;", "", "Landroidx/compose/ui/unit/Dp;", "defaultElevation", "pressedElevation", "focusedElevation", "hoveredElevation", "disabledElevation", "<init>", "(FFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ButtonElevation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f6638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f6639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f6640c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f6641e;

    public ButtonElevation(float f2, float f3, float f4, float f5, float f6, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6638a = f2;
        this.f6639b = f3;
        this.f6640c = f4;
        this.d = f5;
        this.f6641e = f6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ButtonElevation)) {
            return false;
        }
        ButtonElevation buttonElevation = (ButtonElevation) obj;
        return Dp.b(this.f6638a, buttonElevation.f6638a) && Dp.b(this.f6639b, buttonElevation.f6639b) && Dp.b(this.f6640c, buttonElevation.f6640c) && Dp.b(this.d, buttonElevation.d) && Dp.b(this.f6641e, buttonElevation.f6641e);
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Float.hashCode(this.f6641e) + pq0.b(pq0.b(pq0.b(Float.hashCode(this.f6638a) * 31, 31, this.f6639b), 31, this.f6640c), 31, this.d);
    }
}
