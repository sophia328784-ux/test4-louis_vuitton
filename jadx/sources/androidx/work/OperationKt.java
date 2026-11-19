package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import defpackage.y7;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class OperationKt {
    public static final Operation a(Tracer tracer, String str, SerialExecutor serialExecutor, Function0 function0) {
        tracer.getClass();
        serialExecutor.getClass();
        MutableLiveData mutableLiveData = new MutableLiveData(Operation.f20266b);
        return new OperationImpl(mutableLiveData, CallbackToFutureAdapter.a(new y7(serialExecutor, tracer, str, function0, mutableLiveData)));
    }
}
