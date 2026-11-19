package androidx.compose.foundation.lazy;

import androidx.collection.MutableIntList;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.c90;
import defpackage.e10;
import defpackage.j20;
import defpackage.n60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B \u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListIntervalContent;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;", "Landroidx/compose/foundation/lazy/LazyListInterval;", "Landroidx/compose/foundation/lazy/LazyListScope;", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "content", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListIntervalContent extends LazyLayoutIntervalContent<LazyListInterval> implements LazyListScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableIntervalList f5183a = new MutableIntervalList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableIntList f5184b;

    public LazyListIntervalContent(Function1<? super LazyListScope, Unit> function1) {
        function1.invoke(this);
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public final void a(Function4 function4) {
        MutableIntList mutableIntList = this.f5184b;
        if (mutableIntList == null) {
            mutableIntList = new MutableIntList(0, 1, null);
            this.f5184b = mutableIntList;
        }
        MutableIntervalList mutableIntervalList = this.f5183a;
        mutableIntList.e(mutableIntervalList.f5539b);
        g(null, new ComposableLambdaImpl(-1588696110, true, new e10(mutableIntervalList.f5539b, function4)));
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public final void g(Object obj, Function3 function3) {
        this.f5183a.a(1, new LazyListInterval(obj != null ? new c90(obj, 1) : null, new n60(21), new ComposableLambdaImpl(-857469575, true, new j20(function3, 2))));
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public final void h(int i2, Function1 function1, Function1 function2, Function4 function4) {
        this.f5183a.a(i2, new LazyListInterval(function1, function2, function4));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    /* JADX INFO: renamed from: m, reason: from getter */
    public final MutableIntervalList getF5602a() {
        return this.f5183a;
    }
}
