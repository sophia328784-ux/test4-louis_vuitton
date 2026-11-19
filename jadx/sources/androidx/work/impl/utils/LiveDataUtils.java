package androidx.work.impl.utils;

import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;

/* JADX INFO: loaded from: classes.dex */
public abstract class LiveDataUtils {

    /* JADX INFO: renamed from: androidx.work.impl.utils.LiveDataUtils$1, reason: invalid class name */
    class AnonymousClass1 implements Observer<Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f20543b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ TaskExecutor f20544c;
        public final /* synthetic */ Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Function f20545e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MediatorLiveData f20546f;

        public AnonymousClass1(TaskExecutor taskExecutor, Object obj, Function function, MediatorLiveData mediatorLiveData) {
            this.f20544c = taskExecutor;
            this.d = obj;
            this.f20545e = function;
            this.f20546f = mediatorLiveData;
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(final Object obj) {
            this.f20544c.d(new Runnable() { // from class: androidx.work.impl.utils.LiveDataUtils.1.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (AnonymousClass1.this.d) {
                        try {
                            Object objMo0apply = AnonymousClass1.this.f20545e.mo0apply(obj);
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            Object obj2 = anonymousClass1.f20543b;
                            if (obj2 == null && objMo0apply != null) {
                                anonymousClass1.f20543b = objMo0apply;
                                anonymousClass1.f20546f.postValue(objMo0apply);
                            } else if (obj2 != null && !obj2.equals(objMo0apply)) {
                                AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                                anonymousClass2.f20543b = objMo0apply;
                                anonymousClass2.f20546f.postValue(objMo0apply);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            });
        }
    }

    public static MediatorLiveData a(LiveData liveData, Function function, TaskExecutor taskExecutor) {
        Object obj = new Object();
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.b(liveData, new AnonymousClass1(taskExecutor, obj, function, mediatorLiveData));
        return mediatorLiveData;
    }
}
