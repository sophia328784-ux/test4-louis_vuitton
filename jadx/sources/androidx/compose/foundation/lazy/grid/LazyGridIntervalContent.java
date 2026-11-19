package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.c90;
import defpackage.j20;
import defpackage.n50;
import defpackage.n60;
import defpackage.v9;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\nB \u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;", "Landroidx/compose/foundation/lazy/grid/LazyGridScope;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;", "Landroidx/compose/foundation/lazy/grid/LazyGridInterval;", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "content", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridIntervalContent extends LazyLayoutIntervalContent<LazyGridInterval> implements LazyGridScope {
    public static final n50 d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyGridSpanLayoutProvider f5281a = new LazyGridSpanLayoutProvider(this);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableIntervalList f5282b = new MutableIntervalList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5283c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        d = new n50(4);
    }

    public LazyGridIntervalContent(Function1<? super LazyGridScope, Unit> function1) {
        function1.invoke(this);
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
    public final void b(Object obj, Function1 function1, Function3 function3) {
        this.f5282b.a(1, new LazyGridInterval(obj != null ? new c90(obj, 0) : null, function1 != null ? new v9(function1, 4) : d, new n60(16), new ComposableLambdaImpl(-291643851, true, new j20(function3, 1))));
        if (function1 != null) {
            this.f5283c = true;
        }
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
    public final void d(int i2, Function1 function1, ComposableLambdaImpl composableLambdaImpl) {
        this.f5282b.a(i2, new LazyGridInterval(null, d, function1, composableLambdaImpl));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    /* JADX INFO: renamed from: m, reason: from getter */
    public final MutableIntervalList getF5602a() {
        return this.f5282b;
    }
}
