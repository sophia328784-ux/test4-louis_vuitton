package arrow.typeclasses;

import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004¨\u0006\u0005"}, d2 = {"Larrow/typeclasses/MonadError;", "F", "E", "Larrow/typeclasses/ApplicativeError;", "Larrow/typeclasses/Monad;", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
public interface MonadError<F, E> extends ApplicativeError<F, E>, Monad<F> {
}
