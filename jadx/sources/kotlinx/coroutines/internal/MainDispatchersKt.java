package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class MainDispatchersKt {
    public static final boolean a(MainCoroutineDispatcher mainCoroutineDispatcher) {
        return mainCoroutineDispatcher.r() instanceof MissingMainCoroutineDispatcher;
    }
}
