package androidx.lifecycle;

import android.app.Application;
import defpackage.pq0;
import defpackage.r81;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-viewmodel-savedstate"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SavedStateViewModelFactory_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f13516a = CollectionsKt.P(Application.class, SavedStateHandle.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f13517b = CollectionsKt.O(SavedStateHandle.class);

    public static final Constructor a(List list, Class cls) {
        cls.getClass();
        list.getClass();
        Constructor<?>[] constructors = cls.getConstructors();
        constructors.getClass();
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            parameterTypes.getClass();
            List listW = ArraysKt.W(parameterTypes);
            if (Intrinsics.c(list, listW)) {
                return constructor;
            }
            if (list.size() == listW.size() && listW.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    public static final ViewModel b(Class cls, Constructor constructor, Object... objArr) {
        cls.getClass();
        try {
            return (ViewModel) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e2) {
            r81.g(pq0.m(cls, "Failed to access "), e2);
            return null;
        } catch (InstantiationException e3) {
            r81.g(pq0.n(cls, "A ", " cannot be instantiated."), e3);
            return null;
        } catch (InvocationTargetException e4) {
            r81.g(pq0.m(cls, "An exception happened in constructor of "), e4.getCause());
            return null;
        }
    }
}
