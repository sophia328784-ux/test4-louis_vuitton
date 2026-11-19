package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.IntervalList;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;", "", "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;", "gridContent", "<init>", "(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;)V", "LineConfiguration", "Bucket", "LazyGridItemSpanScopeImpl", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridSpanLayoutProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyGridIntervalContent f5341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f5342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5343c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5345f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f5346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5347i;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class LazyGridItemSpanScopeImpl implements LazyGridItemSpanScope {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LazyGridItemSpanScopeImpl f5350a = new LazyGridItemSpanScopeImpl();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static int f5351b;

        @Override // androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope
        public final int a() {
            return f5351b;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;", "", "", "firstItemIndex", "", "Landroidx/compose/foundation/lazy/grid/GridItemSpan;", "spans", "<init>", "(ILjava/util/List;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class LineConfiguration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5352a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f5353b;

        public LineConfiguration(int i2, List<GridItemSpan> list) {
            this.f5352a = i2;
            this.f5353b = list;
        }
    }

    public LazyGridSpanLayoutProvider(LazyGridIntervalContent lazyGridIntervalContent) {
        this.f5341a = lazyGridIntervalContent;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add(new Bucket(i2, i2, 2, null));
        this.f5342b = arrayList;
        this.f5345f = -1;
        this.g = new ArrayList();
        this.f5346h = EmptyList.f71768b;
    }

    public final int a() {
        return ((int) Math.sqrt((((double) d()) * 1.0d) / ((double) this.f5347i))) + 1;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a0  */
    public final LineConfiguration b(int i2) {
        int i3;
        boolean z;
        int i4;
        int i5;
        List list;
        if (!this.f5341a.f5283c) {
            int i6 = this.f5347i;
            int i7 = i2 * i6;
            int iD = d() - i7;
            if (i6 > iD) {
                i6 = iD;
            }
            if (i6 < 0) {
                i6 = 0;
            }
            if (i6 == this.f5346h.size()) {
                list = this.f5346h;
            } else {
                ArrayList arrayList = new ArrayList(i6);
                for (int i8 = 0; i8 < i6; i8++) {
                    arrayList.add(new GridItemSpan(LazyGridSpanKt.a(1)));
                }
                this.f5346h = arrayList;
                list = arrayList;
            }
            return new LineConfiguration(i7, list);
        }
        int iA = i2 / a();
        ArrayList arrayList2 = this.f5342b;
        int iMin = Math.min(iA, arrayList2.size() - 1);
        int iA2 = a() * iMin;
        int iIntValue = ((Bucket) arrayList2.get(iMin)).f5348a;
        int iE = ((Bucket) arrayList2.get(iMin)).f5349b;
        int i9 = this.f5343c;
        ArrayList arrayList3 = this.g;
        if (iA2 <= i9 && i9 <= i2) {
            iIntValue = this.d;
            iE = this.f5344e;
            iA2 = i9;
        } else if (iMin == this.f5345f && (i3 = i2 - iA2) < arrayList3.size()) {
            iIntValue = ((Number) arrayList3.get(i3)).intValue();
            iA2 = i2;
            iE = 0;
        }
        if (iA2 % a() == 0) {
            int i10 = i2 - iA2;
            z = 2 <= i10 && i10 < a();
        }
        if (z) {
            this.f5345f = iMin;
            arrayList3.clear();
        }
        if (iA2 > i2) {
            InlineClassHelperKt.c("currentLine (" + iA2 + ") > lineIndex (" + i2 + ')');
        }
        while (iA2 < i2 && iIntValue < d()) {
            if (z) {
                arrayList3.add(Integer.valueOf(iIntValue));
            }
            int i11 = 0;
            while (i11 < this.f5347i && iIntValue < d()) {
                if (iE == 0) {
                    i5 = iE;
                    iE = e(iIntValue);
                } else {
                    i5 = 0;
                }
                i11 += iE;
                if (i11 > this.f5347i) {
                    break;
                }
                iIntValue++;
                iE = i5;
            }
            iA2++;
            if (iA2 % a() == 0 && iIntValue < d()) {
                if (arrayList2.size() != iA2 / a()) {
                    InlineClassHelperKt.c("invalid starting point");
                }
                arrayList2.add(new Bucket(iIntValue, iE));
            }
        }
        this.f5343c = i2;
        this.d = iIntValue;
        this.f5344e = iE;
        ArrayList arrayList4 = new ArrayList();
        int i12 = 0;
        int i13 = iIntValue;
        while (i12 < this.f5347i && i13 < d()) {
            if (iE == 0) {
                int i14 = iE;
                iE = e(i13);
                i4 = i14;
            } else {
                i4 = 0;
            }
            i12 += iE;
            if (i12 > this.f5347i) {
                break;
            }
            i13++;
            arrayList4.add(new GridItemSpan(LazyGridSpanKt.a(iE)));
            iE = i4;
        }
        return new LineConfiguration(iIntValue, arrayList4);
    }

    public final int c(final int i2) {
        int i3 = 0;
        if (d() <= 0) {
            return 0;
        }
        if (i2 >= d()) {
            InlineClassHelperKt.a("ItemIndex > total count");
        }
        if (!this.f5341a.f5283c) {
            return i2 / this.f5347i;
        }
        Function1 function1 = new Function1() { // from class: androidx.compose.foundation.lazy.grid.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(((LazyGridSpanLayoutProvider.Bucket) obj).f5348a - i2);
            }
        };
        ArrayList arrayList = this.f5342b;
        int iP = CollectionsKt.p(arrayList, arrayList.size(), function1);
        int i4 = 2;
        if (iP < 0) {
            iP = (-iP) - 2;
        }
        int iA = a() * iP;
        int i5 = ((Bucket) arrayList.get(iP)).f5348a;
        if (i5 > i2) {
            InlineClassHelperKt.a("currentItemIndex > itemIndex");
        }
        int i6 = 0;
        while (true) {
            if (i5 >= i2) {
                break;
            }
            int i7 = i5 + 1;
            int iE = e(i5);
            i6 += iE;
            int i8 = this.f5347i;
            if (i6 >= i8) {
                if (i6 == i8) {
                    iA++;
                    i6 = 0;
                } else {
                    iA++;
                    i6 = iE;
                }
            }
            if (iA % a() == 0 && iA / a() >= arrayList.size()) {
                arrayList.add(new Bucket(i7 - (i6 <= 0 ? 0 : 1), i3, i4, null));
            }
            i5 = i7;
        }
        return e(i2) + i6 > this.f5347i ? iA + 1 : iA;
    }

    public final int d() {
        return this.f5341a.f5282b.f5539b;
    }

    public final int e(int i2) {
        LazyGridItemSpanScopeImpl.f5351b = this.f5347i;
        IntervalList.Interval interval = this.f5341a.f5282b.get(i2);
        int i3 = i2 - interval.f5405a;
        return (int) ((GridItemSpan) ((LazyGridInterval) interval.f5407c).f5279b.invoke(LazyGridItemSpanScopeImpl.f5350a, Integer.valueOf(i3))).f5271a;
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;", "", "", "firstItemIndex", "firstItemKnownSpan", "<init>", "(II)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Bucket {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5348a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5349b;

        public /* synthetic */ Bucket(int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, (i4 & 2) != 0 ? 0 : i3);
        }

        public Bucket(int i2, int i3) {
            this.f5348a = i2;
            this.f5349b = i3;
        }
    }
}
