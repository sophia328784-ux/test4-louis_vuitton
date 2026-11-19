package androidx.compose.runtime;

import androidx.compose.runtime.collection.ScatterSetWrapper;
import defpackage.jm0;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/ControlledComposition;", "Landroidx/compose/runtime/Composition;", "Landroidx/compose/runtime/CompositionImpl;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ControlledComposition extends Composition {
    void a(Object obj);

    void b();

    void c(Function2 function2);

    void d(ScatterSetWrapper scatterSetWrapper);

    void e();

    void g(jm0 jm0Var);

    void i(MovableContentState movableContentState);

    ShouldPauseCallback j(ShouldPauseCallback shouldPauseCallback);

    Object k(ControlledComposition controlledComposition, int i2, Function0 function0);

    boolean m();

    boolean n(Set set);

    void o(ArrayList arrayList);

    void q();

    boolean r();

    void t(Object obj);

    void w();

    void x();
}
