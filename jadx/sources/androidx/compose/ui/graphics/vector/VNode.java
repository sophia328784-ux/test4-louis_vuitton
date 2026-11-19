package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/vector/VNode;", "", "Landroidx/compose/ui/graphics/vector/GroupComponent;", "Landroidx/compose/ui/graphics/vector/PathComponent;", "Landroidx/compose/ui/graphics/vector/VectorComponent;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class VNode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Function1 f9152a;

    public VNode(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract void a(DrawScope drawScope);

    /* JADX INFO: renamed from: b, reason: from getter */
    public Function1 getF9152a() {
        return this.f9152a;
    }

    public final void c() {
        Function1 f9152a = getF9152a();
        if (f9152a != null) {
            f9152a.invoke(this);
        }
    }

    public void d(Function1 function1) {
        this.f9152a = function1;
    }
}
