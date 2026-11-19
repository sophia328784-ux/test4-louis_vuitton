package arrow.core.extensions;

import arrow.Kind;
import arrow.typeclasses.Monoid;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u000220\u0012,\u0012*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0004\u0012\u00028\u00010\u0004j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u00060\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007¨\u0006\b"}, d2 = {"Larrow/core/extensions/ConstMonoid;", "A", "T", "Larrow/typeclasses/Monoid;", "Larrow/Kind;", "", "Larrow/core/ConstOf;", "Larrow/core/extensions/ConstSemigroup;", "arrow-core"}, k = 1, mv = {1, 4, 2})
public interface ConstMonoid<A, T> extends Monoid<Kind<? extends Kind<Object, ? extends A>, ? extends T>>, ConstSemigroup<A, T> {
}
