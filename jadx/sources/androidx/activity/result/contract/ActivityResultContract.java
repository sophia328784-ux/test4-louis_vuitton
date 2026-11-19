package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003:\u0001\u0006B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/activity/result/contract/ActivityResultContract;", "I", "O", "", "<init>", "()V", "SynchronousResult", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ActivityResultContract<I, O> {

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0002\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;", "T", "", "value", "<init>", "(Ljava/lang/Object;)V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SynchronousResult<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f764a;

        public SynchronousResult(T t) {
            this.f764a = t;
        }
    }

    public abstract Intent a(Context context, Object obj);

    public SynchronousResult b(Context context, Object obj) {
        return null;
    }

    public abstract Object c(int i2, Intent intent);
}
