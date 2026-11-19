package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.SpecialJvmAnnotations;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1 extends BinaryClassAnnotationAndConstantLoaderImpl.AbstractAnnotationArgumentVisitor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f73226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BinaryClassAnnotationAndConstantLoaderImpl f73227c;
    public final /* synthetic */ ClassDescriptor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ClassId f73228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ List f73229f;
    public final /* synthetic */ SourceElement g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1(BinaryClassAnnotationAndConstantLoaderImpl binaryClassAnnotationAndConstantLoaderImpl, ClassDescriptor classDescriptor, ClassId classId, List list, SourceElement sourceElement) {
        super();
        this.f73227c = binaryClassAnnotationAndConstantLoaderImpl;
        this.d = classDescriptor;
        this.f73228e = classId;
        this.f73229f = list;
        this.g = sourceElement;
        this.f73226b = new HashMap();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArgumentVisitor
    public final void a() {
        HashMap map = this.f73226b;
        map.getClass();
        ClassId classId = SpecialJvmAnnotations.f72233b;
        ClassId classId2 = this.f73228e;
        boolean zEquals = classId2.equals(classId);
        BinaryClassAnnotationAndConstantLoaderImpl binaryClassAnnotationAndConstantLoaderImpl = this.f73227c;
        boolean zR = false;
        if (zEquals) {
            Object obj = map.get(Name.e("value"));
            KClassValue kClassValue = obj instanceof KClassValue ? (KClassValue) obj : null;
            if (kClassValue != null) {
                Object obj2 = kClassValue.f73869a;
                KClassValue.Value.NormalClass normalClass = obj2 instanceof KClassValue.Value.NormalClass ? (KClassValue.Value.NormalClass) obj2 : null;
                if (normalClass != null) {
                    zR = binaryClassAnnotationAndConstantLoaderImpl.r(normalClass.f73884a.f73867a);
                }
            }
        }
        if (zR || binaryClassAnnotationAndConstantLoaderImpl.r(classId2)) {
            return;
        }
        this.f73229f.add(new AnnotationDescriptorImpl(this.d.o(), map, this.g));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.BinaryClassAnnotationAndConstantLoaderImpl.AbstractAnnotationArgumentVisitor
    public final void g(ArrayList arrayList, Name name) {
        arrayList.getClass();
        ValueParameterDescriptor valueParameterDescriptorB = DescriptorResolverUtils.b(name, this.d);
        if (valueParameterDescriptorB != null) {
            List listA = CollectionsKt.a(arrayList);
            KotlinType type = valueParameterDescriptorB.getType();
            type.getClass();
            listA.getClass();
            this.f73226b.put(name, new TypedArrayValue(listA, type));
            return;
        }
        if (this.f73227c.r(this.f73228e) && Intrinsics.c(name.b(), "value")) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (obj instanceof AnnotationValue) {
                    arrayList2.add(obj);
                }
            }
            List list = this.f73229f;
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                list.add((AnnotationDescriptor) ((AnnotationValue) it.next()).f73869a);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.BinaryClassAnnotationAndConstantLoaderImpl.AbstractAnnotationArgumentVisitor
    public final void h(Name name, ConstantValue constantValue) {
        this.f73226b.put(name, constantValue);
    }
}
