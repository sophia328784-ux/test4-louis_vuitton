package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.work.Logger;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/utils/NetworkRequest28;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class NetworkRequest28 {
    public static NetworkRequestCompat a(int[] iArr, int[] iArr2) {
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i2 : iArr) {
            try {
                builder.addCapability(i2);
            } catch (IllegalArgumentException unused) {
                Logger loggerA = Logger.a();
                NetworkRequestCompat.f20547b.getClass();
                NetworkRequestCompat.Companion companion = NetworkRequestCompat.f20547b;
                loggerA.getClass();
            }
        }
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = NetworkRequestCompatKt.f20549a[i3];
            if (!ArraysKt.g(iArr, i4)) {
                try {
                    builder.removeCapability(i4);
                } catch (IllegalArgumentException unused2) {
                    Logger loggerA2 = Logger.a();
                    NetworkRequestCompat.f20547b.getClass();
                    NetworkRequestCompat.Companion companion2 = NetworkRequestCompat.f20547b;
                    loggerA2.getClass();
                }
            }
        }
        for (int i5 : iArr2) {
            builder.addTransportType(i5);
        }
        NetworkRequest networkRequestBuild = builder.build();
        networkRequestBuild.getClass();
        return new NetworkRequestCompat(networkRequestBuild);
    }
}
