package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ReflectJavaClassFinderKt {
    public static final Class a(ClassLoader classLoader, String str) {
        classLoader.getClass();
        str.getClass();
        try {
            return Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
