package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ProtoContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NameResolver f74048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeTable f74049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SourceElement f74050c;

    public static final class Class extends ProtoContainer {
        public final ProtoBuf$Class d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Class f74051e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ClassId f74052f;
        public final ProtoBuf$Class.Kind g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f74053h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Class(ProtoBuf$Class protoBuf$Class, NameResolver nameResolver, TypeTable typeTable, SourceElement sourceElement, Class r6) {
            super(nameResolver, typeTable, sourceElement, null);
            protoBuf$Class.getClass();
            nameResolver.getClass();
            typeTable.getClass();
            this.d = protoBuf$Class;
            this.f74051e = r6;
            this.f74052f = NameResolverUtilKt.a(nameResolver, protoBuf$Class.f73331f);
            ProtoBuf$Class.Kind kind = (ProtoBuf$Class.Kind) Flags.f73576f.d(protoBuf$Class.f73330e);
            this.g = kind == null ? ProtoBuf$Class.Kind.CLASS : kind;
            this.f74053h = Flags.g.d(protoBuf$Class.f73330e).booleanValue();
            Flags.f73577h.d(protoBuf$Class.f73330e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer
        public final FqName a() {
            return this.f74052f.a();
        }
    }

    public static final class Package extends ProtoContainer {
        public final FqName d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Package(FqName fqName, NameResolver nameResolver, TypeTable typeTable, SourceElement sourceElement) {
            super(nameResolver, typeTable, sourceElement, null);
            fqName.getClass();
            nameResolver.getClass();
            typeTable.getClass();
            this.d = fqName;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer
        public final FqName a() {
            return this.d;
        }
    }

    public ProtoContainer(NameResolver nameResolver, TypeTable typeTable, SourceElement sourceElement, DefaultConstructorMarker defaultConstructorMarker) {
        this.f74048a = nameResolver;
        this.f74049b = typeTable;
        this.f74050c = sourceElement;
    }

    public abstract FqName a();

    public final String toString() {
        return getClass().getSimpleName() + ": " + a();
    }
}
