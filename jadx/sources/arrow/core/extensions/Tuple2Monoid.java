package arrow.core.extensions;

import arrow.typeclasses.Monoid;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¨\u0006\u0006"}, d2 = {"Larrow/core/extensions/Tuple2Monoid;", "A", NBSSpanMetricUnit.Byte, "Larrow/typeclasses/Monoid;", "", "Larrow/core/extensions/Tuple2Semigroup;", "arrow-core"}, k = 1, mv = {1, 4, 2})
public interface Tuple2Monoid<A, B> extends Monoid<Object>, Tuple2Semigroup<A, B> {
}
