package androidx.compose.ui.graphics.vector;

import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathBuilder;", "", "<init>", "()V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PathBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f9098a = new ArrayList(32);

    public final void a() {
        this.f9098a.add(PathNode.Close.f9115c);
    }

    public final void b(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.f9098a.add(new PathNode.RelativeCurveTo(f2, f3, f4, f5, f6, f7));
    }

    public final void c(float f2) {
        this.f9098a.add(new PathNode.RelativeHorizontalTo(f2));
    }

    public final void d(float f2, float f3) {
        this.f9098a.add(new PathNode.LineTo(f2, f3));
    }

    public final void e(float f2, float f3) {
        this.f9098a.add(new PathNode.RelativeLineTo(f2, f3));
    }

    public final void f(float f2, float f3) {
        this.f9098a.add(new PathNode.MoveTo(f2, f3));
    }

    public final void g(float f2) {
        this.f9098a.add(new PathNode.RelativeVerticalTo(f2));
    }
}
