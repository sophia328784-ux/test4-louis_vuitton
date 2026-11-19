package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/PausableComposition;", "Landroidx/compose/runtime/ReusableComposition;", "Landroidx/compose/runtime/CompositionImpl;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface PausableComposition extends ReusableComposition {
    PausedCompositionImpl f(Function2 function2);

    PausedCompositionImpl v(Function2 function2);
}
