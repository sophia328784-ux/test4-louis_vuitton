package defpackage;

import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e90 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f68806c;

    public /* synthetic */ e90(int i2, int i3) {
        this.f68805b = i3;
        this.f68806c = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68805b;
        int i3 = this.f68806c;
        switch (i2) {
            case 0:
                LazyGridMeasureResult lazyGridMeasureResult = LazyGridStateKt.f5373a;
                return new LazyGridState(i3, 0);
            case 1:
                LazyListMeasureResult lazyListMeasureResult = LazyListStateKt.f5255a;
                return new LazyListState(i3, 0);
            default:
                return Integer.valueOf(i3);
        }
    }
}
