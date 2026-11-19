package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeParameterUtilsKt {
    public static final PossiblyInnerType a(SimpleType simpleType, ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters, int i2) {
        if (classifierDescriptorWithTypeParameters == null || ErrorUtils.f(classifierDescriptorWithTypeParameters)) {
            return null;
        }
        int size = classifierDescriptorWithTypeParameters.p().size() + i2;
        if (classifierDescriptorWithTypeParameters.k()) {
            List listSubList = simpleType.F0().subList(i2, size);
            DeclarationDescriptor declarationDescriptorD = classifierDescriptorWithTypeParameters.d();
            return new PossiblyInnerType(classifierDescriptorWithTypeParameters, listSubList, a(simpleType, declarationDescriptorD instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) declarationDescriptorD : null, size));
        }
        if (size != simpleType.F0().size()) {
            DescriptorUtils.m(classifierDescriptorWithTypeParameters);
        }
        return new PossiblyInnerType(classifierDescriptorWithTypeParameters, simpleType.F0().subList(i2, simpleType.F0().size()), null);
    }

    public static final List b(ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters) {
        List parameters;
        Object next;
        TypeConstructor typeConstructorJ;
        classifierDescriptorWithTypeParameters.getClass();
        List listP = classifierDescriptorWithTypeParameters.p();
        listP.getClass();
        if (!classifierDescriptorWithTypeParameters.k() && !(classifierDescriptorWithTypeParameters.d() instanceof CallableDescriptor)) {
            return listP;
        }
        Sequence sequenceJ = DescriptorUtilsKt.j(classifierDescriptorWithTypeParameters);
        TypeParameterUtilsKt$$Lambda$0 typeParameterUtilsKt$$Lambda$0 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) obj;
                declarationDescriptor.getClass();
                return Boolean.valueOf(declarationDescriptor instanceof CallableDescriptor);
            }
        };
        sequenceJ.getClass();
        typeParameterUtilsKt$$Lambda$0.getClass();
        List listX = SequencesKt.x(SequencesKt.i(SequencesKt.f(new TakeWhileSequence(sequenceJ, typeParameterUtilsKt$$Lambda$0), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) obj;
                declarationDescriptor.getClass();
                return Boolean.valueOf(!(declarationDescriptor instanceof ConstructorDescriptor));
            }
        }), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt$$Lambda$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) obj;
                declarationDescriptor.getClass();
                List typeParameters = ((CallableDescriptor) declarationDescriptor).getTypeParameters();
                typeParameters.getClass();
                return new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(typeParameters);
            }
        }));
        Iterator f74480a = DescriptorUtilsKt.j(classifierDescriptorWithTypeParameters).getF74480a();
        do {
            parameters = null;
            if (!f74480a.hasNext()) {
                next = null;
                break;
            }
            next = f74480a.next();
        } while (!(next instanceof ClassDescriptor));
        ClassDescriptor classDescriptor = (ClassDescriptor) next;
        if (classDescriptor != null && (typeConstructorJ = classDescriptor.j()) != null) {
            parameters = typeConstructorJ.getParameters();
        }
        if (parameters == null) {
            parameters = EmptyList.f71768b;
        }
        if (listX.isEmpty() && parameters.isEmpty()) {
            List listP2 = classifierDescriptorWithTypeParameters.p();
            listP2.getClass();
            return listP2;
        }
        ArrayList<TypeParameterDescriptor> arrayListY = CollectionsKt.Y(listX, parameters);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(arrayListY, 10));
        for (TypeParameterDescriptor typeParameterDescriptor : arrayListY) {
            typeParameterDescriptor.getClass();
            arrayList.add(new CapturedTypeParameterDescriptor(typeParameterDescriptor, classifierDescriptorWithTypeParameters, listP.size()));
        }
        return CollectionsKt.Y(listP, arrayList);
    }
}
