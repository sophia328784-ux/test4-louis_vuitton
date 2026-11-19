package androidx.compose.ui.tooling;

import defpackage.zy0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-tooling"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PreviewUtils_androidKt {
    public static final Object a(Object obj) throws NoSuchFieldException {
        if (obj != null) {
            for (Annotation annotation : obj.getClass().getAnnotations()) {
                if (annotation instanceof JvmInline) {
                    for (Field field : obj.getClass().getDeclaredFields()) {
                        if (field.getType().isPrimitive()) {
                            Field declaredField = obj.getClass().getDeclaredField(field.getName());
                            declaredField.setAccessible(true);
                            return declaredField.get(obj);
                        }
                    }
                    zy0.c("Array contains no element matching the predicate.");
                    return null;
                }
            }
        }
        return obj;
    }
}
