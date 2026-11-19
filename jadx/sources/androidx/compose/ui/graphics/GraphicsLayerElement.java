package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B£\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Landroidx/compose/ui/graphics/GraphicsLayerElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;", "", "scaleX", "scaleY", "alpha", "translationX", "translationY", "shadowElevation", "rotationX", "rotationY", "rotationZ", "cameraDistance", "Landroidx/compose/ui/graphics/TransformOrigin;", "transformOrigin", "Landroidx/compose/ui/graphics/Shape;", "shape", "", "clip", "Landroidx/compose/ui/graphics/RenderEffect;", "renderEffect", "Landroidx/compose/ui/graphics/Color;", "ambientShadowColor", "spotShadowColor", "Landroidx/compose/ui/graphics/CompositingStrategy;", "compositingStrategy", "Landroidx/compose/ui/graphics/BlendMode;", "blendMode", "Landroidx/compose/ui/graphics/ColorFilter;", "colorFilter", "<init>", "(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class GraphicsLayerElement extends ModifierNodeElement<SimpleGraphicsLayerModifier> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f8882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f8883c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f8884e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f8885f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f8886h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f8887i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f8888j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f8889k;
    public final long l;
    public final Shape m;
    public final boolean n;
    public final RenderEffect o;
    public final long p;
    public final long q;
    public final int r;
    public final int s;
    public final ColorFilter t;

    public GraphicsLayerElement(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, long j2, Shape shape, boolean z, RenderEffect renderEffect, long j3, long j4, int i2, int i3, ColorFilter colorFilter, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8882b = f2;
        this.f8883c = f3;
        this.d = f4;
        this.f8884e = f5;
        this.f8885f = f6;
        this.g = f7;
        this.f8886h = f8;
        this.f8887i = f9;
        this.f8888j = f10;
        this.f8889k = f11;
        this.l = j2;
        this.m = shape;
        this.n = z;
        this.o = renderEffect;
        this.p = j3;
        this.q = j4;
        this.r = i2;
        this.s = i3;
        this.t = colorFilter;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new SimpleGraphicsLayerModifier(this.f8882b, this.f8883c, this.d, this.f8884e, this.f8885f, this.g, this.f8886h, this.f8887i, this.f8888j, this.f8889k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GraphicsLayerElement)) {
            return false;
        }
        GraphicsLayerElement graphicsLayerElement = (GraphicsLayerElement) obj;
        if (Float.compare(this.f8882b, graphicsLayerElement.f8882b) != 0 || Float.compare(this.f8883c, graphicsLayerElement.f8883c) != 0 || Float.compare(this.d, graphicsLayerElement.d) != 0 || Float.compare(this.f8884e, graphicsLayerElement.f8884e) != 0 || Float.compare(this.f8885f, graphicsLayerElement.f8885f) != 0 || Float.compare(this.g, graphicsLayerElement.g) != 0 || Float.compare(this.f8886h, graphicsLayerElement.f8886h) != 0 || Float.compare(this.f8887i, graphicsLayerElement.f8887i) != 0 || Float.compare(this.f8888j, graphicsLayerElement.f8888j) != 0 || Float.compare(this.f8889k, graphicsLayerElement.f8889k) != 0 || !TransformOrigin.a(this.l, graphicsLayerElement.l) || !Intrinsics.c(this.m, graphicsLayerElement.m) || this.n != graphicsLayerElement.n || !Intrinsics.c(this.o, graphicsLayerElement.o) || !Color.c(this.p, graphicsLayerElement.p) || !Color.c(this.q, graphicsLayerElement.q)) {
            return false;
        }
        int i2 = graphicsLayerElement.r;
        CompositingStrategy.Companion companion = CompositingStrategy.f8875a;
        if (this.r == i2) {
            int i3 = graphicsLayerElement.s;
            BlendMode.Companion companion2 = BlendMode.f8847a;
            return this.s == i3 && Intrinsics.c(this.t, graphicsLayerElement.t);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = (SimpleGraphicsLayerModifier) node;
        simpleGraphicsLayerModifier.p = this.f8882b;
        simpleGraphicsLayerModifier.q = this.f8883c;
        simpleGraphicsLayerModifier.r = this.d;
        simpleGraphicsLayerModifier.s = this.f8884e;
        simpleGraphicsLayerModifier.t = this.f8885f;
        simpleGraphicsLayerModifier.u = this.g;
        simpleGraphicsLayerModifier.v = this.f8886h;
        simpleGraphicsLayerModifier.w = this.f8887i;
        simpleGraphicsLayerModifier.x = this.f8888j;
        simpleGraphicsLayerModifier.y = this.f8889k;
        simpleGraphicsLayerModifier.z = this.l;
        simpleGraphicsLayerModifier.A = this.m;
        simpleGraphicsLayerModifier.B = this.n;
        simpleGraphicsLayerModifier.C = this.o;
        simpleGraphicsLayerModifier.D = this.p;
        simpleGraphicsLayerModifier.E = this.q;
        simpleGraphicsLayerModifier.F = this.r;
        simpleGraphicsLayerModifier.G = this.s;
        simpleGraphicsLayerModifier.H = this.t;
        LayoutModifierNodeKt.a(simpleGraphicsLayerModifier, simpleGraphicsLayerModifier.I);
    }

    public final int hashCode() {
        int iB = pq0.b(pq0.b(pq0.b(pq0.b(pq0.b(pq0.b(pq0.b(pq0.b(pq0.b(Float.hashCode(this.f8882b) * 31, 31, this.f8883c), 31, this.d), 31, this.f8884e), 31, this.f8885f), 31, this.g), 31, this.f8886h), 31, this.f8887i), 31, this.f8888j), 31, this.f8889k);
        TransformOrigin.Companion companion = TransformOrigin.f8941b;
        int iB2 = o60.b((this.m.hashCode() + fc.a(iB, 31, this.l)) * 31, 31, this.n);
        RenderEffect renderEffect = this.o;
        int iHashCode = (iB2 + (renderEffect == null ? 0 : renderEffect.hashCode())) * 31;
        Color.Companion companion2 = Color.f8866b;
        ULong.Companion companion3 = ULong.INSTANCE;
        int iA = fc.a(fc.a(iHashCode, 31, this.p), 31, this.q);
        CompositingStrategy.Companion companion4 = CompositingStrategy.f8875a;
        int iB3 = tr.b(this.r, iA, 31);
        BlendMode.Companion companion5 = BlendMode.f8847a;
        int iB4 = tr.b(this.s, iB3, 31);
        ColorFilter colorFilter = this.t;
        return iB4 + (colorFilter != null ? colorFilter.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GraphicsLayerElement(scaleX=");
        sb.append(this.f8882b);
        sb.append(", scaleY=");
        sb.append(this.f8883c);
        sb.append(", alpha=");
        sb.append(this.d);
        sb.append(", translationX=");
        sb.append(this.f8884e);
        sb.append(", translationY=");
        sb.append(this.f8885f);
        sb.append(", shadowElevation=");
        sb.append(this.g);
        sb.append(", rotationX=");
        sb.append(this.f8886h);
        sb.append(", rotationY=");
        sb.append(this.f8887i);
        sb.append(", rotationZ=");
        sb.append(this.f8888j);
        sb.append(", cameraDistance=");
        sb.append(this.f8889k);
        sb.append(", transformOrigin=");
        sb.append((Object) TransformOrigin.d(this.l));
        sb.append(", shape=");
        sb.append(this.m);
        sb.append(", clip=");
        sb.append(this.n);
        sb.append(", renderEffect=");
        sb.append(this.o);
        sb.append(", ambientShadowColor=");
        o60.y(this.p, ", spotShadowColor=", sb);
        o60.y(this.q, ", compositingStrategy=", sb);
        CompositingStrategy.Companion companion = CompositingStrategy.f8875a;
        sb.append((Object) ("CompositingStrategy(value=" + this.r + ')'));
        sb.append(", blendMode=");
        sb.append((Object) BlendMode.a(this.s));
        sb.append(", colorFilter=");
        sb.append(this.t);
        sb.append(')');
        return sb.toString();
    }
}
