package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlockGraphicsLayerModifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;", "Landroidx/compose/ui/unit/Dp;", "elevation", "Landroidx/compose/ui/graphics/Shape;", "shape", "", "clip", "Landroidx/compose/ui/graphics/Color;", "ambientColor", "spotColor", "<init>", "(FLandroidx/compose/ui/graphics/Shape;ZJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ShadowGraphicsLayerElement extends ModifierNodeElement<BlockGraphicsLayerModifier> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f8723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Shape f8724c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f8725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f8726f;

    public ShadowGraphicsLayerElement(float f2, Shape shape, boolean z, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8723b = f2;
        this.f8724c = shape;
        this.d = z;
        this.f8725e = j2;
        this.f8726f = j3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new BlockGraphicsLayerModifier(new ShadowGraphicsLayerElement$createBlock$1(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadowGraphicsLayerElement)) {
            return false;
        }
        ShadowGraphicsLayerElement shadowGraphicsLayerElement = (ShadowGraphicsLayerElement) obj;
        return Dp.b(this.f8723b, shadowGraphicsLayerElement.f8723b) && Intrinsics.c(this.f8724c, shadowGraphicsLayerElement.f8724c) && this.d == shadowGraphicsLayerElement.d && Color.c(this.f8725e, shadowGraphicsLayerElement.f8725e) && Color.c(this.f8726f, shadowGraphicsLayerElement.f8726f);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        BlockGraphicsLayerModifier blockGraphicsLayerModifier = (BlockGraphicsLayerModifier) node;
        ShadowGraphicsLayerElement$createBlock$1 shadowGraphicsLayerElement$createBlock$1 = new ShadowGraphicsLayerElement$createBlock$1(this);
        blockGraphicsLayerModifier.p = shadowGraphicsLayerElement$createBlock$1;
        LayoutModifierNodeKt.a(blockGraphicsLayerModifier, shadowGraphicsLayerElement$createBlock$1);
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        int iB = o60.b((this.f8724c.hashCode() + (Float.hashCode(this.f8723b) * 31)) * 31, 31, this.d);
        Color.Companion companion2 = Color.f8866b;
        ULong.Companion companion3 = ULong.INSTANCE;
        return Long.hashCode(this.f8726f) + fc.a(iB, 31, this.f8725e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShadowGraphicsLayerElement(elevation=");
        fc.w(this.f8723b, ", shape=", sb);
        sb.append(this.f8724c);
        sb.append(", clip=");
        sb.append(this.d);
        sb.append(", ambientColor=");
        o60.y(this.f8725e, ", spotColor=", sb);
        sb.append((Object) Color.i(this.f8726f));
        sb.append(')');
        return sb.toString();
    }
}
