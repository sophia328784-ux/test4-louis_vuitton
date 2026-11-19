package kotlinx.collections.immutable.implementations.immutableList;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-collections-immutable"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class UtilsKt {
    public static final int a(int i2, int i3) {
        return (i2 >> i3) & 31;
    }

    public static final SmallPersistentVector b() {
        SmallPersistentVector.d.getClass();
        return SmallPersistentVector.f74620e;
    }
}
