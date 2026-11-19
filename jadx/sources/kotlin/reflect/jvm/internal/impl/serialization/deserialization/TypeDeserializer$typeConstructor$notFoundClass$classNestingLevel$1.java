package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1 extends PropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1 f74071b = new TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1(ClassId.class, "outerClassId", "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;", 0);

    @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return ((ClassId) obj).e();
    }
}
