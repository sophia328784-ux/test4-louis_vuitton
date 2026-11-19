package androidx.paging;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Landroidx/paging/LoadState;", "", "Error", "Loading", "NotLoading", "Landroidx/paging/LoadState$Error;", "Landroidx/paging/LoadState$Loading;", "Landroidx/paging/LoadState$NotLoading;", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class LoadState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f18633a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/LoadState$Error;", "Landroidx/paging/LoadState;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Error extends LoadState {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f18634b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(Throwable th) {
            super(false, null);
            th.getClass();
            this.f18634b = th;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Error)) {
                return false;
            }
            Error error = (Error) obj;
            return this.f18633a == error.f18633a && Intrinsics.c(this.f18634b, error.f18634b);
        }

        public final int hashCode() {
            return this.f18634b.hashCode() + Boolean.hashCode(this.f18633a);
        }

        public final String toString() {
            return "Error(endOfPaginationReached=" + this.f18633a + ", error=" + this.f18634b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/paging/LoadState$Loading;", "Landroidx/paging/LoadState;", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Loading extends LoadState {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Loading f18635b = new Loading(false, null);

        public final boolean equals(Object obj) {
            if (obj instanceof Loading) {
                return this.f18633a == ((Loading) obj).f18633a;
            }
            return false;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f18633a);
        }

        public final String toString() {
            return d21.q(new StringBuilder("Loading(endOfPaginationReached="), this.f18633a, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/paging/LoadState$NotLoading;", "Landroidx/paging/LoadState;", "", "endOfPaginationReached", "<init>", "(Z)V", "Companion", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class NotLoading extends LoadState {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f18636b = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final NotLoading f18637c = new NotLoading(true);
        public static final NotLoading d = new NotLoading(false);

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/paging/LoadState$NotLoading$Companion;", "", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public NotLoading(boolean z) {
            super(z, null);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof NotLoading) {
                return this.f18633a == ((NotLoading) obj).f18633a;
            }
            return false;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f18633a);
        }

        public final String toString() {
            return d21.q(new StringBuilder("NotLoading(endOfPaginationReached="), this.f18633a, ')');
        }
    }

    public LoadState(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f18633a = z;
    }
}
