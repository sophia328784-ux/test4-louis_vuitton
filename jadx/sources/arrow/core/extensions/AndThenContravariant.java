package arrow.core.extensions;

import arrow.typeclasses.Conested;
import arrow.typeclasses.Contravariant;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u00030\u0002¨\u0006\u0005"}, d2 = {"Larrow/core/extensions/AndThenContravariant;", "O", "Larrow/typeclasses/Contravariant;", "Larrow/typeclasses/Conested;", "", "arrow-core"}, k = 1, mv = {1, 4, 2})
public interface AndThenContravariant<O> extends Contravariant<Conested<Object, ? extends O>> {
}
