package kotlinx.serialization.internal;

import java.lang.ref.SoftReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/internal/MutableSoftReference;", "T", "", "<init>", "()V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MutableSoftReference<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile SoftReference f75645a = new SoftReference(null);

    public final synchronized Object a(Function0 function0) {
        Object obj = this.f75645a.get();
        if (obj != null) {
            return obj;
        }
        Object objMo47invoke = function0.mo47invoke();
        this.f75645a = new SoftReference(objMo47invoke);
        return objMo47invoke;
    }
}
