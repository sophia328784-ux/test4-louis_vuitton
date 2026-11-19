package com.squareup.wire;

import com.squareup.wire.WireEnum;
import com.squareup.wire.internal.Internal;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B)\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\t\u0010\nB\u0017\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\t\u0010\u000bB\u001f\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\fB\u0017\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\r¢\u0006\u0004\b\t\u0010\u000eB\u001f\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/squareup/wire/EnumAdapter;", "Lcom/squareup/wire/WireEnum;", "E", "Lcom/squareup/wire/ProtoAdapter;", "Ljava/lang/Class;", "type", "Lcom/squareup/wire/Syntax;", "syntax", "identity", "<init>", "(Ljava/lang/Class;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/WireEnum;)V", "(Ljava/lang/Class;)V", "(Ljava/lang/Class;Lcom/squareup/wire/Syntax;)V", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)V", "(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class EnumAdapter<E extends WireEnum> extends ProtoAdapter<E> {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EnumAdapter(Class<E> cls, Syntax syntax) {
        this(Reflection.f71922a.b(cls), syntax, Internal.a(cls));
        cls.getClass();
        syntax.getClass();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        int iJ = protoReader32.j();
        WireEnum wireEnumJ = j(iJ);
        if (wireEnumJ != null) {
            return wireEnumJ;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(iJ, (KClass<?>) this.f43459b);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        int iN = protoReader.n();
        WireEnum wireEnumJ = j(iN);
        if (wireEnumJ != null) {
            return wireEnumJ;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(iN, (KClass<?>) this.f43459b);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        WireEnum wireEnum = (WireEnum) obj;
        protoWriter.getClass();
        wireEnum.getClass();
        protoWriter.b(wireEnum.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        WireEnum wireEnum = (WireEnum) obj;
        reverseProtoWriter.getClass();
        wireEnum.getClass();
        reverseProtoWriter.g(wireEnum.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        WireEnum wireEnum = (WireEnum) obj;
        wireEnum.getClass();
        ProtoWriter.Companion companion = ProtoWriter.f43473b;
        int value = wireEnum.getValue();
        companion.getClass();
        return ProtoWriter.Companion.a(value);
    }

    public abstract WireEnum j(int i2);

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EnumAdapter(KClass<E> kClass) {
        this(kClass, Syntax.PROTO_2, Internal.a(JvmClassMappingKt.b(kClass)));
        kClass.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EnumAdapter(KClass<E> kClass, Syntax syntax) {
        this(kClass, syntax, Internal.a(JvmClassMappingKt.b(kClass)));
        kClass.getClass();
        syntax.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EnumAdapter(Class<E> cls) {
        this(Reflection.f71922a.b(cls), Syntax.PROTO_2, Internal.a(cls));
        cls.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumAdapter(KClass kClass, Syntax syntax, WireEnum wireEnum) {
        super(FieldEncoding.VARINT, (KClass<?>) kClass, (String) null, syntax, wireEnum);
        kClass.getClass();
        syntax.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EnumAdapter(Class<E> cls, Syntax syntax, E e2) {
        this(Reflection.f71922a.b(cls), syntax, e2);
        cls.getClass();
        syntax.getClass();
    }
}
