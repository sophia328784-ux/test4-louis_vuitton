package androidx.paging;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/paging/LoadStates;", "", "Landroidx/paging/LoadState;", "refresh", "prepend", "append", "<init>", "(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V", "Companion", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class LoadStates {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f18638f = new Companion(null);
    public static final LoadStates g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LoadState f18639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LoadState f18640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LoadState f18641c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f18642e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/paging/LoadStates$Companion;", "", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18643a;

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
            try {
                iArr[LoadType.REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f18643a = iArr;
        }
    }

    static {
        LoadState.NotLoading.Companion companion = LoadState.NotLoading.f18636b;
        companion.getClass();
        LoadState.NotLoading notLoading = LoadState.NotLoading.d;
        companion.getClass();
        companion.getClass();
        g = new LoadStates(notLoading, notLoading, notLoading);
    }

    public LoadStates(LoadState loadState, LoadState loadState2, LoadState loadState3) {
        loadState.getClass();
        loadState2.getClass();
        loadState3.getClass();
        this.f18639a = loadState;
        this.f18640b = loadState2;
        this.f18641c = loadState3;
        this.d = (loadState instanceof LoadState.Error) || (loadState3 instanceof LoadState.Error) || (loadState2 instanceof LoadState.Error);
        this.f18642e = (loadState instanceof LoadState.NotLoading) && (loadState3 instanceof LoadState.NotLoading) && (loadState2 instanceof LoadState.NotLoading);
    }

    public static LoadStates a(LoadStates loadStates, LoadState loadState, LoadState loadState2, LoadState loadState3, int i2) {
        if ((i2 & 1) != 0) {
            loadState = loadStates.f18639a;
        }
        if ((i2 & 2) != 0) {
            loadState2 = loadStates.f18640b;
        }
        if ((i2 & 4) != 0) {
            loadState3 = loadStates.f18641c;
        }
        loadState.getClass();
        loadState2.getClass();
        loadState3.getClass();
        return new LoadStates(loadState, loadState2, loadState3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoadStates)) {
            return false;
        }
        LoadStates loadStates = (LoadStates) obj;
        return Intrinsics.c(this.f18639a, loadStates.f18639a) && Intrinsics.c(this.f18640b, loadStates.f18640b) && Intrinsics.c(this.f18641c, loadStates.f18641c);
    }

    public final int hashCode() {
        return this.f18641c.hashCode() + ((this.f18640b.hashCode() + (this.f18639a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "LoadStates(refresh=" + this.f18639a + ", prepend=" + this.f18640b + ", append=" + this.f18641c + ')';
    }
}
