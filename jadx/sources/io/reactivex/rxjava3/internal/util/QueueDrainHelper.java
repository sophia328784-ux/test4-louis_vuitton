package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.observers.QueueDrainObserver;
import io.reactivex.rxjava3.operators.SimplePlainQueue;

/* JADX INFO: loaded from: classes4.dex */
public abstract class QueueDrainHelper {
    public static boolean a(boolean z, boolean z2, Observer observer, boolean z3, SimplePlainQueue simplePlainQueue, Disposable disposable, QueueDrainObserver queueDrainObserver) {
        if (queueDrainObserver.cancelled()) {
            simplePlainQueue.clear();
            disposable.dispose();
            return true;
        }
        if (!z) {
            return false;
        }
        if (z3) {
            if (!z2) {
                return false;
            }
            if (disposable != null) {
                disposable.dispose();
            }
            Throwable thError = queueDrainObserver.error();
            if (thError != null) {
                observer.onError(thError);
                return true;
            }
            observer.onComplete();
            return true;
        }
        Throwable thError2 = queueDrainObserver.error();
        if (thError2 != null) {
            simplePlainQueue.clear();
            if (disposable != null) {
                disposable.dispose();
            }
            observer.onError(thError2);
            return true;
        }
        if (!z2) {
            return false;
        }
        if (disposable != null) {
            disposable.dispose();
        }
        observer.onComplete();
        return true;
    }

    public static void b(SimplePlainQueue simplePlainQueue, Observer observer, boolean z, Disposable disposable, QueueDrainObserver queueDrainObserver) {
        int iLeave = 1;
        while (true) {
            SimplePlainQueue simplePlainQueue2 = simplePlainQueue;
            Observer observer2 = observer;
            boolean z2 = z;
            Disposable disposable2 = disposable;
            QueueDrainObserver queueDrainObserver2 = queueDrainObserver;
            if (a(queueDrainObserver.done(), simplePlainQueue.isEmpty(), observer2, z2, simplePlainQueue2, disposable2, queueDrainObserver2)) {
                return;
            }
            while (true) {
                boolean zDone = queueDrainObserver2.done();
                Object objPoll = simplePlainQueue2.poll();
                boolean z3 = objPoll == null;
                boolean z4 = z3;
                if (a(zDone, z3, observer2, z2, simplePlainQueue2, disposable2, queueDrainObserver2)) {
                    return;
                }
                if (z4) {
                    break;
                } else {
                    queueDrainObserver2.accept(observer2, objPoll);
                }
            }
            iLeave = queueDrainObserver2.leave(-iLeave);
            if (iLeave == 0) {
                return;
            }
            observer = observer2;
            z = z2;
            simplePlainQueue = simplePlainQueue2;
            disposable = disposable2;
            queueDrainObserver = queueDrainObserver2;
        }
    }
}
