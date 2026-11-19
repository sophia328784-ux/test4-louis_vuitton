package arrow.typeclasses;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002¨\u0006\u0004"}, d2 = {"Larrow/typeclasses/MonadThrow;", "F", "Larrow/typeclasses/MonadError;", "", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
public interface MonadThrow<F> extends MonadError<F, Throwable> {
}
