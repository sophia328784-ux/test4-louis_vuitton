package kotlin.jvm.internal;

import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl;
import java.util.Collections;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.jvm.internal.ReflectionFactoryImpl;

/* JADX INFO: loaded from: classes4.dex */
public class Reflection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ReflectionFactory f71922a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final KClass[] f71923b;

    static {
        ReflectionFactory reflectionFactory = null;
        try {
            reflectionFactory = (ReflectionFactory) ReflectionFactoryImpl.class.newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (reflectionFactory == null) {
            reflectionFactory = new ReflectionFactory();
        }
        f71922a = reflectionFactory;
        f71923b = new KClass[0];
    }

    public static KClass a() {
        return f71922a.b(FindInStoreViewModelImpl.class);
    }

    public static KType b(Class cls, KTypeProjection kTypeProjection) {
        ReflectionFactory reflectionFactory = f71922a;
        return reflectionFactory.l(reflectionFactory.b(cls), Collections.singletonList(kTypeProjection), false);
    }
}
