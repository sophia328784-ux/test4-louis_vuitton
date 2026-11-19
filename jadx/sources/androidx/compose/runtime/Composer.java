package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/Composer;", "", "Companion", "Landroidx/compose/runtime/InternalComposer;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Composer {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/Composer$Companion;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Composer$Companion$Empty$1 f7939a = new Composer$Companion$Empty$1();
    }

    void A(int i2, Object obj);

    void B();

    void C(Function0 function0);

    void D();

    void E(RecomposeScope recomposeScope);

    void F();

    default int G() {
        return Long.hashCode(getT());
    }

    GapComposer.CompositionContextImpl H();

    void I();

    void J();

    boolean K(Object obj);

    void L(int i2);

    void a(Object obj, Function2 function2);

    default boolean b(boolean z) {
        return b(z);
    }

    default boolean c(float f2) {
        return c(f2);
    }

    default boolean d(int i2) {
        return d(i2);
    }

    default boolean e(long j2) {
        return e(j2);
    }

    /* JADX INFO: renamed from: f */
    boolean getS();

    void g(boolean z);

    GapComposer h(int i2);

    boolean i();

    /* JADX INFO: renamed from: j */
    Applier getF7976a();

    Object k(CompositionLocal compositionLocal);

    /* JADX INFO: renamed from: l */
    long getT();

    /* JADX INFO: renamed from: m */
    CoroutineContext getR();

    PersistentCompositionLocalMap n();

    void o();

    boolean p(int i2, boolean z);

    void q(Object obj);

    void r();

    void s(MovableContent movableContent, Object obj);

    void t(Function0 function0);

    RecomposeScopeImpl u();

    void v();

    void w(int i2);

    Object x();

    default boolean y(Object obj) {
        return K(obj);
    }

    void z(Object obj);
}
