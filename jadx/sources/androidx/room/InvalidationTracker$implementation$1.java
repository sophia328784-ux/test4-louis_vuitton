package androidx.room;

import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public /* synthetic */ class InvalidationTracker$implementation$1 extends FunctionReferenceImpl implements Function1<Set<? extends Integer>, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Set setA;
        Set set = (Set) obj;
        set.getClass();
        InvalidationTracker invalidationTracker = (InvalidationTracker) this.receiver;
        ReentrantLock reentrantLock = invalidationTracker.g;
        reentrantLock.lock();
        try {
            List<ObserverWrapper> listY0 = CollectionsKt.y0(invalidationTracker.f19403f.values());
            reentrantLock.unlock();
            for (ObserverWrapper observerWrapper : listY0) {
                observerWrapper.getClass();
                int[] iArr = observerWrapper.f19448b;
                int length = iArr.length;
                if (length != 0) {
                    int i2 = 0;
                    if (length != 1) {
                        SetBuilder setBuilder = new SetBuilder();
                        int length2 = iArr.length;
                        int i3 = 0;
                        while (i2 < length2) {
                            int i4 = i3 + 1;
                            if (set.contains(Integer.valueOf(iArr[i2]))) {
                                setBuilder.add(observerWrapper.f19449c[i3]);
                            }
                            i2++;
                            i3 = i4;
                        }
                        setA = SetsKt.a(setBuilder);
                    } else {
                        setA = set.contains(Integer.valueOf(iArr[0])) ? observerWrapper.d : EmptySet.f71770b;
                    }
                } else {
                    setA = EmptySet.f71770b;
                }
                if (!setA.isEmpty()) {
                    observerWrapper.f19447a.a(setA);
                }
            }
            return Unit.f71739a;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
