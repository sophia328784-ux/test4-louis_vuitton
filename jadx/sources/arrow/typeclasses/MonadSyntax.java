package arrow.typeclasses;

import arrow.typeclasses.suspended.BindSyntax;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003¨\u0006\u0004"}, d2 = {"Larrow/typeclasses/MonadSyntax;", "F", "Larrow/typeclasses/Monad;", "Larrow/typeclasses/suspended/BindSyntax;", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
public interface MonadSyntax<F> extends Monad<F>, BindSyntax<F> {
}
