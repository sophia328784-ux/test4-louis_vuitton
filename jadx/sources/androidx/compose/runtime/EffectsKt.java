package androidx.compose.runtime;

import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.contract.ActivityResultContract;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EffectsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DisposableEffectScope f7975a = new DisposableEffectScope();

    public static final void a(ActivityResultRegistry activityResultRegistry, String str, ActivityResultContract activityResultContract, Function1 function1, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(activityResultRegistry) | composer.K(str) | composer.K(activityResultContract);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new DisposableEffectImpl(function1);
            composer.q(objX);
        }
    }

    public static final void b(Object obj, Object obj2, Function1 function1, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(obj) | composer.K(obj2);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new DisposableEffectImpl(function1);
            composer.q(objX);
        }
    }

    public static final void c(Object obj, Function1 function1, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(obj);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new DisposableEffectImpl(function1);
            composer.q(objX);
        }
    }

    public static final void d(Object[] objArr, Function1 function1, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            zK |= composer.K(obj);
        }
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            composer.q(new DisposableEffectImpl(function1));
        }
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
    }

    public static final void e(Composer composer, Object obj, Function2 function2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        CoroutineContext r = composer.getR();
        boolean zK = composer.K(obj);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new LaunchedEffectImpl(r, function2);
            composer.q(objX);
        }
    }

    public static final void f(Object obj, Object obj2, Object obj3, Function2 function2, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        CoroutineContext r = composer.getR();
        boolean zK = composer.K(obj) | composer.K(obj2) | composer.K(obj3);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new LaunchedEffectImpl(r, function2);
            composer.q(objX);
        }
    }

    public static final void g(Object obj, Object obj2, Function2 function2, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        CoroutineContext r = composer.getR();
        boolean zK = composer.K(obj) | composer.K(obj2);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new LaunchedEffectImpl(r, function2);
            composer.q(objX);
        }
    }

    public static final void h(Object[] objArr, Function2 function2, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        CoroutineContext r = composer.getR();
        boolean zK = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            zK |= composer.K(obj);
        }
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            composer.q(new LaunchedEffectImpl(r, function2));
        }
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
    }

    public static final void i(Function0 function0, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.t(function0);
    }

    public static final CoroutineScope j(EmptyCoroutineContext emptyCoroutineContext, Composer composer) {
        emptyCoroutineContext.getClass();
        return new RememberedCoroutineScope(composer.getR(), emptyCoroutineContext);
    }
}
