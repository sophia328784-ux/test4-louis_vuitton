package androidx.compose.material3;

import androidx.compose.ui.unit.Dp;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B9\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/material3/CardElevation;", "", "Landroidx/compose/ui/unit/Dp;", "defaultElevation", "pressedElevation", "focusedElevation", "hoveredElevation", "draggedElevation", "disabledElevation", "<init>", "(FFFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CardElevation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f6657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f6658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f6659c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f6660e;

    public CardElevation(float f2, float f3, float f4, float f5, float f6, float f7, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6657a = f2;
        this.f6658b = f3;
        this.f6659c = f4;
        this.d = f5;
        this.f6660e = f7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CardElevation)) {
            return false;
        }
        CardElevation cardElevation = (CardElevation) obj;
        return Dp.b(this.f6657a, cardElevation.f6657a) && Dp.b(this.f6658b, cardElevation.f6658b) && Dp.b(this.f6659c, cardElevation.f6659c) && Dp.b(this.d, cardElevation.d) && Dp.b(this.f6660e, cardElevation.f6660e);
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Float.hashCode(this.f6660e) + pq0.b(pq0.b(pq0.b(Float.hashCode(this.f6657a) * 31, 31, this.f6658b), 31, this.f6659c), 31, this.d);
    }
}
