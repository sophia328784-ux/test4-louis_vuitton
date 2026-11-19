package kotlin.reflect.jvm.internal;

import java.lang.reflect.Type;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
class ConvertFromJavaKt$$Lambda$2 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f71990b;

    public ConvertFromJavaKt$$Lambda$2(Type type) {
        this.f71990b = type;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        return this.f71990b;
    }
}
