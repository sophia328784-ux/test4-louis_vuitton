package coil3.network;

import coil3.network.internal.DefaultCacheStrategy;
import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001:\u0002\u0002\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Lcoil3/network/CacheStrategy;", "", "ReadResult", "WriteResult", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface CacheStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultCacheStrategy f21532a = new DefaultCacheStrategy();

    ReadResult a(NetworkResponse networkResponse);

    WriteResult b(NetworkResponse networkResponse, NetworkResponse networkResponse2);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcoil3/network/CacheStrategy$WriteResult;", "", "Lcoil3/network/NetworkResponse;", Payload.RESPONSE, "<init>", "(Lcoil3/network/NetworkResponse;)V", "Companion", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class WriteResult {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final WriteResult f21535b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final NetworkResponse f21536a;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/network/CacheStrategy$WriteResult$Companion;", "", "Lcoil3/network/CacheStrategy$WriteResult;", "DISABLED", "Lcoil3/network/CacheStrategy$WriteResult;", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
            f21535b = new WriteResult();
        }

        public WriteResult() {
            this.f21536a = null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof WriteResult) {
                return Intrinsics.c(this.f21536a, ((WriteResult) obj).f21536a);
            }
            return false;
        }

        public final int hashCode() {
            NetworkResponse networkResponse = this.f21536a;
            if (networkResponse != null) {
                return networkResponse.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "WriteResult(response=" + this.f21536a + ")";
        }

        public WriteResult(NetworkResponse networkResponse) {
            this.f21536a = networkResponse;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\b¨\u0006\t"}, d2 = {"Lcoil3/network/CacheStrategy$ReadResult;", "", "Lcoil3/network/NetworkRequest;", "request", "<init>", "(Lcoil3/network/NetworkRequest;)V", "Lcoil3/network/NetworkResponse;", Payload.RESPONSE, "(Lcoil3/network/NetworkResponse;)V", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ReadResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final NetworkRequest f21533a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final NetworkResponse f21534b;

        public ReadResult(NetworkRequest networkRequest) {
            this.f21533a = networkRequest;
            this.f21534b = null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReadResult)) {
                return false;
            }
            ReadResult readResult = (ReadResult) obj;
            return Intrinsics.c(this.f21533a, readResult.f21533a) && Intrinsics.c(this.f21534b, readResult.f21534b);
        }

        public final int hashCode() {
            NetworkRequest networkRequest = this.f21533a;
            int iHashCode = (networkRequest != null ? networkRequest.hashCode() : 0) * 31;
            NetworkResponse networkResponse = this.f21534b;
            return iHashCode + (networkResponse != null ? networkResponse.hashCode() : 0);
        }

        public final String toString() {
            return "ReadResult(request=" + this.f21533a + ", response=" + this.f21534b + ")";
        }

        public ReadResult(NetworkResponse networkResponse) {
            this.f21533a = null;
            this.f21534b = networkResponse;
        }
    }
}
