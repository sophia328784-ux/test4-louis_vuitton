package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;

/* JADX INFO: loaded from: classes4.dex */
public interface AnnotationLoader<A> {
    List a(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind, int i2, ProtoBuf$ValueParameter protoBuf$ValueParameter);

    List b(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind, int i2, ProtoBuf$ValueParameter protoBuf$ValueParameter);

    ArrayList c(ProtoContainer.Class r1);

    ArrayList d(ProtoBuf$Type protoBuf$Type, NameResolver nameResolver);

    List e(ProtoContainer protoContainer, ProtoBuf$EnumEntry protoBuf$EnumEntry);

    List f(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind);

    ArrayList h(ProtoBuf$TypeParameter protoBuf$TypeParameter, NameResolver nameResolver);

    List j(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property);

    List k(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind);

    List l(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property);
}
