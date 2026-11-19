package androidx.compose.runtime;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\bg\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Landroidx/compose/runtime/IntState;", "Landroidx/compose/runtime/State;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface IntState extends State<Integer> {
    int f();

    @Override // androidx.compose.runtime.State
    default Integer getValue() {
        return Integer.valueOf(f());
    }
}
