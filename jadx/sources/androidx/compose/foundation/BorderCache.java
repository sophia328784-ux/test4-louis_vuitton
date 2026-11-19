package androidx.compose.foundation;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/BorderCache;", "", "Landroidx/compose/ui/graphics/ImageBitmap;", "imageBitmap", "Landroidx/compose/ui/graphics/Canvas;", "canvas", "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;", "canvasDrawScope", "Landroidx/compose/ui/graphics/Path;", "borderPath", "<init>", "(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class BorderCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ImageBitmap f4149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Canvas f4150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CanvasDrawScope f4151c;
    public Path d;

    public /* synthetic */ BorderCache(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : imageBitmap, (i2 & 2) != 0 ? null : canvas, (i2 & 4) != 0 ? null : canvasDrawScope, (i2 & 8) != 0 ? null : path);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderCache)) {
            return false;
        }
        BorderCache borderCache = (BorderCache) obj;
        return Intrinsics.c(this.f4149a, borderCache.f4149a) && Intrinsics.c(this.f4150b, borderCache.f4150b) && Intrinsics.c(this.f4151c, borderCache.f4151c) && Intrinsics.c(this.d, borderCache.d);
    }

    public final int hashCode() {
        ImageBitmap imageBitmap = this.f4149a;
        int iHashCode = (imageBitmap == null ? 0 : imageBitmap.hashCode()) * 31;
        Canvas canvas = this.f4150b;
        int iHashCode2 = (iHashCode + (canvas == null ? 0 : canvas.hashCode())) * 31;
        CanvasDrawScope canvasDrawScope = this.f4151c;
        int iHashCode3 = (iHashCode2 + (canvasDrawScope == null ? 0 : canvasDrawScope.hashCode())) * 31;
        Path path = this.d;
        return iHashCode3 + (path != null ? path.hashCode() : 0);
    }

    public final String toString() {
        return "BorderCache(imageBitmap=" + this.f4149a + ", canvas=" + this.f4150b + ", canvasDrawScope=" + this.f4151c + ", borderPath=" + this.d + ')';
    }

    public BorderCache(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path) {
        this.f4149a = imageBitmap;
        this.f4150b = canvas;
        this.f4151c = canvasDrawScope;
        this.d = path;
    }

    public BorderCache() {
        this(null, null, null, null, 15, null);
    }
}
