package kotlin.reflect.jvm.internal.impl.resolve;

import defpackage.a61;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DescriptorUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f73834a = 0;

    static {
        new FqName("kotlin.jvm.JvmName");
    }

    public static /* synthetic */ void a(int i2) {
        String str;
        int i3;
        switch (i2) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
            case EACTags.PIN_USAGE_POLICY /* 47 */:
            case 49:
            case 50:
            case EACTags.TRANSACTION_DATE /* 51 */:
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
            case EACTags.SEX /* 53 */:
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
            case 61:
            case 62:
            case 64:
            case EACTags.MESSAGE_REFERENCE /* 71 */:
            case EACTags.DEPRECATED /* 75 */:
            case EACTags.HISTORICAL_BYTES /* 82 */:
            case 83:
            case 85:
            case 88:
            case 93:
            case 95:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i2) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
            case EACTags.PIN_USAGE_POLICY /* 47 */:
            case 49:
            case 50:
            case EACTags.TRANSACTION_DATE /* 51 */:
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
            case EACTags.SEX /* 53 */:
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
            case 61:
            case 62:
            case 64:
            case EACTags.MESSAGE_REFERENCE /* 71 */:
            case EACTags.DEPRECATED /* 75 */:
            case EACTags.HISTORICAL_BYTES /* 82 */:
            case 83:
            case 85:
            case 88:
            case 93:
            case 95:
                i3 = 2;
                break;
            default:
                i3 = 3;
                break;
        }
        Object[] objArr = new Object[i3];
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
            case 13:
            case 14:
            case 15:
            case 21:
            case 23:
            case 24:
            case 34:
            case 35:
            case 36:
            case 57:
            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
            case 60:
            case 63:
            case EACTags.ANSWER_TO_RESET /* 81 */:
            case 94:
                objArr[0] = "descriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
            case EACTags.PIN_USAGE_POLICY /* 47 */:
            case 49:
            case 50:
            case EACTags.TRANSACTION_DATE /* 51 */:
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
            case EACTags.SEX /* 53 */:
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
            case 61:
            case 62:
            case 64:
            case EACTags.MESSAGE_REFERENCE /* 71 */:
            case EACTags.DEPRECATED /* 75 */:
            case EACTags.HISTORICAL_BYTES /* 82 */:
            case 83:
            case 85:
            case 88:
            case 93:
            case 95:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
            case 16:
                objArr[0] = "first";
                break;
            case 17:
                objArr[0] = "second";
                break;
            case 18:
            case 19:
                objArr[0] = "aClass";
                break;
            case 20:
                objArr[0] = "kotlinType";
                break;
            case 25:
                objArr[0] = "declarationDescriptor";
                break;
            case 26:
            case 28:
                objArr[0] = "subClass";
                break;
            case 27:
            case 29:
            case 33:
                objArr[0] = "superClass";
                break;
            case 30:
            case 32:
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
            case EACTags.ADDRESS /* 66 */:
                objArr[0] = "type";
                break;
            case 31:
                objArr[0] = "other";
                break;
            case 37:
                objArr[0] = "classKind";
                break;
            case 38:
            case 39:
            case 41:
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
            case 48:
            case EACTags.CURRENCY_EXPONENT /* 54 */:
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
            case EACTags.APPLICATION_IMAGE /* 68 */:
            case EACTags.DISPLAY_IMAGE /* 69 */:
            case 76:
            case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                objArr[0] = "classDescriptor";
                break;
            case 46:
                objArr[0] = "typeConstructor";
                break;
            case 55:
                objArr[0] = "innerClassName";
                break;
            case 56:
                objArr[0] = "location";
                break;
            case EACTags.ELEMENT_LIST /* 65 */:
                objArr[0] = "variable";
                break;
            case 70:
                objArr[0] = "f";
                break;
            case 72:
                objArr[0] = "current";
                break;
            case 73:
                objArr[0] = "result";
                break;
            case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                objArr[0] = "memberDescriptor";
                break;
            case 78:
            case 79:
            case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                objArr[0] = "annotated";
                break;
            case 84:
            case 86:
            case 89:
            case 91:
                objArr[0] = "scope";
                break;
            case 87:
            case Sink.ORIENTATION_90 /* 90 */:
            case 92:
                objArr[0] = "name";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i2) {
            case 4:
                objArr[1] = "getFqNameSafe";
                break;
            case 7:
                objArr[1] = "getFqNameUnsafe";
                break;
            case 9:
            case 10:
                objArr[1] = "getFqNameFromTopLevelClass";
                break;
            case 12:
                objArr[1] = "getClassIdForNonLocalClass";
                break;
            case 22:
                objArr[1] = "getContainingModule";
                break;
            case 40:
                objArr[1] = "getSuperclassDescriptors";
                break;
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
                objArr[1] = "getSuperClassType";
                break;
            case EACTags.PIN_USAGE_POLICY /* 47 */:
                objArr[1] = "getClassDescriptorForTypeConstructor";
                break;
            case 49:
            case 50:
            case EACTags.TRANSACTION_DATE /* 51 */:
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
            case EACTags.SEX /* 53 */:
                objArr[1] = "getDefaultConstructorVisibility";
                break;
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                objArr[1] = "unwrapFakeOverride";
                break;
            case 61:
            case 62:
                objArr[1] = "unwrapSubstitutionOverride";
                break;
            case 64:
                objArr[1] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case EACTags.MESSAGE_REFERENCE /* 71 */:
                objArr[1] = "getAllOverriddenDescriptors";
                break;
            case EACTags.DEPRECATED /* 75 */:
                objArr[1] = "getAllOverriddenDeclarations";
                break;
            case EACTags.HISTORICAL_BYTES /* 82 */:
            case 83:
                objArr[1] = "getContainingSourceFile";
                break;
            case 85:
                objArr[1] = "getAllDescriptors";
                break;
            case 88:
                objArr[1] = "getFunctionByName";
                break;
            case 93:
                objArr[1] = "getPropertyByName";
                break;
            case 95:
                objArr[1] = "getDirectMember";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
        }
        switch (i2) {
            case 1:
                objArr[2] = "isLocal";
                break;
            case 2:
                objArr[2] = "getFqName";
                break;
            case 3:
                objArr[2] = "getFqNameSafe";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
            case EACTags.PIN_USAGE_POLICY /* 47 */:
            case 49:
            case 50:
            case EACTags.TRANSACTION_DATE /* 51 */:
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
            case EACTags.SEX /* 53 */:
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
            case 61:
            case 62:
            case 64:
            case EACTags.MESSAGE_REFERENCE /* 71 */:
            case EACTags.DEPRECATED /* 75 */:
            case EACTags.HISTORICAL_BYTES /* 82 */:
            case 83:
            case 85:
            case 88:
            case 93:
            case 95:
                break;
            case 5:
                objArr[2] = "getFqNameSafeIfPossible";
                break;
            case 6:
                objArr[2] = "getFqNameUnsafe";
                break;
            case 8:
                objArr[2] = "getFqNameFromTopLevelClass";
                break;
            case 11:
                objArr[2] = "getClassIdForNonLocalClass";
                break;
            case 13:
                objArr[2] = "isExtension";
                break;
            case 14:
                objArr[2] = "isOverride";
                break;
            case 15:
                objArr[2] = "isStaticDeclaration";
                break;
            case 16:
            case 17:
                objArr[2] = "areInSameModule";
                break;
            case 18:
            case 19:
                objArr[2] = "getParentOfType";
                break;
            case 20:
            case 23:
                objArr[2] = "getContainingModuleOrNull";
                break;
            case 21:
                objArr[2] = "getContainingModule";
                break;
            case 24:
                objArr[2] = "getContainingClass";
                break;
            case 25:
                objArr[2] = "isAncestor";
                break;
            case 26:
            case 27:
                objArr[2] = "isDirectSubclass";
                break;
            case 28:
            case 29:
                objArr[2] = "isSubclass";
                break;
            case 30:
            case 31:
                objArr[2] = "isSameClass";
                break;
            case 32:
            case 33:
                objArr[2] = "isSubtypeOfClass";
                break;
            case 34:
                objArr[2] = "isAnonymousObject";
                break;
            case 35:
                objArr[2] = "isAnonymousFunction";
                break;
            case 36:
                objArr[2] = "isEnumEntry";
                break;
            case 37:
                objArr[2] = "isKindOf";
                break;
            case 38:
                objArr[2] = "hasAbstractMembers";
                break;
            case 39:
                objArr[2] = "getSuperclassDescriptors";
                break;
            case 41:
                objArr[2] = "getSuperClassType";
                break;
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                objArr[2] = "getSuperClassDescriptor";
                break;
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                objArr[2] = "getClassDescriptorForType";
                break;
            case 46:
                objArr[2] = "getClassDescriptorForTypeConstructor";
                break;
            case 48:
                objArr[2] = "getDefaultConstructorVisibility";
                break;
            case EACTags.CURRENCY_EXPONENT /* 54 */:
            case 55:
            case 56:
                objArr[2] = "getInnerClassByName";
                break;
            case 57:
                objArr[2] = "isStaticNestedClass";
                break;
            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                objArr[2] = "unwrapFakeOverride";
                break;
            case 60:
                objArr[2] = "unwrapSubstitutionOverride";
                break;
            case 63:
                objArr[2] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case EACTags.ELEMENT_LIST /* 65 */:
            case EACTags.ADDRESS /* 66 */:
                objArr[2] = "shouldRecordInitializerForProperty";
                break;
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                objArr[2] = "classCanHaveAbstractFakeOverride";
                break;
            case EACTags.APPLICATION_IMAGE /* 68 */:
                objArr[2] = "classCanHaveAbstractDeclaration";
                break;
            case EACTags.DISPLAY_IMAGE /* 69 */:
                objArr[2] = "classCanHaveOpenMembers";
                break;
            case 70:
                objArr[2] = "getAllOverriddenDescriptors";
                break;
            case 72:
            case 73:
                objArr[2] = "collectAllOverriddenDescriptors";
                break;
            case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                objArr[2] = "getAllOverriddenDeclarations";
                break;
            case 76:
                objArr[2] = "isSingletonOrAnonymousObject";
                break;
            case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                objArr[2] = "canHaveDeclaredConstructors";
                break;
            case 78:
                objArr[2] = "getJvmName";
                break;
            case 79:
                objArr[2] = "findJvmNameAnnotation";
                break;
            case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                objArr[2] = "hasJvmNameAnnotation";
                break;
            case EACTags.ANSWER_TO_RESET /* 81 */:
                objArr[2] = "getContainingSourceFile";
                break;
            case 84:
                objArr[2] = "getAllDescriptors";
                break;
            case 86:
            case 87:
                objArr[2] = "getFunctionByName";
                break;
            case 89:
            case Sink.ORIENTATION_90 /* 90 */:
                objArr[2] = "getFunctionByNameOrNull";
                break;
            case 91:
            case 92:
                objArr[2] = "getPropertyByName";
                break;
            case 94:
                objArr[2] = "getDirectMember";
                break;
            default:
                objArr[2] = "getDispatchReceiverParameterIfNeeded";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i2) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
            case EACTags.PIN_USAGE_POLICY /* 47 */:
            case 49:
            case 50:
            case EACTags.TRANSACTION_DATE /* 51 */:
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
            case EACTags.SEX /* 53 */:
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
            case 61:
            case 62:
            case 64:
            case EACTags.MESSAGE_REFERENCE /* 71 */:
            case EACTags.DEPRECATED /* 75 */:
            case EACTags.HISTORICAL_BYTES /* 82 */:
            case 83:
            case 85:
            case 88:
            case 93:
            case 95:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static void b(CallableDescriptor callableDescriptor, LinkedHashSet linkedHashSet) {
        if (callableDescriptor == null) {
            a(72);
            throw null;
        }
        if (linkedHashSet.contains(callableDescriptor)) {
            return;
        }
        Iterator it = callableDescriptor.y0().i().iterator();
        while (it.hasNext()) {
            CallableDescriptor callableDescriptorY0 = ((CallableDescriptor) it.next()).y0();
            b(callableDescriptorY0, linkedHashSet);
            linkedHashSet.add(callableDescriptorY0);
        }
    }

    public static ModuleDescriptor c(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor == null) {
            a(21);
            throw null;
        }
        ModuleDescriptor moduleDescriptorD = d(declarationDescriptor);
        if (moduleDescriptorD != null) {
            return moduleDescriptorD;
        }
        a(22);
        throw null;
    }

    public static ModuleDescriptor d(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor == null) {
            a(23);
            throw null;
        }
        while (declarationDescriptor != null) {
            if (declarationDescriptor instanceof ModuleDescriptor) {
                return (ModuleDescriptor) declarationDescriptor;
            }
            if (declarationDescriptor instanceof PackageViewDescriptor) {
                return ((PackageViewDescriptor) declarationDescriptor).v0();
            }
            declarationDescriptor = declarationDescriptor.d();
        }
        return null;
    }

    public static SourceFile e(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor == null) {
            a(81);
            throw null;
        }
        if (declarationDescriptor instanceof PropertySetterDescriptor) {
            declarationDescriptor = ((PropertySetterDescriptor) declarationDescriptor).P();
        }
        boolean z = declarationDescriptor instanceof DeclarationDescriptorWithSource;
        SourceFile sourceFile = SourceFile.f72406a;
        if (z) {
            ((DeclarationDescriptorWithSource) declarationDescriptor).getSource().getClass();
        }
        return sourceFile;
    }

    public static FqNameUnsafe f(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor != null) {
            FqName fqNameG = g(declarationDescriptor);
            return fqNameG != null ? fqNameG.f73679a : f(declarationDescriptor.d()).a(declarationDescriptor.getName());
        }
        a(2);
        throw null;
    }

    public static FqName g(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor == null) {
            a(5);
            throw null;
        }
        if ((declarationDescriptor instanceof ModuleDescriptor) || ErrorUtils.f(declarationDescriptor)) {
            return FqName.d;
        }
        if (declarationDescriptor instanceof PackageViewDescriptor) {
            return ((PackageViewDescriptor) declarationDescriptor).c();
        }
        if (declarationDescriptor instanceof PackageFragmentDescriptor) {
            return ((PackageFragmentDescriptor) declarationDescriptor).c();
        }
        return null;
    }

    public static DeclarationDescriptor h(DeclarationDescriptor declarationDescriptor, Class cls, boolean z) {
        if (declarationDescriptor == null) {
            return null;
        }
        if (z) {
            declarationDescriptor = declarationDescriptor.d();
        }
        while (declarationDescriptor != null) {
            if (cls.isInstance(declarationDescriptor)) {
                return declarationDescriptor;
            }
            declarationDescriptor = declarationDescriptor.d();
        }
        return null;
    }

    public static ClassDescriptor i(ClassDescriptor classDescriptor) {
        if (classDescriptor == null) {
            a(44);
            throw null;
        }
        for (KotlinType kotlinType : classDescriptor.j().i()) {
            if (kotlinType == null) {
                a(45);
                throw null;
            }
            TypeConstructor typeConstructorH0 = kotlinType.H0();
            if (typeConstructorH0 == null) {
                a(46);
                throw null;
            }
            ClassDescriptor classDescriptor2 = (ClassDescriptor) typeConstructorH0.y();
            if (classDescriptor2 == null) {
                a(47);
                throw null;
            }
            if (classDescriptor2.e() != ClassKind.INTERFACE) {
                return classDescriptor2;
            }
        }
        return null;
    }

    public static boolean j(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor != null) {
            return l(declarationDescriptor, ClassKind.CLASS) && declarationDescriptor.getName().equals(SpecialNames.f73691a);
        }
        a(34);
        throw null;
    }

    public static boolean k(DeclarationDescriptor declarationDescriptor) {
        return l(declarationDescriptor, ClassKind.OBJECT) && ((ClassDescriptor) declarationDescriptor).T();
    }

    public static boolean l(DeclarationDescriptor declarationDescriptor, ClassKind classKind) {
        if (classKind != null) {
            return (declarationDescriptor instanceof ClassDescriptor) && ((ClassDescriptor) declarationDescriptor).e() == classKind;
        }
        a(37);
        throw null;
    }

    public static boolean m(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor == null) {
            a(1);
            throw null;
        }
        while (declarationDescriptor != null) {
            if (j(declarationDescriptor) || ((declarationDescriptor instanceof DeclarationDescriptorWithVisibility) && ((DeclarationDescriptorWithVisibility) declarationDescriptor).getVisibility() == DescriptorVisibilities.f72370f)) {
                return true;
            }
            declarationDescriptor = declarationDescriptor.d();
        }
        return false;
    }

    public static boolean n(KotlinType kotlinType, DeclarationDescriptor declarationDescriptor) {
        if (kotlinType == null) {
            a(30);
            throw null;
        }
        if (declarationDescriptor == null) {
            a(31);
            throw null;
        }
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        if (classifierDescriptorY == null) {
            return false;
        }
        DeclarationDescriptor declarationDescriptorY0 = classifierDescriptorY.y0();
        return (declarationDescriptorY0 instanceof ClassifierDescriptor) && (declarationDescriptor instanceof ClassifierDescriptor) && ((ClassifierDescriptor) declarationDescriptor).j().equals(((ClassifierDescriptor) declarationDescriptorY0).j());
    }

    public static boolean o(ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters) {
        return (l(classifierDescriptorWithTypeParameters, ClassKind.CLASS) || l(classifierDescriptorWithTypeParameters, ClassKind.INTERFACE)) && ((ClassDescriptor) classifierDescriptorWithTypeParameters).q() == Modality.SEALED;
    }

    public static boolean p(KotlinType kotlinType, DeclarationDescriptor declarationDescriptor) {
        if (kotlinType == null) {
            a(32);
            throw null;
        }
        if (declarationDescriptor == null) {
            a(33);
            throw null;
        }
        if (n(kotlinType, declarationDescriptor)) {
            return true;
        }
        Iterator it = kotlinType.H0().i().iterator();
        while (it.hasNext()) {
            if (p((KotlinType) it.next(), declarationDescriptor)) {
                return true;
            }
        }
        return false;
    }

    public static boolean q(DeclarationDescriptor declarationDescriptor) {
        return declarationDescriptor != null && (declarationDescriptor.d() instanceof PackageFragmentDescriptor);
    }

    public static CallableMemberDescriptor r(CallableMemberDescriptor callableMemberDescriptor) {
        if (callableMemberDescriptor == null) {
            a(58);
            throw null;
        }
        while (callableMemberDescriptor.e() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            Collection collectionI = callableMemberDescriptor.i();
            if (collectionI.isEmpty()) {
                a61.q(callableMemberDescriptor, "Fake override should have at least one overridden descriptor: ");
                return null;
            }
            callableMemberDescriptor = (CallableMemberDescriptor) collectionI.iterator().next();
        }
        return callableMemberDescriptor;
    }
}
