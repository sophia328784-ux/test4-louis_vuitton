package coil3.network;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.a;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001BG\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcoil3/network/NetworkResponse;", "", "", m.v, "", "requestMillis", "responseMillis", "Lcoil3/network/NetworkHeaders;", "headers", "Lcoil3/network/NetworkResponseBody;", "body", "delegate", "<init>", "(IJJLcoil3/network/NetworkHeaders;Lcoil3/network/NetworkResponseBody;Ljava/lang/Object;)V", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class NetworkResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f21579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f21580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f21581c;
    public final NetworkHeaders d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NetworkResponseBody f21582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f21583f;

    public /* synthetic */ NetworkResponse(int i2, long j2, long j3, NetworkHeaders networkHeaders, NetworkResponseBody networkResponseBody, Object obj, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 200 : i2, (i3 & 2) != 0 ? 0L : j2, (i3 & 4) != 0 ? 0L : j3, (i3 & 8) != 0 ? NetworkHeaders.f21572b : networkHeaders, (i3 & 16) != 0 ? null : networkResponseBody, (i3 & 32) != 0 ? null : obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkResponse)) {
            return false;
        }
        NetworkResponse networkResponse = (NetworkResponse) obj;
        return this.f21579a == networkResponse.f21579a && this.f21580b == networkResponse.f21580b && this.f21581c == networkResponse.f21581c && Intrinsics.c(this.d, networkResponse.d) && Intrinsics.c(this.f21582e, networkResponse.f21582e) && Intrinsics.c(this.f21583f, networkResponse.f21583f);
    }

    public final int hashCode() {
        int iHashCode = (this.d.f21573a.hashCode() + fc.a(fc.a(this.f21579a * 31, 31, this.f21580b), 31, this.f21581c)) * 31;
        NetworkResponseBody networkResponseBody = this.f21582e;
        int iHashCode2 = (iHashCode + (networkResponseBody == null ? 0 : networkResponseBody.hashCode())) * 31;
        Object obj = this.f21583f;
        return iHashCode2 + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NetworkResponse(code=");
        sb.append(this.f21579a);
        sb.append(", requestMillis=");
        sb.append(this.f21580b);
        sb.append(", responseMillis=");
        sb.append(this.f21581c);
        sb.append(", headers=");
        sb.append(this.d);
        sb.append(", body=");
        sb.append(this.f21582e);
        sb.append(", delegate=");
        return a.n(sb, this.f21583f, ")");
    }

    public NetworkResponse(int i2, long j2, long j3, NetworkHeaders networkHeaders, NetworkResponseBody networkResponseBody, Object obj) {
        this.f21579a = i2;
        this.f21580b = j2;
        this.f21581c = j3;
        this.d = networkHeaders;
        this.f21582e = networkResponseBody;
        this.f21583f = obj;
    }

    public NetworkResponse() {
        this(0, 0L, 0L, null, null, null, 63, null);
    }
}
