package androidx.paging;

import com.appsflyer.sdk_base.referrer.Payload;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0004\u0003\u0004\u0005\u0006\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/PageEvent;", "", "T", "Drop", "Insert", "LoadStateUpdate", "StaticList", "Landroidx/paging/PageEvent$Drop;", "Landroidx/paging/PageEvent$Insert;", "Landroidx/paging/PageEvent$LoadStateUpdate;", "Landroidx/paging/PageEvent$StaticList;", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class PageEvent<T> {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\b\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B'\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/paging/PageEvent$Drop;", "", "T", "Landroidx/paging/PageEvent;", "Landroidx/paging/LoadType;", "loadType", "", "minPageOffset", "maxPageOffset", "placeholdersRemaining", "<init>", "(Landroidx/paging/LoadType;III)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class Drop<T> extends PageEvent<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoadType f18663a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f18664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f18665c;
        public final int d;

        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f18666a;

            static {
                int[] iArr = new int[LoadType.values().length];
                try {
                    iArr[LoadType.APPEND.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LoadType.PREPEND.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f18666a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Drop(LoadType loadType, int i2, int i3, int i4) {
            super(null);
            loadType.getClass();
            this.f18663a = loadType;
            this.f18664b = i2;
            this.f18665c = i3;
            this.d = i4;
            if (loadType == LoadType.REFRESH) {
                md.n("Drop load type must be PREPEND or APPEND");
                throw null;
            }
            if (a() > 0) {
                if (i4 >= 0) {
                    return;
                }
                b21.n(pq0.k(i4, "Invalid placeholdersRemaining "));
                throw null;
            }
            throw new IllegalArgumentException(("Drop count must be > 0, but was " + a()).toString());
        }

        public final int a() {
            return (this.f18665c - this.f18664b) + 1;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Drop)) {
                return false;
            }
            Drop drop = (Drop) obj;
            return this.f18663a == drop.f18663a && this.f18664b == drop.f18664b && this.f18665c == drop.f18665c && this.d == drop.d;
        }

        public final int hashCode() {
            return Integer.hashCode(this.d) + tr.b(this.f18665c, tr.b(this.f18664b, this.f18663a.hashCode() * 31, 31), 31);
        }

        public final String toString() {
            String str;
            int i2 = WhenMappings.f18666a[this.f18663a.ordinal()];
            if (i2 == 1) {
                str = "end";
            } else {
                if (i2 != 2) {
                    md.n("Drop load type must be PREPEND or APPEND");
                    return null;
                }
                str = "front";
            }
            StringBuilder sbR = pq0.r("PageEvent.Drop from the ", str, " (\n                    |   minPageOffset: ");
            sbR.append(this.f18664b);
            sbR.append("\n                    |   maxPageOffset: ");
            sbR.append(this.f18665c);
            sbR.append("\n                    |   placeholdersRemaining: ");
            sbR.append(this.d);
            sbR.append("\n                    |)");
            return StringsKt.c0(sbR.toString());
        }
    }

    public PageEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B\u001b\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/paging/PageEvent$LoadStateUpdate;", "", "T", "Landroidx/paging/PageEvent;", "Landroidx/paging/LoadStates;", Payload.SOURCE, "mediator", "<init>", "(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class LoadStateUpdate<T> extends PageEvent<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoadStates f18673a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LoadStates f18674b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LoadStateUpdate(LoadStates loadStates, LoadStates loadStates2) {
            super(null);
            loadStates.getClass();
            this.f18673a = loadStates;
            this.f18674b = loadStates2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LoadStateUpdate)) {
                return false;
            }
            LoadStateUpdate loadStateUpdate = (LoadStateUpdate) obj;
            return Intrinsics.c(this.f18673a, loadStateUpdate.f18673a) && Intrinsics.c(this.f18674b, loadStateUpdate.f18674b);
        }

        public final int hashCode() {
            int iHashCode = this.f18673a.hashCode() * 31;
            LoadStates loadStates = this.f18674b;
            return iHashCode + (loadStates == null ? 0 : loadStates.hashCode());
        }

        public final String toString() {
            String str = "PageEvent.LoadStateUpdate (\n                    |   sourceLoadStates: " + this.f18673a + "\n                    ";
            LoadStates loadStates = this.f18674b;
            if (loadStates != null) {
                str = str + "|   mediatorLoadStates: " + loadStates + '\n';
            }
            return StringsKt.c0(str.concat("|)"));
        }

        public /* synthetic */ LoadStateUpdate(LoadStates loadStates, LoadStates loadStates2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(loadStates, (i2 & 2) != 0 ? null : loadStates2);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B-\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/PageEvent$StaticList;", "", "T", "Landroidx/paging/PageEvent;", "", DbParams.KEY_DATA, "Landroidx/paging/LoadStates;", "sourceLoadStates", "mediatorLoadStates", "<init>", "(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class StaticList<T> extends PageEvent<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f18675a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LoadStates f18676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final LoadStates f18677c;

        public /* synthetic */ StaticList(List list, LoadStates loadStates, LoadStates loadStates2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i2 & 2) != 0 ? null : loadStates, (i2 & 4) != 0 ? null : loadStates2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StaticList)) {
                return false;
            }
            StaticList staticList = (StaticList) obj;
            return Intrinsics.c(this.f18675a, staticList.f18675a) && Intrinsics.c(this.f18676b, staticList.f18676b) && Intrinsics.c(this.f18677c, staticList.f18677c);
        }

        public final int hashCode() {
            int iHashCode = this.f18675a.hashCode() * 31;
            LoadStates loadStates = this.f18676b;
            int iHashCode2 = (iHashCode + (loadStates == null ? 0 : loadStates.hashCode())) * 31;
            LoadStates loadStates2 = this.f18677c;
            return iHashCode2 + (loadStates2 != null ? loadStates2.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PageEvent.StaticList with ");
            List list = this.f18675a;
            sb.append(list.size());
            sb.append(" items (\n                    |   first item: ");
            sb.append(CollectionsKt.firstOrNull(list));
            sb.append("\n                    |   last item: ");
            sb.append(CollectionsKt.N(list));
            sb.append("\n                    |   sourceLoadStates: ");
            sb.append(this.f18676b);
            sb.append("\n                    ");
            String string = sb.toString();
            LoadStates loadStates = this.f18677c;
            if (loadStates != null) {
                string = string + "|   mediatorLoadStates: " + loadStates + '\n';
            }
            return StringsKt.c0(string.concat("|)"));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StaticList(List<? extends T> list, LoadStates loadStates, LoadStates loadStates2) {
            super(null);
            list.getClass();
            this.f18675a = list;
            this.f18676b = loadStates;
            this.f18677c = loadStates2;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\b\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003:\u0001\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/PageEvent$Insert;", "", "T", "Landroidx/paging/PageEvent;", "Companion", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class Insert<T> extends PageEvent<T> {
        public static final Companion g = new Companion(null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Insert f18667h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoadType f18668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f18669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f18670c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final LoadStates f18671e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final LoadStates f18672f;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/paging/PageEvent$Insert$Companion;", "", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public static Insert a(List list, int i2, int i3, LoadStates loadStates, LoadStates loadStates2) {
                list.getClass();
                loadStates.getClass();
                return new Insert(LoadType.REFRESH, list, i2, i3, loadStates, loadStates2, null);
            }
        }

        static {
            TransformablePage.f18980e.getClass();
            List listO = CollectionsKt.O(TransformablePage.f18981f);
            LoadState.NotLoading.f18636b.getClass();
            LoadState.NotLoading notLoading = LoadState.NotLoading.d;
            LoadState.NotLoading notLoading2 = LoadState.NotLoading.f18637c;
            f18667h = Companion.a(listO, 0, 0, new LoadStates(notLoading, notLoading2, notLoading2), null);
        }

        public Insert(LoadType loadType, List list, int i2, int i3, LoadStates loadStates, LoadStates loadStates2) {
            super(null);
            this.f18668a = loadType;
            this.f18669b = list;
            this.f18670c = i2;
            this.d = i3;
            this.f18671e = loadStates;
            this.f18672f = loadStates2;
            if (loadType != LoadType.APPEND && i2 < 0) {
                b21.n(pq0.k(i2, "Prepend insert defining placeholdersBefore must be > 0, but was "));
                throw null;
            }
            if (loadType != LoadType.PREPEND && i3 < 0) {
                b21.n(pq0.k(i3, "Append insert defining placeholdersAfter must be > 0, but was "));
                throw null;
            }
            if (loadType == LoadType.REFRESH && list.isEmpty()) {
                md.n("Cannot create a REFRESH Insert event with no TransformablePages as this could permanently stall pagination. Note that this check does not prevent empty LoadResults and is instead usually an indication of an internal error in Paging itself.");
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Insert)) {
                return false;
            }
            Insert insert = (Insert) obj;
            return this.f18668a == insert.f18668a && Intrinsics.c(this.f18669b, insert.f18669b) && this.f18670c == insert.f18670c && this.d == insert.d && Intrinsics.c(this.f18671e, insert.f18671e) && Intrinsics.c(this.f18672f, insert.f18672f);
        }

        public final int hashCode() {
            int iHashCode = (this.f18671e.hashCode() + tr.b(this.d, tr.b(this.f18670c, n00.a(this.f18668a.hashCode() * 31, 31, this.f18669b), 31), 31)) * 31;
            LoadStates loadStates = this.f18672f;
            return iHashCode + (loadStates == null ? 0 : loadStates.hashCode());
        }

        public final String toString() {
            List list;
            List list2;
            List list3 = this.f18669b;
            Iterator<T> it = list3.iterator();
            int size = 0;
            while (it.hasNext()) {
                size += ((TransformablePage) it.next()).f18983b.size();
            }
            int i2 = this.f18670c;
            String strValueOf = i2 != -1 ? String.valueOf(i2) : "none";
            int i3 = this.d;
            String strValueOf2 = i3 != -1 ? String.valueOf(i3) : "none";
            StringBuilder sb = new StringBuilder("PageEvent.Insert for ");
            sb.append(this.f18668a);
            sb.append(", with ");
            sb.append(size);
            sb.append(" items (\n                    |   first item: ");
            TransformablePage transformablePage = (TransformablePage) CollectionsKt.firstOrNull(list3);
            Object objN = null;
            sb.append((transformablePage == null || (list2 = transformablePage.f18983b) == null) ? null : CollectionsKt.firstOrNull(list2));
            sb.append("\n                    |   last item: ");
            TransformablePage transformablePage2 = (TransformablePage) CollectionsKt.N(list3);
            if (transformablePage2 != null && (list = transformablePage2.f18983b) != null) {
                objN = CollectionsKt.N(list);
            }
            sb.append(objN);
            sb.append("\n                    |   placeholdersBefore: ");
            sb.append(strValueOf);
            sb.append("\n                    |   placeholdersAfter: ");
            sb.append(strValueOf2);
            sb.append("\n                    |   sourceLoadStates: ");
            sb.append(this.f18671e);
            sb.append("\n                    ");
            String string = sb.toString();
            LoadStates loadStates = this.f18672f;
            if (loadStates != null) {
                string = string + "|   mediatorLoadStates: " + loadStates + '\n';
            }
            return StringsKt.c0(string.concat("|)"));
        }

        public /* synthetic */ Insert(LoadType loadType, List list, int i2, int i3, LoadStates loadStates, LoadStates loadStates2, DefaultConstructorMarker defaultConstructorMarker) {
            this(loadType, list, i2, i3, loadStates, loadStates2);
        }
    }
}
