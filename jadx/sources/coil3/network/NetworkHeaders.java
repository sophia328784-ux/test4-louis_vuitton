package coil3.network;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lcoil3/network/NetworkHeaders;", "", "Builder", "Companion", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class NetworkHeaders {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final NetworkHeaders f21572b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f21573a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/network/NetworkHeaders$Companion;", "", "Lcoil3/network/NetworkHeaders;", "EMPTY", "Lcoil3/network/NetworkHeaders;", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f21572b = new Builder().b();
    }

    public NetworkHeaders(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this.f21573a = map;
    }

    public final String a() {
        String lowerCase = "Content-Type".toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        List list = (List) this.f21573a.get(lowerCase);
        if (list != null) {
            return (String) CollectionsKt.N(list);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworkHeaders) && Intrinsics.c(this.f21573a, ((NetworkHeaders) obj).f21573a);
    }

    public final int hashCode() {
        return this.f21573a.hashCode();
    }

    public final String toString() {
        return "NetworkHeaders(data=" + this.f21573a + ")";
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil3/network/NetworkHeaders$Builder;", "", "<init>", "()V", "Lcoil3/network/NetworkHeaders;", "headers", "(Lcoil3/network/NetworkHeaders;)V", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f21574a;

        public Builder(NetworkHeaders networkHeaders) {
            Map map = networkHeaders.f21573a;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), CollectionsKt.z0((Collection) entry.getValue()));
            }
            this.f21574a = linkedHashMap;
        }

        public final void a(String str, String str2) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            LinkedHashMap linkedHashMap = this.f21574a;
            Object arrayList = linkedHashMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(lowerCase, arrayList);
            }
            ((List) arrayList).add(str2);
        }

        public final NetworkHeaders b() {
            return new NetworkHeaders(MapsKt.o(this.f21574a), null);
        }

        public final void c(String str) {
            String lowerCase = "Cache-Control".toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            this.f21574a.put(lowerCase, CollectionsKt.U(str));
        }

        public Builder() {
            this.f21574a = new LinkedHashMap();
        }
    }
}
