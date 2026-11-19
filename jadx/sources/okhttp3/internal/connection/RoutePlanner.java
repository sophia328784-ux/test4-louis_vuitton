package okhttp3.internal.connection;

import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Lokhttp3/internal/connection/RoutePlanner;", "", "Plan", "ConnectResult", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface RoutePlanner {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/internal/connection/RoutePlanner$Plan;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Plan {
        Plan a();

        RealConnection b();

        void cancel();

        ConnectResult d();

        ConnectResult f();

        boolean isReady();
    }

    boolean a(RealConnection realConnection);

    Address b();

    ArrayDeque c();

    Plan d();

    boolean e(HttpUrl httpUrl);

    boolean isCanceled();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/connection/RoutePlanner$ConnectResult;", "", "Lokhttp3/internal/connection/RoutePlanner$Plan;", "plan", "nextPlan", "", "throwable", "<init>", "(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ConnectResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Plan f77151a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Plan f77152b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Throwable f77153c;

        public /* synthetic */ ConnectResult(Plan plan, Plan plan2, Throwable th, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(plan, (i2 & 2) != 0 ? null : plan2, (i2 & 4) != 0 ? null : th);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConnectResult)) {
                return false;
            }
            ConnectResult connectResult = (ConnectResult) obj;
            return Intrinsics.c(this.f77151a, connectResult.f77151a) && Intrinsics.c(this.f77152b, connectResult.f77152b) && Intrinsics.c(this.f77153c, connectResult.f77153c);
        }

        public final int hashCode() {
            int iHashCode = this.f77151a.hashCode() * 31;
            Plan plan = this.f77152b;
            int iHashCode2 = (iHashCode + (plan == null ? 0 : plan.hashCode())) * 31;
            Throwable th = this.f77153c;
            return iHashCode2 + (th != null ? th.hashCode() : 0);
        }

        public final String toString() {
            return "ConnectResult(plan=" + this.f77151a + ", nextPlan=" + this.f77152b + ", throwable=" + this.f77153c + ')';
        }

        public ConnectResult(Plan plan, Plan plan2, Throwable th) {
            plan.getClass();
            this.f77151a = plan;
            this.f77152b = plan2;
            this.f77153c = th;
        }
    }
}
