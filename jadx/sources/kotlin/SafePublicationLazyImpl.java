package kotlin;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.o91;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function0;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0002\u0018\u0000 \u0014*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lkotlin/SafePublicationLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Lkotlin/Function0;", "initializer", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "input", "", "readObject", "(Ljava/io/ObjectInputStream;)V", "c", "Ljava/lang/Object;", "_value", NBSSpanMetricUnit.Day, "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class SafePublicationLazyImpl<T> implements Lazy<T>, Serializable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f71710e = AtomicReferenceFieldUpdater.newUpdater(SafePublicationLazyImpl.class, Object.class, "c");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ long f71711f = o91.f76733a.objectFieldOffset(SafePublicationLazyImpl.class.getDeclaredField("c"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Function0 f71712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public volatile Object _value;

    public SafePublicationLazyImpl(Function0<? extends T> function0) {
        function0.getClass();
        this.f71712b = function0;
        this._value = UNINITIALIZED_VALUE.f71733a;
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getF71699b());
    }

    @Override // kotlin.Lazy
    public final boolean a() {
        return this._value != UNINITIALIZED_VALUE.f71733a;
    }

    @Override // kotlin.Lazy
    /* JADX INFO: renamed from: getValue */
    public final Object getF71699b() {
        SafePublicationLazyImpl<T> safePublicationLazyImpl;
        Object obj = this._value;
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.f71733a;
        if (obj != uninitialized_value) {
            return obj;
        }
        Function0 function0 = this.f71712b;
        if (function0 != null) {
            Object objMo47invoke = function0.mo47invoke();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f71710e;
            while (true) {
                atomicReferenceFieldUpdater.getClass();
                Unsafe unsafe = o91.f76733a;
                long j2 = f71711f;
                safePublicationLazyImpl = this;
                if (unsafe.compareAndSwapObject(safePublicationLazyImpl, j2, uninitialized_value, objMo47invoke)) {
                    safePublicationLazyImpl.f71712b = null;
                    return objMo47invoke;
                }
                if (unsafe.getObjectVolatile(safePublicationLazyImpl, j2) == uninitialized_value) {
                    this = safePublicationLazyImpl;
                }
            }
        } else {
            safePublicationLazyImpl = this;
        }
        return safePublicationLazyImpl._value;
    }

    public final String toString() {
        return a() ? String.valueOf(getF71699b()) : "Lazy value not initialized yet.";
    }
}
