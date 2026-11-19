package arrow.core.extensions;

import arrow.typeclasses.MonadError;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004¨\u0006\u0005"}, d2 = {"Larrow/core/extensions/OptionMonadError;", "Larrow/typeclasses/MonadError;", "", "", "Larrow/core/extensions/OptionMonad;", "arrow-core"}, k = 1, mv = {1, 4, 2})
public interface OptionMonadError extends MonadError<Object, Unit>, OptionMonad {
}
