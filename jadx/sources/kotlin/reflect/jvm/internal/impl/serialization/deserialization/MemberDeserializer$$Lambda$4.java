package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;

/* JADX INFO: loaded from: classes4.dex */
class MemberDeserializer$$Lambda$4 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MemberDeserializer f74031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MessageLite f74032c;
    public final AnnotatedCallableKind d;

    public MemberDeserializer$$Lambda$4(MemberDeserializer memberDeserializer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind) {
        this.f74031b = memberDeserializer;
        this.f74032c = messageLite;
        this.d = annotatedCallableKind;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        MemberDeserializer memberDeserializer = this.f74031b;
        ProtoContainer protoContainerA = memberDeserializer.a(memberDeserializer.f74021a.f74000c);
        List listK = protoContainerA != null ? memberDeserializer.f74021a.f73998a.f73991e.k(protoContainerA, this.f74032c, this.d) : null;
        return listK == null ? EmptyList.f71768b : listK;
    }
}
