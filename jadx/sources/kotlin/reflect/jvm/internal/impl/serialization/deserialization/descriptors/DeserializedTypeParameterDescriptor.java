package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractLazyTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
public final class DeserializedTypeParameterDescriptor extends AbstractLazyTypeParameterDescriptor {
    public final DeserializationContext l;
    public final ProtoBuf$TypeParameter m;
    public final DeserializedAnnotations n;

    /* JADX WARN: Illegal instructions before constructor call */
    public DeserializedTypeParameterDescriptor(DeserializationContext deserializationContext, ProtoBuf$TypeParameter protoBuf$TypeParameter, int i2) {
        Variance variance;
        deserializationContext.getClass();
        protoBuf$TypeParameter.getClass();
        DeserializationComponents deserializationComponents = deserializationContext.f73998a;
        StorageManager storageManager = deserializationComponents.f73988a;
        DeclarationDescriptor declarationDescriptor = deserializationContext.f74000c;
        Name nameB = NameResolverUtilKt.b(deserializationContext.f73999b, protoBuf$TypeParameter.f73508f);
        ProtoBuf$TypeParameter.Variance variance2 = protoBuf$TypeParameter.f73509h;
        variance2.getClass();
        int i3 = ProtoEnumFlags.WhenMappings.f74056c[variance2.ordinal()];
        if (i3 == 1) {
            variance = Variance.IN_VARIANCE;
        } else if (i3 == 2) {
            variance = Variance.OUT_VARIANCE;
        } else {
            if (i3 != 3) {
                v40.g();
                throw null;
            }
            variance = Variance.INVARIANT;
        }
        Variance variance3 = variance;
        super(storageManager, declarationDescriptor, Annotations.Companion.f72432a, nameB, variance3, protoBuf$TypeParameter.g, i2, SourceElement.f72405a, SupertypeLoopChecker.EMPTY.f72407a);
        this.l = deserializationContext;
        this.m = protoBuf$TypeParameter;
        this.n = new DeserializedAnnotations(deserializationComponents.f73988a, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedTypeParameterDescriptor f74130b;

            {
                this.f74130b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DeserializedTypeParameterDescriptor deserializedTypeParameterDescriptor = this.f74130b;
                DeserializationContext deserializationContext2 = deserializedTypeParameterDescriptor.l;
                return CollectionsKt.y0(deserializationContext2.f73998a.f73991e.h(deserializedTypeParameterDescriptor.m, deserializationContext2.f73999b));
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final void F0(KotlinType kotlinType) {
        kotlinType.getClass();
        throw new IllegalStateException("There should be no cycles for deserialized type parameters, but found for: " + this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List G0() {
        DeserializationContext deserializationContext = this.l;
        List listM = ProtoTypeTableUtilKt.m(this.m, deserializationContext.d);
        if (listM.isEmpty()) {
            int i2 = DescriptorUtilsKt.f73888a;
            ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(this);
            moduleDescriptorC.getClass();
            return CollectionsKt.O(moduleDescriptorC.g().n());
        }
        List list = listM;
        TypeDeserializer typeDeserializer = deserializationContext.f74003h;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(typeDeserializer.g((ProtoBuf$Type) it.next()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotatedImpl, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return this.n;
    }
}
