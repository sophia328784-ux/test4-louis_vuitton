package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaFlexibleTypeDeserializer implements FlexibleTypeDeserializer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JavaFlexibleTypeDeserializer f73242a = new JavaFlexibleTypeDeserializer();

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer
    public final KotlinType a(ProtoBuf$Type protoBuf$Type, String str, SimpleType simpleType, SimpleType simpleType2) {
        protoBuf$Type.getClass();
        str.getClass();
        simpleType.getClass();
        simpleType2.getClass();
        if (str.equals("kotlin.jvm.PlatformType")) {
            return protoBuf$Type.o(JvmProtoBuf.f73607f) ? new RawTypeImpl(simpleType, simpleType2) : KotlinTypeFactory.a(simpleType, simpleType2);
        }
        return ErrorUtils.c(ErrorTypeKind.ERROR_FLEXIBLE_TYPE, str, simpleType.toString(), simpleType2.toString());
    }
}
