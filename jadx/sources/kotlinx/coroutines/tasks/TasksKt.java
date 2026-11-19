package kotlinx.coroutines.tasks;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-play-services"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class TasksKt {
    public static final Object a(Task task, Continuation continuation) throws Exception {
        if (!task.k()) {
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            task.b(DirectExecutor.f75230b, new OnCompleteListener() { // from class: kotlinx.coroutines.tasks.TasksKt$awaitImpl$2$1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task2) {
                    Exception exception = task2.getException();
                    CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                    if (exception != null) {
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuationImpl2.resumeWith(new Result.Failure(exception));
                    } else if (task2.j()) {
                        cancellableContinuationImpl2.cancel(null);
                    } else {
                        Result.Companion companion2 = Result.INSTANCE;
                        cancellableContinuationImpl2.resumeWith(task2.getResult());
                    }
                }
            });
            Object result = cancellableContinuationImpl.getResult();
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            return result;
        }
        Exception exception = task.getException();
        if (exception != null) {
            throw exception;
        }
        if (!task.j()) {
            return task.getResult();
        }
        throw new CancellationException("Task " + task + " was cancelled normally.");
    }
}
