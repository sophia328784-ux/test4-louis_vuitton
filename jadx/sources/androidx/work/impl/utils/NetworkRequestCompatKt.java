package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.os.Build;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class NetworkRequestCompatKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f20549a = {13, 15, 14};

    public static final int[] a(NetworkRequest networkRequest) {
        networkRequest.getClass();
        if (Build.VERSION.SDK_INT >= 31) {
            return NetworkRequest31.a(networkRequest);
        }
        int[] iArr = {17, 5, 2, 10, 29, 19, 3, 32, 7, 4, 12, 36, 23, 0, 33, 20, 11, 13, 18, 21, 15, 35, 34, 8, 1, 25, 14, 16, 6, 9};
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 30; i2++) {
            int i3 = iArr[i2];
            if (networkRequest.hasCapability(i3)) {
                arrayList.add(Integer.valueOf(i3));
            }
        }
        return CollectionsKt.x0(arrayList);
    }

    public static final int[] b(NetworkRequest networkRequest) {
        networkRequest.getClass();
        if (Build.VERSION.SDK_INT >= 31) {
            return NetworkRequest31.b(networkRequest);
        }
        int[] iArr = {2, 0, 3, 6, 10, 9, 8, 4, 1, 5};
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 10; i2++) {
            int i3 = iArr[i2];
            if (networkRequest.hasTransport(i3)) {
                arrayList.add(Integer.valueOf(i3));
            }
        }
        return CollectionsKt.x0(arrayList);
    }
}
