package arrow.core.extensions;

import arrow.Kind;
import arrow.typeclasses.Crosswalk;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\u001e\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003j\b\u0012\u0004\u0012\u00028\u0000`\u00050\u00022\b\u0012\u0004\u0012\u00028\u00000\u00062\b\u0012\u0004\u0012\u00028\u00000\u0007¨\u0006\b"}, d2 = {"Larrow/core/extensions/IorCrosswalk;", "L", "Larrow/typeclasses/Crosswalk;", "Larrow/Kind;", "", "Larrow/core/IorPartialOf;", "Larrow/core/extensions/IorFunctor;", "Larrow/core/extensions/IorFoldable;", "arrow-core"}, k = 1, mv = {1, 4, 2})
public interface IorCrosswalk<L> extends Crosswalk<Kind<Object, ? extends L>>, IorFunctor<L>, IorFoldable<L> {
}
