package arrow.core.computations;

import arrow.continuations.Effect;
import arrow.core.Either;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0003¨\u0006\u0005"}, d2 = {"Larrow/core/computations/EitherEffect;", "E", "A", "Larrow/continuations/Effect;", "Larrow/core/Either;", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
public interface EitherEffect<E, A> extends Effect<Either<? extends E, ? extends A>> {
}
