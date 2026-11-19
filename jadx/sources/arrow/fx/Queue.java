package arrow.fx;

import arrow.Kind;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0004\u0012\u00028\u00010\u0003j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u00052\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00062\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007¨\u0006\b"}, d2 = {"Larrow/fx/Queue;", "F", "A", "Larrow/Kind;", "", "Larrow/fx/QueueOf;", "Larrow/fx/Dequeue;", "Larrow/fx/Enqueue;", "arrow-fx"}, k = 1, mv = {1, 4, 2})
public interface Queue<F, A> extends Kind<Kind<Object, ? extends F>, A>, Dequeue<F, A>, Enqueue<F, A> {
}
