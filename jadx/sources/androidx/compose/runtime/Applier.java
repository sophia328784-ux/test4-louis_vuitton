package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Landroidx/compose/runtime/Applier;", "N", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Applier<N> {
    default void a(Object obj, Function2 function2) {
        function2.invoke(b(), obj);
    }

    Object b();

    void c(int i2, int i3, int i4);

    void clear();

    void d(int i2, int i3);

    void e(int i2, Object obj);

    default void f() {
    }

    void g(int i2, Object obj);

    void h(Object obj);

    default void i() {
        Object objB = b();
        ComposeNodeLifecycleCallback composeNodeLifecycleCallback = objB instanceof ComposeNodeLifecycleCallback ? (ComposeNodeLifecycleCallback) objB : null;
        if (composeNodeLifecycleCallback != null) {
            composeNodeLifecycleCallback.h();
        }
    }

    void j();
}
