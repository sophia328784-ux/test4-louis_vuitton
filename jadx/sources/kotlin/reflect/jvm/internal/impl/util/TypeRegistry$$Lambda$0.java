package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
class TypeRegistry$$Lambda$0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeRegistry f74376b;

    public TypeRegistry$$Lambda$0(TypeRegistry typeRegistry) {
        this.f74376b = typeRegistry;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((String) obj).getClass();
        return Integer.valueOf(this.f74376b.f74375b.getAndIncrement());
    }
}
