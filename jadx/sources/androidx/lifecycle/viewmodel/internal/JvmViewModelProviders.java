package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import defpackage.pq0;
import defpackage.r81;
import defpackage.v7;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/viewmodel/internal/JvmViewModelProviders;", "", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class JvmViewModelProviders {
    public static ViewModel a(Class cls) throws InvocationTargetException {
        cls.getClass();
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(null);
            if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                v7.h(pq0.m(cls, "Cannot create an instance of "));
                return null;
            }
            try {
                Object objNewInstance = declaredConstructor.newInstance(null);
                objNewInstance.getClass();
                return (ViewModel) objNewInstance;
            } catch (IllegalAccessException e2) {
                r81.g(pq0.m(cls, "Cannot create an instance of "), e2);
                return null;
            } catch (InstantiationException e3) {
                r81.g(pq0.m(cls, "Cannot create an instance of "), e3);
                return null;
            }
        } catch (NoSuchMethodException e4) {
            r81.g(pq0.m(cls, "Cannot create an instance of "), e4);
            return null;
        }
    }
}
