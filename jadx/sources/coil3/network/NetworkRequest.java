package coil3.network;

import coil3.Extras;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB1\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\r¨\u0006\u000e"}, d2 = {"Lcoil3/network/NetworkRequest;", "", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "method", "Lcoil3/network/NetworkHeaders;", "headers", "Lcoil3/network/NetworkRequestBody;", "body", "Lcoil3/Extras;", "extras", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcoil3/network/NetworkHeaders;Lcoil3/network/NetworkRequestBody;Lcoil3/Extras;)V", "(Ljava/lang/String;Ljava/lang/String;Lcoil3/network/NetworkHeaders;Lcoil3/network/NetworkRequestBody;)V", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class NetworkRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f21575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f21576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NetworkHeaders f21577c;
    public final NetworkRequestBody d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Extras f21578e;

    public /* synthetic */ NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody, Extras extras, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? "GET" : str2, (i2 & 4) != 0 ? NetworkHeaders.f21572b : networkHeaders, (i2 & 8) != 0 ? null : networkRequestBody, (i2 & 16) != 0 ? Extras.f21217b : extras);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkRequest)) {
            return false;
        }
        NetworkRequest networkRequest = (NetworkRequest) obj;
        return Intrinsics.c(this.f21575a, networkRequest.f21575a) && Intrinsics.c(this.f21576b, networkRequest.f21576b) && Intrinsics.c(this.f21577c, networkRequest.f21577c) && Intrinsics.c(this.d, networkRequest.d) && Intrinsics.c(this.f21578e, networkRequest.f21578e);
    }

    public final int hashCode() {
        int iHashCode = (this.f21577c.f21573a.hashCode() + fc.b(this.f21575a.hashCode() * 31, 31, this.f21576b)) * 31;
        NetworkRequestBody networkRequestBody = this.d;
        return this.f21578e.f21218a.hashCode() + ((iHashCode + (networkRequestBody == null ? 0 : networkRequestBody.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("NetworkRequest(url=", this.f21575a, ", method=", this.f21576b, ", headers=");
        sbS.append(this.f21577c);
        sbS.append(", body=");
        sbS.append(this.d);
        sbS.append(", extras=");
        sbS.append(this.f21578e);
        sbS.append(")");
        return sbS.toString();
    }

    public NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody, Extras extras) {
        this.f21575a = str;
        this.f21576b = str2;
        this.f21577c = networkHeaders;
        this.d = networkRequestBody;
        this.f21578e = extras;
    }

    public /* synthetic */ NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? "GET" : str2, (i2 & 4) != 0 ? NetworkHeaders.f21572b : networkHeaders, (i2 & 8) != 0 ? null : networkRequestBody);
    }

    @Deprecated
    public /* synthetic */ NetworkRequest(String str, String str2, NetworkHeaders networkHeaders, NetworkRequestBody networkRequestBody) {
        this(str, str2, networkHeaders, networkRequestBody, null, 16, null);
    }
}
