package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.b21;
import defpackage.cj;
import defpackage.md;
import defpackage.mt;
import defpackage.v40;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.SuspendFunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.MutableClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.ExpandedTypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.checker.SimpleClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DescriptorBasedTypeSignatureMappingKt {
    public static final String a(ClassDescriptor classDescriptor, TypeMappingConfiguration typeMappingConfiguration) {
        classDescriptor.getClass();
        typeMappingConfiguration.getClass();
        typeMappingConfiguration.a(classDescriptor);
        DeclarationDescriptor declarationDescriptorD = classDescriptor.d();
        declarationDescriptorD.getClass();
        Name name = classDescriptor.getName();
        Name name2 = SpecialNames.f73691a;
        if (name == null || name.f73688c) {
            name = SpecialNames.f73693c;
        }
        String strC = name.c();
        if (declarationDescriptorD instanceof PackageFragmentDescriptor) {
            FqName fqNameC = ((PackageFragmentDescriptor) declarationDescriptorD).c();
            if (fqNameC.f73679a.c()) {
                return strC;
            }
            return StringsKt.I(fqNameC.f73679a.f73683a, JwtParser.SEPARATOR_CHAR, '/') + '/' + strC;
        }
        ClassDescriptor classDescriptor2 = declarationDescriptorD instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptorD : null;
        if (classDescriptor2 == null) {
            b21.s("Unexpected container: ", declarationDescriptorD, " for ", classDescriptor);
            return null;
        }
        typeMappingConfiguration.b(classDescriptor2);
        return a(classDescriptor2, typeMappingConfiguration) + '$' + strC;
    }

    /* JADX WARN: Code duplicated, block: B:146:0x0386  */
    /* JADX WARN: Code duplicated, block: B:148:0x0397  */
    /* JADX WARN: Code duplicated, block: B:170:0x0244 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:? A[LOOP:1: B:72:0x022e->B:172:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x014a  */
    /* JADX WARN: Code duplicated, block: B:58:0x01de  */
    /* JADX WARN: Code duplicated, block: B:60:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:61:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:64:0x0214  */
    /* JADX WARN: Code duplicated, block: B:66:0x0218  */
    /* JADX WARN: Code duplicated, block: B:71:0x022a  */
    /* JADX WARN: Code duplicated, block: B:74:0x0234  */
    public static final Object b(KotlinType kotlinType, TypeMappingMode typeMappingMode, Function3 function3) {
        PrimitiveType primitiveTypeU;
        PrimitiveType primitiveTypeS;
        boolean z;
        FqNameUnsafe fqNameUnsafeF;
        ClassId classIdF;
        Object object;
        List list;
        Iterator it;
        Object objA;
        JvmType.Primitive primitive;
        boolean z2;
        JvmPrimitiveType jvmPrimitiveType;
        ClassDescriptor classDescriptor;
        Object object2;
        KotlinType kotlinType2;
        TypeMappingMode typeMappingMode2;
        Object objB;
        int i2;
        Object object3;
        JvmPrimitiveType jvmPrimitiveType2;
        kotlinType.getClass();
        typeMappingMode.getClass();
        function3.getClass();
        if (FunctionTypesKt.i(kotlinType)) {
            MutableClassDescriptor mutableClassDescriptor = SuspendFunctionTypesKt.f72280a;
            FunctionTypesKt.i(kotlinType);
            KotlinBuiltIns kotlinBuiltInsF = TypeUtilsKt.f(kotlinType);
            Annotations annotations = kotlinType.getAnnotations();
            KotlinType kotlinTypeF = FunctionTypesKt.f(kotlinType);
            List listD = FunctionTypesKt.d(kotlinType);
            List listG = FunctionTypesKt.g(kotlinType);
            ArrayList arrayList = new ArrayList(CollectionsKt.t(listG, 10));
            Iterator it2 = listG.iterator();
            while (it2.hasNext()) {
                arrayList.add(((TypeProjection) it2.next()).getType());
            }
            TypeAttributes.f74232c.getClass();
            TypeAttributes typeAttributes = TypeAttributes.d;
            TypeConstructor typeConstructorJ = SuspendFunctionTypesKt.f72280a.j();
            FunctionTypesKt.h(kotlinType);
            KotlinType type = ((TypeProjection) CollectionsKt.M(kotlinType.F0())).getType();
            type.getClass();
            ArrayList arrayListX = CollectionsKt.X(KotlinTypeFactory.d(typeAttributes, typeConstructorJ, CollectionsKt.O(new TypeProjectionImpl(type)), false, null), arrayList);
            SimpleType simpleTypeP = TypeUtilsKt.f(kotlinType).p();
            simpleTypeP.getClass();
            return b(FunctionTypesKt.b(kotlinBuiltInsF, annotations, kotlinTypeF, listD, arrayListX, simpleTypeP, false).L0(kotlinType.I0()), typeMappingMode, function3);
        }
        boolean z3 = typeMappingMode.f73267c;
        TypeConstructorMarker typeConstructorMarkerV = SimpleClassicTypeSystemContext.f74291a.V(kotlinType);
        if (ClassicTypeSystemContext.DefaultImpls.A(typeConstructorMarkerV)) {
            typeConstructorMarkerV.getClass();
            if (typeConstructorMarkerV instanceof TypeConstructor) {
                ClassifierDescriptor classifierDescriptorY = ((TypeConstructor) typeConstructorMarkerV).y();
                classifierDescriptorY.getClass();
                primitiveTypeU = KotlinBuiltIns.u((ClassDescriptor) classifierDescriptorY);
            } else {
                b21.n(cj.l(Reflection.f71922a, typeConstructorMarkerV.getClass(), cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarkerV, ", ")));
                primitiveTypeU = null;
            }
            if (primitiveTypeU != null) {
                switch (JvmTypeFactoryImpl.WhenMappings.f73255a[primitiveTypeU.ordinal()]) {
                    case 1:
                        JvmType.f73245a.getClass();
                        primitive = JvmType.f73246b;
                        break;
                    case 2:
                        JvmType.f73245a.getClass();
                        primitive = JvmType.f73247c;
                        break;
                    case 3:
                        JvmType.f73245a.getClass();
                        primitive = JvmType.d;
                        break;
                    case 4:
                        JvmType.f73245a.getClass();
                        primitive = JvmType.f73248e;
                        break;
                    case 5:
                        JvmType.f73245a.getClass();
                        primitive = JvmType.f73249f;
                        break;
                    case 6:
                        JvmType.f73245a.getClass();
                        primitive = JvmType.g;
                        break;
                    case 7:
                        JvmType.f73245a.getClass();
                        primitive = JvmType.f73250h;
                        break;
                    case 8:
                        JvmType.f73245a.getClass();
                        primitive = JvmType.f73251i;
                        break;
                    default:
                        v40.g();
                        return null;
                }
                if (ClassicTypeSystemContext.DefaultImpls.J(kotlinType)) {
                    z2 = true;
                } else {
                    FqName fqName = JvmAnnotationNames.p;
                    fqName.getClass();
                    if (ClassicTypeSystemContext.DefaultImpls.w(kotlinType, fqName)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                primitive.getClass();
                objA = primitive;
                if (z2 && (jvmPrimitiveType = primitive.f73254j) != null) {
                    objA = primitive;
                    String strD = JvmClassName.b(jvmPrimitiveType.g()).d();
                    strD.getClass();
                    object = new JvmType.Object(strD);
                    objA = object;
                }
            } else {
                typeConstructorMarkerV.getClass();
                if (typeConstructorMarkerV instanceof TypeConstructor) {
                    ClassifierDescriptor classifierDescriptorY2 = ((TypeConstructor) typeConstructorMarkerV).y();
                    classifierDescriptorY2.getClass();
                    primitiveTypeS = KotlinBuiltIns.s((ClassDescriptor) classifierDescriptorY2);
                } else {
                    b21.n(cj.l(Reflection.f71922a, typeConstructorMarkerV.getClass(), cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarkerV, ", ")));
                    primitiveTypeS = null;
                }
                if (primitiveTypeS != null) {
                    objA = JvmTypeFactoryImpl.a("[" + JvmPrimitiveType.c(primitiveTypeS).d());
                } else {
                    typeConstructorMarkerV.getClass();
                    if (typeConstructorMarkerV instanceof TypeConstructor) {
                        ClassifierDescriptor classifierDescriptorY3 = ((TypeConstructor) typeConstructorMarkerV).y();
                        if (classifierDescriptorY3 != null && KotlinBuiltIns.K(classifierDescriptorY3)) {
                            z = true;
                        }
                        if (z) {
                            typeConstructorMarkerV.getClass();
                            if (typeConstructorMarkerV instanceof TypeConstructor) {
                                ClassifierDescriptor classifierDescriptorY4 = ((TypeConstructor) typeConstructorMarkerV).y();
                                classifierDescriptorY4.getClass();
                                int i3 = DescriptorUtilsKt.f73888a;
                                fqNameUnsafeF = DescriptorUtils.f((ClassDescriptor) classifierDescriptorY4);
                                fqNameUnsafeF.getClass();
                            } else {
                                b21.n(cj.l(Reflection.f71922a, typeConstructorMarkerV.getClass(), cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarkerV, ", ")));
                                fqNameUnsafeF = null;
                            }
                            String str = JavaToKotlinClassMap.f72305a;
                            classIdF = JavaToKotlinClassMap.f(fqNameUnsafeF);
                            if (classIdF != null) {
                                if (!typeMappingMode.g) {
                                    list = JavaToKotlinClassMap.o;
                                    if ((list instanceof Collection) || !list.isEmpty()) {
                                        it = list.iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                if (Intrinsics.c(((JavaToKotlinClassMap.PlatformMutabilityMapping) it.next()).f72314a, classIdF)) {
                                                }
                                            }
                                        }
                                    }
                                }
                                object = new JvmType.Object(JvmClassName.e(classIdF));
                                objA = object;
                            }
                        }
                        objA = null;
                    } else {
                        b21.n(cj.l(Reflection.f71922a, typeConstructorMarkerV.getClass(), cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarkerV, ", ")));
                    }
                    z = false;
                    if (z) {
                        typeConstructorMarkerV.getClass();
                        if (typeConstructorMarkerV instanceof TypeConstructor) {
                            ClassifierDescriptor classifierDescriptorY5 = ((TypeConstructor) typeConstructorMarkerV).y();
                            classifierDescriptorY5.getClass();
                            int i4 = DescriptorUtilsKt.f73888a;
                            fqNameUnsafeF = DescriptorUtils.f((ClassDescriptor) classifierDescriptorY5);
                            fqNameUnsafeF.getClass();
                        } else {
                            b21.n(cj.l(Reflection.f71922a, typeConstructorMarkerV.getClass(), cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarkerV, ", ")));
                            fqNameUnsafeF = null;
                        }
                        String str2 = JavaToKotlinClassMap.f72305a;
                        classIdF = JavaToKotlinClassMap.f(fqNameUnsafeF);
                        if (classIdF != null) {
                            if (!typeMappingMode.g) {
                                list = JavaToKotlinClassMap.o;
                                if (list instanceof Collection) {
                                    it = list.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (Intrinsics.c(((JavaToKotlinClassMap.PlatformMutabilityMapping) it.next()).f72314a, classIdF)) {
                                            }
                                        }
                                    }
                                } else {
                                    it = list.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (Intrinsics.c(((JavaToKotlinClassMap.PlatformMutabilityMapping) it.next()).f72314a, classIdF)) {
                                            }
                                        }
                                    }
                                }
                            }
                            object = new JvmType.Object(JvmClassName.e(classIdF));
                            objA = object;
                        }
                    }
                    objA = null;
                }
            }
        } else {
            objA = null;
        }
        if (objA != null) {
            if (typeMappingMode.f73265a && (objA instanceof JvmType.Primitive) && (jvmPrimitiveType2 = ((JvmType.Primitive) objA).f73254j) != null) {
                object3 = objA;
                object3 = objA;
                object3 = objA;
                String strD2 = JvmClassName.b(jvmPrimitiveType2.g()).d();
                strD2.getClass();
                object3 = new JvmType.Object(strD2);
            }
            object3 = objA;
            object3 = objA;
            object3 = objA;
            object3 = objA;
            object3 = objA;
            object3 = objA;
            function3.A(kotlinType, object3, typeMappingMode);
            return object3;
        }
        TypeConstructor typeConstructorH0 = kotlinType.H0();
        if (typeConstructorH0 instanceof IntersectionTypeConstructor) {
            IntersectionTypeConstructor intersectionTypeConstructor = (IntersectionTypeConstructor) typeConstructorH0;
            KotlinType kotlinType3 = intersectionTypeConstructor.f74198b;
            if (kotlinType3 != null) {
                return b(TypeUtilsKt.j(kotlinType3), typeMappingMode, function3);
            }
            LinkedHashSet linkedHashSet = intersectionTypeConstructor.f74199c;
            linkedHashSet.getClass();
            md.h("There should be no intersection type in existing descriptors, but found: ".concat(CollectionsKt.K(linkedHashSet, null, null, null, null, 63)));
            return null;
        }
        ClassifierDescriptor classifierDescriptorY6 = typeConstructorH0.y();
        if (classifierDescriptorY6 == null) {
            b21.p(kotlinType, "no descriptor for type constructor of ");
            return null;
        }
        if (ErrorUtils.f(classifierDescriptorY6)) {
            return new JvmType.Object("error/NonExistentClass");
        }
        boolean z4 = classifierDescriptorY6 instanceof ClassDescriptor;
        if (z4 && KotlinBuiltIns.z(kotlinType)) {
            if (kotlinType.F0().size() != 1) {
                mt.i("arrays must have one type argument");
                return null;
            }
            TypeProjection typeProjection = (TypeProjection) kotlinType.F0().get(0);
            KotlinType type2 = typeProjection.getType();
            type2.getClass();
            if (typeProjection.b() == Variance.IN_VARIANCE) {
                objB = new JvmType.Object("java/lang/Object");
            } else {
                Variance varianceB = typeProjection.b();
                varianceB.getClass();
                if (z3 || ((i2 = TypeMappingMode.WhenMappings.f73274a[varianceB.ordinal()]) == 1 ? (typeMappingMode2 = typeMappingMode.f73270h) == null : !(i2 == 2 ? (typeMappingMode2 = typeMappingMode.f73271i) != null : (typeMappingMode2 = typeMappingMode.f73269f) != null))) {
                    typeMappingMode2 = typeMappingMode;
                }
                objB = b(type2, typeMappingMode2, function3);
            }
            return JvmTypeFactoryImpl.a("[".concat(JvmTypeFactoryImpl.b((JvmType) objB)));
        }
        if (!z4) {
            if (classifierDescriptorY6 instanceof TypeParameterDescriptor) {
                KotlinType kotlinTypeG = TypeUtilsKt.g((TypeParameterDescriptor) classifierDescriptorY6);
                if (kotlinType.I0()) {
                    kotlinTypeG = TypeUtils.i(kotlinTypeG, true);
                }
                return b(kotlinTypeG, typeMappingMode, FunctionsKt.f74386b);
            }
            if ((classifierDescriptorY6 instanceof TypeAliasDescriptor) && typeMappingMode.f73272j) {
                return b(((TypeAliasDescriptor) classifierDescriptorY6).C(), typeMappingMode, function3);
            }
            b21.p(kotlinType, "Unknown type ");
            return null;
        }
        if (InlineClassesUtilsKt.b(classifierDescriptorY6) && !typeMappingMode.f73266b && (kotlinType2 = (KotlinType) ExpandedTypeUtilsKt.b(kotlinType, new HashSet())) != null) {
            return b(kotlinType2, new TypeMappingMode(typeMappingMode.f73265a, true, typeMappingMode.f73267c, typeMappingMode.d, typeMappingMode.f73268e, typeMappingMode.f73269f, typeMappingMode.g, typeMappingMode.f73270h, typeMappingMode.f73271i, typeMappingMode.f73272j, typeMappingMode.f73273k), function3);
        }
        if (z3) {
            Name name = KotlinBuiltIns.f72242f;
            if (KotlinBuiltIns.b((ClassDescriptor) classifierDescriptorY6, StandardNames.FqNames.Q)) {
                object2 = new JvmType.Object("java/lang/Class");
            } else {
                classDescriptor = (ClassDescriptor) classifierDescriptorY6;
                classDescriptor.y0().getClass();
                if (classDescriptor.e() == ClassKind.ENUM_ENTRY) {
                    DeclarationDescriptor declarationDescriptorD = classDescriptor.d();
                    declarationDescriptorD.getClass();
                    classDescriptor = (ClassDescriptor) declarationDescriptorD;
                }
                ClassDescriptor classDescriptorY0 = classDescriptor.y0();
                classDescriptorY0.getClass();
                object2 = new JvmType.Object(a(classDescriptorY0, TypeMappingConfigurationImpl.f73264a));
            }
        } else {
            classDescriptor = (ClassDescriptor) classifierDescriptorY6;
            classDescriptor.y0().getClass();
            if (classDescriptor.e() == ClassKind.ENUM_ENTRY) {
                DeclarationDescriptor declarationDescriptorD2 = classDescriptor.d();
                declarationDescriptorD2.getClass();
                classDescriptor = (ClassDescriptor) declarationDescriptorD2;
            }
            ClassDescriptor classDescriptorY1 = classDescriptor.y0();
            classDescriptorY1.getClass();
            object2 = new JvmType.Object(a(classDescriptorY1, TypeMappingConfigurationImpl.f73264a));
        }
        function3.A(kotlinType, object2, typeMappingMode);
        return object2;
    }
}
