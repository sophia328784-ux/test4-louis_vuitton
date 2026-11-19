package androidx.lifecycle;

import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-livedata"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FlowLiveDataConversions {
    public static final Flow a(LiveData liveData) {
        liveData.getClass();
        return FlowKt.c(FlowKt.d(new FlowLiveDataConversions$asFlow$1(liveData, null)), -1);
    }
}
