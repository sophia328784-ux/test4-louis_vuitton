package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JvmType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f73245a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Primitive f73246b = new Primitive(JvmPrimitiveType.BOOLEAN);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Primitive f73247c = new Primitive(JvmPrimitiveType.CHAR);
    public static final Primitive d = new Primitive(JvmPrimitiveType.BYTE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Primitive f73248e = new Primitive(JvmPrimitiveType.SHORT);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Primitive f73249f = new Primitive(JvmPrimitiveType.INT);
    public static final Primitive g = new Primitive(JvmPrimitiveType.FLOAT);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Primitive f73250h = new Primitive(JvmPrimitiveType.LONG);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Primitive f73251i = new Primitive(JvmPrimitiveType.DOUBLE);

    public static final class Array extends JvmType {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final JvmType f73252j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Array(JvmType jvmType) {
            super(null);
            jvmType.getClass();
            this.f73252j = jvmType;
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final class Object extends JvmType {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f73253j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Object(String str) {
            super(null);
            str.getClass();
            this.f73253j = str;
        }
    }

    public static final class Primitive extends JvmType {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final JvmPrimitiveType f73254j;

        public Primitive(JvmPrimitiveType jvmPrimitiveType) {
            super(null);
            this.f73254j = jvmPrimitiveType;
        }
    }

    public JvmType(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public final String toString() {
        return JvmTypeFactoryImpl.b(this);
    }
}
