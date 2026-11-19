package kotlin.reflect.jvm.internal.calls;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
class ValueClassAwareCaller$$Lambda$0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ValueClassAwareCaller$$Lambda$0 f72224b = new ValueClassAwareCaller$$Lambda$0();

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ClassDescriptor classDescriptor = (ClassDescriptor) obj;
        classDescriptor.getClass();
        return Boolean.valueOf(InlineClassesUtilsKt.e(classDescriptor));
    }
}
