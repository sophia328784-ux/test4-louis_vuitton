package androidx.core.util;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"androidx/core/util/Pools$Pool", "", "T", "core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Pools$Pool<T> {
    Object acquire();

    boolean release(Object obj);
}
