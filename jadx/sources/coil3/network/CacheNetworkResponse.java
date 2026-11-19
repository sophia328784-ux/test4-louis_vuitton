package coil3.network;

import defpackage.b21;
import java.io.EOFException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import okio.RealBufferedSink;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil3/network/CacheNetworkResponse;", "", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class CacheNetworkResponse {
    public static NetworkResponse a(RealBufferedSource realBufferedSource) throws EOFException {
        int i2 = Integer.parseInt(realBufferedSource.Z(Long.MAX_VALUE));
        long j2 = Long.parseLong(realBufferedSource.Z(Long.MAX_VALUE));
        long j3 = Long.parseLong(realBufferedSource.Z(Long.MAX_VALUE));
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder();
        int i3 = Integer.parseInt(realBufferedSource.Z(Long.MAX_VALUE));
        for (int i4 = 0; i4 < i3; i4++) {
            String strZ = realBufferedSource.Z(Long.MAX_VALUE);
            int iU = StringsKt.u(strZ, ':', 0, 6);
            if (iU == -1) {
                b21.n("Unexpected header: ".concat(strZ));
                return null;
            }
            builder.a(StringsKt.a0(strZ.substring(0, iU)).toString(), strZ.substring(iU + 1));
        }
        return new NetworkResponse(i2, j2, j3, builder.b(), null, null, 48, null);
    }

    public static void b(NetworkResponse networkResponse, RealBufferedSink realBufferedSink) {
        realBufferedSink.F0(networkResponse.f21579a);
        realBufferedSink.writeByte(10);
        realBufferedSink.F0(networkResponse.f21580b);
        realBufferedSink.writeByte(10);
        realBufferedSink.F0(networkResponse.f21581c);
        realBufferedSink.writeByte(10);
        Set<Map.Entry> setEntrySet = networkResponse.d.f21573a.entrySet();
        Iterator it = setEntrySet.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((List) ((Map.Entry) it.next()).getValue()).size();
        }
        realBufferedSink.F0(size);
        realBufferedSink.writeByte(10);
        for (Map.Entry entry : setEntrySet) {
            for (String str : (List) entry.getValue()) {
                realBufferedSink.r0((String) entry.getKey());
                realBufferedSink.r0(":");
                realBufferedSink.r0(str);
                realBufferedSink.writeByte(10);
            }
        }
    }
}
