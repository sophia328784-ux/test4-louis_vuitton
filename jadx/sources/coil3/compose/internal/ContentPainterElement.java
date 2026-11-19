package coil3.compose.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import coil3.ImageLoader;
import coil3.compose.AsyncImageModelEqualityDelegate;
import coil3.compose.AsyncImagePainter;
import coil3.compose.AsyncImagePreviewHandler;
import coil3.compose.ConstraintsSizeResolver;
import coil3.request.ImageRequest;
import coil3.size.SizeResolver;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u0012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f\u0018\u00010\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcoil3/compose/internal/ContentPainterElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Lcoil3/compose/internal/ContentPainterNode;", "Lcoil3/request/ImageRequest;", "request", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/compose/AsyncImageModelEqualityDelegate;", "modelEqualityDelegate", "Lkotlin/Function1;", "Lcoil3/compose/AsyncImagePainter$State;", "transform", "", "onState", "Landroidx/compose/ui/graphics/FilterQuality;", "filterQuality", "Landroidx/compose/ui/Alignment;", "alignment", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "", "alpha", "Landroidx/compose/ui/graphics/ColorFilter;", "colorFilter", "", "clipToBounds", "Lcoil3/compose/AsyncImagePreviewHandler;", "previewHandler", "", "contentDescription", "<init>", "(Lcoil3/request/ImageRequest;Lcoil3/ImageLoader;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLcoil3/compose/AsyncImagePreviewHandler;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class ContentPainterElement extends ModifierNodeElement<ContentPainterNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageRequest f21323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageLoader f21324c;
    public final AsyncImageModelEqualityDelegate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f21325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function1 f21326f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Alignment f21327h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ContentScale f21328i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f21329j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ColorFilter f21330k;
    public final boolean l;
    public final AsyncImagePreviewHandler m;
    public final String n;

    public ContentPainterElement(ImageRequest imageRequest, ImageLoader imageLoader, AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate, Function1 function1, Function1 function2, int i2, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, boolean z, AsyncImagePreviewHandler asyncImagePreviewHandler, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f21323b = imageRequest;
        this.f21324c = imageLoader;
        this.d = asyncImageModelEqualityDelegate;
        this.f21325e = function1;
        this.f21326f = function2;
        this.g = i2;
        this.f21327h = alignment;
        this.f21328i = contentScale;
        this.f21329j = f2;
        this.f21330k = colorFilter;
        this.l = z;
        this.m = asyncImagePreviewHandler;
        this.n = str;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = this.d;
        ImageLoader imageLoader = this.f21324c;
        ImageRequest imageRequest = this.f21323b;
        AsyncImagePainter.Input input = new AsyncImagePainter.Input(imageLoader, imageRequest, asyncImageModelEqualityDelegate);
        AsyncImagePainter asyncImagePainter = new AsyncImagePainter(input);
        asyncImagePainter.o = this.f21325e;
        asyncImagePainter.p = this.f21326f;
        asyncImagePainter.q = this.f21328i;
        asyncImagePainter.r = this.g;
        asyncImagePainter.s = this.m;
        asyncImagePainter.m(input);
        SizeResolver sizeResolver = imageRequest.u;
        return new ContentPainterNode(asyncImagePainter, this.f21327h, this.f21328i, this.f21329j, this.f21330k, this.l, this.n, sizeResolver instanceof ConstraintsSizeResolver ? (ConstraintsSizeResolver) sizeResolver : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContentPainterElement)) {
            return false;
        }
        ContentPainterElement contentPainterElement = (ContentPainterElement) obj;
        if (!Intrinsics.c(this.f21323b, contentPainterElement.f21323b) || !Intrinsics.c(this.f21324c, contentPainterElement.f21324c) || !Intrinsics.c(this.d, contentPainterElement.d) || !Intrinsics.c(this.f21325e, contentPainterElement.f21325e) || !Intrinsics.c(this.f21326f, contentPainterElement.f21326f)) {
            return false;
        }
        int i2 = contentPainterElement.g;
        FilterQuality.Companion companion = FilterQuality.f8878a;
        return this.g == i2 && Intrinsics.c(this.f21327h, contentPainterElement.f21327h) && Intrinsics.c(this.f21328i, contentPainterElement.f21328i) && Float.compare(this.f21329j, contentPainterElement.f21329j) == 0 && Intrinsics.c(this.f21330k, contentPainterElement.f21330k) && this.l == contentPainterElement.l && Intrinsics.c(this.m, contentPainterElement.m) && Intrinsics.c(this.n, contentPainterElement.n);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ContentPainterNode contentPainterNode = (ContentPainterNode) node;
        long r = contentPainterNode.w.getR();
        ConstraintsSizeResolver constraintsSizeResolver = contentPainterNode.v;
        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = this.d;
        ImageLoader imageLoader = this.f21324c;
        ImageRequest imageRequest = this.f21323b;
        AsyncImagePainter.Input input = new AsyncImagePainter.Input(imageLoader, imageRequest, asyncImageModelEqualityDelegate);
        AsyncImagePainter asyncImagePainter = contentPainterNode.w;
        asyncImagePainter.o = this.f21325e;
        asyncImagePainter.p = this.f21326f;
        ContentScale contentScale = this.f21328i;
        asyncImagePainter.q = contentScale;
        asyncImagePainter.r = this.g;
        asyncImagePainter.s = this.m;
        asyncImagePainter.m(input);
        boolean zA = Size.a(r, asyncImagePainter.getR());
        contentPainterNode.p = this.f21327h;
        SizeResolver sizeResolver = imageRequest.u;
        contentPainterNode.v = sizeResolver instanceof ConstraintsSizeResolver ? (ConstraintsSizeResolver) sizeResolver : null;
        contentPainterNode.q = contentScale;
        contentPainterNode.r = this.f21329j;
        contentPainterNode.s = this.f21330k;
        contentPainterNode.t = this.l;
        String str = contentPainterNode.u;
        String str2 = this.n;
        if (!Intrinsics.c(str, str2)) {
            contentPainterNode.u = str2;
            SemanticsModifierNodeKt.b(contentPainterNode);
        }
        boolean zC = Intrinsics.c(constraintsSizeResolver, contentPainterNode.v);
        if (!zA || !zC) {
            DelegatableNodeKt.f(contentPainterNode).X();
        }
        DrawModifierNodeKt.a(contentPainterNode);
    }

    public final int hashCode() {
        int iHashCode = (this.f21325e.hashCode() + ((this.d.hashCode() + ((this.f21324c.hashCode() + (this.f21323b.hashCode() * 31)) * 31)) * 31)) * 31;
        Function1 function1 = this.f21326f;
        int iHashCode2 = (iHashCode + (function1 == null ? 0 : function1.hashCode())) * 31;
        FilterQuality.Companion companion = FilterQuality.f8878a;
        int iB = pq0.b((this.f21328i.hashCode() + ((this.f21327h.hashCode() + tr.b(this.g, iHashCode2, 31)) * 31)) * 31, 31, this.f21329j);
        ColorFilter colorFilter = this.f21330k;
        int iB2 = o60.b((iB + (colorFilter == null ? 0 : colorFilter.hashCode())) * 31, 31, this.l);
        AsyncImagePreviewHandler asyncImagePreviewHandler = this.m;
        int iHashCode3 = (iB2 + (asyncImagePreviewHandler == null ? 0 : asyncImagePreviewHandler.hashCode())) * 31;
        String str = this.n;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        String strA = FilterQuality.a(this.g);
        StringBuilder sb = new StringBuilder("ContentPainterElement(request=");
        sb.append(this.f21323b);
        sb.append(", imageLoader=");
        sb.append(this.f21324c);
        sb.append(", modelEqualityDelegate=");
        sb.append(this.d);
        sb.append(", transform=");
        sb.append(this.f21325e);
        sb.append(", onState=");
        sb.append(this.f21326f);
        sb.append(", filterQuality=");
        sb.append(strA);
        sb.append(", alignment=");
        sb.append(this.f21327h);
        sb.append(", contentScale=");
        sb.append(this.f21328i);
        sb.append(", alpha=");
        sb.append(this.f21329j);
        sb.append(", colorFilter=");
        sb.append(this.f21330k);
        sb.append(", clipToBounds=");
        sb.append(this.l);
        sb.append(", previewHandler=");
        sb.append(this.m);
        sb.append(", contentDescription=");
        return n00.r(this.n, ")", sb);
    }
}
