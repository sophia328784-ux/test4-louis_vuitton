package androidx.paging;

import defpackage.az;
import defpackage.md;
import defpackage.tg0;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0001\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/PageFetcherSnapshotState;", "", "Key", "Value", "Holder", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PageFetcherSnapshotState<Key, Value> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PagingConfig f18815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f18816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f18817c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18818e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18819f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18820h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BufferedChannel f18821i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BufferedChannel f18822j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f18823k;
    public final MutableLoadStateCollection l;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u0001*\b\b\u0003\u0010\u0003*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/paging/PageFetcherSnapshotState$Holder;", "", "Key", "Value", "Landroidx/paging/PagingConfig;", "config", "<init>", "(Landroidx/paging/PagingConfig;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Holder<Key, Value> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutexImpl f18824a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PageFetcherSnapshotState f18825b;

        public Holder(PagingConfig pagingConfig) {
            pagingConfig.getClass();
            this.f18824a = MutexKt.a();
            this.f18825b = new PageFetcherSnapshotState(pagingConfig, null);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18826a;

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
            f18826a = iArr;
        }
    }

    public PageFetcherSnapshotState(PagingConfig pagingConfig, DefaultConstructorMarker defaultConstructorMarker) {
        this.f18815a = pagingConfig;
        ArrayList arrayList = new ArrayList();
        this.f18816b = arrayList;
        this.f18817c = arrayList;
        this.f18821i = ChannelKt.a(-1, 6, null);
        this.f18822j = ChannelKt.a(-1, 6, null);
        this.f18823k = new LinkedHashMap();
        MutableLoadStateCollection mutableLoadStateCollection = new MutableLoadStateCollection();
        mutableLoadStateCollection.c(LoadType.REFRESH, LoadState.Loading.f18635b);
        this.l = mutableLoadStateCollection;
    }

    public final PagingState a(ViewportHint.Access access) {
        Integer numValueOf;
        ArrayList arrayList = this.f18817c;
        List listY0 = CollectionsKt.y0(arrayList);
        PagingConfig pagingConfig = this.f18815a;
        if (access != null) {
            int i2 = access.f18997e;
            int iD = d();
            int i3 = -this.d;
            int size = (arrayList.size() - 1) - this.d;
            int i4 = i3;
            while (i4 < i2) {
                iD += i4 > size ? pagingConfig.f18837a : ((PagingSource.LoadResult.Page) arrayList.get(this.d + i4)).f18897b.size();
                i4++;
            }
            int i5 = iD + access.f18998f;
            if (i2 < i3) {
                i5 -= pagingConfig.f18837a;
            }
            numValueOf = Integer.valueOf(i5);
        } else {
            numValueOf = null;
        }
        return new PagingState(listY0, numValueOf, pagingConfig, d());
    }

    public final void b(PageEvent.Drop drop) {
        int iA = drop.a();
        int i2 = drop.d;
        LoadType loadType = drop.f18663a;
        ArrayList arrayList = this.f18817c;
        if (iA > arrayList.size()) {
            throw new IllegalStateException(("invalid drop count. have " + arrayList.size() + " but wanted to drop " + drop.a()).toString());
        }
        this.f18823k.remove(loadType);
        LoadState.NotLoading.f18636b.getClass();
        this.l.c(loadType, LoadState.NotLoading.d);
        int i3 = WhenMappings.f18826a[loadType.ordinal()];
        ArrayList arrayList2 = this.f18816b;
        if (i3 == 2) {
            int iA2 = drop.a();
            for (int i4 = 0; i4 < iA2; i4++) {
                arrayList2.remove(0);
            }
            this.d -= drop.a();
            if (i2 == Integer.MIN_VALUE) {
                i2 = 0;
            }
            this.f18818e = i2;
            int i5 = this.g + 1;
            this.g = i5;
            this.f18821i.b(Integer.valueOf(i5));
            return;
        }
        if (i3 != 3) {
            az.m(loadType, "cannot drop ");
            return;
        }
        int iA3 = drop.a();
        for (int i6 = 0; i6 < iA3; i6++) {
            arrayList2.remove(arrayList.size() - 1);
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = 0;
        }
        this.f18819f = i2;
        int i7 = this.f18820h + 1;
        this.f18820h = i7;
        this.f18822j.b(Integer.valueOf(i7));
    }

    public final PageEvent.Drop c(LoadType loadType, ViewportHint viewportHint) {
        loadType.getClass();
        viewportHint.getClass();
        PagingConfig pagingConfig = this.f18815a;
        int i2 = pagingConfig.f18840e;
        int i3 = pagingConfig.f18840e;
        if (i2 != Integer.MAX_VALUE) {
            ArrayList arrayList = this.f18817c;
            if (arrayList.size() > 2) {
                Iterator it = arrayList.iterator();
                int iD = 0;
                int size = 0;
                while (it.hasNext()) {
                    size += ((PagingSource.LoadResult.Page) it.next()).f18897b.size();
                }
                if (size > i3) {
                    if (loadType == LoadType.REFRESH) {
                        tg0.n(loadType, "Drop LoadType must be PREPEND or APPEND, but got ");
                        return null;
                    }
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < arrayList.size()) {
                        Iterator it2 = arrayList.iterator();
                        int size2 = 0;
                        while (it2.hasNext()) {
                            size2 += ((PagingSource.LoadResult.Page) it2.next()).f18897b.size();
                        }
                        if (size2 - i5 <= i3) {
                            break;
                        }
                        int[] iArr = WhenMappings.f18826a;
                        int size3 = iArr[loadType.ordinal()] == 2 ? ((PagingSource.LoadResult.Page) arrayList.get(i4)).f18897b.size() : ((PagingSource.LoadResult.Page) arrayList.get(CollectionsKt.F(arrayList) - i4)).f18897b.size();
                        if (((iArr[loadType.ordinal()] == 2 ? viewportHint.f18994a : viewportHint.f18995b) - i5) - size3 < pagingConfig.f18838b) {
                            break;
                        }
                        i5 += size3;
                        i4++;
                    }
                    if (i4 != 0) {
                        int[] iArr2 = WhenMappings.f18826a;
                        int iF = iArr2[loadType.ordinal()] == 2 ? -this.d : (CollectionsKt.F(arrayList) - this.d) - (i4 - 1);
                        int iF2 = iArr2[loadType.ordinal()] == 2 ? (i4 - 1) - this.d : CollectionsKt.F(arrayList) - this.d;
                        if (pagingConfig.f18839c) {
                            if (loadType == LoadType.PREPEND) {
                                iD = d() + i5;
                            } else {
                                iD = (pagingConfig.f18839c ? this.f18819f : 0) + i5;
                            }
                        }
                        return new PageEvent.Drop(loadType, iF, iF2, iD);
                    }
                }
            }
        }
        return null;
    }

    public final int d() {
        if (this.f18815a.f18839c) {
            return this.f18818e;
        }
        return 0;
    }

    public final boolean e(int i2, LoadType loadType, PagingSource.LoadResult.Page page) {
        loadType.getClass();
        page.getClass();
        int i3 = page.f18899e;
        List list = page.f18897b;
        int i4 = page.f18900f;
        int i5 = WhenMappings.f18826a[loadType.ordinal()];
        ArrayList arrayList = this.f18816b;
        ArrayList arrayList2 = this.f18817c;
        if (i5 == 1) {
            if (!arrayList2.isEmpty()) {
                md.k("cannot receive multiple init calls");
                return false;
            }
            if (i2 != 0) {
                md.k("init loadId must be the initial value, 0");
                return false;
            }
            arrayList.add(page);
            this.d = 0;
            if (i4 == Integer.MIN_VALUE) {
                i4 = 0;
            }
            this.f18819f = i4;
            if (i3 == Integer.MIN_VALUE) {
                i3 = 0;
            }
            this.f18818e = i3;
            return true;
        }
        LinkedHashMap linkedHashMap = this.f18823k;
        if (i5 != 2) {
            if (i5 != 3) {
                return true;
            }
            if (arrayList2.isEmpty()) {
                md.k("should've received an init before append");
                return false;
            }
            if (i2 == this.f18820h) {
                arrayList.add(page);
                if (i4 == Integer.MIN_VALUE) {
                    int size = (this.f18815a.f18839c ? this.f18819f : 0) - list.size();
                    i4 = size < 0 ? 0 : size;
                }
                this.f18819f = i4 != Integer.MIN_VALUE ? i4 : 0;
                linkedHashMap.remove(LoadType.APPEND);
                return true;
            }
        } else {
            if (arrayList2.isEmpty()) {
                md.k("should've received an init before prepend");
                return false;
            }
            if (i2 == this.g) {
                arrayList.add(0, page);
                this.d++;
                if (i3 == Integer.MIN_VALUE) {
                    int iD = d() - list.size();
                    i3 = iD < 0 ? 0 : iD;
                }
                this.f18818e = i3 != Integer.MIN_VALUE ? i3 : 0;
                linkedHashMap.remove(LoadType.PREPEND);
                return true;
            }
        }
        return false;
    }

    public final PageEvent.Insert f(PagingSource.LoadResult.Page page, LoadType loadType) {
        int size;
        int i2;
        page.getClass();
        loadType.getClass();
        int[] iArr = WhenMappings.f18826a;
        int i3 = iArr[loadType.ordinal()];
        if (i3 == 1) {
            size = 0;
        } else if (i3 == 2) {
            size = 0 - this.d;
        } else {
            if (i3 != 3) {
                v40.g();
                return null;
            }
            size = (this.f18817c.size() - this.d) - 1;
        }
        List listO = CollectionsKt.O(new TransformablePage(size, page.f18897b));
        int i4 = iArr[loadType.ordinal()];
        PagingConfig pagingConfig = this.f18815a;
        MutableLoadStateCollection mutableLoadStateCollection = this.l;
        if (i4 == 1) {
            PageEvent.Insert.Companion companion = PageEvent.Insert.g;
            int iD = d();
            i2 = pagingConfig.f18839c ? this.f18819f : 0;
            LoadStates loadStatesD = mutableLoadStateCollection.d();
            companion.getClass();
            return PageEvent.Insert.Companion.a(listO, iD, i2, loadStatesD, null);
        }
        if (i4 == 2) {
            PageEvent.Insert.Companion companion2 = PageEvent.Insert.g;
            int iD2 = d();
            LoadStates loadStatesD2 = mutableLoadStateCollection.d();
            companion2.getClass();
            return new PageEvent.Insert(LoadType.PREPEND, listO, iD2, -1, loadStatesD2, null, null);
        }
        if (i4 != 3) {
            v40.g();
            return null;
        }
        PageEvent.Insert.Companion companion3 = PageEvent.Insert.g;
        i2 = pagingConfig.f18839c ? this.f18819f : 0;
        LoadStates loadStatesD3 = mutableLoadStateCollection.d();
        companion3.getClass();
        return new PageEvent.Insert(LoadType.APPEND, listO, -1, i2, loadStatesD3, null, null);
    }
}
