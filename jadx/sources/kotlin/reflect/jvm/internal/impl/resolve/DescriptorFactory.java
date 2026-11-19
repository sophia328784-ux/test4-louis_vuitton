package kotlin.reflect.jvm.internal.impl.resolve;

import com.appsflyer.sdk_base.referrer.Payload;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleCapability;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.NameUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ContextReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ExtensionReceiver;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DescriptorFactory {

    public static class DefaultClassConstructorDescriptor extends ClassConstructorDescriptorImpl {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DefaultClassConstructorDescriptor(ClassDescriptor classDescriptor, SourceElement sourceElement, boolean z) {
            DescriptorVisibility descriptorVisibility;
            super(classDescriptor, null, Annotations.Companion.f72432a, true, CallableMemberDescriptor.Kind.DECLARATION, sourceElement);
            if (classDescriptor == null) {
                Z(0);
                throw null;
            }
            if (sourceElement == null) {
                Z(1);
                throw null;
            }
            List list = Collections.EMPTY_LIST;
            int i2 = DescriptorUtils.f73834a;
            ClassKind classKindE = classDescriptor.e();
            if (classKindE == ClassKind.ENUM_CLASS || classKindE.a()) {
                descriptorVisibility = DescriptorVisibilities.f72366a;
                if (descriptorVisibility == null) {
                    DescriptorUtils.a(49);
                    throw null;
                }
            } else if (DescriptorUtils.o(classDescriptor)) {
                if (z) {
                    descriptorVisibility = DescriptorVisibilities.f72368c;
                    if (descriptorVisibility == null) {
                        DescriptorUtils.a(50);
                        throw null;
                    }
                } else {
                    descriptorVisibility = DescriptorVisibilities.f72366a;
                    if (descriptorVisibility == null) {
                        DescriptorUtils.a(51);
                        throw null;
                    }
                }
            } else if (DescriptorUtils.j(classDescriptor)) {
                descriptorVisibility = DescriptorVisibilities.l;
                if (descriptorVisibility == null) {
                    DescriptorUtils.a(52);
                    throw null;
                }
            } else {
                descriptorVisibility = DescriptorVisibilities.f72369e;
                if (descriptorVisibility == null) {
                    DescriptorUtils.a(53);
                    throw null;
                }
            }
            R0(list, descriptorVisibility);
        }

        public static /* synthetic */ void Z(int i2) {
            Object[] objArr = new Object[3];
            if (i2 != 1) {
                objArr[0] = "containingClass";
            } else {
                objArr[0] = Payload.SOURCE;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory$DefaultClassConstructorDescriptor";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }
    }

    public static /* synthetic */ void a(int i2) {
        String str = (i2 == 12 || i2 == 23 || i2 == 25) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i2 == 12 || i2 == 23 || i2 == 25) ? 2 : 3];
        switch (i2) {
            case 1:
            case 4:
            case 8:
            case 14:
            case 16:
            case 18:
            case 31:
            case 33:
            case 35:
                objArr[0] = "annotations";
                break;
            case 2:
            case 5:
            case 9:
                objArr[0] = "parameterAnnotations";
                break;
            case 3:
            case 7:
            case 13:
            case 15:
            case 17:
            default:
                objArr[0] = "propertyDescriptor";
                break;
            case 6:
            case 11:
            case 19:
                objArr[0] = "sourceElement";
                break;
            case 10:
                objArr[0] = "visibility";
                break;
            case 12:
            case 23:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
                break;
            case 20:
                objArr[0] = "containingClass";
                break;
            case 21:
                objArr[0] = Payload.SOURCE;
                break;
            case 22:
            case 24:
            case 26:
                objArr[0] = "enumClass";
                break;
            case 27:
            case 28:
            case 29:
                objArr[0] = "descriptor";
                break;
            case 30:
            case 32:
            case 34:
                objArr[0] = "owner";
                break;
        }
        if (i2 == 12) {
            objArr[1] = "createSetter";
        } else if (i2 == 23) {
            objArr[1] = "createEnumValuesMethod";
        } else if (i2 != 25) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
        } else {
            objArr[1] = "createEnumValueOfMethod";
        }
        switch (i2) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "createSetter";
                break;
            case 12:
            case 23:
            case 25:
                break;
            case 13:
            case 14:
                objArr[2] = "createDefaultGetter";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "createGetter";
                break;
            case 20:
            case 21:
                objArr[2] = "createPrimaryConstructorForObject";
                break;
            case 22:
                objArr[2] = "createEnumValuesMethod";
                break;
            case 24:
                objArr[2] = "createEnumValueOfMethod";
                break;
            case 26:
                objArr[2] = "createEnumEntriesProperty";
                break;
            case 27:
                objArr[2] = "isEnumValuesMethod";
                break;
            case 28:
                objArr[2] = "isEnumValueOfMethod";
                break;
            case 29:
                objArr[2] = "isEnumSpecialMethod";
                break;
            case 30:
            case 31:
                objArr[2] = "createExtensionReceiverParameterForCallable";
                break;
            case 32:
            case 33:
                objArr[2] = "createContextReceiverParameterForCallable";
                break;
            case 34:
            case 35:
                objArr[2] = "createContextReceiverParameterForClass";
                break;
            default:
                objArr[2] = "createDefaultSetter";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 12 && i2 != 23 && i2 != 25) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static ReceiverParameterDescriptorImpl b(CallableDescriptor callableDescriptor, KotlinType kotlinType, Name name, Annotations annotations, int i2) {
        if (callableDescriptor == null) {
            a(32);
            throw null;
        }
        if (annotations == null) {
            a(33);
            throw null;
        }
        if (kotlinType == null) {
            return null;
        }
        ContextReceiver contextReceiver = new ContextReceiver(callableDescriptor, kotlinType, name, null);
        Regex regex = NameUtils.f73689a;
        return new ReceiverParameterDescriptorImpl(callableDescriptor, contextReceiver, annotations, Name.e(NameUtils.f73690b + '_' + i2));
    }

    public static PropertyGetterDescriptorImpl c(Annotations annotations, PropertyDescriptor propertyDescriptor) {
        if (propertyDescriptor != null) {
            return i(propertyDescriptor, annotations, true, propertyDescriptor.getSource());
        }
        a(13);
        throw null;
    }

    public static PropertySetterDescriptorImpl d(Annotations annotations, PropertyDescriptor propertyDescriptor) {
        if (propertyDescriptor == null) {
            a(0);
            throw null;
        }
        SourceElement source = propertyDescriptor.getSource();
        if (source != null) {
            return k(propertyDescriptor, annotations, Annotations.Companion.f72432a, true, propertyDescriptor.getVisibility(), source);
        }
        a(6);
        throw null;
    }

    public static PropertyDescriptorImpl e(ClassDescriptor classDescriptor) {
        if (classDescriptor == null) {
            a(26);
            throw null;
        }
        ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(classDescriptor);
        ModuleCapability moduleCapability = StdlibClassFinderKt.f73859a;
        moduleDescriptorC.getClass();
        StdlibClassFinder stdlibClassFinder = (StdlibClassFinder) moduleDescriptorC.C0(StdlibClassFinderKt.f73859a);
        if (stdlibClassFinder == null) {
            stdlibClassFinder = CliStdlibClassFinderImpl.f73825a;
        }
        ClassDescriptor classDescriptorA = stdlibClassFinder.a(moduleDescriptorC);
        if (classDescriptorA == null) {
            return null;
        }
        Modality modality = Modality.FINAL;
        DescriptorVisibility descriptorVisibility = DescriptorVisibilities.f72369e;
        Name name = StandardNames.f72263b;
        CallableMemberDescriptor.Kind kind = CallableMemberDescriptor.Kind.SYNTHESIZED;
        PropertyDescriptorImpl propertyDescriptorImplH0 = PropertyDescriptorImpl.H0(classDescriptor, modality, descriptorVisibility, false, name, kind, classDescriptor.getSource());
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl = new PropertyGetterDescriptorImpl(propertyDescriptorImplH0, Annotations.Companion.f72432a, modality, descriptorVisibility, false, false, false, kind, null, classDescriptor.getSource());
        propertyDescriptorImplH0.J0(propertyGetterDescriptorImpl, null, null, null);
        TypeAttributes.f74232c.getClass();
        TypeAttributes typeAttributes = TypeAttributes.d;
        TypeConstructor typeConstructorJ = classDescriptorA.j();
        List listSingletonList = Collections.singletonList(new TypeProjectionImpl(classDescriptor.o()));
        typeAttributes.getClass();
        typeConstructorJ.getClass();
        listSingletonList.getClass();
        SimpleType simpleTypeD = KotlinTypeFactory.d(typeAttributes, typeConstructorJ, listSingletonList, false, null);
        List list = Collections.EMPTY_LIST;
        propertyDescriptorImplH0.L0(simpleTypeD, list, null, null, list);
        propertyGetterDescriptorImpl.H0(propertyDescriptorImplH0.getReturnType());
        return propertyDescriptorImplH0;
    }

    public static SimpleFunctionDescriptorImpl f(ClassDescriptor classDescriptor) {
        if (classDescriptor == null) {
            a(24);
            throw null;
        }
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplP0 = SimpleFunctionDescriptorImpl.P0(classDescriptor, StandardNames.f72264c, CallableMemberDescriptor.Kind.SYNTHESIZED, classDescriptor.getSource());
        Name nameE = Name.e("value");
        int i2 = DescriptorUtilsKt.f73888a;
        ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(classDescriptor);
        moduleDescriptorC.getClass();
        ValueParameterDescriptorImpl valueParameterDescriptorImpl = new ValueParameterDescriptorImpl(simpleFunctionDescriptorImplP0, null, 0, Annotations.Companion.f72432a, nameE, moduleDescriptorC.g().v(), false, false, false, null, classDescriptor.getSource());
        List list = Collections.EMPTY_LIST;
        return simpleFunctionDescriptorImplP0.J0(null, null, list, list, Collections.singletonList(valueParameterDescriptorImpl), classDescriptor.o(), Modality.FINAL, DescriptorVisibilities.f72369e);
    }

    public static SimpleFunctionDescriptorImpl g(ClassDescriptor classDescriptor) {
        if (classDescriptor == null) {
            a(22);
            throw null;
        }
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplP0 = SimpleFunctionDescriptorImpl.P0(classDescriptor, StandardNames.f72262a, CallableMemberDescriptor.Kind.SYNTHESIZED, classDescriptor.getSource());
        List list = Collections.EMPTY_LIST;
        int i2 = DescriptorUtilsKt.f73888a;
        ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(classDescriptor);
        moduleDescriptorC.getClass();
        return simpleFunctionDescriptorImplP0.J0(null, null, list, list, list, moduleDescriptorC.g().h(Variance.INVARIANT, classDescriptor.o()), Modality.FINAL, DescriptorVisibilities.f72369e);
    }

    public static ReceiverParameterDescriptorImpl h(CallableDescriptor callableDescriptor, KotlinType kotlinType, Annotations annotations) {
        if (kotlinType == null) {
            return null;
        }
        return new ReceiverParameterDescriptorImpl(callableDescriptor, new ExtensionReceiver(callableDescriptor, kotlinType, null), annotations);
    }

    public static PropertyGetterDescriptorImpl i(PropertyDescriptor propertyDescriptor, Annotations annotations, boolean z, SourceElement sourceElement) {
        if (propertyDescriptor == null) {
            a(17);
            throw null;
        }
        if (annotations == null) {
            a(18);
            throw null;
        }
        if (sourceElement != null) {
            return new PropertyGetterDescriptorImpl(propertyDescriptor, annotations, propertyDescriptor.q(), propertyDescriptor.getVisibility(), z, false, false, CallableMemberDescriptor.Kind.DECLARATION, null, sourceElement);
        }
        a(19);
        throw null;
    }

    public static ClassConstructorDescriptorImpl j(ClassDescriptor classDescriptor) {
        if (classDescriptor != null) {
            return new DefaultClassConstructorDescriptor(classDescriptor, SourceElement.f72405a, false);
        }
        a(20);
        throw null;
    }

    public static PropertySetterDescriptorImpl k(PropertyDescriptor propertyDescriptor, Annotations annotations, Annotations annotations2, boolean z, DescriptorVisibility descriptorVisibility, SourceElement sourceElement) {
        if (propertyDescriptor == null) {
            a(7);
            throw null;
        }
        if (annotations == null) {
            a(8);
            throw null;
        }
        if (annotations2 == null) {
            a(9);
            throw null;
        }
        if (descriptorVisibility == null) {
            a(10);
            throw null;
        }
        if (sourceElement == null) {
            a(11);
            throw null;
        }
        PropertySetterDescriptorImpl propertySetterDescriptorImpl = new PropertySetterDescriptorImpl(propertyDescriptor, annotations, propertyDescriptor.q(), descriptorVisibility, z, false, false, CallableMemberDescriptor.Kind.DECLARATION, null, sourceElement);
        propertySetterDescriptorImpl.n = PropertySetterDescriptorImpl.G0(propertySetterDescriptorImpl, propertyDescriptor.getType(), annotations2);
        return propertySetterDescriptorImpl;
    }

    public static boolean l(FunctionDescriptor functionDescriptor) {
        if (functionDescriptor.e() != CallableMemberDescriptor.Kind.SYNTHESIZED) {
            return false;
        }
        DeclarationDescriptor declarationDescriptorD = functionDescriptor.d();
        int i2 = DescriptorUtils.f73834a;
        return DescriptorUtils.l(declarationDescriptorD, ClassKind.ENUM_CLASS);
    }
}
