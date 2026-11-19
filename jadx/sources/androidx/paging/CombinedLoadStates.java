package androidx.paging;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/CombinedLoadStates;", "", "Landroidx/paging/LoadState;", "refresh", "prepend", "append", "Landroidx/paging/LoadStates;", Payload.SOURCE, "mediator", "<init>", "(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CombinedLoadStates {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LoadState f18562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LoadState f18563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LoadState f18564c;
    public final LoadStates d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LoadStates f18565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f18566f;

    public CombinedLoadStates(LoadState loadState, LoadState loadState2, LoadState loadState3, LoadStates loadStates, LoadStates loadStates2) {
        loadState.getClass();
        loadState2.getClass();
        loadState3.getClass();
        loadStates.getClass();
        this.f18562a = loadState;
        this.f18563b = loadState2;
        this.f18564c = loadState3;
        this.d = loadStates;
        this.f18565e = loadStates2;
        boolean z = true;
        if (loadStates.f18642e && loadStates2 != null) {
            boolean z2 = loadStates2.f18642e;
        }
        if (!loadStates.d) {
            if (!(loadStates2 != null ? loadStates2.d : false)) {
                z = false;
            }
        }
        this.f18566f = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CombinedLoadStates.class != obj.getClass()) {
            return false;
        }
        CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj;
        return Intrinsics.c(this.f18562a, combinedLoadStates.f18562a) && Intrinsics.c(this.f18563b, combinedLoadStates.f18563b) && Intrinsics.c(this.f18564c, combinedLoadStates.f18564c) && Intrinsics.c(this.d, combinedLoadStates.d) && Intrinsics.c(this.f18565e, combinedLoadStates.f18565e);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.f18564c.hashCode() + ((this.f18563b.hashCode() + (this.f18562a.hashCode() * 31)) * 31)) * 31)) * 31;
        LoadStates loadStates = this.f18565e;
        return iHashCode + (loadStates != null ? loadStates.hashCode() : 0);
    }

    public final String toString() {
        return "CombinedLoadStates(refresh=" + this.f18562a + ", prepend=" + this.f18563b + ", append=" + this.f18564c + ", source=" + this.d + ", mediator=" + this.f18565e + ')';
    }

    public /* synthetic */ CombinedLoadStates(LoadState loadState, LoadState loadState2, LoadState loadState3, LoadStates loadStates, LoadStates loadStates2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(loadState, loadState2, loadState3, loadStates, (i2 & 16) != 0 ? null : loadStates2);
    }
}
