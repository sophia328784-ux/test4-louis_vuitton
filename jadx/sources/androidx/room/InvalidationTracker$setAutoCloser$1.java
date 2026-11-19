package androidx.room;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final /* synthetic */ class InvalidationTracker$setAutoCloser$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        InvalidationTracker invalidationTracker = (InvalidationTracker) this.receiver;
        synchronized (invalidationTracker.n) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = invalidationTracker.m;
                if (multiInstanceInvalidationClient != null) {
                    ReentrantLock reentrantLock = invalidationTracker.g;
                    reentrantLock.lock();
                    try {
                        List listY0 = CollectionsKt.y0(invalidationTracker.f19403f.keySet());
                        reentrantLock.unlock();
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : listY0) {
                            InvalidationTracker.Observer observer = (InvalidationTracker.Observer) obj;
                            observer.getClass();
                            if (!(observer instanceof MultiInstanceInvalidationClient$observer$1)) {
                                arrayList.add(obj);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            multiInstanceInvalidationClient.a();
                        }
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                }
                ObservedTableStates observedTableStates = invalidationTracker.f19402e.f19524h;
                ReentrantLock reentrantLock2 = observedTableStates.f19441a;
                reentrantLock2.lock();
                try {
                    boolean[] zArr = observedTableStates.f19443c;
                    Arrays.fill(zArr, 0, zArr.length, false);
                    observedTableStates.d = true;
                    reentrantLock2.unlock();
                } catch (Throwable th2) {
                    reentrantLock2.unlock();
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return Unit.f71739a;
    }
}
