package androidx.compose.foundation;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/MarqueeModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/MarqueeModifierNode;", "", "iterations", "Landroidx/compose/foundation/MarqueeAnimationMode;", "animationMode", "delayMillis", "initialDelayMillis", "Landroidx/compose/foundation/MarqueeSpacing;", "spacing", "Landroidx/compose/ui/unit/Dp;", "velocity", "<init>", "(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class MarqueeModifierElement extends ModifierNodeElement<MarqueeModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4252c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MarqueeSpacing f4254f;
    public final float g;

    public MarqueeModifierElement(int i2, int i3, int i4, int i5, MarqueeSpacing marqueeSpacing, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4251b = i2;
        this.f4252c = i3;
        this.d = i4;
        this.f4253e = i5;
        this.f4254f = marqueeSpacing;
        this.g = f2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new MarqueeModifierNode(this.f4251b, this.f4252c, this.d, this.f4253e, this.f4254f, this.g, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MarqueeModifierElement)) {
            return false;
        }
        MarqueeModifierElement marqueeModifierElement = (MarqueeModifierElement) obj;
        if (this.f4251b != marqueeModifierElement.f4251b) {
            return false;
        }
        int i2 = marqueeModifierElement.f4252c;
        MarqueeAnimationMode.Companion companion = MarqueeAnimationMode.f4246b;
        return this.f4252c == i2 && this.d == marqueeModifierElement.d && this.f4253e == marqueeModifierElement.f4253e && Intrinsics.c(this.f4254f, marqueeModifierElement.f4254f) && Dp.b(this.g, marqueeModifierElement.g);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        MarqueeModifierNode marqueeModifierNode = (MarqueeModifierNode) node;
        ((SnapshotMutableStateImpl) marqueeModifierNode.y).setValue(this.f4254f);
        ((SnapshotMutableStateImpl) marqueeModifierNode.z).setValue(new MarqueeAnimationMode(this.f4252c));
        int i2 = marqueeModifierNode.p;
        int i3 = this.f4251b;
        int i4 = this.d;
        int i5 = this.f4253e;
        float f2 = this.g;
        if (i2 == i3 && marqueeModifierNode.q == i4 && marqueeModifierNode.r == i5 && Dp.b(marqueeModifierNode.s, f2)) {
            return;
        }
        marqueeModifierNode.p = i3;
        marqueeModifierNode.q = i4;
        marqueeModifierNode.r = i5;
        marqueeModifierNode.s = f2;
        marqueeModifierNode.i2();
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f4251b) * 31;
        MarqueeAnimationMode.Companion companion = MarqueeAnimationMode.f4246b;
        int iHashCode2 = (this.f4254f.hashCode() + tr.b(this.f4253e, tr.b(this.d, tr.b(this.f4252c, iHashCode, 31), 31), 31)) * 31;
        Dp.Companion companion2 = Dp.f11004c;
        return Float.hashCode(this.g) + iHashCode2;
    }

    public final String toString() {
        return "MarqueeModifierElement(iterations=" + this.f4251b + ", animationMode=" + ((Object) MarqueeAnimationMode.a(this.f4252c)) + ", delayMillis=" + this.d + ", initialDelayMillis=" + this.f4253e + ", spacing=" + this.f4254f + ", velocity=" + ((Object) Dp.c(this.g)) + ')';
    }
}
