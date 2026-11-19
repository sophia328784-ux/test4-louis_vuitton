package androidx.compose.foundation.lazy.grid;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;", "", "", "index", "", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;", "items", "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;", "slots", "", "Landroidx/compose/foundation/lazy/grid/GridItemSpan;", "spans", "", "isVertical", "mainAxisSpacing", "<init>", "(I[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/lazy/grid/LazyGridSlots;Ljava/util/List;ZI)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridMeasuredLine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyGridMeasuredItem[] f5323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyGridSlots f5324c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5326f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5327h;

    public LazyGridMeasuredLine(int i2, LazyGridMeasuredItem[] lazyGridMeasuredItemArr, LazyGridSlots lazyGridSlots, List<GridItemSpan> list, boolean z, int i3) {
        this.f5322a = i2;
        this.f5323b = lazyGridMeasuredItemArr;
        this.f5324c = lazyGridSlots;
        this.d = list;
        this.f5325e = z;
        this.f5326f = i3;
        int iMax = 0;
        for (LazyGridMeasuredItem lazyGridMeasuredItem : lazyGridMeasuredItemArr) {
            iMax = Math.max(iMax, lazyGridMeasuredItem.p);
        }
        this.g = iMax;
        int i4 = iMax + this.f5326f;
        this.f5327h = i4 >= 0 ? i4 : 0;
    }

    public final LazyGridMeasuredItem[] a(int i2, int i3, int i4) {
        LazyGridMeasuredItem[] lazyGridMeasuredItemArr = this.f5323b;
        int length = lazyGridMeasuredItemArr.length;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i5 < length) {
            LazyGridMeasuredItem lazyGridMeasuredItem = lazyGridMeasuredItemArr[i5];
            int i8 = i6 + 1;
            int i9 = (int) ((GridItemSpan) this.d.get(i6)).f5271a;
            int i10 = this.f5324c.f5340b[i7];
            int i11 = this.f5322a;
            boolean z = this.f5325e;
            lazyGridMeasuredItem.r(i2, i10, i3, i4, z ? i11 : i7, z ? i7 : i11);
            i7 += i9;
            i5++;
            i6 = i8;
        }
        return lazyGridMeasuredItemArr;
    }
}
