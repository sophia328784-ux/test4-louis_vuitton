package kotlin.reflect.jvm.internal.impl.load.java.components;

import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;

/* JADX INFO: loaded from: classes4.dex */
public interface JavaPropertyInitializerEvaluator {

    public static final class DoNothing implements JavaPropertyInitializerEvaluator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DoNothing f72928a = new DoNothing();

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaPropertyInitializerEvaluator
        public final void a(JavaField javaField, PropertyDescriptor propertyDescriptor) {
            javaField.getClass();
            propertyDescriptor.getClass();
        }
    }

    void a(JavaField javaField, PropertyDescriptor propertyDescriptor);
}
