package androidx.navigationevent;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0010¢\u0006\u0004\b\u0002\u0010\u0003B1\b\u0011\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\u0002\u0010\t¨\u0006\n"}, d2 = {"Landroidx/navigationevent/NavigationEventHistory;", "", "<init>", "()V", "Landroidx/navigationevent/NavigationEventInfo;", "currentInfo", "", "backInfo", "forwardInfo", "(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NavigationEventHistory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavigationEventInfo f18470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f18471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f18472c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ListBuilder f18473e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventHistory(NavigationEventInfo navigationEventInfo, List<? extends NavigationEventInfo> list, List<? extends NavigationEventInfo> list2) {
        this(navigationEventInfo, list, list2, list.size());
        navigationEventInfo.getClass();
        list.getClass();
        list2.getClass();
    }

    public final List a() {
        if (this.f18473e == null) {
            ListBuilder listBuilderV = CollectionsKt.v();
            listBuilderV.addAll(this.f18471b);
            NavigationEventInfo navigationEventInfo = this.f18470a;
            if (navigationEventInfo != null) {
                listBuilderV.add(navigationEventInfo);
            }
            listBuilderV.addAll(this.f18472c);
            this.f18473e = CollectionsKt.r(listBuilderV);
        }
        ListBuilder listBuilder = this.f18473e;
        listBuilder.getClass();
        return listBuilder;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NavigationEventHistory.class != obj.getClass()) {
            return false;
        }
        NavigationEventHistory navigationEventHistory = (NavigationEventHistory) obj;
        return this.d == navigationEventHistory.d && a().equals(navigationEventHistory.a());
    }

    public final int hashCode() {
        return a().hashCode() + (this.d * 31);
    }

    public final String toString() {
        return "NavigationEventHistory(currentIndex=" + this.d + ", mergedHistory=" + a() + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventHistory(NavigationEventInfo navigationEventInfo, List<? extends NavigationEventInfo> list) {
        this(navigationEventInfo, list, null, 4, null);
        navigationEventInfo.getClass();
        list.getClass();
    }

    public NavigationEventHistory(NavigationEventInfo navigationEventInfo, List list, List list2, int i2) {
        this.f18470a = navigationEventInfo;
        this.f18471b = list;
        this.f18472c = list2;
        this.d = i2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventHistory(NavigationEventInfo navigationEventInfo) {
        this(navigationEventInfo, null, null, 6, null);
        navigationEventInfo.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationEventHistory() {
        EmptyList emptyList = EmptyList.f71768b;
        this(null, emptyList, emptyList, -1);
    }

    public NavigationEventHistory(NavigationEventInfo navigationEventInfo, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(navigationEventInfo, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? EmptyList.f71768b : list2);
    }
}
