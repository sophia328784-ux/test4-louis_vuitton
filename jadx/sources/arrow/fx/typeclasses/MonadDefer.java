package arrow.fx.typeclasses;

import arrow.typeclasses.MonadThrow;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003¨\u0006\u0005"}, d2 = {"Larrow/fx/typeclasses/MonadDefer;", "F", "Larrow/typeclasses/MonadThrow;", "Larrow/fx/typeclasses/Bracket;", "", "arrow-fx"}, k = 1, mv = {1, 4, 2})
public interface MonadDefer<F> extends MonadThrow<F>, Bracket<F, Throwable> {
}
