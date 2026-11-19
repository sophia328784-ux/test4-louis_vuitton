package androidx.paging;

import defpackage.a;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u000fB+\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bB\u0017\b\u0016\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f¢\u0006\u0004\b\n\u0010\u000e¨\u0006\u0010"}, d2 = {"Landroidx/paging/PageStore;", "", "T", "Landroidx/paging/PlaceholderPaddedList;", "", "Landroidx/paging/TransformablePage;", "pages", "", "placeholdersBefore", "placeholdersAfter", "<init>", "(Ljava/util/List;II)V", "Landroidx/paging/PageEvent$Insert;", "insertEvent", "(Landroidx/paging/PageEvent$Insert;)V", "Companion", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PageStore<T> implements PlaceholderPaddedList<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f18829e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final PageStore f18830f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f18831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18833c;
    public int d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/PageStore$Companion;", "", "Landroidx/paging/PageStore;", "INITIAL", "Landroidx/paging/PageStore;", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18834a;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f18834a = iArr;
        }
    }

    static {
        PageEvent.Insert.g.getClass();
        f18830f = new PageStore(PageEvent.Insert.f18667h);
    }

    public PageStore(List<TransformablePage<T>> list, int i2, int i3) {
        list.getClass();
        this.f18831a = new ArrayList(list);
        Iterator<T> it = list.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((TransformablePage) it.next()).f18983b.size();
        }
        this.f18832b = size;
        this.f18833c = i2;
        this.d = i3;
    }

    @Override // androidx.paging.PlaceholderPaddedList
    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getF18832b() {
        return this.f18832b;
    }

    @Override // androidx.paging.PlaceholderPaddedList
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getF18833c() {
        return this.f18833c;
    }

    @Override // androidx.paging.PlaceholderPaddedList
    /* JADX INFO: renamed from: c, reason: from getter */
    public final int getD() {
        return this.d;
    }

    public final ViewportHint.Access d(int i2) {
        ArrayList arrayList;
        int iIntValue = i2 - this.f18833c;
        int i3 = 0;
        while (true) {
            arrayList = this.f18831a;
            if (iIntValue < ((TransformablePage) arrayList.get(i3)).f18983b.size() || i3 >= CollectionsKt.F(arrayList)) {
                break;
            }
            iIntValue -= ((TransformablePage) arrayList.get(i3)).f18983b.size();
            i3++;
        }
        TransformablePage transformablePage = (TransformablePage) arrayList.get(i3);
        int i4 = i2 - this.f18833c;
        int size = ((getSize() - i2) - this.d) - 1;
        Integer numM = ArraysKt.M(((TransformablePage) CollectionsKt.B(arrayList)).f18982a);
        numM.getClass();
        int iIntValue2 = numM.intValue();
        int iF = f();
        int i5 = transformablePage.f18984c;
        List list = transformablePage.d;
        if (list != null && CollectionsKt.E(list).m(iIntValue)) {
            iIntValue = ((Number) list.get(iIntValue)).intValue();
        }
        return new ViewportHint.Access(i5, iIntValue, i4, size, iIntValue2, iF);
    }

    public final Object e(int i2) {
        ArrayList arrayList = this.f18831a;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            int size2 = ((TransformablePage) arrayList.get(i3)).f18983b.size();
            if (size2 > i2) {
                break;
            }
            i2 -= size2;
            i3++;
        }
        return ((TransformablePage) arrayList.get(i3)).f18983b.get(i2);
    }

    public final int f() {
        Integer numValueOf;
        int[] iArr = ((TransformablePage) CollectionsKt.M(this.f18831a)).f18982a;
        iArr.getClass();
        if (iArr.length == 0) {
            numValueOf = null;
        } else {
            int i2 = iArr[0];
            int i3 = 1;
            int length = iArr.length - 1;
            if (1 <= length) {
                while (true) {
                    int i4 = iArr[i3];
                    if (i2 < i4) {
                        i2 = i4;
                    }
                    if (i3 == length) {
                        break;
                    }
                    i3++;
                }
            }
            numValueOf = Integer.valueOf(i2);
        }
        numValueOf.getClass();
        return numValueOf.intValue();
    }

    public final PagingDataEvent g(PageEvent pageEvent) {
        pageEvent.getClass();
        boolean z = pageEvent instanceof PageEvent.Insert;
        ArrayList arrayList = this.f18831a;
        if (!z) {
            if (!(pageEvent instanceof PageEvent.Drop)) {
                md.k("Paging received an event to process StaticList or LoadStateUpdate while\nprocessing Inserts and Drops. If you see this exception, it is most\nlikely a bug in the library. Please file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106");
                return null;
            }
            PageEvent.Drop drop = (PageEvent.Drop) pageEvent;
            int i2 = drop.f18664b;
            int i3 = drop.d;
            IntRange intRange = new IntRange(i2, drop.f18665c);
            Iterator it = arrayList.iterator();
            int size = 0;
            while (it.hasNext()) {
                TransformablePage transformablePage = (TransformablePage) it.next();
                for (int i4 : transformablePage.f18982a) {
                    if (intRange.m(i4)) {
                        size += transformablePage.f18983b.size();
                        it.remove();
                        break;
                    }
                }
            }
            int i5 = this.f18832b - size;
            this.f18832b = i5;
            if (drop.f18663a == LoadType.PREPEND) {
                int i6 = this.f18833c;
                this.f18833c = i3;
                return new PagingDataEvent.DropPrepend(size, i3, i6);
            }
            int i7 = this.d;
            this.d = i3;
            return new PagingDataEvent.DropAppend(this.f18833c + i5, size, i3, i7);
        }
        PageEvent.Insert insert = (PageEvent.Insert) pageEvent;
        List list = insert.f18669b;
        List list2 = list;
        Iterator<T> it2 = list2.iterator();
        int size2 = 0;
        while (it2.hasNext()) {
            size2 += ((TransformablePage) it2.next()).f18983b.size();
        }
        int i8 = WhenMappings.f18834a[insert.f18668a.ordinal()];
        if (i8 == 1) {
            md.k("Paging received a refresh event in the middle of an actively loading generation\nof PagingData. If you see this exception, it is most likely a bug in the library.\nPlease file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106");
            return null;
        }
        if (i8 == 2) {
            int i9 = this.f18833c;
            arrayList.addAll(0, list);
            this.f18832b += size2;
            this.f18833c = insert.f18670c;
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it3 = list2.iterator();
            while (it3.hasNext()) {
                CollectionsKt.j(arrayList2, ((TransformablePage) it3.next()).f18983b);
            }
            return new PagingDataEvent.Prepend(arrayList2, this.f18833c, i9);
        }
        if (i8 != 3) {
            v40.g();
            return null;
        }
        int i10 = this.d;
        int i11 = this.f18832b;
        arrayList.addAll(arrayList.size(), list);
        this.f18832b += size2;
        this.d = insert.d;
        int i12 = this.f18833c + i11;
        ArrayList arrayList3 = new ArrayList();
        Iterator<T> it4 = list2.iterator();
        while (it4.hasNext()) {
            CollectionsKt.j(arrayList3, ((TransformablePage) it4.next()).f18983b);
        }
        return new PagingDataEvent.Append(i12, arrayList3, this.d, i10);
    }

    @Override // androidx.paging.PlaceholderPaddedList
    public final int getSize() {
        return this.f18833c + this.f18832b + this.d;
    }

    public final String toString() {
        int i2 = this.f18832b;
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(e(i3));
        }
        String strK = CollectionsKt.K(arrayList, null, null, null, null, 63);
        StringBuilder sb = new StringBuilder("[(");
        sb.append(this.f18833c);
        sb.append(" placeholders), ");
        sb.append(strK);
        sb.append(", (");
        return a.i(this.d, " placeholders)]", sb);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageStore(PageEvent.Insert<T> insert) {
        this(insert.f18669b, insert.f18670c, insert.d);
        insert.getClass();
    }
}
