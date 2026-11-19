package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B(\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/draw/CacheDrawModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/ui/draw/BuildDrawCacheParams;", "Landroidx/compose/ui/draw/CacheDrawScope;", "cacheDrawScope", "Lkotlin/Function1;", "Landroidx/compose/ui/draw/DrawResult;", "Lkotlin/ExtensionFunctionType;", "block", "<init>", "(Landroidx/compose/ui/draw/CacheDrawScope;Lkotlin/jvm/functions/Function1;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class CacheDrawModifierNodeImpl extends Modifier.Node implements CacheDrawModifierNode, ObserverModifierNode, BuildDrawCacheParams {
    public final CacheDrawScope p;
    public boolean q;
    public ScopedGraphicsContext r;
    public Function1 s;

    public CacheDrawModifierNodeImpl(CacheDrawScope cacheDrawScope, Function1<? super CacheDrawScope, DrawResult> function1) {
        this.p = cacheDrawScope;
        this.s = function1;
        cacheDrawScope.f8706b = this;
        new Function0<GraphicsContext>() { // from class: androidx.compose.ui.draw.CacheDrawModifierNodeImpl.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CacheDrawModifierNodeImpl cacheDrawModifierNodeImpl = CacheDrawModifierNodeImpl.this;
                ScopedGraphicsContext scopedGraphicsContext = cacheDrawModifierNodeImpl.r;
                if (scopedGraphicsContext == null) {
                    scopedGraphicsContext = new ScopedGraphicsContext();
                    cacheDrawModifierNodeImpl.r = scopedGraphicsContext;
                }
                if (scopedGraphicsContext.f8722b == null) {
                    GraphicsContext graphicsContext = DelegatableNodeKt.g(cacheDrawModifierNodeImpl).getGraphicsContext();
                    scopedGraphicsContext.c();
                    scopedGraphicsContext.f8722b = graphicsContext;
                }
                return scopedGraphicsContext;
            }
        };
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void C() {
        R0();
    }

    @Override // androidx.compose.ui.draw.CacheDrawModifierNode
    public final void R0() {
        ScopedGraphicsContext scopedGraphicsContext = this.r;
        if (scopedGraphicsContext != null) {
            scopedGraphicsContext.c();
        }
        this.q = false;
        this.p.f8707c = null;
        DrawModifierNodeKt.a(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        ScopedGraphicsContext scopedGraphicsContext = this.r;
        if (scopedGraphicsContext != null) {
            scopedGraphicsContext.c();
        }
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final long b() {
        return IntSizeKt.d(DelegatableNodeKt.d(this, 4).d);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void b2() {
        R0();
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final Density getDensity() {
        return DelegatableNodeKt.f(this).A;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final LayoutDirection getLayoutDirection() {
        return DelegatableNodeKt.f(this).B;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void i1() {
        R0();
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean z = this.q;
        final CacheDrawScope cacheDrawScope = this.p;
        if (!z) {
            cacheDrawScope.f8707c = null;
            ObserverModifierNodeKt.a(this, new Function0<Unit>() { // from class: androidx.compose.ui.draw.CacheDrawModifierNodeImpl$getOrBuildCachedDrawBlock$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    this.f8705c.s.invoke(cacheDrawScope);
                    return Unit.f71739a;
                }
            });
            if (cacheDrawScope.f8707c == null) {
                throw a.s("DrawResult not defined, did you forget to call onDraw?");
            }
            this.q = true;
        }
        DrawResult drawResult = cacheDrawScope.f8707c;
        drawResult.getClass();
        drawResult.f8710a.invoke(layoutNodeDrawScope);
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public final void p0() {
        R0();
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        R0();
    }
}
