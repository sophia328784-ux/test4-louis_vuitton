package coil3.compose.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import coil3.compose.AsyncImagePainter;
import coil3.compose.ConstraintsSizeResolver;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcoil3/compose/internal/ContentPainterNode;", "Lcoil3/compose/internal/AbstractContentPainterNode;", "Lcoil3/compose/AsyncImagePainter;", "painter", "Landroidx/compose/ui/Alignment;", "alignment", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "", "alpha", "Landroidx/compose/ui/graphics/ColorFilter;", "colorFilter", "", "clipToBounds", "", "contentDescription", "Lcoil3/compose/ConstraintsSizeResolver;", "constraintSizeResolver", "<init>", "(Lcoil3/compose/AsyncImagePainter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ContentPainterNode extends AbstractContentPainterNode {
    public final AsyncImagePainter w;

    public ContentPainterNode(AsyncImagePainter asyncImagePainter, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, boolean z, String str, ConstraintsSizeResolver constraintsSizeResolver) {
        super(alignment, contentScale, f2, colorFilter, z, str, constraintsSizeResolver);
        this.w = asyncImagePainter;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        CoroutineScope coroutineScopeV1 = V1();
        AsyncImagePainter asyncImagePainter = this.w;
        asyncImagePainter.n = coroutineScopeV1;
        asyncImagePainter.d();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        this.w.i();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void b2() {
        this.w.m(null);
    }

    @Override // coil3.compose.internal.AbstractContentPainterNode
    /* JADX INFO: renamed from: i2 */
    public final Painter getW() {
        return this.w;
    }
}
