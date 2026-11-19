package androidx.navigationevent.compose;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;
import androidx.navigationevent.NavigationEventTransitionState;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B1\b\u0000\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/navigationevent/compose/NavigationEventState;", "Landroidx/navigationevent/NavigationEventInfo;", "T", "", "currentInfo", "", "backInfo", "forwardInfo", "<init>", "(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V", "navigationevent-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NavigationEventState<T extends NavigationEventInfo> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f18500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f18501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f18502c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public NavigationEventHandler f18503e;

    public NavigationEventState(T t, List<? extends T> list, List<? extends T> list2) {
        this.f18500a = SnapshotStateKt.g(NavigationEventTransitionState.Idle.f18485a);
        this.f18501b = SnapshotStateKt.g(list);
        this.f18502c = SnapshotStateKt.g(t);
        this.d = SnapshotStateKt.g(list2);
    }

    public NavigationEventState(NavigationEventInfo navigationEventInfo, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(navigationEventInfo, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? EmptyList.f71768b : list2);
    }
}
