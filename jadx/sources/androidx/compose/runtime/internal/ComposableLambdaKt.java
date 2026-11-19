package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImpl;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ComposableLambdaKt {
    public static final int a(int i2, int i3) {
        return i2 << (((i3 % 10) * 3) + 1);
    }

    public static final ComposableLambdaImpl b(int i2, Function function, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            objX = new ComposableLambdaImpl(i2, true, function);
            composer.q(objX);
        }
        ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) objX;
        if (!Intrinsics.c(composableLambdaImpl.d, function)) {
            boolean z = composableLambdaImpl.d == null;
            composableLambdaImpl.d = function;
            if (!z && composableLambdaImpl.f8383c) {
                RecomposeScope recomposeScope = composableLambdaImpl.f8384e;
                if (recomposeScope != null) {
                    recomposeScope.invalidate();
                    composableLambdaImpl.f8384e = null;
                }
                ArrayList arrayList = composableLambdaImpl.f8385f;
                if (arrayList != null) {
                    int size = arrayList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        ((RecomposeScope) arrayList.get(i3)).invalidate();
                    }
                    arrayList.clear();
                }
            }
        }
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        return composableLambdaImpl;
    }

    public static final boolean c(RecomposeScope recomposeScope, RecomposeScope recomposeScope2) {
        if (recomposeScope == null) {
            return true;
        }
        if (!(recomposeScope instanceof RecomposeScopeImpl) || !(recomposeScope2 instanceof RecomposeScopeImpl)) {
            return false;
        }
        RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) recomposeScope;
        return !recomposeScopeImpl.a() || recomposeScope == recomposeScope2 || Intrinsics.c(recomposeScopeImpl.f8078c, ((RecomposeScopeImpl) recomposeScope2).f8078c);
    }
}
