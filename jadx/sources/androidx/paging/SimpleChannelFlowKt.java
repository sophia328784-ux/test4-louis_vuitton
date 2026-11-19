package androidx.paging;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"paging-common_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class SimpleChannelFlowKt {
    public static final Flow a(Function2 function2) {
        return FlowKt.c(FlowKt.t(new SimpleChannelFlowKt$simpleChannelFlow$1(function2, null)), -2);
    }
}
