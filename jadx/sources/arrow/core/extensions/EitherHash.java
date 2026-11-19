package arrow.core.extensions;

import arrow.core.Either;
import arrow.typeclasses.Hash;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0003¨\u0006\u0005"}, d2 = {"Larrow/core/extensions/EitherHash;", "L", "R", "Larrow/typeclasses/Hash;", "Larrow/core/Either;", "arrow-core"}, k = 1, mv = {1, 4, 2})
public interface EitherHash<L, R> extends Hash<Either<? extends L, ? extends R>> {
}
