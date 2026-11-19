package androidx.compose.ui.draw;

import androidx.collection.MutableObjectList;
import androidx.collection.ObjectListKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/draw/ScopedGraphicsContext;", "Landroidx/compose/ui/graphics/GraphicsContext;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ScopedGraphicsContext implements GraphicsContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public MutableObjectList f8721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GraphicsContext f8722b;

    @Override // androidx.compose.ui.graphics.GraphicsContext
    public final GraphicsLayer a() {
        GraphicsContext graphicsContext = this.f8722b;
        if (graphicsContext == null) {
            InlineClassHelperKt.c("GraphicsContext not provided");
        }
        GraphicsLayer graphicsLayerA = graphicsContext.a();
        MutableObjectList mutableObjectList = this.f8721a;
        if (mutableObjectList != null) {
            mutableObjectList.g(graphicsLayerA);
            return graphicsLayerA;
        }
        Object[] objArr = ObjectListKt.f3348a;
        MutableObjectList mutableObjectList2 = new MutableObjectList(1);
        mutableObjectList2.g(graphicsLayerA);
        this.f8721a = mutableObjectList2;
        return graphicsLayerA;
    }

    @Override // androidx.compose.ui.graphics.GraphicsContext
    public final void b(GraphicsLayer graphicsLayer) {
        GraphicsContext graphicsContext = this.f8722b;
        if (graphicsContext != null) {
            graphicsContext.b(graphicsLayer);
        }
    }

    public final void c() {
        MutableObjectList mutableObjectList = this.f8721a;
        if (mutableObjectList != null) {
            Object[] objArr = mutableObjectList.f3345a;
            int i2 = mutableObjectList.f3346b;
            for (int i3 = 0; i3 < i2; i3++) {
                b((GraphicsLayer) objArr[i3]);
            }
            mutableObjectList.k();
        }
    }
}
