package androidx.paging;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import defpackage.tr;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0002\u0006\u0007B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/paging/PagingSource;", "", "Key", "Value", "<init>", "()V", "LoadParams", "LoadResult", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class PagingSource<Key, Value> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InvalidateCallbackTracker f18890a = new InvalidateCallbackTracker(PagingSource$invalidateCallbackTracker$1.f18901c, null, 2, 0 == true ? 1 : 0);

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u00012\u00020\u0001:\u0004\u0003\u0004\u0005\u0006\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Landroidx/paging/PagingSource$LoadParams;", "", "Key", "Append", "Companion", "Prepend", "Refresh", "Landroidx/paging/PagingSource$LoadParams$Append;", "Landroidx/paging/PagingSource$LoadParams$Prepend;", "Landroidx/paging/PagingSource$LoadParams$Refresh;", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static abstract class LoadParams<Key> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Companion f18891a = new Companion(null);

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000*\b\b\u0003\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00030\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00028\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/PagingSource$LoadParams$Append;", "", "Key", "Landroidx/paging/PagingSource$LoadParams;", ConfigurationName.KEY, "", "loadSize", "", "placeholdersEnabled", "<init>", "(Ljava/lang/Object;IZ)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Append<Key> extends LoadParams<Key> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Object f18892b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Append(Key key, int i2, boolean z) {
                super(i2, z, null);
                key.getClass();
                this.f18892b = key;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Object getF18895b() {
                return this.f18892b;
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/paging/PagingSource$LoadParams$Companion;", "", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Companion {

            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f18893a;

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
                    f18893a = iArr;
                }
            }

            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000*\b\b\u0003\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00030\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00028\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/PagingSource$LoadParams$Prepend;", "", "Key", "Landroidx/paging/PagingSource$LoadParams;", ConfigurationName.KEY, "", "loadSize", "", "placeholdersEnabled", "<init>", "(Ljava/lang/Object;IZ)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Prepend<Key> extends LoadParams<Key> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Object f18894b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Prepend(Key key, int i2, boolean z) {
                super(i2, z, null);
                key.getClass();
                this.f18894b = key;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Object getF18895b() {
                return this.f18894b;
            }
        }

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000*\b\b\u0003\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00030\u0003B!\u0012\b\u0010\u0004\u001a\u0004\u0018\u00018\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/PagingSource$LoadParams$Refresh;", "", "Key", "Landroidx/paging/PagingSource$LoadParams;", ConfigurationName.KEY, "", "loadSize", "", "placeholdersEnabled", "<init>", "(Ljava/lang/Object;IZ)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Refresh<Key> extends LoadParams<Key> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Object f18895b;

            public Refresh(Key key, int i2, boolean z) {
                super(i2, z, null);
                this.f18895b = key;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Object getF18895b() {
                return this.f18895b;
            }
        }

        public LoadParams(int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX INFO: renamed from: a */
        public abstract Object getF18895b();
    }

    public abstract Integer a(PagingState pagingState);

    public abstract Object b(LoadParams loadParams, ContinuationImpl continuationImpl);

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u0001*\b\b\u0003\u0010\u0003*\u00020\u00012\u00020\u0001:\u0003\u0004\u0005\u0006\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Landroidx/paging/PagingSource$LoadResult;", "", "Key", "Value", "Error", "Invalid", "Page", "Landroidx/paging/PagingSource$LoadResult$Error;", "Landroidx/paging/PagingSource$LoadResult$Invalid;", "Landroidx/paging/PagingSource$LoadResult$Page;", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static abstract class LoadResult<Key, Value> {

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u0000*\b\b\u0004\u0010\u0002*\u00020\u0001*\b\b\u0005\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u0004B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/paging/PagingSource$LoadResult$Error;", "", "Key", "Value", "Landroidx/paging/PagingSource$LoadResult;", "", "throwable", "<init>", "(Ljava/lang/Throwable;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final /* data */ class Error<Key, Value> extends LoadResult<Key, Value> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Throwable f18896b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(Throwable th) {
                super(null);
                th.getClass();
                this.f18896b = th;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && Intrinsics.c(this.f18896b, ((Error) obj).f18896b);
            }

            public final int hashCode() {
                return this.f18896b.hashCode();
            }

            public final String toString() {
                return StringsKt.c0("LoadResult.Error(\n                    |   throwable: " + this.f18896b + "\n                    |) ");
            }
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000*\b\b\u0004\u0010\u0002*\u00020\u0001*\b\b\u0005\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/paging/PagingSource$LoadResult$Invalid;", "", "Key", "Value", "Landroidx/paging/PagingSource$LoadResult;", "<init>", "()V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Invalid<Key, Value> extends LoadResult<Key, Value> {
            public Invalid() {
                super(null);
            }

            public final String toString() {
                return "LoadResult.Invalid";
            }
        }

        public LoadResult(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\b\u0018\u0000*\b\b\u0004\u0010\u0002*\u00020\u0001*\b\b\u0005\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00042\b\u0012\u0004\u0012\u00028\u00050\u0005:\u0001\u0010B=\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00050\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00018\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00018\u0004\u0012\b\b\u0003\u0010\u000b\u001a\u00020\n\u0012\b\b\u0003\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eB+\b\u0016\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00050\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00018\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00018\u0004¢\u0006\u0004\b\r\u0010\u000f¨\u0006\u0011"}, d2 = {"Landroidx/paging/PagingSource$LoadResult$Page;", "", "Key", "Value", "Landroidx/paging/PagingSource$LoadResult;", "", "", DbParams.KEY_DATA, "prevKey", "nextKey", "", "itemsBefore", "itemsAfter", "<init>", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V", "Companion", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final /* data */ class Page<Key, Value> extends LoadResult<Key, Value> implements Iterable<Value>, KMappedMarker {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final List f18897b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Object f18898c;
            public final Object d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final int f18899e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final int f18900f;

            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/PagingSource$LoadResult$Page$Companion;", "", "", "COUNT_UNDEFINED", "I", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                }
            }

            static {
                new Companion(null);
                new Page(EmptyList.f71768b, null, null, 0, 0);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Page(List<? extends Value> list, Key key, Key key2, int i2, int i3) {
                super(null);
                list.getClass();
                this.f18897b = list;
                this.f18898c = key;
                this.d = key2;
                this.f18899e = i2;
                this.f18900f = i3;
                if (i2 != Integer.MIN_VALUE && i2 < 0) {
                    md.n("itemsBefore cannot be negative");
                    throw null;
                }
                if (i3 == Integer.MIN_VALUE || i3 >= 0) {
                    return;
                }
                md.n("itemsAfter cannot be negative");
                throw null;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Page)) {
                    return false;
                }
                Page page = (Page) obj;
                return Intrinsics.c(this.f18897b, page.f18897b) && Intrinsics.c(this.f18898c, page.f18898c) && Intrinsics.c(this.d, page.d) && this.f18899e == page.f18899e && this.f18900f == page.f18900f;
            }

            public final int hashCode() {
                int iHashCode = this.f18897b.hashCode() * 31;
                Object obj = this.f18898c;
                int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
                Object obj2 = this.d;
                return Integer.hashCode(this.f18900f) + tr.b(this.f18899e, (iHashCode2 + (obj2 != null ? obj2.hashCode() : 0)) * 31, 31);
            }

            @Override // java.lang.Iterable
            public final Iterator iterator() {
                return this.f18897b.listIterator();
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("LoadResult.Page(\n                    |   data size: ");
                List list = this.f18897b;
                sb.append(list.size());
                sb.append("\n                    |   first Item: ");
                sb.append(CollectionsKt.firstOrNull(list));
                sb.append("\n                    |   last Item: ");
                sb.append(CollectionsKt.N(list));
                sb.append("\n                    |   nextKey: ");
                sb.append(this.d);
                sb.append("\n                    |   prevKey: ");
                sb.append(this.f18898c);
                sb.append("\n                    |   itemsBefore: ");
                sb.append(this.f18899e);
                sb.append("\n                    |   itemsAfter: ");
                sb.append(this.f18900f);
                sb.append("\n                    |) ");
                return StringsKt.c0(sb.toString());
            }

            public /* synthetic */ Page(List list, Object obj, Object obj2, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
                this(list, obj, obj2, (i4 & 8) != 0 ? Integer.MIN_VALUE : i2, (i4 & 16) != 0 ? Integer.MIN_VALUE : i3);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Page(List<? extends Value> list, Key key, Key key2) {
                this(list, key, key2, Integer.MIN_VALUE, Integer.MIN_VALUE);
                list.getClass();
            }
        }
    }
}
