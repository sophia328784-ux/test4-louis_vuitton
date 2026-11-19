package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.unit.Density;
import defpackage.m21;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/draw/CacheDrawScope;", "Landroidx/compose/ui/unit/Density;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CacheDrawScope implements Density {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BuildDrawCacheParams f8706b = EmptyBuildDrawCacheParams.f8713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DrawResult f8707c;

    public final DrawResult c(final m21 m21Var) {
        return e(new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.ui.draw.CacheDrawScope$onDrawBehind$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                m21Var.invoke(contentDrawScope);
                contentDrawScope.R1();
                return Unit.f71739a;
            }
        });
    }

    public final DrawResult e(Function1 function1) {
        DrawResult drawResult = new DrawResult(function1);
        this.f8707c = drawResult;
        return drawResult;
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.f8706b.getDensity().getF11002b();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.f8706b.getDensity().getF11003c();
    }
}
