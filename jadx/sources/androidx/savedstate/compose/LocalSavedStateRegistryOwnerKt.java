package androidx.savedstate.compose;

import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.fa0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"savedstate-compose"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class LocalSavedStateRegistryOwnerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProvidableCompositionLocal f19789a;

    static {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            ClassLoader classLoader = SavedStateRegistryOwner.class.getClassLoader();
            classLoader.getClass();
            Method method = classLoader.loadClass("androidx.compose.ui.platform.AndroidCompositionLocals_androidKt").getMethod("getLocalSavedStateRegistryOwner", null);
            Annotation[] annotations = method.getAnnotations();
            annotations.getClass();
            int length = annotations.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    Object objInvoke = method.invoke(null, null);
                    if (objInvoke instanceof ProvidableCompositionLocal) {
                        failure = (ProvidableCompositionLocal) objInvoke;
                        break;
                    }
                } else if (!(annotations[i2] instanceof Deprecated)) {
                    i2++;
                }
                failure = null;
                break;
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Result.Companion companion3 = Result.INSTANCE;
        ProvidableCompositionLocal staticProvidableCompositionLocal = (ProvidableCompositionLocal) (failure instanceof Result.Failure ? null : failure);
        if (staticProvidableCompositionLocal == null) {
            staticProvidableCompositionLocal = new StaticProvidableCompositionLocal(new fa0(3));
        }
        f19789a = staticProvidableCompositionLocal;
    }
}
