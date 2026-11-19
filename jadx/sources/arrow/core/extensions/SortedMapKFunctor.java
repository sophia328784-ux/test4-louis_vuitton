package arrow.core.extensions;

import arrow.Kind;
import arrow.typeclasses.Functor;
import java.lang.Comparable;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001e\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004j\b\u0012\u0004\u0012\u00028\u0000`\u00060\u0003¨\u0006\u0007"}, d2 = {"Larrow/core/extensions/SortedMapKFunctor;", "", "A", "Larrow/typeclasses/Functor;", "Larrow/Kind;", "", "Larrow/core/SortedMapKPartialOf;", "arrow-core"}, k = 1, mv = {1, 4, 2})
public interface SortedMapKFunctor<A extends Comparable<? super A>> extends Functor<Kind<Object, ? extends A>> {
}
