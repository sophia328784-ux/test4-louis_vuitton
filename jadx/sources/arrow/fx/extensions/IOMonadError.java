package arrow.fx.extensions;

import arrow.typeclasses.MonadError;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005¨\u0006\u0006"}, d2 = {"Larrow/fx/extensions/IOMonadError;", "Larrow/typeclasses/MonadError;", "", "", "Larrow/fx/extensions/IOApplicativeError;", "Larrow/fx/extensions/IOMonad;", "arrow-fx"}, k = 1, mv = {1, 4, 2})
public interface IOMonadError extends MonadError<Object, Throwable>, IOApplicativeError, IOMonad {
}
