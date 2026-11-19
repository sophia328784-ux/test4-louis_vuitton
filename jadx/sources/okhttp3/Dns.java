package okhttp3;

import defpackage.tr;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/Dns;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Dns {
    public static final Dns d = new Dns() { // from class: okhttp3.Dns$Companion$DnsSystem
        @Override // okhttp3.Dns
        public final List lookup(String str) throws UnknownHostException {
            str.getClass();
            try {
                InetAddress[] allByName = InetAddress.getAllByName(str);
                allByName.getClass();
                return ArraysKt.W(allByName);
            } catch (NullPointerException e2) {
                UnknownHostException unknownHostException = new UnknownHostException(tr.g("Broken system behaviour for dns lookup of ", str));
                unknownHostException.initCause(e2);
                throw unknownHostException;
            }
        }
    };

    List lookup(String str);
}
