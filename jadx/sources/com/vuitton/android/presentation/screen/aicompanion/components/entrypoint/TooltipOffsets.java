package com.vuitton.android.presentation.screen.aicompanion.components.entrypoint;

import androidx.compose.ui.unit.Dp;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;", "", "Landroidx/compose/ui/unit/Dp;", "tooltipX", "tooltipY", "arrowX", "arrowY", "<init>", "(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
final /* data */ class TooltipOffsets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f52846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f52847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f52848c;
    public final float d;

    public TooltipOffsets(float f2, float f3, float f4, float f5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f52846a = f2;
        this.f52847b = f3;
        this.f52848c = f4;
        this.d = f5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TooltipOffsets)) {
            return false;
        }
        TooltipOffsets tooltipOffsets = (TooltipOffsets) obj;
        return Dp.b(this.f52846a, tooltipOffsets.f52846a) && Dp.b(this.f52847b, tooltipOffsets.f52847b) && Dp.b(this.f52848c, tooltipOffsets.f52848c) && Dp.b(this.d, tooltipOffsets.d);
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f52846a) * 31, 31, this.f52847b), 31, this.f52848c);
    }

    public final String toString() {
        String strC = Dp.c(this.f52846a);
        String strC2 = Dp.c(this.f52847b);
        return tr.l(fc.s("TooltipOffsets(tooltipX=", strC, ", tooltipY=", strC2, ", arrowX="), Dp.c(this.f52848c), ", arrowY=", Dp.c(this.d), ")");
    }
}
