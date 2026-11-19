package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
final class Java8ParameterNamesLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Java8ParameterNamesLoader f72598a = new Java8ParameterNamesLoader();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Cache f72599b;

    public static final class Cache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f72600a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f72601b;

        public Cache(Method method, Method method2) {
            this.f72600a = method;
            this.f72601b = method2;
        }
    }
}
