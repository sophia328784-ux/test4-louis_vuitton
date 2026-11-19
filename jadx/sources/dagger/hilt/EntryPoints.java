package dagger.hilt;

import dagger.hilt.internal.GeneratedComponent;
import dagger.hilt.internal.GeneratedComponentManager;
import dagger.hilt.internal.Preconditions;
import dagger.hilt.internal.TestSingletonComponent;
import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes4.dex */
public abstract class EntryPoints {
    public static Object a(Class cls, Object obj) {
        if (!(obj instanceof GeneratedComponent)) {
            if (obj instanceof GeneratedComponentManager) {
                return a(cls, ((GeneratedComponentManager) obj).C());
            }
            throw new IllegalStateException("Given component holder " + obj.getClass() + " does not implement " + GeneratedComponent.class + " or " + GeneratedComponentManager.class);
        }
        if (obj instanceof TestSingletonComponent) {
            boolean z = false;
            for (Annotation annotation : cls.getAnnotations()) {
                if (annotation.annotationType().getCanonicalName().contentEquals("dagger.hilt.android.EarlyEntryPoint")) {
                    z = true;
                    break;
                }
            }
            Preconditions.a(!z, "Interface, %s, annotated with @EarlyEntryPoint should be called with EarlyEntryPoints.get() rather than EntryPoints.get()", cls.getCanonicalName());
        }
        return cls.cast(obj);
    }
}
