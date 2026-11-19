package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.md;
import defpackage.mt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.SerializerExtensionProtocol;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractAnnotationLoader<A> implements AnnotationLoader<A> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SerializerExtensionProtocol f73967a;

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73968a;

        static {
            int[] iArr = new int[AnnotatedCallableKind.values().length];
            try {
                iArr[AnnotatedCallableKind.PROPERTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnnotatedCallableKind.PROPERTY_GETTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnnotatedCallableKind.PROPERTY_SETTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f73968a = iArr;
        }
    }

    public AbstractAnnotationLoader(SerializerExtensionProtocol serializerExtensionProtocol) {
        serializerExtensionProtocol.getClass();
        this.f73967a = serializerExtensionProtocol;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List a(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind, int i2, ProtoBuf$ValueParameter protoBuf$ValueParameter) {
        protoContainer.getClass();
        messageLite.getClass();
        annotatedCallableKind.getClass();
        List listB = protoBuf$ValueParameter != null ? b(protoContainer, messageLite, annotatedCallableKind, i2, protoBuf$ValueParameter) : null;
        return listB == null ? EmptyList.f71768b : listB;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List b(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind, int i2, ProtoBuf$ValueParameter protoBuf$ValueParameter) {
        protoContainer.getClass();
        messageLite.getClass();
        annotatedCallableKind.getClass();
        protoBuf$ValueParameter.getClass();
        Iterable iterable = (List) protoBuf$ValueParameter.k(this.f73967a.n);
        if (iterable == null) {
            iterable = EmptyList.f71768b;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable2, 10));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AnnotationAndConstantLoaderImpl) this).m((ProtoBuf$Annotation) it.next(), protoContainer.f74048a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final ArrayList c(ProtoContainer.Class r6) {
        r6.getClass();
        Iterable iterable = (List) r6.d.k(this.f73967a.f73960c);
        if (iterable == null) {
            iterable = EmptyList.f71768b;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable2, 10));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AnnotationAndConstantLoaderImpl) this).m((ProtoBuf$Annotation) it.next(), r6.f74048a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final ArrayList d(ProtoBuf$Type protoBuf$Type, NameResolver nameResolver) {
        protoBuf$Type.getClass();
        nameResolver.getClass();
        Iterable iterable = (List) protoBuf$Type.k(this.f73967a.o);
        if (iterable == null) {
            iterable = EmptyList.f71768b;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable2, 10));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AnnotationAndConstantLoaderImpl) this).m((ProtoBuf$Annotation) it.next(), nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List e(ProtoContainer protoContainer, ProtoBuf$EnumEntry protoBuf$EnumEntry) {
        protoContainer.getClass();
        protoBuf$EnumEntry.getClass();
        Iterable iterable = (List) protoBuf$EnumEntry.k(this.f73967a.l);
        if (iterable == null) {
            iterable = EmptyList.f71768b;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable2, 10));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AnnotationAndConstantLoaderImpl) this).m((ProtoBuf$Annotation) it.next(), protoContainer.f74048a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List f(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind) {
        List list;
        messageLite.getClass();
        annotatedCallableKind.getClass();
        boolean z = messageLite instanceof ProtoBuf$Constructor;
        SerializerExtensionProtocol serializerExtensionProtocol = this.f73967a;
        if (z) {
            list = (List) ((ProtoBuf$Constructor) messageLite).k(serializerExtensionProtocol.f73959b);
        } else if (messageLite instanceof ProtoBuf$Function) {
            list = (List) ((ProtoBuf$Function) messageLite).k(serializerExtensionProtocol.d);
        } else {
            if (!(messageLite instanceof ProtoBuf$Property)) {
                mt.f(messageLite, "Unknown message: ");
                return null;
            }
            int i2 = WhenMappings.f73968a[annotatedCallableKind.ordinal()];
            if (i2 == 1) {
                list = (List) ((ProtoBuf$Property) messageLite).k(serializerExtensionProtocol.f73962f);
            } else if (i2 == 2) {
                list = (List) ((ProtoBuf$Property) messageLite).k(serializerExtensionProtocol.g);
            } else {
                if (i2 != 3) {
                    md.k("Unsupported callable kind with property proto");
                    return null;
                }
                list = (List) ((ProtoBuf$Property) messageLite).k(serializerExtensionProtocol.f73963h);
            }
        }
        if (list == null) {
            list = EmptyList.f71768b;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AnnotationAndConstantLoaderImpl) this).m((ProtoBuf$Annotation) it.next(), protoContainer.f74048a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final ArrayList h(ProtoBuf$TypeParameter protoBuf$TypeParameter, NameResolver nameResolver) {
        protoBuf$TypeParameter.getClass();
        nameResolver.getClass();
        Iterable iterable = (List) protoBuf$TypeParameter.k(this.f73967a.p);
        if (iterable == null) {
            iterable = EmptyList.f71768b;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable2, 10));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AnnotationAndConstantLoaderImpl) this).m((ProtoBuf$Annotation) it.next(), nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List j(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property) {
        protoBuf$Property.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension = this.f73967a.f73965j;
        List list = generatedExtension != null ? (List) protoBuf$Property.k(generatedExtension) : null;
        if (list == null) {
            list = EmptyList.f71768b;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AnnotationAndConstantLoaderImpl) this).m((ProtoBuf$Annotation) it.next(), protoContainer.f74048a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List k(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind) {
        messageLite.getClass();
        annotatedCallableKind.getClass();
        boolean z = messageLite instanceof ProtoBuf$Function;
        List list = null;
        SerializerExtensionProtocol serializerExtensionProtocol = this.f73967a;
        if (z) {
            GeneratedMessageLite.GeneratedExtension generatedExtension = serializerExtensionProtocol.f73961e;
            if (generatedExtension != null) {
                list = (List) ((ProtoBuf$Function) messageLite).k(generatedExtension);
            }
        } else {
            if (!(messageLite instanceof ProtoBuf$Property)) {
                mt.f(messageLite, "Unknown message: ");
                return null;
            }
            int i2 = WhenMappings.f73968a[annotatedCallableKind.ordinal()];
            if (i2 != 1 && i2 != 2 && i2 != 3) {
                mt.f(annotatedCallableKind, "Unsupported callable kind with property proto for receiver annotations: ");
                return null;
            }
            GeneratedMessageLite.GeneratedExtension generatedExtension2 = serializerExtensionProtocol.f73964i;
            if (generatedExtension2 != null) {
                list = (List) ((ProtoBuf$Property) messageLite).k(generatedExtension2);
            }
        }
        if (list == null) {
            list = EmptyList.f71768b;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AnnotationAndConstantLoaderImpl) this).m((ProtoBuf$Annotation) it.next(), protoContainer.f74048a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List l(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property) {
        protoBuf$Property.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension = this.f73967a.f73966k;
        List list = generatedExtension != null ? (List) protoBuf$Property.k(generatedExtension) : null;
        if (list == null) {
            list = EmptyList.f71768b;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AnnotationAndConstantLoaderImpl) this).m((ProtoBuf$Annotation) it.next(), protoContainer.f74048a));
        }
        return arrayList;
    }
}
