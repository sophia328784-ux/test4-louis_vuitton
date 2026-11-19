package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B!\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlin/SynchronizedLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Lkotlin/Function0;", "initializer", "", "lock", "<init>", "(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V", "writeReplace", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class SynchronizedLazyImpl<T> implements Lazy<T>, Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function0 f71714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Object f71715c;
    public final Object d;

    public SynchronizedLazyImpl(Function0<? extends T> function0, Object obj) {
        function0.getClass();
        this.f71714b = function0;
        this.f71715c = UNINITIALIZED_VALUE.f71733a;
        this.d = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getF71699b());
    }

    @Override // kotlin.Lazy
    public final boolean a() {
        return this.f71715c != UNINITIALIZED_VALUE.f71733a;
    }

    @Override // kotlin.Lazy
    /* JADX INFO: renamed from: getValue */
    public final Object getF71699b() {
        Object objMo47invoke;
        Object obj = this.f71715c;
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.f71733a;
        if (obj != uninitialized_value) {
            return obj;
        }
        synchronized (this.d) {
            objMo47invoke = this.f71715c;
            if (objMo47invoke == uninitialized_value) {
                Function0 function0 = this.f71714b;
                function0.getClass();
                objMo47invoke = function0.mo47invoke();
                this.f71715c = objMo47invoke;
                this.f71714b = null;
            }
        }
        return objMo47invoke;
    }

    public final String toString() {
        return a() ? String.valueOf(getF71699b()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ SynchronizedLazyImpl(Function0 function0, Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i2 & 2) != 0 ? null : obj);
    }
}
