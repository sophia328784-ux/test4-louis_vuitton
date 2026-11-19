package arrow.core.extensions;

import arrow.Kind;
import arrow.typeclasses.Show;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.lang.Comparable;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u0001*\u0004\b\u0001\u0010\u000320\u0012,\u0012*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u00070\u0004¨\u0006\b"}, d2 = {"Larrow/core/extensions/SortedMapKShow;", "", "A", NBSSpanMetricUnit.Byte, "Larrow/typeclasses/Show;", "Larrow/Kind;", "", "Larrow/core/SortedMapKOf;", "arrow-core"}, k = 1, mv = {1, 4, 2})
public interface SortedMapKShow<A extends Comparable<? super A>, B> extends Show<Kind<? extends Kind<Object, ? extends A>, ? extends B>> {
}
