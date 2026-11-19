package kotlin.reflect.jvm.internal;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/reflect/jvm/internal/StandardKTypes;", "", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StandardKTypes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KType f72178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final KType f72179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KType f72180c;
    public static final KType d;

    static {
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        KClass kClassB = reflectionFactory.b(Object.class);
        List list = Collections.EMPTY_LIST;
        f72178a = reflectionFactory.l(kClassB, list, false);
        f72179b = reflectionFactory.l(reflectionFactory.b(Object.class), list, true);
        f72180c = reflectionFactory.l(reflectionFactory.b(Cloneable.class), list, false);
        d = reflectionFactory.l(reflectionFactory.b(Serializable.class), list, false);
    }
}
