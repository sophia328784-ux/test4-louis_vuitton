package androidx.paging;

import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IntIterator;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntProgressionIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/FlattenedPageEventStorage;", "", "T", "<init>", "()V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FlattenedPageEventStorage<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f18586c = new ArrayDeque();
    public final MutableLoadStateCollection d = new MutableLoadStateCollection();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LoadStates f18587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f18588f;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18589a;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.PREPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f18589a = iArr;
        }
    }

    public final void a(PageEvent pageEvent) {
        pageEvent.getClass();
        this.f18588f = true;
        boolean z = pageEvent instanceof PageEvent.Insert;
        int i2 = 0;
        ArrayDeque arrayDeque = this.f18586c;
        MutableLoadStateCollection mutableLoadStateCollection = this.d;
        if (z) {
            PageEvent.Insert insert = (PageEvent.Insert) pageEvent;
            LoadStates loadStates = insert.f18671e;
            int i3 = insert.f18670c;
            int i4 = insert.d;
            List list = insert.f18669b;
            mutableLoadStateCollection.b(loadStates);
            this.f18587e = insert.f18672f;
            int i5 = WhenMappings.f18589a[insert.f18668a.ordinal()];
            if (i5 == 1) {
                this.f18584a = i3;
                int size = list.size() - 1;
                IntProgression.INSTANCE.getClass();
                Iterator<Integer> it = new IntProgression(size, 0, -1).iterator();
                while (((IntProgressionIterator) it).d) {
                    arrayDeque.addFirst(list.get(((IntIterator) it).nextInt()));
                }
                return;
            }
            if (i5 == 2) {
                this.f18585b = i4;
                arrayDeque.addAll(list);
                return;
            } else {
                if (i5 != 3) {
                    return;
                }
                arrayDeque.clear();
                this.f18585b = i4;
                this.f18584a = i3;
                arrayDeque.addAll(list);
                return;
            }
        }
        if (!(pageEvent instanceof PageEvent.Drop)) {
            if (pageEvent instanceof PageEvent.LoadStateUpdate) {
                PageEvent.LoadStateUpdate loadStateUpdate = (PageEvent.LoadStateUpdate) pageEvent;
                mutableLoadStateCollection.b(loadStateUpdate.f18673a);
                this.f18587e = loadStateUpdate.f18674b;
                return;
            } else {
                if (pageEvent instanceof PageEvent.StaticList) {
                    PageEvent.StaticList staticList = (PageEvent.StaticList) pageEvent;
                    LoadStates loadStates2 = staticList.f18676b;
                    if (loadStates2 != null) {
                        mutableLoadStateCollection.b(loadStates2);
                    }
                    LoadStates loadStates3 = staticList.f18677c;
                    if (loadStates3 != null) {
                        this.f18587e = loadStates3;
                    }
                    arrayDeque.clear();
                    this.f18585b = 0;
                    this.f18584a = 0;
                    arrayDeque.addLast(new TransformablePage(0, staticList.f18675a));
                    return;
                }
                return;
            }
        }
        PageEvent.Drop drop = (PageEvent.Drop) pageEvent;
        LoadType loadType = drop.f18663a;
        int i6 = drop.d;
        LoadState.NotLoading.f18636b.getClass();
        mutableLoadStateCollection.c(loadType, LoadState.NotLoading.d);
        int i7 = WhenMappings.f18589a[loadType.ordinal()];
        if (i7 == 1) {
            this.f18584a = i6;
            int iA = drop.a();
            while (i2 < iA) {
                arrayDeque.removeFirst();
                i2++;
            }
            return;
        }
        if (i7 != 2) {
            md.n("Page drop type must be prepend or append");
            return;
        }
        this.f18585b = i6;
        int iA2 = drop.a();
        while (i2 < iA2) {
            arrayDeque.removeLast();
            i2++;
        }
    }

    public final List b() {
        if (!this.f18588f) {
            return EmptyList.f71768b;
        }
        ArrayList arrayList = new ArrayList();
        LoadStates loadStatesD = this.d.d();
        ArrayDeque arrayDeque = this.f18586c;
        if (arrayDeque.isEmpty()) {
            arrayList.add(new PageEvent.LoadStateUpdate(loadStatesD, this.f18587e));
            return arrayList;
        }
        PageEvent.Insert.Companion companion = PageEvent.Insert.g;
        List listY0 = CollectionsKt.y0(arrayDeque);
        int i2 = this.f18584a;
        int i3 = this.f18585b;
        LoadStates loadStates = this.f18587e;
        companion.getClass();
        arrayList.add(PageEvent.Insert.Companion.a(listY0, i2, i3, loadStatesD, loadStates));
        return arrayList;
    }
}
