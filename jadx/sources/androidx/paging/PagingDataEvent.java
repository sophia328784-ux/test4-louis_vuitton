package androidx.paging;

import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0005\b\t\n\u000b\f¨\u0006\r"}, d2 = {"Landroidx/paging/PagingDataEvent;", "", "T", "Append", "DropAppend", "DropPrepend", "Prepend", "Refresh", "Landroidx/paging/PagingDataEvent$Append;", "Landroidx/paging/PagingDataEvent$DropAppend;", "Landroidx/paging/PagingDataEvent$DropPrepend;", "Landroidx/paging/PagingDataEvent$Prepend;", "Landroidx/paging/PagingDataEvent$Refresh;", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class PagingDataEvent<T> {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B/\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/paging/PagingDataEvent$Append;", "", "T", "Landroidx/paging/PagingDataEvent;", "", "startIndex", "", "inserted", "newPlaceholdersAfter", "oldPlaceholdersAfter", "<init>", "(ILjava/util/List;II)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Append<T> extends PagingDataEvent<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f18849a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f18850b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f18851c;
        public final int d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Append(int i2, List<? extends T> list, int i3, int i4) {
            super(null);
            list.getClass();
            this.f18849a = i2;
            this.f18850b = list;
            this.f18851c = i3;
            this.d = i4;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Append)) {
                return false;
            }
            Append append = (Append) obj;
            return this.f18849a == append.f18849a && Intrinsics.c(this.f18850b, append.f18850b) && this.f18851c == append.f18851c && this.d == append.d;
        }

        public final int hashCode() {
            return Integer.hashCode(this.d) + Integer.hashCode(this.f18851c) + this.f18850b.hashCode() + Integer.hashCode(this.f18849a);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PagingDataEvent.Append loaded ");
            List list = this.f18850b;
            sb.append(list.size());
            sb.append(" items (\n                    |   startIndex: ");
            sb.append(this.f18849a);
            sb.append("\n                    |   first item: ");
            sb.append(CollectionsKt.firstOrNull(list));
            sb.append("\n                    |   last item: ");
            sb.append(CollectionsKt.N(list));
            sb.append("\n                    |   newPlaceholdersBefore: ");
            sb.append(this.f18851c);
            sb.append("\n                    |   oldPlaceholdersBefore: ");
            sb.append(this.d);
            sb.append("\n                    |)\n                    |");
            return StringsKt.c0(sb.toString());
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B)\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/PagingDataEvent$DropAppend;", "", "T", "Landroidx/paging/PagingDataEvent;", "", "startIndex", "dropCount", "newPlaceholdersAfter", "oldPlaceholdersAfter", "<init>", "(IIII)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class DropAppend<T> extends PagingDataEvent<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f18852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f18853b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f18854c;
        public final int d;

        public DropAppend(int i2, int i3, int i4, int i5) {
            super(null);
            this.f18852a = i2;
            this.f18853b = i3;
            this.f18854c = i4;
            this.d = i5;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof DropAppend)) {
                return false;
            }
            DropAppend dropAppend = (DropAppend) obj;
            return this.f18852a == dropAppend.f18852a && this.f18853b == dropAppend.f18853b && this.f18854c == dropAppend.f18854c && this.d == dropAppend.d;
        }

        public final int hashCode() {
            return Integer.hashCode(this.d) + Integer.hashCode(this.f18854c) + Integer.hashCode(this.f18853b) + Integer.hashCode(this.f18852a);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PagingDataEvent.DropAppend dropped ");
            int i2 = this.f18853b;
            sb.append(i2);
            sb.append(" items (\n                    |   startIndex: ");
            fc.x(this.f18852a, i2, "\n                    |   dropCount: ", "\n                    |   newPlaceholdersBefore: ", sb);
            sb.append(this.f18854c);
            sb.append("\n                    |   oldPlaceholdersBefore: ");
            sb.append(this.d);
            sb.append("\n                    |)\n                    |");
            return StringsKt.c0(sb.toString());
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B!\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/paging/PagingDataEvent$DropPrepend;", "", "T", "Landroidx/paging/PagingDataEvent;", "", "dropCount", "newPlaceholdersBefore", "oldPlaceholdersBefore", "<init>", "(III)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class DropPrepend<T> extends PagingDataEvent<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f18855a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f18856b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f18857c;

        public DropPrepend(int i2, int i3, int i4) {
            super(null);
            this.f18855a = i2;
            this.f18856b = i3;
            this.f18857c = i4;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof DropPrepend)) {
                return false;
            }
            DropPrepend dropPrepend = (DropPrepend) obj;
            return this.f18855a == dropPrepend.f18855a && this.f18856b == dropPrepend.f18856b && this.f18857c == dropPrepend.f18857c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f18857c) + Integer.hashCode(this.f18856b) + Integer.hashCode(this.f18855a);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PagingDataEvent.DropPrepend dropped ");
            int i2 = this.f18855a;
            fc.x(i2, i2, " items (\n                    |   dropCount: ", "\n                    |   newPlaceholdersBefore: ", sb);
            sb.append(this.f18856b);
            sb.append("\n                    |   oldPlaceholdersBefore: ");
            sb.append(this.f18857c);
            sb.append("\n                    |)\n                    |");
            return StringsKt.c0(sb.toString());
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B'\b\u0007\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/PagingDataEvent$Prepend;", "", "T", "Landroidx/paging/PagingDataEvent;", "", "inserted", "", "newPlaceholdersBefore", "oldPlaceholdersBefore", "<init>", "(Ljava/util/List;II)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Prepend<T> extends PagingDataEvent<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f18858a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f18859b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f18860c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Prepend(List<? extends T> list, int i2, int i3) {
            super(null);
            list.getClass();
            this.f18858a = list;
            this.f18859b = i2;
            this.f18860c = i3;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Prepend)) {
                return false;
            }
            Prepend prepend = (Prepend) obj;
            return Intrinsics.c(this.f18858a, prepend.f18858a) && this.f18859b == prepend.f18859b && this.f18860c == prepend.f18860c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f18860c) + Integer.hashCode(this.f18859b) + this.f18858a.hashCode();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PagingDataEvent.Prepend loaded ");
            List list = this.f18858a;
            sb.append(list.size());
            sb.append(" items (\n                    |   first item: ");
            sb.append(CollectionsKt.firstOrNull(list));
            sb.append("\n                    |   last item: ");
            sb.append(CollectionsKt.N(list));
            sb.append("\n                    |   newPlaceholdersBefore: ");
            sb.append(this.f18859b);
            sb.append("\n                    |   oldPlaceholdersBefore: ");
            sb.append(this.f18860c);
            sb.append("\n                    |)\n                    |");
            return StringsKt.c0(sb.toString());
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B%\b\u0007\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/paging/PagingDataEvent$Refresh;", "", "T", "Landroidx/paging/PagingDataEvent;", "Landroidx/paging/PlaceholderPaddedList;", "newList", "previousList", "<init>", "(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Refresh<T> extends PagingDataEvent<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PlaceholderPaddedList f18861a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PlaceholderPaddedList f18862b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Refresh(PlaceholderPaddedList<T> placeholderPaddedList, PlaceholderPaddedList<T> placeholderPaddedList2) {
            super(null);
            placeholderPaddedList.getClass();
            placeholderPaddedList2.getClass();
            this.f18861a = placeholderPaddedList;
            this.f18862b = placeholderPaddedList2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Refresh)) {
                return false;
            }
            PlaceholderPaddedList placeholderPaddedList = this.f18861a;
            int f18833c = placeholderPaddedList.getF18833c();
            Refresh refresh = (Refresh) obj;
            PlaceholderPaddedList placeholderPaddedList2 = refresh.f18862b;
            PlaceholderPaddedList placeholderPaddedList3 = refresh.f18861a;
            if (f18833c != placeholderPaddedList3.getF18833c() || placeholderPaddedList.getD() != placeholderPaddedList3.getD() || placeholderPaddedList.getSize() != placeholderPaddedList3.getSize() || placeholderPaddedList.getF18832b() != placeholderPaddedList3.getF18832b()) {
                return false;
            }
            PlaceholderPaddedList placeholderPaddedList4 = this.f18862b;
            return placeholderPaddedList4.getF18833c() == placeholderPaddedList2.getF18833c() && placeholderPaddedList4.getD() == placeholderPaddedList2.getD() && placeholderPaddedList4.getSize() == placeholderPaddedList2.getSize() && placeholderPaddedList4.getF18832b() == placeholderPaddedList2.getF18832b();
        }

        public final int hashCode() {
            return this.f18862b.hashCode() + this.f18861a.hashCode();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PagingDataEvent.Refresh loaded newList\n                    |   newList (\n                    |       placeholdersBefore: ");
            PlaceholderPaddedList placeholderPaddedList = this.f18861a;
            sb.append(placeholderPaddedList.getF18833c());
            sb.append("\n                    |       placeholdersAfter: ");
            sb.append(placeholderPaddedList.getD());
            sb.append("\n                    |       size: ");
            sb.append(placeholderPaddedList.getSize());
            sb.append("\n                    |       dataCount: ");
            sb.append(placeholderPaddedList.getF18832b());
            sb.append("\n                    |   )\n                    |   previousList (\n                    |       placeholdersBefore: ");
            PlaceholderPaddedList placeholderPaddedList2 = this.f18862b;
            sb.append(placeholderPaddedList2.getF18833c());
            sb.append("\n                    |       placeholdersAfter: ");
            sb.append(placeholderPaddedList2.getD());
            sb.append("\n                    |       size: ");
            sb.append(placeholderPaddedList2.getSize());
            sb.append("\n                    |       dataCount: ");
            sb.append(placeholderPaddedList2.getF18832b());
            sb.append("\n                    |   )\n                    |");
            return StringsKt.c0(sb.toString());
        }
    }

    public PagingDataEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
