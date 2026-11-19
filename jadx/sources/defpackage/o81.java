package defpackage;

import com.perfectcorp.thirdparty.com.google.common.util.concurrent.b;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class o81 {
    public static /* synthetic */ boolean a(Unsafe unsafe, b bVar, long j2, Object obj, Object obj2) {
        while (!unsafe.compareAndSwapObject(bVar, j2, obj, obj2)) {
            if (unsafe.getObject(bVar, j2) != obj) {
                return false;
            }
        }
        return true;
    }
}
