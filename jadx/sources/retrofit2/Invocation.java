package retrofit2;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Invocation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f79352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f79353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f79354c;
    public final List d;

    public Invocation(Class cls, Object obj, Method method, ArrayList arrayList) {
        this.f79352a = cls;
        this.f79353b = obj;
        this.f79354c = method;
        this.d = Collections.unmodifiableList(arrayList);
    }

    public final String toString() {
        return String.format("%s.%s() %s", this.f79352a.getName(), this.f79354c.getName(), this.d);
    }
}
