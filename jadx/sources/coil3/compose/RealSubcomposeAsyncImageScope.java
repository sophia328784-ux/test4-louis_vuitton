package coil3.compose;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.layout.ContentScale;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcoil3/compose/RealSubcomposeAsyncImageScope;", "Lcoil3/compose/SubcomposeAsyncImageScope;", "Landroidx/compose/foundation/layout/BoxScope;", "parentScope", "Lcoil3/compose/AsyncImagePainter;", "painter", "", "contentDescription", "Landroidx/compose/ui/Alignment;", "alignment", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "", "alpha", "Landroidx/compose/ui/graphics/ColorFilter;", "colorFilter", "", "clipToBounds", "<init>", "(Landroidx/compose/foundation/layout/BoxScope;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Z)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class RealSubcomposeAsyncImageScope implements SubcomposeAsyncImageScope, BoxScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BoxScope f21310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AsyncImagePainter f21311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f21312c;
    public final Alignment d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContentScale f21313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f21314f;
    public final ColorFilter g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f21315h;

    public RealSubcomposeAsyncImageScope(BoxScope boxScope, AsyncImagePainter asyncImagePainter, String str, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, boolean z) {
        this.f21310a = boxScope;
        this.f21311b = asyncImagePainter;
        this.f21312c = str;
        this.d = alignment;
        this.f21313e = contentScale;
        this.f21314f = f2;
        this.g = colorFilter;
        this.f21315h = z;
    }

    @Override // coil3.compose.SubcomposeAsyncImageScope
    /* JADX INFO: renamed from: a, reason: from getter */
    public final float getF21314f() {
        return this.f21314f;
    }

    @Override // coil3.compose.SubcomposeAsyncImageScope
    /* JADX INFO: renamed from: b, reason: from getter */
    public final ColorFilter getG() {
        return this.g;
    }

    @Override // coil3.compose.SubcomposeAsyncImageScope
    /* JADX INFO: renamed from: d, reason: from getter */
    public final AsyncImagePainter getF21311b() {
        return this.f21311b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RealSubcomposeAsyncImageScope)) {
            return false;
        }
        RealSubcomposeAsyncImageScope realSubcomposeAsyncImageScope = (RealSubcomposeAsyncImageScope) obj;
        return Intrinsics.c(this.f21310a, realSubcomposeAsyncImageScope.f21310a) && Intrinsics.c(this.f21311b, realSubcomposeAsyncImageScope.f21311b) && Intrinsics.c(this.f21312c, realSubcomposeAsyncImageScope.f21312c) && Intrinsics.c(this.d, realSubcomposeAsyncImageScope.d) && Intrinsics.c(this.f21313e, realSubcomposeAsyncImageScope.f21313e) && Float.compare(this.f21314f, realSubcomposeAsyncImageScope.f21314f) == 0 && Intrinsics.c(this.g, realSubcomposeAsyncImageScope.g) && this.f21315h == realSubcomposeAsyncImageScope.f21315h;
    }

    @Override // coil3.compose.SubcomposeAsyncImageScope
    /* JADX INFO: renamed from: f, reason: from getter */
    public final ContentScale getF21313e() {
        return this.f21313e;
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    public final Modifier g(Modifier modifier, Alignment alignment) {
        return this.f21310a.g(modifier, alignment);
    }

    @Override // coil3.compose.SubcomposeAsyncImageScope
    /* JADX INFO: renamed from: getAlignment, reason: from getter */
    public final Alignment getD() {
        return this.d;
    }

    @Override // coil3.compose.SubcomposeAsyncImageScope
    /* JADX INFO: renamed from: getContentDescription, reason: from getter */
    public final String getF21312c() {
        return this.f21312c;
    }

    @Override // coil3.compose.SubcomposeAsyncImageScope
    /* JADX INFO: renamed from: h, reason: from getter */
    public final boolean getF21315h() {
        return this.f21315h;
    }

    public final int hashCode() {
        int iHashCode = (this.f21311b.hashCode() + (this.f21310a.hashCode() * 31)) * 31;
        String str = this.f21312c;
        int iB = pq0.b((this.f21313e.hashCode() + ((this.d.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31, 31, this.f21314f);
        ColorFilter colorFilter = this.g;
        return Boolean.hashCode(this.f21315h) + ((iB + (colorFilter != null ? colorFilter.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "RealSubcomposeAsyncImageScope(parentScope=" + this.f21310a + ", painter=" + this.f21311b + ", contentDescription=" + this.f21312c + ", alignment=" + this.d + ", contentScale=" + this.f21313e + ", alpha=" + this.f21314f + ", colorFilter=" + this.g + ", clipToBounds=" + this.f21315h + ")";
    }
}
