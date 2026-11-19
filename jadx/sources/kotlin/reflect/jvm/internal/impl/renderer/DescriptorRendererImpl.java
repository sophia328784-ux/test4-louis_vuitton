package kotlin.reflect.jvm.internal.impl.renderer;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.fc;
import defpackage.v40;
import defpackage.v7;
import io.jsonwebtoken.JwtParser;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ObservableProperty;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource;
import kotlin.reflect.jvm.internal.impl.descriptors.DelegatedDescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FieldDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PossiblyInnerType;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUseSiteTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyAccessorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.types.AbbreviatedType;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StubTypeForBuilderInference;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.WrappedType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class DescriptorRendererImpl extends DescriptorRenderer implements DescriptorRendererOptions {
    public static final /* synthetic */ int g = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DescriptorRendererOptionsImpl f73793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f73794f;

    public final class RenderDeclarationDescriptorVisitor implements DeclarationDescriptorVisitor<Unit, StringBuilder> {

        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f73806a;

            static {
                int[] iArr = new int[PropertyAccessorRenderingPolicy.values().length];
                try {
                    iArr[PropertyAccessorRenderingPolicy.PRETTY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[PropertyAccessorRenderingPolicy.DEBUG.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[PropertyAccessorRenderingPolicy.NONE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f73806a = iArr;
            }
        }

        public RenderDeclarationDescriptorVisitor() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object a(LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            int i2 = DescriptorRendererImpl.g;
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            descriptorRendererImpl.getClass();
            FqName fqName = lazyPackageViewDescriptorImpl.f72511e;
            sb.append(descriptorRendererImpl.K("package"));
            String strN = descriptorRendererImpl.n(fqName.f73679a);
            if (strN.length() > 0) {
                sb.append(" ");
                sb.append(strN);
            }
            if (descriptorRendererImpl.f73793e.o()) {
                sb.append(" in context of ");
                descriptorRendererImpl.Q(lazyPackageViewDescriptorImpl.d, sb, false);
            }
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object b(AbstractTypeAliasDescriptor abstractTypeAliasDescriptor, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            int i2 = DescriptorRendererImpl.g;
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            descriptorRendererImpl.getClass();
            descriptorRendererImpl.A(sb, abstractTypeAliasDescriptor, null);
            DescriptorVisibility descriptorVisibility = abstractTypeAliasDescriptor.g;
            descriptorVisibility.getClass();
            descriptorRendererImpl.i0(descriptorVisibility, sb);
            descriptorRendererImpl.M(abstractTypeAliasDescriptor, sb);
            sb.append(descriptorRendererImpl.K("typealias"));
            sb.append(" ");
            descriptorRendererImpl.Q(abstractTypeAliasDescriptor, sb, true);
            descriptorRendererImpl.d0(abstractTypeAliasDescriptor.p(), sb, false);
            descriptorRendererImpl.C(abstractTypeAliasDescriptor, sb);
            sb.append(" = ");
            sb.append(descriptorRendererImpl.Y(((DeserializedTypeAliasDescriptor) abstractTypeAliasDescriptor).m0()));
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object c(ModuleAwareClassDescriptor moduleAwareClassDescriptor, Object obj) {
            ClassConstructorDescriptor classConstructorDescriptorY;
            String str;
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            final DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = descriptorRendererImpl.f73793e;
            boolean z = moduleAwareClassDescriptor.e() == ClassKind.ENUM_ENTRY;
            if (!descriptorRendererImpl.t()) {
                List listS = moduleAwareClassDescriptor.S();
                listS.getClass();
                descriptorRendererImpl.E(sb, listS);
                descriptorRendererImpl.A(sb, moduleAwareClassDescriptor, null);
                if (!z) {
                    DescriptorVisibility visibility = moduleAwareClassDescriptor.getVisibility();
                    visibility.getClass();
                    descriptorRendererImpl.i0(visibility, sb);
                }
                if ((moduleAwareClassDescriptor.e() != ClassKind.INTERFACE || moduleAwareClassDescriptor.q() != Modality.ABSTRACT) && (!moduleAwareClassDescriptor.e().a() || moduleAwareClassDescriptor.q() != Modality.FINAL)) {
                    Modality modalityQ = moduleAwareClassDescriptor.q();
                    modalityQ.getClass();
                    descriptorRendererImpl.N(modalityQ, sb, DescriptorRendererImpl.x(moduleAwareClassDescriptor));
                }
                descriptorRendererImpl.M(moduleAwareClassDescriptor, sb);
                descriptorRendererImpl.P(sb, descriptorRendererImpl.s().contains(DescriptorRendererModifier.INNER) && moduleAwareClassDescriptor.k(), "inner");
                descriptorRendererImpl.P(sb, descriptorRendererImpl.s().contains(DescriptorRendererModifier.DATA) && moduleAwareClassDescriptor.D0(), DbParams.KEY_DATA);
                descriptorRendererImpl.P(sb, descriptorRendererImpl.s().contains(DescriptorRendererModifier.INLINE) && moduleAwareClassDescriptor.isInline(), "inline");
                descriptorRendererImpl.P(sb, descriptorRendererImpl.s().contains(DescriptorRendererModifier.VALUE) && moduleAwareClassDescriptor.r(), "value");
                descriptorRendererImpl.P(sb, descriptorRendererImpl.s().contains(DescriptorRendererModifier.FUN) && moduleAwareClassDescriptor.W(), "fun");
                DescriptorRenderer.f73777a.getClass();
                if (moduleAwareClassDescriptor instanceof TypeAliasDescriptor) {
                    str = "typealias";
                } else if (moduleAwareClassDescriptor.T()) {
                    str = "companion object";
                } else {
                    switch (DescriptorRenderer.Companion.WhenMappings.f73791a[moduleAwareClassDescriptor.e().ordinal()]) {
                        case 1:
                            str = "class";
                            break;
                        case 2:
                            str = "interface";
                            break;
                        case 3:
                            str = "enum class";
                            break;
                        case 4:
                            str = "object";
                            break;
                        case 5:
                            str = "annotation class";
                            break;
                        case 6:
                            str = "enum entry";
                            break;
                        default:
                            v40.g();
                            return null;
                    }
                }
                sb.append(descriptorRendererImpl.K(str));
            }
            if (DescriptorUtils.k(moduleAwareClassDescriptor)) {
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.G;
                KProperty kProperty = DescriptorRendererOptionsImpl.Y[31];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
                kProperty.getClass();
                if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
                    if (descriptorRendererImpl.t()) {
                        sb.append("companion object");
                    }
                    DescriptorRendererImpl.X(sb);
                    DeclarationDescriptor declarationDescriptorD = moduleAwareClassDescriptor.d();
                    if (declarationDescriptorD != null) {
                        sb.append("of ");
                        Name name = declarationDescriptorD.getName();
                        name.getClass();
                        sb.append(descriptorRendererImpl.o(name, false));
                    }
                }
                if (descriptorRendererImpl.w() || !Intrinsics.c(moduleAwareClassDescriptor.getName(), SpecialNames.f73692b)) {
                    if (!descriptorRendererImpl.t()) {
                        DescriptorRendererImpl.X(sb);
                    }
                    Name name2 = moduleAwareClassDescriptor.getName();
                    name2.getClass();
                    sb.append(descriptorRendererImpl.o(name2, true));
                }
            } else {
                if (!descriptorRendererImpl.t()) {
                    DescriptorRendererImpl.X(sb);
                }
                descriptorRendererImpl.Q(moduleAwareClassDescriptor, sb, true);
            }
            if (!z) {
                List listP = moduleAwareClassDescriptor.p();
                listP.getClass();
                descriptorRendererImpl.d0(listP, sb, false);
                descriptorRendererImpl.C(moduleAwareClassDescriptor, sb);
                if (!moduleAwareClassDescriptor.e().a()) {
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.f73815i;
                    KProperty kProperty2 = DescriptorRendererOptionsImpl.Y[7];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
                    kProperty2.getClass();
                    if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a).booleanValue() && (classConstructorDescriptorY = moduleAwareClassDescriptor.y()) != null) {
                        sb.append(" ");
                        descriptorRendererImpl.A(sb, classConstructorDescriptorY, null);
                        DescriptorVisibility visibility2 = classConstructorDescriptorY.getVisibility();
                        visibility2.getClass();
                        descriptorRendererImpl.i0(visibility2, sb);
                        sb.append(descriptorRendererImpl.K("constructor"));
                        List listH = classConstructorDescriptorY.h();
                        listH.getClass();
                        descriptorRendererImpl.h0(listH, classConstructorDescriptorY.Y(), sb);
                    }
                }
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$3 = descriptorRendererOptionsImpl.x;
                KProperty kProperty3 = DescriptorRendererOptionsImpl.Y[22];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$3.getClass();
                kProperty3.getClass();
                if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$3.f71939a).booleanValue() && !KotlinBuiltIns.F(moduleAwareClassDescriptor.o())) {
                    Collection collectionI = moduleAwareClassDescriptor.j().i();
                    collectionI.getClass();
                    if (!collectionI.isEmpty() && (collectionI.size() != 1 || !KotlinBuiltIns.y((KotlinType) collectionI.iterator().next()))) {
                        DescriptorRendererImpl.X(sb);
                        sb.append(": ");
                        CollectionsKt.J(collectionI, sb, ", ", null, null, new Function1(descriptorRendererImpl) { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$$Lambda$6

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final DescriptorRendererImpl f73803b;

                            {
                                this.f73803b = descriptorRendererImpl;
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                KotlinType kotlinType = (KotlinType) obj2;
                                int i2 = DescriptorRendererImpl.g;
                                kotlinType.getClass();
                                return this.f73803b.Y(kotlinType);
                            }
                        }, 60);
                    }
                }
                descriptorRendererImpl.j0(sb, listP);
            }
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object d(ModuleDescriptorImpl moduleDescriptorImpl, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            int i2 = DescriptorRendererImpl.g;
            DescriptorRendererImpl.this.Q(moduleDescriptorImpl, sb, true);
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object e(PropertySetterDescriptorImpl propertySetterDescriptorImpl, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            o(propertySetterDescriptorImpl, sb, "setter");
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object f(PropertyGetterDescriptorImpl propertyGetterDescriptorImpl, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            o(propertyGetterDescriptorImpl, sb, "getter");
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object g(PropertyDescriptorImpl propertyDescriptorImpl, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            propertyDescriptorImpl.getClass();
            sb.getClass();
            DescriptorRendererImpl.p(DescriptorRendererImpl.this, propertyDescriptorImpl, sb);
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object h(ValueParameterDescriptorImpl valueParameterDescriptorImpl, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            int i2 = DescriptorRendererImpl.g;
            DescriptorRendererImpl.this.g0(valueParameterDescriptorImpl, true, sb, true);
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object i(PackageFragmentDescriptorImpl packageFragmentDescriptorImpl, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            int i2 = DescriptorRendererImpl.g;
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            descriptorRendererImpl.getClass();
            FqName fqName = packageFragmentDescriptorImpl.f72537f;
            sb.append(descriptorRendererImpl.K("package-fragment"));
            String strN = descriptorRendererImpl.n(fqName.f73679a);
            if (strN.length() > 0) {
                sb.append(" ");
                sb.append(strN);
            }
            if (descriptorRendererImpl.f73793e.o()) {
                sb.append(" in ");
                descriptorRendererImpl.Q(packageFragmentDescriptorImpl.d(), sb, false);
            }
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object j(AbstractReceiverParameterDescriptor abstractReceiverParameterDescriptor, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            sb.append(abstractReceiverParameterDescriptor.getName());
            return Unit.f71739a;
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0049  */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object k(ClassConstructorDescriptorImpl classConstructorDescriptorImpl, Object obj) {
            boolean z;
            ClassConstructorDescriptor classConstructorDescriptorY;
            boolean z2 = classConstructorDescriptorImpl.F;
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            int i2 = DescriptorRendererImpl.g;
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            descriptorRendererImpl.getClass();
            descriptorRendererImpl.A(sb, classConstructorDescriptorImpl, null);
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = descriptorRendererImpl.f73793e;
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.o;
            KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.Y;
            KProperty kProperty = kPropertyArr[13];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue() || classConstructorDescriptorImpl.V().q() != Modality.SEALED) {
                DescriptorVisibility visibility = classConstructorDescriptorImpl.getVisibility();
                visibility.getClass();
                if (descriptorRendererImpl.i0(visibility, sb)) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            descriptorRendererImpl.L(classConstructorDescriptorImpl, sb);
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.P;
            KProperty kProperty2 = kPropertyArr[40];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
            kProperty2.getClass();
            boolean z3 = ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a).booleanValue() || !z2 || z;
            if (z3) {
                sb.append(descriptorRendererImpl.K("constructor"));
            }
            ClassDescriptor classDescriptorQ0 = classConstructorDescriptorImpl.d();
            classDescriptorQ0.getClass();
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$3 = descriptorRendererOptionsImpl.A;
            KProperty kProperty3 = kPropertyArr[25];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$3.getClass();
            kProperty3.getClass();
            if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$3.f71939a).booleanValue()) {
                if (z3) {
                    sb.append(" ");
                }
                descriptorRendererImpl.Q(classDescriptorQ0, sb, true);
                descriptorRendererImpl.d0(classConstructorDescriptorImpl.getTypeParameters(), sb, false);
            }
            List listH = classConstructorDescriptorImpl.h();
            listH.getClass();
            descriptorRendererImpl.h0(listH, classConstructorDescriptorImpl.Y(), sb);
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$4 = descriptorRendererOptionsImpl.q;
            KProperty kProperty4 = kPropertyArr[15];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$4.getClass();
            kProperty4.getClass();
            if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$4.f71939a).booleanValue() && !z2 && (classConstructorDescriptorY = classDescriptorQ0.y()) != null) {
                List listH2 = classConstructorDescriptorY.h();
                listH2.getClass();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : listH2) {
                    ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) obj2;
                    if (!valueParameterDescriptor.u0() && valueParameterDescriptor.o0() == null) {
                        arrayList.add(obj2);
                    }
                }
                if (!arrayList.isEmpty()) {
                    sb.append(" : ");
                    sb.append(descriptorRendererImpl.K("this"));
                    sb.append(CollectionsKt.K(arrayList, ", ", "(", ")", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$$Lambda$5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            int i3 = DescriptorRendererImpl.g;
                            return "";
                        }
                    }, 24));
                }
            }
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$5 = descriptorRendererOptionsImpl.A;
            KProperty kProperty5 = DescriptorRendererOptionsImpl.Y[25];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$5.getClass();
            kProperty5.getClass();
            if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$5.f71939a).booleanValue()) {
                descriptorRendererImpl.j0(sb, classConstructorDescriptorImpl.getTypeParameters());
            }
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final /* bridge */ /* synthetic */ Object l(FunctionDescriptor functionDescriptor, Object obj) {
            n(functionDescriptor, (StringBuilder) obj);
            return Unit.f71739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
        public final Object m(AbstractTypeParameterDescriptor abstractTypeParameterDescriptor, Object obj) {
            StringBuilder sb = (StringBuilder) obj;
            sb.getClass();
            int i2 = DescriptorRendererImpl.g;
            DescriptorRendererImpl.this.b0(abstractTypeParameterDescriptor, sb, true);
            return Unit.f71739a;
        }

        /* JADX WARN: Code duplicated, block: B:24:0x00be  */
        /* JADX WARN: Code duplicated, block: B:56:0x01be  */
        /* JADX WARN: Code duplicated, block: B:58:0x01c5  */
        /* JADX WARN: Code duplicated, block: B:59:0x01c8  */
        public final void n(FunctionDescriptor functionDescriptor, StringBuilder sb) {
            String strY;
            boolean z;
            sb.getClass();
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = descriptorRendererImpl.f73793e;
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl2 = descriptorRendererImpl.f73793e;
            if (!descriptorRendererImpl.t()) {
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl2.g;
                KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.Y;
                KProperty kProperty = kPropertyArr[5];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
                kProperty.getClass();
                if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
                    List listR0 = functionDescriptor.r0();
                    listR0.getClass();
                    descriptorRendererImpl.E(sb, listR0);
                    descriptorRendererImpl.A(sb, functionDescriptor, null);
                    DescriptorVisibility visibility = functionDescriptor.getVisibility();
                    visibility.getClass();
                    descriptorRendererImpl.i0(visibility, sb);
                    descriptorRendererImpl.O(functionDescriptor, sb);
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl2.T;
                    KProperty kProperty2 = kPropertyArr[44];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
                    kProperty2.getClass();
                    if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a).booleanValue()) {
                        descriptorRendererImpl.M(functionDescriptor, sb);
                    }
                    descriptorRendererImpl.T(functionDescriptor, sb);
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$3 = descriptorRendererOptionsImpl2.T;
                    KProperty kProperty3 = kPropertyArr[44];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$3.getClass();
                    kProperty3.getClass();
                    if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$3.f71939a).booleanValue()) {
                        boolean z2 = false;
                        if (functionDescriptor.isOperator()) {
                            Collection collectionI = functionDescriptor.i();
                            collectionI.getClass();
                            Collection collection = collectionI;
                            if (!collection.isEmpty()) {
                                Iterator it = collection.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        if (((FunctionDescriptor) it.next()).isOperator()) {
                                            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$4 = descriptorRendererOptionsImpl2.O;
                                            KProperty kProperty4 = DescriptorRendererOptionsImpl.Y[39];
                                            descriptorRendererOptionsImpl$property$$inlined$vetoable$4.getClass();
                                            kProperty4.getClass();
                                            if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$4.f71939a).booleanValue()) {
                                                z = false;
                                            }
                                        }
                                    }
                                }
                            }
                            z = true;
                        } else {
                            z = false;
                        }
                        if (functionDescriptor.isInfix()) {
                            Collection collectionI2 = functionDescriptor.i();
                            collectionI2.getClass();
                            Collection collection2 = collectionI2;
                            if (!collection2.isEmpty()) {
                                Iterator it2 = collection2.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        if (((FunctionDescriptor) it2.next()).isInfix()) {
                                            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$5 = descriptorRendererOptionsImpl2.O;
                                            KProperty kProperty5 = DescriptorRendererOptionsImpl.Y[39];
                                            descriptorRendererOptionsImpl$property$$inlined$vetoable$5.getClass();
                                            kProperty5.getClass();
                                            if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$5.f71939a).booleanValue()) {
                                                break;
                                            } else {
                                                break;
                                            }
                                        }
                                    }
                                    z2 = true;
                                    break;
                                }
                            }
                            z2 = true;
                            break;
                        }
                        descriptorRendererImpl.P(sb, functionDescriptor.x(), "tailrec");
                        descriptorRendererImpl.P(sb, functionDescriptor.isSuspend(), "suspend");
                        descriptorRendererImpl.P(sb, functionDescriptor.isInline(), "inline");
                        descriptorRendererImpl.P(sb, z2, "infix");
                        descriptorRendererImpl.P(sb, z, "operator");
                    } else {
                        descriptorRendererImpl.P(sb, functionDescriptor.isSuspend(), "suspend");
                    }
                    descriptorRendererImpl.L(functionDescriptor, sb);
                    if (descriptorRendererImpl.w()) {
                        if (functionDescriptor.w0()) {
                            sb.append("/*isHiddenToOvercomeSignatureClash*/ ");
                        }
                        if (functionDescriptor.z0()) {
                            sb.append("/*isHiddenForResolutionEverywhereBesideSupercalls*/ ");
                        }
                    }
                }
                sb.append(descriptorRendererImpl.K("fun"));
                sb.append(" ");
                List typeParameters = functionDescriptor.getTypeParameters();
                typeParameters.getClass();
                descriptorRendererImpl.d0(typeParameters, sb, true);
                descriptorRendererImpl.V(functionDescriptor, sb);
            }
            descriptorRendererImpl.Q(functionDescriptor, sb, true);
            List listH = functionDescriptor.h();
            listH.getClass();
            descriptorRendererImpl.h0(listH, functionDescriptor.Y(), sb);
            descriptorRendererImpl.W(functionDescriptor, sb);
            KotlinType returnType = functionDescriptor.getReturnType();
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$6 = descriptorRendererOptionsImpl.l;
            KProperty[] kPropertyArr2 = DescriptorRendererOptionsImpl.Y;
            KProperty kProperty6 = kPropertyArr2[10];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$6.getClass();
            kProperty6.getClass();
            if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$6.f71939a).booleanValue()) {
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$7 = descriptorRendererOptionsImpl.f73817k;
                KProperty kProperty7 = kPropertyArr2[9];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$7.getClass();
                kProperty7.getClass();
                if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$7.f71939a).booleanValue() || returnType == null) {
                    sb.append(": ");
                    if (returnType == null) {
                        strY = "[NULL]";
                    } else {
                        strY = descriptorRendererImpl.Y(returnType);
                    }
                    sb.append(strY);
                } else {
                    Name name = KotlinBuiltIns.f72242f;
                    if (!KotlinBuiltIns.E(returnType, StandardNames.FqNames.d)) {
                        sb.append(": ");
                        if (returnType == null) {
                            strY = "[NULL]";
                        } else {
                            strY = descriptorRendererImpl.Y(returnType);
                        }
                        sb.append(strY);
                    }
                }
            }
            List typeParameters2 = functionDescriptor.getTypeParameters();
            typeParameters2.getClass();
            descriptorRendererImpl.j0(sb, typeParameters2);
        }

        public final void o(PropertyAccessorDescriptorImpl propertyAccessorDescriptorImpl, StringBuilder sb, String str) {
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererImpl.f73793e.H;
            KProperty kProperty = DescriptorRendererOptionsImpl.Y[32];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            int i2 = WhenMappings.f73806a[((PropertyAccessorRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).ordinal()];
            if (i2 == 1) {
                descriptorRendererImpl.M(propertyAccessorDescriptorImpl, sb);
                sb.append(str.concat(" for "));
                PropertyDescriptor propertyDescriptorP = propertyAccessorDescriptorImpl.P();
                propertyDescriptorP.getClass();
                DescriptorRendererImpl.p(descriptorRendererImpl, propertyDescriptorP, sb);
                return;
            }
            if (i2 == 2) {
                n(propertyAccessorDescriptorImpl, sb);
            } else {
                if (i2 == 3) {
                    return;
                }
                v40.g();
            }
        }
    }

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73807a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f73808b;

        static {
            int[] iArr = new int[RenderingFormat.values().length];
            try {
                iArr[RenderingFormat.PLAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RenderingFormat.HTML.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f73807a = iArr;
            int[] iArr2 = new int[ParameterNameRenderingPolicy.values().length];
            try {
                iArr2[ParameterNameRenderingPolicy.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ParameterNameRenderingPolicy.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f73808b = iArr2;
        }
    }

    public DescriptorRendererImpl(DescriptorRendererOptionsImpl descriptorRendererOptionsImpl) {
        descriptorRendererOptionsImpl.getClass();
        this.f73793e = descriptorRendererOptionsImpl;
        this.f73794f = LazyKt.b(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorRendererImpl f73795b;

            {
                this.f73795b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws IllegalAccessException {
                int i2 = DescriptorRendererImpl.g;
                DescriptorRendererImpl$$Lambda$7 descriptorRendererImpl$$Lambda$7 = DescriptorRendererImpl$$Lambda$7.f73804b;
                DescriptorRendererImpl descriptorRendererImpl = this.f73795b;
                descriptorRendererImpl.getClass();
                descriptorRendererImpl$$Lambda$7.getClass();
                DescriptorRendererOptionsImpl descriptorRendererOptionsImpl2 = descriptorRendererImpl.f73793e;
                descriptorRendererOptionsImpl2.getClass();
                DescriptorRendererOptionsImpl descriptorRendererOptionsImpl3 = new DescriptorRendererOptionsImpl();
                Field[] declaredFields = DescriptorRendererOptionsImpl.class.getDeclaredFields();
                declaredFields.getClass();
                for (Field field : declaredFields) {
                    if ((field.getModifiers() & 8) == 0) {
                        field.setAccessible(true);
                        Object obj = field.get(descriptorRendererOptionsImpl2);
                        ObservableProperty observableProperty = obj instanceof ObservableProperty ? (ObservableProperty) obj : null;
                        if (observableProperty != null) {
                            String name = field.getName();
                            name.getClass();
                            StringsKt.P(name, "is", false);
                            KClass kClassB = Reflection.f71922a.b(DescriptorRendererOptionsImpl.class);
                            String name2 = field.getName();
                            String name3 = field.getName();
                            name3.getClass();
                            if (name3.length() > 0) {
                                name3 = Character.toUpperCase(name3.charAt(0)) + name3.substring(1);
                            }
                            new PropertyReference1Impl(kClassB, name2, "get".concat(name3));
                            field.set(descriptorRendererOptionsImpl3, new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(observableProperty.f71939a, descriptorRendererOptionsImpl3));
                        }
                    }
                }
                descriptorRendererImpl$$Lambda$7.invoke(descriptorRendererOptionsImpl3);
                descriptorRendererOptionsImpl3.f73809a = true;
                return new DescriptorRendererImpl(descriptorRendererOptionsImpl3);
            }
        });
    }

    public static void X(StringBuilder sb) {
        int length = sb.length();
        if (length == 0 || sb.charAt(length - 1) != ' ') {
            sb.append(' ');
        }
    }

    public static boolean k0(KotlinType kotlinType) {
        if (!FunctionTypesKt.h(kotlinType)) {
            return false;
        }
        List listF0 = kotlinType.F0();
        if ((listF0 instanceof Collection) && listF0.isEmpty()) {
            return true;
        }
        Iterator it = listF0.iterator();
        while (it.hasNext()) {
            if (((TypeProjection) it.next()).a()) {
                return false;
            }
        }
        return true;
    }

    public static final void p(DescriptorRendererImpl descriptorRendererImpl, PropertyDescriptor propertyDescriptor, StringBuilder sb) {
        boolean zT = descriptorRendererImpl.t();
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = descriptorRendererImpl.f73793e;
        if (!zT) {
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.g;
            KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.Y;
            KProperty kProperty = kPropertyArr[5];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
                List listR0 = propertyDescriptor.r0();
                listR0.getClass();
                descriptorRendererImpl.E(sb, listR0);
                if (descriptorRendererImpl.s().contains(DescriptorRendererModifier.ANNOTATIONS)) {
                    descriptorRendererImpl.A(sb, propertyDescriptor, null);
                    FieldDescriptor fieldDescriptorQ0 = propertyDescriptor.q0();
                    if (fieldDescriptorQ0 != null) {
                        descriptorRendererImpl.A(sb, fieldDescriptorQ0, AnnotationUseSiteTarget.FIELD);
                    }
                    FieldDescriptor fieldDescriptorK = propertyDescriptor.K();
                    if (fieldDescriptorK != null) {
                        descriptorRendererImpl.A(sb, fieldDescriptorK, AnnotationUseSiteTarget.PROPERTY_DELEGATE_FIELD);
                    }
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.H;
                    KProperty kProperty2 = kPropertyArr[32];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
                    kProperty2.getClass();
                    if (((PropertyAccessorRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a) == PropertyAccessorRenderingPolicy.NONE) {
                        PropertyGetterDescriptorImpl getter = propertyDescriptor.getGetter();
                        if (getter != null) {
                            descriptorRendererImpl.A(sb, getter, AnnotationUseSiteTarget.PROPERTY_GETTER);
                        }
                        PropertySetterDescriptor setter = propertyDescriptor.getSetter();
                        if (setter != null) {
                            descriptorRendererImpl.A(sb, setter, AnnotationUseSiteTarget.PROPERTY_SETTER);
                            List listH = setter.h();
                            listH.getClass();
                            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) CollectionsKt.h0(listH);
                            valueParameterDescriptor.getClass();
                            descriptorRendererImpl.A(sb, valueParameterDescriptor, AnnotationUseSiteTarget.SETTER_PARAMETER);
                        }
                    }
                }
                DescriptorVisibility visibility = propertyDescriptor.getVisibility();
                visibility.getClass();
                descriptorRendererImpl.i0(visibility, sb);
                descriptorRendererImpl.P(sb, descriptorRendererImpl.s().contains(DescriptorRendererModifier.CONST) && propertyDescriptor.isConst(), "const");
                descriptorRendererImpl.M(propertyDescriptor, sb);
                descriptorRendererImpl.O(propertyDescriptor, sb);
                descriptorRendererImpl.T(propertyDescriptor, sb);
                descriptorRendererImpl.P(sb, descriptorRendererImpl.s().contains(DescriptorRendererModifier.LATEINIT) && propertyDescriptor.s0(), "lateinit");
                descriptorRendererImpl.L(propertyDescriptor, sb);
            }
            descriptorRendererImpl.f0(propertyDescriptor, sb, false);
            List typeParameters = propertyDescriptor.getTypeParameters();
            typeParameters.getClass();
            descriptorRendererImpl.d0(typeParameters, sb, true);
            descriptorRendererImpl.V(propertyDescriptor, sb);
        }
        descriptorRendererImpl.Q(propertyDescriptor, sb, true);
        sb.append(": ");
        KotlinType type = propertyDescriptor.getType();
        type.getClass();
        sb.append(descriptorRendererImpl.Y(type));
        descriptorRendererImpl.W(propertyDescriptor, sb);
        descriptorRendererImpl.J(propertyDescriptor, sb);
        List typeParameters2 = propertyDescriptor.getTypeParameters();
        typeParameters2.getClass();
        descriptorRendererImpl.j0(sb, typeParameters2);
    }

    public static Modality x(MemberDescriptor memberDescriptor) {
        if (memberDescriptor instanceof ClassDescriptor) {
            return ((ClassDescriptor) memberDescriptor).e() == ClassKind.INTERFACE ? Modality.ABSTRACT : Modality.FINAL;
        }
        DeclarationDescriptor declarationDescriptorD = memberDescriptor.d();
        ClassDescriptor classDescriptor = declarationDescriptorD instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptorD : null;
        if (classDescriptor != null && (memberDescriptor instanceof CallableMemberDescriptor)) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) memberDescriptor;
            Collection collectionI = callableMemberDescriptor.i();
            collectionI.getClass();
            if (!collectionI.isEmpty() && classDescriptor.q() != Modality.FINAL) {
                return Modality.OPEN;
            }
            if (classDescriptor.e() != ClassKind.INTERFACE || Intrinsics.c(callableMemberDescriptor.getVisibility(), DescriptorVisibilities.f72366a)) {
                return Modality.FINAL;
            }
            Modality modalityQ = callableMemberDescriptor.q();
            Modality modality = Modality.ABSTRACT;
            return modalityQ == modality ? modality : Modality.OPEN;
        }
        return Modality.FINAL;
    }

    public final void A(StringBuilder sb, Annotated annotated, AnnotationUseSiteTarget annotationUseSiteTarget) {
        Set setG;
        if (s().contains(DescriptorRendererModifier.ANNOTATIONS)) {
            boolean z = annotated instanceof KotlinType;
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.f73793e;
            if (z) {
                setG = descriptorRendererOptionsImpl.g();
            } else {
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.K;
                KProperty kProperty = DescriptorRendererOptionsImpl.Y[35];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
                kProperty.getClass();
                setG = (Set) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a;
            }
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.M;
            KProperty kProperty2 = DescriptorRendererOptionsImpl.Y[37];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
            kProperty2.getClass();
            Function1 function1 = (Function1) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a;
            for (AnnotationDescriptor annotationDescriptor : annotated.getAnnotations()) {
                if (!CollectionsKt.u(setG, annotationDescriptor.c()) && !Intrinsics.c(annotationDescriptor.c(), StandardNames.FqNames.r) && (function1 == null || ((Boolean) function1.invoke(annotationDescriptor)).booleanValue())) {
                    sb.append(z(annotationDescriptor, annotationUseSiteTarget));
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$3 = descriptorRendererOptionsImpl.J;
                    KProperty kProperty3 = DescriptorRendererOptionsImpl.Y[34];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$3.getClass();
                    kProperty3.getClass();
                    if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$3.f71939a).booleanValue()) {
                        sb.append('\n');
                    } else {
                        sb.append(" ");
                    }
                }
            }
        }
    }

    public final void C(ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters, StringBuilder sb) {
        List listP = classifierDescriptorWithTypeParameters.p();
        listP.getClass();
        List parameters = classifierDescriptorWithTypeParameters.j().getParameters();
        parameters.getClass();
        if (w() && classifierDescriptorWithTypeParameters.k() && parameters.size() > listP.size()) {
            sb.append(" /*captured type parameters: ");
            c0(sb, parameters.subList(listP.size(), parameters.size()));
            sb.append("*/");
        }
    }

    public final String D(ConstantValue constantValue) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.v;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[20];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        Function1 function1 = (Function1) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a;
        if (function1 != null) {
            return (String) function1.invoke(constantValue);
        }
        if (constantValue instanceof ArrayValue) {
            Iterable iterable = (Iterable) ((ArrayValue) constantValue).f73869a;
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                String strD = D((ConstantValue) it.next());
                if (strD != null) {
                    arrayList.add(strD);
                }
            }
            return CollectionsKt.K(arrayList, ", ", "{", "}", null, 56);
        }
        if (constantValue instanceof AnnotationValue) {
            return StringsKt.E(z((AnnotationDescriptor) ((AnnotationValue) constantValue).f73869a, null), "@");
        }
        if (!(constantValue instanceof KClassValue)) {
            return constantValue.toString();
        }
        KClassValue.Value value = (KClassValue.Value) ((KClassValue) constantValue).f73869a;
        if (value instanceof KClassValue.Value.LocalClass) {
            return ((KClassValue.Value.LocalClass) value).f73883a + "::class";
        }
        if (!(value instanceof KClassValue.Value.NormalClass)) {
            v40.g();
            return null;
        }
        ClassLiteralValue classLiteralValue = ((KClassValue.Value.NormalClass) value).f73884a;
        String strD2 = classLiteralValue.f73867a.a().f73679a.f73683a;
        int i2 = classLiteralValue.f73868b;
        for (int i3 = 0; i3 < i2; i3++) {
            strD2 = d21.d('>', "kotlin.Array<", strD2);
        }
        return d21.j(strD2, "::class");
    }

    public final void E(StringBuilder sb, List list) {
        if (list.isEmpty()) {
            return;
        }
        sb.append("context(");
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int i3 = i2 + 1;
            KotlinType type = ((ReceiverParameterDescriptor) it.next()).getType();
            type.getClass();
            sb.append(I(type, true));
            if (i2 == CollectionsKt.F(list)) {
                sb.append(") ");
            } else {
                sb.append(", ");
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0066 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    /* JADX WARN: Code duplicated, block: B:24:0x0080  */
    /* JADX WARN: Code duplicated, block: B:25:0x0089  */
    public final void F(StringBuilder sb, SimpleType simpleType) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1;
        A(sb, simpleType, null);
        boolean z = simpleType instanceof DefinitelyNotNullType;
        DefinitelyNotNullType definitelyNotNullType = z ? (DefinitelyNotNullType) simpleType : null;
        SimpleType simpleType2 = definitelyNotNullType != null ? definitelyNotNullType.f74183c : null;
        if (KotlinTypeKt.a(simpleType)) {
            boolean z2 = simpleType instanceof ErrorType;
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.f73793e;
            if (z2 && ((ErrorType) simpleType).f74304e.b()) {
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.V;
                KProperty kProperty = DescriptorRendererOptionsImpl.Y[47];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
                kProperty.getClass();
                if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a).booleanValue()) {
                    ErrorModuleDescriptor errorModuleDescriptor = ErrorUtils.f74310a;
                    if (z2) {
                        ((ErrorType) simpleType).f74304e.b();
                    }
                    TypeConstructor typeConstructorH0 = simpleType.H0();
                    typeConstructorH0.getClass();
                    sb.append(G(((ErrorTypeConstructor) typeConstructorH0).f74309c[0]));
                } else {
                    if (z2) {
                        descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.X;
                        KProperty kProperty2 = DescriptorRendererOptionsImpl.Y[49];
                        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
                        kProperty2.getClass();
                        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
                            sb.append(simpleType.H0().toString());
                        } else {
                            sb.append(((ErrorType) simpleType).f74307i);
                        }
                    } else {
                        sb.append(simpleType.H0().toString());
                    }
                    sb.append(Z(simpleType.F0()));
                }
            } else {
                if (z2) {
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.X;
                    KProperty kProperty3 = DescriptorRendererOptionsImpl.Y[49];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
                    kProperty3.getClass();
                    if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
                        sb.append(((ErrorType) simpleType).f74307i);
                    } else {
                        sb.append(simpleType.H0().toString());
                    }
                } else {
                    sb.append(simpleType.H0().toString());
                }
                sb.append(Z(simpleType.F0()));
            }
        } else if (simpleType instanceof StubTypeForBuilderInference) {
            sb.append(((StubTypeForBuilderInference) simpleType).f74156c.toString());
        } else if (simpleType2 instanceof StubTypeForBuilderInference) {
            sb.append(((StubTypeForBuilderInference) simpleType2).f74156c.toString());
        } else {
            TypeConstructor typeConstructorH1 = simpleType.H0();
            ClassifierDescriptor classifierDescriptorY = simpleType.H0().y();
            PossiblyInnerType possiblyInnerTypeA = TypeParameterUtilsKt.a(simpleType, classifierDescriptorY instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) classifierDescriptorY : null, 0);
            if (possiblyInnerTypeA == null) {
                sb.append(a0(typeConstructorH1));
                sb.append(Z(simpleType.F0()));
            } else {
                U(sb, possiblyInnerTypeA);
            }
        }
        if (simpleType.I0()) {
            sb.append("?");
        }
        if (z) {
            sb.append(" & Any");
        }
    }

    public final String G(String str) {
        int i2 = WhenMappings.f73807a[u().ordinal()];
        if (i2 == 1) {
            return str;
        }
        if (i2 == 2) {
            return fc.h("<font color=red><b>", str, "</b></font>");
        }
        v40.g();
        return null;
    }

    public final String H(String str, String str2, final KotlinBuiltIns kotlinBuiltIns) {
        str.getClass();
        str2.getClass();
        kotlinBuiltIns.getClass();
        if (RenderingUtilsKt.f(str, str2)) {
            return StringsKt.P(str2, "(", false) ? fc.h("(", str, ")!") : str.concat("!");
        }
        String strB = RenderingUtilsKt.b(str, str2, new Function0(this, kotlinBuiltIns) { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorRendererImpl f73796b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final KotlinBuiltIns f73797c;

            {
                this.f73796b = this;
                this.f73797c = kotlinBuiltIns;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i2 = DescriptorRendererImpl.g;
                DescriptorRendererImpl descriptorRendererImpl = this.f73796b;
                ClassifierNamePolicy classifierNamePolicyR = descriptorRendererImpl.r();
                KotlinBuiltIns kotlinBuiltIns2 = this.f73797c;
                kotlinBuiltIns2.getClass();
                ClassDescriptor classDescriptorJ = kotlinBuiltIns2.j(StandardNames.FqNames.C);
                if (classDescriptorJ != null) {
                    return StringsKt.U(classifierNamePolicyR.a(classDescriptorJ, descriptorRendererImpl), "Collection");
                }
                KotlinBuiltIns.a(35);
                throw null;
            }
        }, new Function0(this, kotlinBuiltIns) { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorRendererImpl f73798b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final KotlinBuiltIns f73799c;

            {
                this.f73798b = this;
                this.f73799c = kotlinBuiltIns;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i2 = DescriptorRendererImpl.g;
                DescriptorRendererImpl descriptorRendererImpl = this.f73798b;
                ClassifierNamePolicy classifierNamePolicyR = descriptorRendererImpl.r();
                ClassDescriptor classDescriptorK = this.f73799c.k("Array");
                classDescriptorK.getClass();
                return StringsKt.U(classifierNamePolicyR.a(classDescriptorK, descriptorRendererImpl), "Array");
            }
        }, new DescriptorRendererImpl$renderFlexibleType$3(1, this, DescriptorRendererImpl.class, "escape", "escape(Ljava/lang/String;)Ljava/lang/String;", 0));
        if (strB != null) {
            return strB;
        }
        return "(" + str + ".." + str2 + ')';
    }

    public final String I(KotlinType kotlinType, boolean z) {
        String strY = Y(kotlinType);
        return ((!k0(kotlinType) || TypeUtils.g(kotlinType)) && !(kotlinType instanceof DefinitelyNotNullType) && (!z || kotlinType.getAnnotations().isEmpty())) ? strY : d21.d(')', "(", strY);
    }

    public final void J(VariableDescriptor variableDescriptor, StringBuilder sb) {
        ConstantValue constantValueG0;
        String strD;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.u;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[19];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue() || (constantValueG0 = variableDescriptor.g0()) == null || (strD = D(constantValueG0)) == null) {
            return;
        }
        sb.append(" = ");
        sb.append(q(strD));
    }

    public final String K(String str) {
        int i2 = WhenMappings.f73807a[u().ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.W;
            KProperty kProperty = DescriptorRendererOptionsImpl.Y[48];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
                return fc.h("<b>", str, "</b>");
            }
        }
        return str;
    }

    public final void L(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (s().contains(DescriptorRendererModifier.MEMBER_KIND) && w() && callableMemberDescriptor.e() != CallableMemberDescriptor.Kind.DECLARATION) {
            sb.append("/*");
            sb.append(CapitalizeDecapitalizeKt.c(callableMemberDescriptor.e().name()));
            sb.append("*/ ");
        }
    }

    public final void M(MemberDescriptor memberDescriptor, StringBuilder sb) {
        P(sb, memberDescriptor.isExternal(), "external");
        boolean z = false;
        P(sb, s().contains(DescriptorRendererModifier.EXPECT) && memberDescriptor.c0(), "expect");
        if (s().contains(DescriptorRendererModifier.ACTUAL) && memberDescriptor.R()) {
            z = true;
        }
        P(sb, z, "actual");
    }

    public final void N(Modality modality, StringBuilder sb, Modality modality2) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.p;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[14];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue() || modality != modality2) {
            P(sb, s().contains(DescriptorRendererModifier.MODALITY), CapitalizeDecapitalizeKt.c(modality.name()));
        }
    }

    public final void O(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (DescriptorUtils.q(callableMemberDescriptor) && callableMemberDescriptor.q() == Modality.FINAL) {
            return;
        }
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.B;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[26];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((OverrideRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a) == OverrideRenderingPolicy.RENDER_OVERRIDE && callableMemberDescriptor.q() == Modality.OPEN && !callableMemberDescriptor.i().isEmpty()) {
            return;
        }
        Modality modalityQ = callableMemberDescriptor.q();
        modalityQ.getClass();
        N(modalityQ, sb, x(callableMemberDescriptor));
    }

    public final void P(StringBuilder sb, boolean z, String str) {
        if (z) {
            sb.append(K(str));
            sb.append(" ");
        }
    }

    public final void Q(DeclarationDescriptor declarationDescriptor, StringBuilder sb, boolean z) {
        Name name = declarationDescriptor.getName();
        name.getClass();
        sb.append(o(name, z));
    }

    public final void R(StringBuilder sb, KotlinType kotlinType) {
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        AbbreviatedType abbreviatedType = unwrappedTypeK0 instanceof AbbreviatedType ? (AbbreviatedType) unwrappedTypeK0 : null;
        if (abbreviatedType == null) {
            S(sb, kotlinType);
            return;
        }
        SimpleType simpleType = abbreviatedType.d;
        SimpleType simpleType2 = abbreviatedType.f74155c;
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.f73793e;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.R;
        KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.Y;
        KProperty kProperty = kPropertyArr[42];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
            S(sb, simpleType2);
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.S;
            KProperty kProperty2 = kPropertyArr[43];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
            kProperty2.getClass();
            if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a).booleanValue()) {
                RenderingFormat renderingFormatU = u();
                RenderingFormat renderingFormat = RenderingFormat.HTML;
                if (renderingFormatU == renderingFormat) {
                    sb.append("<font color=\"808080\"><i>");
                }
                sb.append(" /* ");
                sb.append("from: ");
                S(sb, simpleType);
                sb.append(" */");
                if (u() == renderingFormat) {
                    sb.append("</i></font>");
                    return;
                }
                return;
            }
            return;
        }
        S(sb, simpleType);
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$3 = descriptorRendererOptionsImpl.Q;
        KProperty kProperty3 = kPropertyArr[41];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$3.getClass();
        kProperty3.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$3.f71939a).booleanValue()) {
            RenderingFormat renderingFormatU2 = u();
            RenderingFormat renderingFormat2 = RenderingFormat.HTML;
            if (renderingFormatU2 == renderingFormat2) {
                sb.append("<font color=\"808080\"><i>");
            }
            sb.append(" /* ");
            sb.append("= ");
            S(sb, simpleType2);
            sb.append(" */");
            if (u() == renderingFormat2) {
                sb.append("</i></font>");
            }
        }
    }

    public final void S(StringBuilder sb, KotlinType kotlinType) {
        Name nameC;
        String strQ;
        boolean z = kotlinType instanceof WrappedType;
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.f73793e;
        if (z && descriptorRendererOptionsImpl.o() && !((WrappedType) kotlinType).M0()) {
            sb.append("<Not computed yet>");
            return;
        }
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        if (unwrappedTypeK0 instanceof FlexibleType) {
            sb.append(((FlexibleType) unwrappedTypeK0).P0(this, this));
            return;
        }
        if (!(unwrappedTypeK0 instanceof SimpleType)) {
            v40.g();
            return;
        }
        SimpleType simpleType = (SimpleType) unwrappedTypeK0;
        if (simpleType.equals(TypeUtils.f74264b) || simpleType.H0() == TypeUtils.f74263a.f74303c) {
            sb.append("???");
            return;
        }
        TypeConstructor typeConstructorH0 = simpleType.H0();
        if ((typeConstructorH0 instanceof ErrorTypeConstructor) && ((ErrorTypeConstructor) typeConstructorH0).f74308b == ErrorTypeKind.UNINFERRED_TYPE_VARIABLE) {
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.t;
            KProperty kProperty = DescriptorRendererOptionsImpl.Y[18];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
                sb.append("???");
                return;
            }
            TypeConstructor typeConstructorH1 = simpleType.H0();
            typeConstructorH1.getClass();
            sb.append(G(((ErrorTypeConstructor) typeConstructorH1).f74309c[0]));
            return;
        }
        if (KotlinTypeKt.a(simpleType)) {
            F(sb, simpleType);
            return;
        }
        if (!k0(simpleType)) {
            F(sb, simpleType);
            return;
        }
        int length = sb.length();
        ((DescriptorRendererImpl) this.f73794f.getF71699b()).A(sb, simpleType, null);
        boolean z2 = sb.length() != length;
        KotlinType kotlinTypeF = FunctionTypesKt.f(simpleType);
        List listD = FunctionTypesKt.d(simpleType);
        boolean zI = FunctionTypesKt.i(simpleType);
        boolean zI0 = simpleType.I0();
        boolean z3 = zI0 || (z2 && kotlinTypeF != null);
        if (z3) {
            if (zI) {
                sb.insert(length, '(');
            } else {
                if (z2) {
                    CharsKt.c(StringsKt.x(sb));
                    if (sb.charAt(sb.length() - 2) != ')') {
                        sb.insert(sb.length() - 1, "()");
                    }
                }
                sb.append("(");
            }
        }
        P(sb, zI, "suspend");
        if (!listD.isEmpty()) {
            sb.append("context(");
            Iterator it = listD.subList(0, CollectionsKt.F(listD)).iterator();
            while (it.hasNext()) {
                R(sb, (KotlinType) it.next());
                sb.append(", ");
            }
            R(sb, (KotlinType) CollectionsKt.M(listD));
            sb.append(") ");
        }
        if (kotlinTypeF != null) {
            boolean z4 = (k0(kotlinTypeF) && !kotlinTypeF.I0()) || FunctionTypesKt.i(kotlinTypeF) || !kotlinTypeF.getAnnotations().isEmpty() || (kotlinTypeF instanceof DefinitelyNotNullType);
            if (z4) {
                sb.append("(");
            }
            R(sb, kotlinTypeF);
            if (z4) {
                sb.append(")");
            }
            sb.append(FileUtils.HIDDEN_PREFIX);
        }
        sb.append("(");
        if (!FunctionTypesKt.h(simpleType) || simpleType.getAnnotations().j(StandardNames.FqNames.p) == null || simpleType.F0().size() > 1) {
            int i2 = 0;
            for (TypeProjection typeProjection : FunctionTypesKt.g(simpleType)) {
                int i3 = i2 + 1;
                if (i2 > 0) {
                    sb.append(", ");
                }
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.U;
                KProperty kProperty2 = DescriptorRendererOptionsImpl.Y[45];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
                kProperty2.getClass();
                if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a).booleanValue()) {
                    KotlinType type = typeProjection.getType();
                    type.getClass();
                    nameC = FunctionTypesKt.c(type);
                } else {
                    nameC = null;
                }
                if (nameC != null) {
                    sb.append(o(nameC, false));
                    sb.append(": ");
                }
                sb.append(e0(typeProjection));
                i2 = i3;
            }
        } else {
            sb.append("???");
        }
        sb.append(") ");
        int i4 = WhenMappings.f73807a[u().ordinal()];
        if (i4 == 1) {
            strQ = q("->");
        } else {
            if (i4 != 2) {
                v40.g();
                return;
            }
            strQ = "&rarr;";
        }
        sb.append(strQ);
        sb.append(" ");
        FunctionTypesKt.h(simpleType);
        KotlinType type2 = ((TypeProjection) CollectionsKt.M(simpleType.F0())).getType();
        type2.getClass();
        R(sb, type2);
        if (z3) {
            sb.append(")");
        }
        if (zI0) {
            sb.append("?");
        }
    }

    public final void T(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (s().contains(DescriptorRendererModifier.OVERRIDE) && !callableMemberDescriptor.i().isEmpty()) {
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.B;
            KProperty kProperty = DescriptorRendererOptionsImpl.Y[26];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            if (((OverrideRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a) != OverrideRenderingPolicy.RENDER_OPEN) {
                P(sb, true, "override");
                if (w()) {
                    sb.append("/*");
                    sb.append(callableMemberDescriptor.i().size());
                    sb.append("*/ ");
                }
            }
        }
    }

    public final void U(StringBuilder sb, PossiblyInnerType possiblyInnerType) {
        PossiblyInnerType possiblyInnerType2 = possiblyInnerType.f72398c;
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = possiblyInnerType.f72396a;
        if (possiblyInnerType2 != null) {
            U(sb, possiblyInnerType2);
            sb.append(JwtParser.SEPARATOR_CHAR);
            Name name = classifierDescriptorWithTypeParameters.getName();
            name.getClass();
            sb.append(o(name, false));
        } else {
            TypeConstructor typeConstructorJ = classifierDescriptorWithTypeParameters.j();
            typeConstructorJ.getClass();
            sb.append(a0(typeConstructorJ));
        }
        sb.append(Z(possiblyInnerType.f72397b));
    }

    public final void V(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        ReceiverParameterDescriptor receiverParameterDescriptorJ = callableMemberDescriptor.J();
        if (receiverParameterDescriptorJ != null) {
            A(sb, receiverParameterDescriptorJ, AnnotationUseSiteTarget.RECEIVER);
            KotlinType type = receiverParameterDescriptorJ.getType();
            type.getClass();
            sb.append(I(type, false));
            sb.append(FileUtils.HIDDEN_PREFIX);
        }
    }

    public final void W(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        ReceiverParameterDescriptor receiverParameterDescriptorJ;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.F;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[30];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue() && (receiverParameterDescriptorJ = callableMemberDescriptor.J()) != null) {
            sb.append(" on ");
            KotlinType type = receiverParameterDescriptorJ.getType();
            type.getClass();
            sb.append(Y(type));
        }
    }

    public final String Y(KotlinType kotlinType) {
        kotlinType.getClass();
        StringBuilder sb = new StringBuilder();
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.y;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[23];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        R(sb, (KotlinType) ((Function1) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).invoke(kotlinType));
        return sb.toString();
    }

    public final String Z(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(q("<"));
        CollectionsKt.J(list, sb, ", ", null, null, new DescriptorRendererImpl$$Lambda$4(this), 60);
        sb.append(q(">"));
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void a() {
        this.f73793e.a();
    }

    public final String a0(TypeConstructor typeConstructor) {
        typeConstructor.getClass();
        ClassifierDescriptor classifierDescriptorY = typeConstructor.y();
        if ((classifierDescriptorY instanceof TypeParameterDescriptor) || (classifierDescriptorY instanceof ClassDescriptor) || (classifierDescriptorY instanceof TypeAliasDescriptor)) {
            classifierDescriptorY.getClass();
            return ErrorUtils.f(classifierDescriptorY) ? classifierDescriptorY.j().toString() : r().a(classifierDescriptorY, this);
        }
        if (classifierDescriptorY == null) {
            return typeConstructor instanceof IntersectionTypeConstructor ? ((IntersectionTypeConstructor) typeConstructor).b(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$$Lambda$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    KotlinType kotlinType = (KotlinType) obj;
                    int i2 = DescriptorRendererImpl.g;
                    kotlinType.getClass();
                    return kotlinType instanceof StubTypeForBuilderInference ? ((StubTypeForBuilderInference) kotlinType).f74156c : kotlinType;
                }
            }) : typeConstructor.toString();
        }
        v7.i(classifierDescriptorY.getClass(), "Unexpected classifier: ");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void b() {
        this.f73793e.b();
    }

    public final void b0(TypeParameterDescriptor typeParameterDescriptor, StringBuilder sb, boolean z) {
        if (z) {
            sb.append(q("<"));
        }
        if (w()) {
            sb.append("/*");
            sb.append(typeParameterDescriptor.getIndex());
            sb.append("*/ ");
        }
        P(sb, typeParameterDescriptor.u(), "reified");
        String strB = typeParameterDescriptor.l().b();
        boolean z2 = true;
        P(sb, strB.length() > 0, strB);
        A(sb, typeParameterDescriptor, null);
        Q(typeParameterDescriptor, sb, z);
        int size = typeParameterDescriptor.getUpperBounds().size();
        if ((size > 1 && !z) || size == 1) {
            KotlinType kotlinType = (KotlinType) typeParameterDescriptor.getUpperBounds().iterator().next();
            if (kotlinType == null) {
                KotlinBuiltIns.a(141);
                throw null;
            }
            if (!KotlinBuiltIns.y(kotlinType) || !kotlinType.I0()) {
                sb.append(" : ");
                sb.append(Y(kotlinType));
            }
        } else if (z) {
            for (KotlinType kotlinType2 : typeParameterDescriptor.getUpperBounds()) {
                if (kotlinType2 == null) {
                    KotlinBuiltIns.a(141);
                    throw null;
                }
                if (!KotlinBuiltIns.y(kotlinType2) || !kotlinType2.I0()) {
                    if (z2) {
                        sb.append(" : ");
                    } else {
                        sb.append(" & ");
                    }
                    sb.append(Y(kotlinType2));
                    z2 = false;
                }
            }
        }
        if (z) {
            sb.append(q(">"));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void c(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        parameterNameRenderingPolicy.getClass();
        this.f73793e.c(parameterNameRenderingPolicy);
    }

    public final void c0(StringBuilder sb, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b0((TypeParameterDescriptor) it.next(), sb, false);
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void d() {
        this.f73793e.d();
    }

    public final void d0(List list, StringBuilder sb, boolean z) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.w;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[21];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue() || list.isEmpty()) {
            return;
        }
        sb.append(q("<"));
        c0(sb, list);
        sb.append(q(">"));
        if (z) {
            sb.append(" ");
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void e(RenderingFormat renderingFormat) {
        renderingFormat.getClass();
        this.f73793e.e(renderingFormat);
    }

    public final String e0(TypeProjection typeProjection) {
        typeProjection.getClass();
        StringBuilder sb = new StringBuilder();
        CollectionsKt.J(CollectionsKt.O(typeProjection), sb, ", ", null, null, new DescriptorRendererImpl$$Lambda$4(this), 60);
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void f() {
        this.f73793e.f();
    }

    public final void f0(VariableDescriptor variableDescriptor, StringBuilder sb, boolean z) {
        if (z || !(variableDescriptor instanceof ValueParameterDescriptor)) {
            sb.append(K(variableDescriptor.I() ? "var" : "val"));
            sb.append(" ");
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final Set g() {
        return this.f73793e.g();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x006e  */
    public final void g0(ValueParameterDescriptor valueParameterDescriptor, boolean z, StringBuilder sb, boolean z2) {
        boolean z3;
        if (z2) {
            sb.append(K("value-parameter"));
            sb.append(" ");
        }
        if (w()) {
            sb.append("/*");
            sb.append(valueParameterDescriptor.getIndex());
            sb.append("*/ ");
        }
        A(sb, valueParameterDescriptor, null);
        P(sb, valueParameterDescriptor.j0(), "crossinline");
        P(sb, valueParameterDescriptor.h0(), "noinline");
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.f73793e;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.r;
        KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.Y;
        KProperty kProperty = kPropertyArr[16];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
            CallableDescriptor callableDescriptorD = valueParameterDescriptor.d();
            ClassConstructorDescriptor classConstructorDescriptor = callableDescriptorD instanceof ClassConstructorDescriptor ? (ClassConstructorDescriptor) callableDescriptorD : null;
            if (classConstructorDescriptor == null || !classConstructorDescriptor.U()) {
                z3 = false;
            } else {
                z3 = true;
            }
        } else {
            z3 = false;
        }
        if (z3) {
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.s;
            KProperty kProperty2 = kPropertyArr[17];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
            kProperty2.getClass();
            P(sb, ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a).booleanValue(), "actual");
        }
        KotlinType type = valueParameterDescriptor.getType();
        type.getClass();
        KotlinType kotlinTypeO0 = valueParameterDescriptor.o0();
        KotlinType kotlinType = kotlinTypeO0 == null ? type : kotlinTypeO0;
        P(sb, kotlinTypeO0 != null, "vararg");
        if (z3 || (z2 && !t())) {
            f0(valueParameterDescriptor, sb, z3);
        }
        if (z) {
            Q(valueParameterDescriptor, sb, z2);
            sb.append(": ");
        }
        sb.append(Y(kotlinType));
        J(valueParameterDescriptor, sb);
        if (w() && kotlinTypeO0 != null) {
            sb.append(" /*");
            sb.append(Y(type));
            sb.append("*/");
        }
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$3 = descriptorRendererOptionsImpl.z;
        KProperty kProperty3 = kPropertyArr[24];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$3.getClass();
        kProperty3.getClass();
        if (((Function1) descriptorRendererOptionsImpl$property$$inlined$vetoable$3.f71939a) != null) {
            if (descriptorRendererOptionsImpl.o() ? valueParameterDescriptor.u0() : DescriptorUtilsKt.a(valueParameterDescriptor)) {
                StringBuilder sb2 = new StringBuilder(" = ");
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$4 = descriptorRendererOptionsImpl.z;
                KProperty kProperty4 = kPropertyArr[24];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$4.getClass();
                kProperty4.getClass();
                Function1 function1 = (Function1) descriptorRendererOptionsImpl$property$$inlined$vetoable$4.f71939a;
                function1.getClass();
                sb2.append((String) function1.invoke(valueParameterDescriptor));
                sb.append(sb2.toString());
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void h() {
        this.f73793e.h();
    }

    public final void h0(Collection collection, boolean z, StringBuilder sb) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.E;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[29];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        int i2 = WhenMappings.f73808b[((ParameterNameRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).ordinal()];
        boolean z2 = true;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    v40.g();
                    return;
                }
            } else if (z) {
            }
            z2 = false;
        }
        int size = collection.size();
        v().a(sb);
        Iterator it = collection.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) it.next();
            v().b(valueParameterDescriptor, sb);
            g0(valueParameterDescriptor, z2, sb, false);
            v().c(valueParameterDescriptor, i3, size, sb);
            i3++;
        }
        v().d(sb);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void i() {
        this.f73793e.i();
    }

    public final boolean i0(DescriptorVisibility descriptorVisibility, StringBuilder sb) {
        if (!s().contains(DescriptorRendererModifier.VISIBILITY)) {
            return false;
        }
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.f73793e;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.n;
        KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.Y;
        KProperty kProperty = kPropertyArr[12];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
            descriptorVisibility = DescriptorVisibilities.g(((DelegatedDescriptorVisibility) descriptorVisibility).f72365a.c());
        }
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.o;
        KProperty kProperty2 = kPropertyArr[13];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
        kProperty2.getClass();
        if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a).booleanValue() && Intrinsics.c(descriptorVisibility, DescriptorVisibilities.l)) {
            return false;
        }
        sb.append(K(((DelegatedDescriptorVisibility) descriptorVisibility).f72365a.b()));
        sb.append(" ");
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void j(Set set) {
        set.getClass();
        this.f73793e.j(set);
    }

    public final void j0(StringBuilder sb, List list) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.w;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[21];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue()) {
            return;
        }
        ArrayList arrayList = new ArrayList(0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) it.next();
            List upperBounds = typeParameterDescriptor.getUpperBounds();
            upperBounds.getClass();
            for (KotlinType kotlinType : CollectionsKt.w(upperBounds, 1)) {
                StringBuilder sb2 = new StringBuilder();
                Name name = typeParameterDescriptor.getName();
                name.getClass();
                sb2.append(o(name, false));
                sb2.append(" : ");
                kotlinType.getClass();
                sb2.append(Y(kotlinType));
                arrayList.add(sb2.toString());
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        sb.append(" ");
        sb.append(K("where"));
        sb.append(" ");
        CollectionsKt.J(arrayList, sb, ", ", null, null, null, 124);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void k(LinkedHashSet linkedHashSet) {
        this.f73793e.k(linkedHashSet);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void l(ClassifierNamePolicy classifierNamePolicy) {
        this.f73793e.l(classifierNamePolicy);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void m() {
        this.f73793e.m();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public final String n(FqNameUnsafe fqNameUnsafe) {
        fqNameUnsafe.getClass();
        fqNameUnsafe.getClass();
        return q(RenderingUtilsKt.d(FqNameUnsafe.f(fqNameUnsafe)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer
    public final String o(Name name, boolean z) {
        name.getClass();
        String strQ = q(RenderingUtilsKt.a(name));
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.W;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[48];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue() && u() == RenderingFormat.HTML && z) ? fc.h("<b>", strQ, "</b>") : strQ;
    }

    public final String q(String str) {
        return u().a(str);
    }

    public final ClassifierNamePolicy r() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.f73810b;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[0];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (ClassifierNamePolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a;
    }

    public final Set s() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.f73812e;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[3];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (Set) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a;
    }

    public final boolean t() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.f73813f;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[4];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue();
    }

    public final RenderingFormat u() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.D;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[28];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (RenderingFormat) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a;
    }

    public final DescriptorRenderer.ValueParametersHandler v() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.C;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[27];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (DescriptorRenderer.ValueParametersHandler) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a;
    }

    public final boolean w() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73793e.f73816j;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[8];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue();
    }

    public final String y(DeclarationDescriptor declarationDescriptor) {
        DeclarationDescriptor declarationDescriptorD;
        declarationDescriptor.getClass();
        StringBuilder sb = new StringBuilder();
        declarationDescriptor.v(new RenderDeclarationDescriptorVisitor(), sb);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.f73793e;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.f73811c;
        KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.Y;
        KProperty kProperty = kPropertyArr[1];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue() && !(declarationDescriptor instanceof PackageFragmentDescriptor) && !(declarationDescriptor instanceof PackageViewDescriptor) && (declarationDescriptorD = declarationDescriptor.d()) != null && !(declarationDescriptorD instanceof ModuleDescriptor)) {
            sb.append(" ");
            int i2 = WhenMappings.f73807a[u().ordinal()];
            String strH = "defined in";
            if (i2 != 1) {
                if (i2 == 2) {
                    strH = fc.h("<i>", "defined in", "</i>");
                } else {
                    v40.g();
                    strH = null;
                }
            }
            sb.append(strH);
            sb.append(" ");
            FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(declarationDescriptorD);
            fqNameUnsafeF.getClass();
            sb.append(fqNameUnsafeF.c() ? "root package" : n(fqNameUnsafeF));
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$2 = descriptorRendererOptionsImpl.d;
            KProperty kProperty2 = kPropertyArr[2];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$2.getClass();
            kProperty2.getClass();
            if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$2.f71939a).booleanValue() && (declarationDescriptorD instanceof PackageFragmentDescriptor) && (declarationDescriptor instanceof DeclarationDescriptorWithSource)) {
                ((DeclarationDescriptorWithSource) declarationDescriptor).getSource().getClass();
            }
        }
        return sb.toString();
    }

    public final String z(AnnotationDescriptor annotationDescriptor, AnnotationUseSiteTarget annotationUseSiteTarget) {
        ClassConstructorDescriptor classConstructorDescriptorY;
        List listH;
        annotationDescriptor.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(AnnotationParser.AnnotationInstruction);
        if (annotationUseSiteTarget != null) {
            sb.append(annotationUseSiteTarget.a() + ':');
        }
        KotlinType type = annotationDescriptor.getType();
        sb.append(Y(type));
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.f73793e;
        if (descriptorRendererOptionsImpl.n().a()) {
            Map mapA = annotationDescriptor.a();
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.I;
            KProperty kProperty = DescriptorRendererOptionsImpl.Y[33];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            List list = null;
            ClassDescriptor classDescriptorD = ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue() ? DescriptorUtilsKt.d(annotationDescriptor) : null;
            if (classDescriptorD != null && (classConstructorDescriptorY = classDescriptorD.y()) != null && (listH = classConstructorDescriptorY.h()) != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : listH) {
                    if (((ValueParameterDescriptor) obj).u0()) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((ValueParameterDescriptor) it.next()).getName());
                }
                list = arrayList2;
            }
            if (list == null) {
                list = EmptyList.f71768b;
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : list) {
                if (!mapA.containsKey((Name) obj2)) {
                    arrayList3.add(obj2);
                }
            }
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(arrayList3, 10));
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                arrayList4.add(((Name) it2.next()).b() + " = ...");
            }
            Set<Map.Entry> setEntrySet = mapA.entrySet();
            ArrayList arrayList5 = new ArrayList(CollectionsKt.t(setEntrySet, 10));
            for (Map.Entry entry : setEntrySet) {
                Name name = (Name) entry.getKey();
                ConstantValue constantValue = (ConstantValue) entry.getValue();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(name.b());
                sb2.append(" = ");
                sb2.append(!list.contains(name) ? D(constantValue) : "...");
                arrayList5.add(sb2.toString());
            }
            List listN0 = CollectionsKt.n0(CollectionsKt.Y(arrayList4, arrayList5));
            if (descriptorRendererOptionsImpl.n().b() || !listN0.isEmpty()) {
                CollectionsKt.J(listN0, sb, ", ", "(", ")", null, 112);
            }
        }
        if (w() && (KotlinTypeKt.a(type) || (type.H0().y() instanceof NotFoundClasses.MockClassDescriptor))) {
            sb.append(" /* annotation class not found */");
        }
        return sb.toString();
    }
}
