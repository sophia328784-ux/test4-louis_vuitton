package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.a61;
import defpackage.v40;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.functions.BuiltInFictitiousFunctionClassFactory;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDependenciesImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KotlinBuiltIns {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Name f72242f = Name.g("<built-ins module>");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ModuleDescriptorImpl f72243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NotNullLazyValue f72244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotNullLazyValue f72245c;
    public final MemoizedFunctionToNotNull d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StorageManager f72246e;

    public static class Primitives {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EnumMap f72252a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f72253b;

        public Primitives(EnumMap enumMap, HashMap map, HashMap map2) {
            this.f72252a = enumMap;
            this.f72253b = map2;
        }
    }

    public KotlinBuiltIns(StorageManager storageManager) {
        if (storageManager == null) {
            a(0);
            throw null;
        }
        this.f72246e = storageManager;
        this.f72245c = storageManager.c(new Function0<Collection<PackageViewDescriptor>>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KotlinBuiltIns kotlinBuiltIns = KotlinBuiltIns.this;
                return Arrays.asList(kotlinBuiltIns.l().d0(StandardNames.l), kotlinBuiltIns.l().d0(StandardNames.n), kotlinBuiltIns.l().d0(StandardNames.o), kotlinBuiltIns.l().d0(StandardNames.m));
            }
        });
        this.f72244b = storageManager.c(new Function0<Primitives>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                EnumMap enumMap = new EnumMap(PrimitiveType.class);
                HashMap map = new HashMap();
                HashMap map2 = new HashMap();
                for (PrimitiveType primitiveType : PrimitiveType.values()) {
                    String strB = primitiveType.f().b();
                    if (strB == null) {
                        KotlinBuiltIns.a(47);
                        throw null;
                    }
                    Name name = KotlinBuiltIns.f72242f;
                    KotlinBuiltIns kotlinBuiltIns = KotlinBuiltIns.this;
                    SimpleType simpleTypeO = kotlinBuiltIns.k(strB).o();
                    if (simpleTypeO == null) {
                        KotlinBuiltIns.a(48);
                        throw null;
                    }
                    String strB2 = primitiveType.d().b();
                    if (strB2 == null) {
                        KotlinBuiltIns.a(47);
                        throw null;
                    }
                    SimpleType simpleTypeO2 = kotlinBuiltIns.k(strB2).o();
                    if (simpleTypeO2 == null) {
                        KotlinBuiltIns.a(48);
                        throw null;
                    }
                    enumMap.put(primitiveType, simpleTypeO2);
                    map.put(simpleTypeO, simpleTypeO2);
                    map2.put(simpleTypeO2, simpleTypeO);
                }
                return new Primitives(enumMap, map, map2);
            }
        });
        this.d = storageManager.i(new Function1<Name, ClassDescriptor>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Name name = (Name) obj;
                ModuleDescriptorImpl moduleDescriptorImplL = KotlinBuiltIns.this.l();
                FqName fqName = StandardNames.l;
                MemberScope memberScopeN = moduleDescriptorImplL.d0(fqName).n();
                if (memberScopeN == null) {
                    KotlinBuiltIns.a(11);
                    throw null;
                }
                ClassifierDescriptor classifierDescriptorF = ((AbstractScopeAdapter) memberScopeN).f(name, NoLookupLocation.FROM_BUILTINS);
                if (classifierDescriptorF == null) {
                    v40.k("Built-in class ", fqName.a(name), " is not found");
                    return null;
                }
                if (classifierDescriptorF instanceof ClassDescriptor) {
                    return (ClassDescriptor) classifierDescriptorF;
                }
                throw new AssertionError("Must be a class descriptor " + name + ", but was " + classifierDescriptorF);
            }
        });
    }

    public static boolean A(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor != null) {
            return DescriptorUtils.h(declarationDescriptor, BuiltInsPackageFragment.class, false) != null;
        }
        a(9);
        throw null;
    }

    public static boolean B(KotlinType kotlinType, FqNameUnsafe fqNameUnsafe) {
        if (kotlinType == null) {
            a(97);
            throw null;
        }
        if (fqNameUnsafe != null) {
            return J(kotlinType.H0(), fqNameUnsafe);
        }
        a(98);
        throw null;
    }

    public static boolean C(KotlinType kotlinType, FqNameUnsafe fqNameUnsafe) {
        if (fqNameUnsafe != null) {
            return B(kotlinType, fqNameUnsafe) && !kotlinType.I0();
        }
        a(135);
        throw null;
    }

    public static boolean D(FunctionDescriptor functionDescriptor) {
        if (functionDescriptor.y0().getAnnotations().C1(StandardNames.FqNames.m)) {
            return true;
        }
        if (!(functionDescriptor instanceof PropertyDescriptor)) {
            return false;
        }
        PropertyDescriptor propertyDescriptor = (PropertyDescriptor) functionDescriptor;
        boolean zI = propertyDescriptor.I();
        PropertyGetterDescriptorImpl getter = propertyDescriptor.getGetter();
        PropertySetterDescriptor setter = propertyDescriptor.getSetter();
        if (getter == null || !D(getter)) {
            return false;
        }
        if (zI) {
            return setter != null && D(setter);
        }
        return true;
    }

    public static boolean E(KotlinType kotlinType, FqNameUnsafe fqNameUnsafe) {
        if (kotlinType == null) {
            a(105);
            throw null;
        }
        if (fqNameUnsafe != null) {
            return !kotlinType.I0() && B(kotlinType, fqNameUnsafe);
        }
        a(106);
        throw null;
    }

    public static boolean F(KotlinType kotlinType) {
        if (kotlinType != null) {
            return B(kotlinType, StandardNames.FqNames.f72272b) && !TypeUtils.g(kotlinType);
        }
        a(136);
        throw null;
    }

    public static boolean G(KotlinType kotlinType) {
        if (kotlinType != null) {
            ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
            return (classifierDescriptorY == null || s(classifierDescriptorY) == null) ? false : true;
        }
        a(91);
        throw null;
    }

    public static boolean H(KotlinType kotlinType) {
        if (kotlinType == null) {
            a(94);
            throw null;
        }
        if (kotlinType.I0()) {
            return false;
        }
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        return (classifierDescriptorY instanceof ClassDescriptor) && u((ClassDescriptor) classifierDescriptorY) != null;
    }

    public static boolean I(KotlinType kotlinType) {
        return E(kotlinType, StandardNames.FqNames.f72275f);
    }

    public static boolean J(TypeConstructor typeConstructor, FqNameUnsafe fqNameUnsafe) {
        if (typeConstructor == null) {
            a(101);
            throw null;
        }
        if (fqNameUnsafe != null) {
            ClassifierDescriptor classifierDescriptorY = typeConstructor.y();
            return (classifierDescriptorY instanceof ClassDescriptor) && b((ClassDescriptor) classifierDescriptorY, fqNameUnsafe);
        }
        a(102);
        throw null;
    }

    public static boolean K(ClassifierDescriptor classifierDescriptor) {
        if (classifierDescriptor == null) {
            a(10);
            throw null;
        }
        for (DeclarationDescriptor declarationDescriptorD = classifierDescriptor; declarationDescriptorD != null; declarationDescriptorD = declarationDescriptorD.d()) {
            if (declarationDescriptorD instanceof PackageFragmentDescriptor) {
                FqName fqNameC = ((PackageFragmentDescriptor) declarationDescriptorD).c();
                Name name = StandardNames.f72270k;
                fqNameC.getClass();
                name.getClass();
                return fqNameC.f73679a.h(name);
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0035 A[FALL_THROUGH] */
    public static /* synthetic */ void a(int i2) {
        String str;
        int i3;
        if (i2 != 11 && i2 != 13 && i2 != 15 && i2 != 69 && i2 != 74 && i2 != 81 && i2 != 84 && i2 != 86 && i2 != 87) {
            switch (i2) {
                default:
                    switch (i2) {
                        default:
                            switch (i2) {
                                default:
                                    switch (i2) {
                                        case 55:
                                        case 56:
                                        case 57:
                                        case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                                        case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                                        case 60:
                                        case 61:
                                        case 62:
                                        case 63:
                                        case 64:
                                        case EACTags.ELEMENT_LIST /* 65 */:
                                        case EACTags.ADDRESS /* 66 */:
                                        case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                                            break;
                                        default:
                                            str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                                            break;
                                    }
                                case 48:
                                case 49:
                                case 50:
                                case EACTags.TRANSACTION_DATE /* 51 */:
                                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                                case EACTags.SEX /* 53 */:
                                    str = "@NotNull method %s.%s must not return null";
                                    break;
                            }
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case EACTags.CURRENCY_CODE /* 42 */:
                        case EACTags.DATE_OF_BIRTH /* 43 */:
                        case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                        case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                        case 46:
                            str = "@NotNull method %s.%s must not return null";
                            break;
                    }
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    str = "@NotNull method %s.%s must not return null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i2 != 11 && i2 != 13 && i2 != 15 && i2 != 69 && i2 != 74 && i2 != 81 && i2 != 84 && i2 != 86 && i2 != 87) {
            switch (i2) {
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    i3 = 2;
                    break;
                default:
                    switch (i2) {
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case EACTags.CURRENCY_CODE /* 42 */:
                        case EACTags.DATE_OF_BIRTH /* 43 */:
                        case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                        case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                        case 46:
                            i3 = 2;
                            break;
                        default:
                            switch (i2) {
                                case 48:
                                case 49:
                                case 50:
                                case EACTags.TRANSACTION_DATE /* 51 */:
                                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                                case EACTags.SEX /* 53 */:
                                    i3 = 2;
                                    break;
                                default:
                                    switch (i2) {
                                        case 55:
                                        case 56:
                                        case 57:
                                        case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                                        case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                                        case 60:
                                        case 61:
                                        case 62:
                                        case 63:
                                        case 64:
                                        case EACTags.ELEMENT_LIST /* 65 */:
                                        case EACTags.ADDRESS /* 66 */:
                                        case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                                            i3 = 2;
                                            break;
                                        default:
                                            i3 = 3;
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            i3 = 2;
        }
        Object[] objArr = new Object[i3];
        switch (i2) {
            case 1:
            case 72:
                objArr[0] = "module";
                break;
            case 2:
                objArr[0] = "computation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
            case 46:
            case 48:
            case 49:
            case 50:
            case EACTags.TRANSACTION_DATE /* 51 */:
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
            case EACTags.SEX /* 53 */:
            case 55:
            case 56:
            case 57:
            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case EACTags.ELEMENT_LIST /* 65 */:
            case EACTags.ADDRESS /* 66 */:
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
            case EACTags.DISPLAY_IMAGE /* 69 */:
            case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
            case EACTags.ANSWER_TO_RESET /* 81 */:
            case 84:
            case 86:
            case 87:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 9:
            case 10:
            case 76:
            case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
            case 89:
            case 96:
            case 103:
            case 107:
            case 108:
            case 143:
            case 146:
            case 147:
            case 149:
            case 157:
            case 158:
            case 159:
                objArr[0] = "descriptor";
                break;
            case 12:
            case 98:
            case 100:
            case 102:
            case 104:
            case 106:
            case 135:
                objArr[0] = "fqName";
                break;
            case 14:
                objArr[0] = "simpleName";
                break;
            case 16:
            case 17:
            case EACTags.CURRENCY_EXPONENT /* 54 */:
            case 88:
            case Sink.ORIENTATION_90 /* 90 */:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 97:
            case 99:
            case 105:
            case 109:
            case 110:
            case 111:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case CertificateBody.profileType /* 127 */:
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 144:
            case 145:
            case 148:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 161:
                objArr[0] = "type";
                break;
            case EACTags.PIN_USAGE_POLICY /* 47 */:
                objArr[0] = "classSimpleName";
                break;
            case EACTags.APPLICATION_IMAGE /* 68 */:
            case 70:
                objArr[0] = "arrayType";
                break;
            case EACTags.MESSAGE_REFERENCE /* 71 */:
                objArr[0] = "notNullArrayType";
                break;
            case 73:
                objArr[0] = "primitiveType";
                break;
            case EACTags.DEPRECATED /* 75 */:
                objArr[0] = "kotlinType";
                break;
            case 78:
            case EACTags.HISTORICAL_BYTES /* 82 */:
                objArr[0] = "projectionType";
                break;
            case 79:
            case 83:
            case 85:
                objArr[0] = "argument";
                break;
            case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                objArr[0] = "annotations";
                break;
            case 101:
                objArr[0] = "typeConstructor";
                break;
            case 112:
                objArr[0] = "classDescriptor";
                break;
            case 160:
                objArr[0] = "declarationDescriptor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (i2 == 11) {
            objArr[1] = "getBuiltInsPackageScope";
        } else if (i2 == 13) {
            objArr[1] = "getBuiltInClassByFqName";
        } else if (i2 == 15) {
            objArr[1] = "getBuiltInClassByName";
        } else if (i2 == 69) {
            objArr[1] = "getArrayElementType";
        } else if (i2 == 74) {
            objArr[1] = "getPrimitiveArrayKotlinType";
        } else if (i2 == 81 || i2 == 84) {
            objArr[1] = "getArrayType";
        } else if (i2 == 86) {
            objArr[1] = "getEnumType";
        } else if (i2 != 87) {
            switch (i2) {
                case 3:
                    objArr[1] = "getAdditionalClassPartsProvider";
                    break;
                case 4:
                    objArr[1] = "getPlatformDependentDeclarationFilter";
                    break;
                case 5:
                    objArr[1] = "getClassDescriptorFactories";
                    break;
                case 6:
                    objArr[1] = "getStorageManager";
                    break;
                case 7:
                    objArr[1] = "getBuiltInsModule";
                    break;
                case 8:
                    objArr[1] = "getBuiltInPackagesImportedByDefault";
                    break;
                default:
                    switch (i2) {
                        case 18:
                            objArr[1] = "getSuspendFunction";
                            break;
                        case 19:
                            objArr[1] = "getKFunction";
                            break;
                        case 20:
                            objArr[1] = "getKSuspendFunction";
                            break;
                        case 21:
                            objArr[1] = "getKClass";
                            break;
                        case 22:
                            objArr[1] = "getKType";
                            break;
                        case 23:
                            objArr[1] = "getKCallable";
                            break;
                        case 24:
                            objArr[1] = "getKProperty";
                            break;
                        case 25:
                            objArr[1] = "getKProperty0";
                            break;
                        case 26:
                            objArr[1] = "getKProperty1";
                            break;
                        case 27:
                            objArr[1] = "getKProperty2";
                            break;
                        case 28:
                            objArr[1] = "getKMutableProperty0";
                            break;
                        case 29:
                            objArr[1] = "getKMutableProperty1";
                            break;
                        case 30:
                            objArr[1] = "getKMutableProperty2";
                            break;
                        case 31:
                            objArr[1] = "getIterator";
                            break;
                        case 32:
                            objArr[1] = "getIterable";
                            break;
                        case 33:
                            objArr[1] = "getMutableIterable";
                            break;
                        case 34:
                            objArr[1] = "getMutableIterator";
                            break;
                        case 35:
                            objArr[1] = "getCollection";
                            break;
                        case 36:
                            objArr[1] = "getMutableCollection";
                            break;
                        case 37:
                            objArr[1] = "getList";
                            break;
                        case 38:
                            objArr[1] = "getMutableList";
                            break;
                        case 39:
                            objArr[1] = "getSet";
                            break;
                        case 40:
                            objArr[1] = "getMutableSet";
                            break;
                        case 41:
                            objArr[1] = "getMap";
                            break;
                        case EACTags.CURRENCY_CODE /* 42 */:
                            objArr[1] = "getMutableMap";
                            break;
                        case EACTags.DATE_OF_BIRTH /* 43 */:
                            objArr[1] = "getMapEntry";
                            break;
                        case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                            objArr[1] = "getMutableMapEntry";
                            break;
                        case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                            objArr[1] = "getListIterator";
                            break;
                        case 46:
                            objArr[1] = "getMutableListIterator";
                            break;
                        default:
                            switch (i2) {
                                case 48:
                                    objArr[1] = "getBuiltInTypeByClassName";
                                    break;
                                case 49:
                                    objArr[1] = "getNothingType";
                                    break;
                                case 50:
                                    objArr[1] = "getNullableNothingType";
                                    break;
                                case EACTags.TRANSACTION_DATE /* 51 */:
                                    objArr[1] = "getAnyType";
                                    break;
                                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                                    objArr[1] = "getNullableAnyType";
                                    break;
                                case EACTags.SEX /* 53 */:
                                    objArr[1] = "getDefaultBound";
                                    break;
                                default:
                                    switch (i2) {
                                        case 55:
                                            objArr[1] = "getPrimitiveKotlinType";
                                            break;
                                        case 56:
                                            objArr[1] = "getNumberType";
                                            break;
                                        case 57:
                                            objArr[1] = "getByteType";
                                            break;
                                        case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                                            objArr[1] = "getShortType";
                                            break;
                                        case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                                            objArr[1] = "getIntType";
                                            break;
                                        case 60:
                                            objArr[1] = "getLongType";
                                            break;
                                        case 61:
                                            objArr[1] = "getFloatType";
                                            break;
                                        case 62:
                                            objArr[1] = "getDoubleType";
                                            break;
                                        case 63:
                                            objArr[1] = "getCharType";
                                            break;
                                        case 64:
                                            objArr[1] = "getBooleanType";
                                            break;
                                        case EACTags.ELEMENT_LIST /* 65 */:
                                            objArr[1] = "getUnitType";
                                            break;
                                        case EACTags.ADDRESS /* 66 */:
                                            objArr[1] = "getStringType";
                                            break;
                                        case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                                            objArr[1] = "getIterableType";
                                            break;
                                        default:
                                            objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            objArr[1] = "getAnnotationType";
        }
        switch (i2) {
            case 1:
                objArr[2] = "setBuiltInsModule";
                break;
            case 2:
                objArr[2] = "setPostponedBuiltinsModuleComputation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
            case 46:
            case 48:
            case 49:
            case 50:
            case EACTags.TRANSACTION_DATE /* 51 */:
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
            case EACTags.SEX /* 53 */:
            case 55:
            case 56:
            case 57:
            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case EACTags.ELEMENT_LIST /* 65 */:
            case EACTags.ADDRESS /* 66 */:
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
            case EACTags.DISPLAY_IMAGE /* 69 */:
            case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
            case EACTags.ANSWER_TO_RESET /* 81 */:
            case 84:
            case 86:
            case 87:
                break;
            case 9:
                objArr[2] = "isBuiltIn";
                break;
            case 10:
                objArr[2] = "isUnderKotlinPackage";
                break;
            case 12:
                objArr[2] = "getBuiltInClassByFqName";
                break;
            case 14:
                objArr[2] = "getBuiltInClassByName";
                break;
            case 16:
                objArr[2] = "getPrimitiveClassDescriptor";
                break;
            case 17:
                objArr[2] = "getPrimitiveArrayClassDescriptor";
                break;
            case EACTags.PIN_USAGE_POLICY /* 47 */:
                objArr[2] = "getBuiltInTypeByClassName";
                break;
            case EACTags.CURRENCY_EXPONENT /* 54 */:
                objArr[2] = "getPrimitiveKotlinType";
                break;
            case EACTags.APPLICATION_IMAGE /* 68 */:
                objArr[2] = "getArrayElementType";
                break;
            case 70:
                objArr[2] = "getArrayElementTypeOrNull";
                break;
            case EACTags.MESSAGE_REFERENCE /* 71 */:
            case 72:
                objArr[2] = "getElementTypeForUnsignedArray";
                break;
            case 73:
                objArr[2] = "getPrimitiveArrayKotlinType";
                break;
            case EACTags.DEPRECATED /* 75 */:
                objArr[2] = "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType";
                break;
            case 76:
            case 93:
                objArr[2] = "getPrimitiveType";
                break;
            case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                objArr[2] = "getPrimitiveArrayType";
                break;
            case 78:
            case 79:
            case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
            case EACTags.HISTORICAL_BYTES /* 82 */:
            case 83:
                objArr[2] = "getArrayType";
                break;
            case 85:
                objArr[2] = "getEnumType";
                break;
            case 88:
                objArr[2] = "isArray";
                break;
            case 89:
            case Sink.ORIENTATION_90 /* 90 */:
                objArr[2] = "isArrayOrPrimitiveArray";
                break;
            case 91:
                objArr[2] = "isPrimitiveArray";
                break;
            case 92:
                objArr[2] = "getPrimitiveArrayElementType";
                break;
            case 94:
                objArr[2] = "isPrimitiveType";
                break;
            case 95:
                objArr[2] = "isPrimitiveTypeOrNullablePrimitiveType";
                break;
            case 96:
                objArr[2] = "isPrimitiveClass";
                break;
            case 97:
            case 98:
            case 99:
            case 100:
                objArr[2] = "isConstructedFromGivenClass";
                break;
            case 101:
            case 102:
                objArr[2] = "isTypeConstructorForGivenClass";
                break;
            case 103:
            case 104:
                objArr[2] = "classFqNameEquals";
                break;
            case 105:
            case 106:
                objArr[2] = "isNotNullConstructedFromGivenClass";
                break;
            case 107:
                objArr[2] = "isSpecialClassWithNoSupertypes";
                break;
            case 108:
            case 109:
                objArr[2] = "isAny";
                break;
            case 110:
            case 112:
                objArr[2] = "isBoolean";
                break;
            case 111:
                objArr[2] = "isBooleanOrNullableBoolean";
                break;
            case 113:
                objArr[2] = "isNumber";
                break;
            case 114:
                objArr[2] = "isChar";
                break;
            case 115:
                objArr[2] = "isCharOrNullableChar";
                break;
            case 116:
                objArr[2] = "isInt";
                break;
            case 117:
                objArr[2] = "isByte";
                break;
            case 118:
                objArr[2] = "isLong";
                break;
            case 119:
                objArr[2] = "isLongOrNullableLong";
                break;
            case 120:
                objArr[2] = "isShort";
                break;
            case 121:
                objArr[2] = "isFloat";
                break;
            case 122:
                objArr[2] = "isFloatOrNullableFloat";
                break;
            case 123:
                objArr[2] = "isDouble";
                break;
            case 124:
                objArr[2] = "isUByte";
                break;
            case 125:
                objArr[2] = "isUShort";
                break;
            case 126:
                objArr[2] = "isUInt";
                break;
            case CertificateBody.profileType /* 127 */:
                objArr[2] = "isULong";
                break;
            case 128:
                objArr[2] = "isUByteArray";
                break;
            case 129:
                objArr[2] = "isUShortArray";
                break;
            case 130:
                objArr[2] = "isUIntArray";
                break;
            case 131:
                objArr[2] = "isULongArray";
                break;
            case 132:
                objArr[2] = "isUnsignedArrayType";
                break;
            case 133:
                objArr[2] = "isDoubleOrNullableDouble";
                break;
            case 134:
            case 135:
                objArr[2] = "isConstructedFromGivenClassAndNotNullable";
                break;
            case 136:
                objArr[2] = "isNothing";
                break;
            case 137:
                objArr[2] = "isNullableNothing";
                break;
            case 138:
                objArr[2] = "isNothingOrNullableNothing";
                break;
            case 139:
                objArr[2] = "isAnyOrNullableAny";
                break;
            case 140:
                objArr[2] = "isNullableAny";
                break;
            case 141:
                objArr[2] = "isDefaultBound";
                break;
            case 142:
                objArr[2] = "isUnit";
                break;
            case 143:
                objArr[2] = "mayReturnNonUnitValue";
                break;
            case 144:
                objArr[2] = "isUnitOrNullableUnit";
                break;
            case 145:
                objArr[2] = "isBooleanOrSubtype";
                break;
            case 146:
                objArr[2] = "isMemberOfAny";
                break;
            case 147:
            case 148:
                objArr[2] = "isEnum";
                break;
            case 149:
            case 150:
                objArr[2] = "isComparable";
                break;
            case 151:
                objArr[2] = "isCollectionOrNullableCollection";
                break;
            case 152:
                objArr[2] = "isListOrNullableList";
                break;
            case 153:
                objArr[2] = "isSetOrNullableSet";
                break;
            case 154:
                objArr[2] = "isMapOrNullableMap";
                break;
            case 155:
                objArr[2] = "isIterableOrNullableIterable";
                break;
            case 156:
                objArr[2] = "isThrowableOrNullableThrowable";
                break;
            case 157:
                objArr[2] = "isThrowable";
                break;
            case 158:
                objArr[2] = "isKClass";
                break;
            case 159:
                objArr[2] = "isNonPrimitiveArray";
                break;
            case 160:
                objArr[2] = "isDeprecated";
                break;
            case 161:
                objArr[2] = "isNotNullOrNullableFunctionSupertype";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 11 && i2 != 13 && i2 != 15 && i2 != 69 && i2 != 74 && i2 != 81 && i2 != 84 && i2 != 86 && i2 != 87) {
            switch (i2) {
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    switch (i2) {
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case EACTags.CURRENCY_CODE /* 42 */:
                        case EACTags.DATE_OF_BIRTH /* 43 */:
                        case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                        case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                        case 46:
                            break;
                        default:
                            switch (i2) {
                                case 48:
                                case 49:
                                case 50:
                                case EACTags.TRANSACTION_DATE /* 51 */:
                                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                                case EACTags.SEX /* 53 */:
                                    break;
                                default:
                                    switch (i2) {
                                        case 55:
                                        case 56:
                                        case 57:
                                        case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                                        case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                                        case 60:
                                        case 61:
                                        case 62:
                                        case 63:
                                        case 64:
                                        case EACTags.ELEMENT_LIST /* 65 */:
                                        case EACTags.ADDRESS /* 66 */:
                                        case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                                            break;
                                        default:
                                            throw new IllegalArgumentException(str2);
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        throw new IllegalStateException(str2);
    }

    public static boolean b(ClassDescriptor classDescriptor, FqNameUnsafe fqNameUnsafe) {
        if (classDescriptor == null) {
            a(103);
            throw null;
        }
        if (fqNameUnsafe != null) {
            return classDescriptor.getName().equals(fqNameUnsafe.g()) && fqNameUnsafe.equals(DescriptorUtils.f(classDescriptor));
        }
        a(104);
        throw null;
    }

    public static PrimitiveType s(ClassifierDescriptor classifierDescriptor) {
        if (classifierDescriptor == null) {
            a(77);
            throw null;
        }
        if (StandardNames.FqNames.e0.contains(classifierDescriptor.getName())) {
            return (PrimitiveType) StandardNames.FqNames.g0.get(DescriptorUtils.f(classifierDescriptor));
        }
        return null;
    }

    public static PrimitiveType u(ClassDescriptor classDescriptor) {
        if (StandardNames.FqNames.d0.contains(classDescriptor.getName())) {
            return (PrimitiveType) StandardNames.FqNames.f0.get(DescriptorUtils.f(classDescriptor));
        }
        return null;
    }

    public static boolean y(KotlinType kotlinType) {
        if (kotlinType != null) {
            return B(kotlinType, StandardNames.FqNames.f72271a);
        }
        a(139);
        throw null;
    }

    public static boolean z(KotlinType kotlinType) {
        if (kotlinType != null) {
            return B(kotlinType, StandardNames.FqNames.g);
        }
        a(88);
        throw null;
    }

    public final void L(final ModuleDescriptorImpl moduleDescriptorImpl) {
        this.f72246e.d(new Function0<Void>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.4
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KotlinBuiltIns kotlinBuiltIns = KotlinBuiltIns.this;
                ModuleDescriptorImpl moduleDescriptorImpl2 = kotlinBuiltIns.f72243a;
                ModuleDescriptorImpl moduleDescriptorImpl3 = moduleDescriptorImpl;
                if (moduleDescriptorImpl2 == null) {
                    kotlinBuiltIns.f72243a = moduleDescriptorImpl3;
                    return null;
                }
                throw new AssertionError("Built-ins module is already set: " + kotlinBuiltIns.f72243a + " (attempting to reset to " + moduleDescriptorImpl3 + ")");
            }
        });
    }

    public final void c(boolean z) {
        ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(f72242f, this.f72246e, this, null);
        this.f72243a = moduleDescriptorImpl;
        BuiltInsLoader.f72235a.getClass();
        moduleDescriptorImpl.f72530i = ((BuiltInsLoader) BuiltInsLoader.Companion.f72237b.getF71699b()).a(this.f72246e, this.f72243a, m(), q(), d(), z);
        ModuleDescriptorImpl moduleDescriptorImpl2 = this.f72243a;
        moduleDescriptorImpl2.getClass();
        List listW = ArraysKt.W(new ModuleDescriptorImpl[]{moduleDescriptorImpl2});
        listW.getClass();
        EmptySet emptySet = EmptySet.f71770b;
        emptySet.getClass();
        moduleDescriptorImpl2.f72529h = new ModuleDependenciesImpl(listW, emptySet, EmptyList.f71768b, emptySet);
    }

    public AdditionalClassPartsProvider d() {
        return AdditionalClassPartsProvider.None.f72443a;
    }

    public final SimpleType e() {
        SimpleType simpleTypeO = k("Any").o();
        if (simpleTypeO != null) {
            return simpleTypeO;
        }
        a(51);
        throw null;
    }

    public final KotlinType f(KotlinType kotlinType) {
        if (kotlinType == null) {
            a(68);
            throw null;
        }
        KotlinType kotlinTypeG = g(kotlinType);
        if (kotlinTypeG != null) {
            return kotlinTypeG;
        }
        a61.q(kotlinType, "not array: ");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005b  */
    public final KotlinType g(KotlinType kotlinType) {
        ClassId classIdF;
        ClassId classId;
        ClassDescriptor classDescriptorA;
        SimpleType simpleTypeO;
        if (kotlinType == null) {
            a(70);
            throw null;
        }
        if (!z(kotlinType)) {
            UnwrappedType unwrappedTypeI = TypeUtils.i(kotlinType, false);
            KotlinType kotlinType2 = (KotlinType) ((Primitives) this.f72244b.mo47invoke()).f72253b.get(unwrappedTypeI);
            if (kotlinType2 != null) {
                return kotlinType2;
            }
            int i2 = DescriptorUtils.f73834a;
            ClassifierDescriptor classifierDescriptorY = unwrappedTypeI.H0().y();
            ModuleDescriptor moduleDescriptorD = classifierDescriptorY == null ? null : DescriptorUtils.d(classifierDescriptorY);
            if (moduleDescriptorD != null) {
                ClassifierDescriptor classifierDescriptorY2 = unwrappedTypeI.H0().y();
                if (classifierDescriptorY2 == null) {
                    simpleTypeO = null;
                } else {
                    Set set = UnsignedTypes.f72281a;
                    Name name = classifierDescriptorY2.getName();
                    name.getClass();
                    if (!UnsignedTypes.f72284e.contains(name) || (classIdF = DescriptorUtilsKt.f(classifierDescriptorY2)) == null || (classId = (ClassId) UnsignedTypes.f72283c.get(classIdF)) == null || (classDescriptorA = FindClassInModuleKt.a(moduleDescriptorD, classId)) == null) {
                        simpleTypeO = null;
                    } else {
                        simpleTypeO = classDescriptorA.o();
                    }
                }
                if (simpleTypeO != null) {
                    return simpleTypeO;
                }
            }
        } else if (kotlinType.F0().size() == 1) {
            return ((TypeProjection) kotlinType.F0().get(0)).getType();
        }
        return null;
    }

    public final SimpleType h(Variance variance, KotlinType kotlinType) {
        if (variance == null) {
            a(82);
            throw null;
        }
        if (kotlinType != null) {
            return i(variance, kotlinType, Annotations.Companion.f72432a);
        }
        a(83);
        throw null;
    }

    public final SimpleType i(Variance variance, KotlinType kotlinType, Annotations annotations) {
        if (variance == null) {
            a(78);
            throw null;
        }
        if (kotlinType != null) {
            return KotlinTypeFactory.c(DefaultTypeAttributeTranslator.f74181a.a(annotations), k("Array"), Collections.singletonList(new TypeProjectionImpl(variance, kotlinType)));
        }
        a(79);
        throw null;
    }

    public final ClassDescriptor j(FqName fqName) {
        if (fqName == null) {
            a(12);
            throw null;
        }
        ClassDescriptor classDescriptorB = DescriptorUtilKt.b(l(), fqName, NoLookupLocation.FROM_BUILTINS);
        if (classDescriptorB != null) {
            return classDescriptorB;
        }
        a(13);
        throw null;
    }

    public final ClassDescriptor k(String str) {
        if (str == null) {
            a(14);
            throw null;
        }
        ClassDescriptor classDescriptor = (ClassDescriptor) this.d.invoke(Name.e(str));
        if (classDescriptor != null) {
            return classDescriptor;
        }
        a(15);
        throw null;
    }

    public final ModuleDescriptorImpl l() {
        this.f72243a.getClass();
        ModuleDescriptorImpl moduleDescriptorImpl = this.f72243a;
        if (moduleDescriptorImpl != null) {
            return moduleDescriptorImpl;
        }
        a(7);
        throw null;
    }

    public Iterable m() {
        List listSingletonList = Collections.singletonList(new BuiltInFictitiousFunctionClassFactory(this.f72246e, l()));
        if (listSingletonList != null) {
            return listSingletonList;
        }
        a(5);
        throw null;
    }

    public final SimpleType n() {
        SimpleType simpleTypeP = p();
        if (simpleTypeP != null) {
            return simpleTypeP;
        }
        a(53);
        throw null;
    }

    public final SimpleType o() {
        SimpleType simpleTypeO = k("Nothing").o();
        if (simpleTypeO != null) {
            return simpleTypeO;
        }
        a(49);
        throw null;
    }

    public final SimpleType p() {
        SimpleType simpleTypeO0 = e().L0(true);
        if (simpleTypeO0 != null) {
            return simpleTypeO0;
        }
        a(52);
        throw null;
    }

    public PlatformDependentDeclarationFilter q() {
        return PlatformDependentDeclarationFilter.NoPlatformDependent.f72445a;
    }

    public final SimpleType r(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(73);
            throw null;
        }
        SimpleType simpleType = (SimpleType) ((Primitives) this.f72244b.mo47invoke()).f72252a.get(primitiveType);
        if (simpleType != null) {
            return simpleType;
        }
        a(74);
        throw null;
    }

    public final SimpleType t(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(54);
            throw null;
        }
        if (primitiveType == null) {
            a(16);
            throw null;
        }
        SimpleType simpleTypeO = k(primitiveType.f().b()).o();
        if (simpleTypeO != null) {
            return simpleTypeO;
        }
        a(55);
        throw null;
    }

    public final SimpleType v() {
        SimpleType simpleTypeO = k("String").o();
        if (simpleTypeO != null) {
            return simpleTypeO;
        }
        a(66);
        throw null;
    }

    public final ClassDescriptor w(int i2) {
        ClassDescriptor classDescriptorJ = j(StandardNames.f72266f.a(Name.e(FunctionTypeKind.SuspendFunction.f72296c.f72292b + i2)));
        if (classDescriptorJ != null) {
            return classDescriptorJ;
        }
        a(18);
        throw null;
    }

    public final SimpleType x() {
        SimpleType simpleTypeO = k("Unit").o();
        if (simpleTypeO != null) {
            return simpleTypeO;
        }
        a(65);
        throw null;
    }
}
