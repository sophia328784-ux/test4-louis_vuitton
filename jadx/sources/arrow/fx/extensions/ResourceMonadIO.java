package arrow.fx.extensions;

import arrow.Kind;
import arrow.fx.typeclasses.MonadIO;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u000220\u0012,\u0012*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0004\u0012\u00028\u00010\u0004j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u00060\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007¨\u0006\b"}, d2 = {"Larrow/fx/extensions/ResourceMonadIO;", "F", "E", "Larrow/fx/typeclasses/MonadIO;", "Larrow/Kind;", "", "Larrow/fx/ResourcePartialOf;", "Larrow/fx/extensions/ResourceMonad;", "arrow-fx"}, k = 1, mv = {1, 4, 2})
public interface ResourceMonadIO<F, E> extends MonadIO<Kind<? extends Kind<Object, ? extends F>, ? extends E>>, ResourceMonad<F, E> {
}
