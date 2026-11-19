package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractBinaryClassAnnotationAndConstantLoader<A, C> extends AbstractBinaryClassAnnotationLoader<A, AnnotationsContainerWithConstants<? extends A, ? extends C>> implements AnnotationAndConstantLoader<A, C> {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MemoizedFunctionToNotNull f73194c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractBinaryClassAnnotationAndConstantLoader(StorageManager storageManager, KotlinClassFinder kotlinClassFinder) {
        super(kotlinClassFinder);
        storageManager.getClass();
        kotlinClassFinder.getClass();
        this.f73194c = storageManager.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AbstractBinaryClassAnnotationAndConstantLoader f73195b;

            {
                this.f73195b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinJvmBinaryClass kotlinJvmBinaryClass = (KotlinJvmBinaryClass) obj;
                int i2 = AbstractBinaryClassAnnotationAndConstantLoader.d;
                kotlinJvmBinaryClass.getClass();
                AbstractBinaryClassAnnotationAndConstantLoader abstractBinaryClassAnnotationAndConstantLoader = this.f73195b;
                abstractBinaryClassAnnotationAndConstantLoader.getClass();
                HashMap map = new HashMap();
                HashMap map2 = new HashMap();
                HashMap map3 = new HashMap();
                kotlinJvmBinaryClass.a(new AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1(abstractBinaryClassAnnotationAndConstantLoader, map, kotlinJvmBinaryClass, map2));
                return new AnnotationsContainerWithConstants(map, map2, map3);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
    public final Object g(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property, KotlinType kotlinType) {
        protoContainer.getClass();
        protoBuf$Property.getClass();
        kotlinType.getClass();
        return w(protoContainer, protoBuf$Property, AnnotatedCallableKind.PROPERTY_GETTER, kotlinType, new Function2() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader$$Lambda$1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                AnnotationsContainerWithConstants annotationsContainerWithConstants = (AnnotationsContainerWithConstants) obj;
                MemberSignature memberSignature = (MemberSignature) obj2;
                int i2 = AbstractBinaryClassAnnotationAndConstantLoader.d;
                annotationsContainerWithConstants.getClass();
                memberSignature.getClass();
                return annotationsContainerWithConstants.f73211c.get(memberSignature);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
    public final Object i(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property, KotlinType kotlinType) {
        protoContainer.getClass();
        protoBuf$Property.getClass();
        kotlinType.getClass();
        return w(protoContainer, protoBuf$Property, AnnotatedCallableKind.PROPERTY, kotlinType, new Function2() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader$$Lambda$2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                AnnotationsContainerWithConstants annotationsContainerWithConstants = (AnnotationsContainerWithConstants) obj;
                MemberSignature memberSignature = (MemberSignature) obj2;
                int i2 = AbstractBinaryClassAnnotationAndConstantLoader.d;
                annotationsContainerWithConstants.getClass();
                memberSignature.getClass();
                return annotationsContainerWithConstants.f73210b.get(memberSignature);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader
    public final AnnotationsContainerWithConstants o(KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        return (AnnotationsContainerWithConstants) this.f73194c.invoke(kotlinJvmBinaryClass);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0037  */
    public final Object w(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property, AnnotatedCallableKind annotatedCallableKind, KotlinType kotlinType, Function2 function2) {
        Object objInvoke;
        Boolean boolD = Flags.B.d(protoBuf$Property.f73438e);
        boolean zD = JvmProtoBufUtil.d(protoBuf$Property);
        MetadataVersion metadataVersionQ = q();
        AbstractBinaryClassAnnotationLoader.f73204b.getClass();
        KotlinJvmBinaryClass kotlinJvmBinaryClassA = AbstractBinaryClassAnnotationLoader.Companion.a(protoContainer, true, true, boolD, zD, this.f73205a, metadataVersionQ);
        if (kotlinJvmBinaryClassA == null) {
            if (protoContainer instanceof ProtoContainer.Class) {
                SourceElement sourceElement = ((ProtoContainer.Class) protoContainer).f74050c;
                KotlinJvmBinarySourceElement kotlinJvmBinarySourceElement = sourceElement instanceof KotlinJvmBinarySourceElement ? (KotlinJvmBinarySourceElement) sourceElement : null;
                if (kotlinJvmBinarySourceElement != null) {
                    kotlinJvmBinaryClassA = kotlinJvmBinarySourceElement.f73258b;
                } else {
                    kotlinJvmBinaryClassA = null;
                }
            } else {
                kotlinJvmBinaryClassA = null;
            }
        }
        if (kotlinJvmBinaryClassA != null) {
            MetadataVersion metadataVersion = kotlinJvmBinaryClassA.c().f73276b;
            DeserializedDescriptorResolver.f73234b.getClass();
            MetadataVersion metadataVersion2 = DeserializedDescriptorResolver.f73237f;
            metadataVersion.getClass();
            metadataVersion2.getClass();
            MemberSignature memberSignatureP = AbstractBinaryClassAnnotationLoader.p(protoBuf$Property, protoContainer.f74048a, protoContainer.f74049b, annotatedCallableKind, metadataVersion.a(metadataVersion2.f73569b, metadataVersion2.f73570c, metadataVersion2.d));
            if (memberSignatureP != null && (objInvoke = function2.invoke(this.f73194c.invoke(kotlinJvmBinaryClassA), memberSignatureP)) != null) {
                return UnsignedTypes.a(kotlinType) ? x(objInvoke) : objInvoke;
            }
        }
        return null;
    }

    public abstract ConstantValue x(Object obj);
}
