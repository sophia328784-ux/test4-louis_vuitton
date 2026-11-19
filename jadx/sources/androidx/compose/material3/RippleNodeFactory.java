package androidx.compose.material3;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Dp;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/material3/RippleNodeFactory;", "Landroidx/compose/foundation/IndicationNodeFactory;", "", "bounded", "Landroidx/compose/ui/unit/Dp;", "radius", "Landroidx/compose/ui/graphics/ColorProducer;", "colorProducer", "<init>", "(ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/compose/ui/graphics/Color;", "color", "(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class RippleNodeFactory implements IndicationNodeFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f7167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f7168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ColorProducer f7169c;
    public final long d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RippleNodeFactory(boolean z, float f2, ColorProducer colorProducer, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, f2, colorProducer, Color.f8871i);
        Color.f8866b.getClass();
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final DelegatableNode a(InteractionSource interactionSource) {
        ColorProducer colorProducer = this.f7169c;
        if (colorProducer == null) {
            colorProducer = new ColorProducer() { // from class: androidx.compose.material3.RippleNodeFactory$create$colorProducer$1
                @Override // androidx.compose.ui.graphics.ColorProducer
                public final long a() {
                    return this.f7170b.d;
                }
            };
        }
        float f2 = this.f7168b;
        return new DelegatingThemeAwareRippleNode(interactionSource, this.f7167a, f2, colorProducer, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleNodeFactory)) {
            return false;
        }
        RippleNodeFactory rippleNodeFactory = (RippleNodeFactory) obj;
        if (this.f7167a == rippleNodeFactory.f7167a && Dp.b(this.f7168b, rippleNodeFactory.f7168b) && Intrinsics.c(this.f7169c, rippleNodeFactory.f7169c)) {
            return Color.c(this.d, rippleNodeFactory.d);
        }
        return false;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f7167a) * 31;
        Dp.Companion companion = Dp.f11004c;
        int iB = pq0.b(iHashCode, 31, this.f7168b);
        ColorProducer colorProducer = this.f7169c;
        int iHashCode2 = colorProducer != null ? colorProducer.hashCode() : 0;
        Color.Companion companion2 = Color.f8866b;
        ULong.Companion companion3 = ULong.INSTANCE;
        return Long.hashCode(this.d) + ((iB + iHashCode2) * 31);
    }

    public RippleNodeFactory(boolean z, float f2, ColorProducer colorProducer, long j2) {
        this.f7167a = z;
        this.f7168b = f2;
        this.f7169c = colorProducer;
        this.d = j2;
    }

    public RippleNodeFactory(boolean z, float f2, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, f2, (ColorProducer) null, j2);
    }
}
