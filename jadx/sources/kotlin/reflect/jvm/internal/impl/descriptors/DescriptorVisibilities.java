package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.az;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ThisClassReceiver;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.util.ModuleVisibilityHelper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DescriptorVisibilities {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DescriptorVisibility f72366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DescriptorVisibility f72367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DescriptorVisibility f72368c;
    public static final DescriptorVisibility d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DescriptorVisibility f72369e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final DescriptorVisibility f72370f;
    public static final DescriptorVisibility g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final DescriptorVisibility f72371h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final DescriptorVisibility f72372i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Set f72373j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Map f72374k;
    public static final DescriptorVisibility l;
    public static final ReceiverValue m;
    public static final ReceiverValue n;
    public static final ReceiverValue o;
    public static final ModuleVisibilityHelper p;
    public static final HashMap q;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$1, reason: invalid class name */
    public static class AnonymousClass1 extends DelegatedDescriptorVisibility {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r4v0, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility] */
        /* JADX WARN: Type inference failed for: r4v3, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
        /* JADX WARN: Type inference failed for: r4v4, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
        /* JADX WARN: Type inference failed for: r4v7, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
        public final boolean a(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
            if (declarationDescriptor == null) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "from", "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1", "isVisible"));
            }
            if (DescriptorUtils.q(declarationDescriptorWithVisibility) && DescriptorUtils.e(declarationDescriptor) != SourceFile.f72406a) {
                return DescriptorVisibilities.d(declarationDescriptorWithVisibility, declarationDescriptor);
            }
            if (declarationDescriptorWithVisibility instanceof ConstructorDescriptor) {
                ((ConstructorDescriptor) declarationDescriptorWithVisibility).d();
            }
            while (declarationDescriptorWithVisibility != 0) {
                declarationDescriptorWithVisibility = declarationDescriptorWithVisibility.d();
                if (((declarationDescriptorWithVisibility instanceof ClassDescriptor) && !DescriptorUtils.k(declarationDescriptorWithVisibility)) || (declarationDescriptorWithVisibility instanceof PackageFragmentDescriptor)) {
                    break;
                }
            }
            if (declarationDescriptorWithVisibility != 0) {
                while (declarationDescriptor != null) {
                    if (declarationDescriptorWithVisibility != declarationDescriptor) {
                        if (!(declarationDescriptor instanceof PackageFragmentDescriptor)) {
                            declarationDescriptor = declarationDescriptor.d();
                        } else if (!(declarationDescriptorWithVisibility instanceof PackageFragmentDescriptor) || !((PackageFragmentDescriptor) declarationDescriptorWithVisibility).c().equals(((PackageFragmentDescriptor) declarationDescriptor).c()) || !DescriptorUtils.c(declarationDescriptor).equals(DescriptorUtils.c(declarationDescriptorWithVisibility))) {
                            break;
                        }
                    }
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$10, reason: invalid class name */
    public static class AnonymousClass10 implements ReceiverValue {
        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue
        public final KotlinType getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$11, reason: invalid class name */
    public static class AnonymousClass11 implements ReceiverValue {
        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue
        public final KotlinType getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$12, reason: invalid class name */
    public static class AnonymousClass12 implements ReceiverValue {
        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue
        public final KotlinType getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$2, reason: invalid class name */
    public static class AnonymousClass2 extends DelegatedDescriptorVisibility {
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
        public final boolean a(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
            DeclarationDescriptor declarationDescriptorH;
            if (declarationDescriptor == null) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "from", "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2", "isVisible"));
            }
            if (DescriptorVisibilities.f72366a.a(receiverValue, declarationDescriptorWithVisibility, declarationDescriptor)) {
                if (receiverValue == DescriptorVisibilities.n) {
                    return true;
                }
                if (receiverValue != DescriptorVisibilities.m && (declarationDescriptorH = DescriptorUtils.h(declarationDescriptorWithVisibility, ClassDescriptor.class, true)) != null && (receiverValue instanceof ThisClassReceiver)) {
                    return ((ThisClassReceiver) receiverValue).s().y0().equals(declarationDescriptorH.y0());
                }
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$3, reason: invalid class name */
    public static class AnonymousClass3 extends DelegatedDescriptorVisibility {
        /* JADX WARN: Code restructure failed: missing block: B:47:0x008f, code lost:
        
            if ((r0.K0() instanceof kotlin.reflect.jvm.internal.impl.types.DynamicType) == false) goto L49;
         */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a(kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue r6, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility r7, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r8) {
            /*
                r5 = this;
                r0 = 0
                r1 = 1
                if (r8 == 0) goto L9b
                java.lang.Class<kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor> r2 = kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor.class
                kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r3 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.h(r7, r2, r1)
                kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor) r3
                kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r8 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.h(r8, r2, r0)
                kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r8 = (kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor) r8
                if (r8 != 0) goto L15
                goto L49
            L15:
                if (r3 == 0) goto L34
                boolean r4 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.k(r3)
                if (r4 == 0) goto L34
                kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r3 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.h(r3, r2, r1)
                kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor) r3
                if (r3 == 0) goto L34
                kotlin.reflect.jvm.internal.impl.types.SimpleType r4 = r8.o()
                kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r3 = r3.y0()
                boolean r3 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.p(r4, r3)
                if (r3 == 0) goto L34
                goto L91
            L34:
                boolean r3 = r7 instanceof kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
                if (r3 == 0) goto L40
                r3 = r7
                kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor) r3
                kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r3 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.r(r3)
                goto L41
            L40:
                r3 = r7
            L41:
                kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r2 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.h(r3, r2, r1)
                kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r2 = (kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor) r2
                if (r2 != 0) goto L4a
            L49:
                return r0
            L4a:
                kotlin.reflect.jvm.internal.impl.types.SimpleType r0 = r8.o()
                kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r2 = r2.y0()
                boolean r0 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.p(r0, r2)
                if (r0 == 0) goto L92
                kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue r0 = kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.o
                if (r6 != r0) goto L5d
                goto L92
            L5d:
                boolean r0 = r3 instanceof kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
                if (r0 != 0) goto L62
                goto L91
            L62:
                boolean r0 = r3 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor
                if (r0 == 0) goto L67
                goto L91
            L67:
                kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue r0 = kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.n
                if (r6 != r0) goto L6c
                goto L91
            L6c:
                kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue r0 = kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.m
                if (r6 == r0) goto L92
                if (r6 != 0) goto L73
                goto L92
            L73:
                boolean r0 = r6 instanceof kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.SuperCallReceiverValue
                if (r0 == 0) goto L7f
                r0 = r6
                kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.SuperCallReceiverValue r0 = (kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.SuperCallReceiverValue) r0
                kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r0.b()
                goto L83
            L7f:
                kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r6.getType()
            L83:
                boolean r2 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.p(r0, r8)
                if (r2 != 0) goto L91
                kotlin.reflect.jvm.internal.impl.types.UnwrappedType r0 = r0.K0()
                boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.types.DynamicType
                if (r0 == 0) goto L92
            L91:
                return r1
            L92:
                kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r8 = r8.d()
                boolean r5 = r5.a(r6, r7, r8)
                return r5
            L9b:
                r5 = 3
                java.lang.Object[] r5 = new java.lang.Object[r5]
                java.lang.String r6 = "from"
                r5[r0] = r6
                java.lang.String r6 = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3"
                r5[r1] = r6
                java.lang.String r6 = "isVisible"
                r7 = 2
                r5[r7] = r6
                java.lang.String r6 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
                java.lang.String r5 = java.lang.String.format(r6, r5)
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                r6.<init>(r5)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass3.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor):boolean");
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$4, reason: invalid class name */
    public static class AnonymousClass4 extends DelegatedDescriptorVisibility {
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
        public final boolean a(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
            if (declarationDescriptor == null) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "from", "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4", "isVisible"));
            }
            if (!DescriptorUtils.c(declarationDescriptor).F(DescriptorUtils.c(declarationDescriptorWithVisibility))) {
                return false;
            }
            DescriptorVisibilities.p.a(declarationDescriptorWithVisibility, declarationDescriptor);
            return true;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$5, reason: invalid class name */
    public static class AnonymousClass5 extends DelegatedDescriptorVisibility {
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
        public final boolean a(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
            if (declarationDescriptor != null) {
                return true;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "from", "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5", "isVisible"));
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$6, reason: invalid class name */
    public static class AnonymousClass6 extends DelegatedDescriptorVisibility {
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
        public final boolean a(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
            if (declarationDescriptor == null) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "from", "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6", "isVisible"));
            }
            throw new IllegalStateException("This method shouldn't be invoked for LOCAL visibility");
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$7, reason: invalid class name */
    public static class AnonymousClass7 extends DelegatedDescriptorVisibility {
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
        public final boolean a(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
            if (declarationDescriptor == null) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "from", "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7", "isVisible"));
            }
            throw new IllegalStateException("Visibility is unknown yet");
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$8, reason: invalid class name */
    public static class AnonymousClass8 extends DelegatedDescriptorVisibility {
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
        public final boolean a(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
            if (declarationDescriptor != null) {
                return false;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "from", "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8", "isVisible"));
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$9, reason: invalid class name */
    public static class AnonymousClass9 extends DelegatedDescriptorVisibility {
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility
        public final boolean a(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
            if (declarationDescriptor != null) {
                return false;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "from", "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9", "isVisible"));
        }
    }

    static {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(Visibilities.Private.f72416c);
        f72366a = anonymousClass1;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(Visibilities.PrivateToThis.f72417c);
        f72367b = anonymousClass2;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(Visibilities.Protected.f72418c);
        f72368c = anonymousClass3;
        AnonymousClass4 anonymousClass4 = new AnonymousClass4(Visibilities.Internal.f72413c);
        d = anonymousClass4;
        AnonymousClass5 anonymousClass5 = new AnonymousClass5(Visibilities.Public.f72419c);
        f72369e = anonymousClass5;
        AnonymousClass6 anonymousClass6 = new AnonymousClass6(Visibilities.Local.f72415c);
        f72370f = anonymousClass6;
        AnonymousClass7 anonymousClass7 = new AnonymousClass7(Visibilities.Inherited.f72412c);
        g = anonymousClass7;
        AnonymousClass8 anonymousClass8 = new AnonymousClass8(Visibilities.InvisibleFake.f72414c);
        f72371h = anonymousClass8;
        AnonymousClass9 anonymousClass9 = new AnonymousClass9(Visibilities.Unknown.f72420c);
        f72372i = anonymousClass9;
        f72373j = Collections.unmodifiableSet(ArraysKt.Z(new DescriptorVisibility[]{anonymousClass1, anonymousClass2, anonymousClass4, anonymousClass6}));
        HashMap map = new HashMap(6);
        map.put(anonymousClass2, 0);
        map.put(anonymousClass1, 0);
        map.put(anonymousClass4, 1);
        map.put(anonymousClass3, 1);
        map.put(anonymousClass5, 2);
        f72374k = Collections.unmodifiableMap(map);
        l = anonymousClass5;
        m = new AnonymousClass10();
        n = new AnonymousClass11();
        o = new AnonymousClass12();
        Iterator it = ServiceLoader.load(ModuleVisibilityHelper.class, ModuleVisibilityHelper.class.getClassLoader()).iterator();
        p = it.hasNext() ? (ModuleVisibilityHelper) it.next() : ModuleVisibilityHelper.EMPTY.f74346a;
        q = new HashMap();
        f(anonymousClass1);
        f(anonymousClass2);
        f(anonymousClass3);
        f(anonymousClass4);
        f(anonymousClass5);
        f(anonymousClass6);
        f(anonymousClass7);
        f(anonymousClass8);
        f(anonymousClass9);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003a  */
    public static /* synthetic */ void a(int i2) {
        String str = i2 != 16 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i2 != 16 ? 3 : 2];
        if (i2 != 1 && i2 != 3 && i2 != 5 && i2 != 7) {
            switch (i2) {
                case 9:
                    objArr[0] = "from";
                    break;
                case 10:
                case 12:
                    objArr[0] = "first";
                    break;
                case 11:
                case 13:
                    objArr[0] = "second";
                    break;
                case 14:
                case 15:
                    objArr[0] = "visibility";
                    break;
                case 16:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities";
                    break;
                default:
                    objArr[0] = "what";
                    break;
            }
        } else {
            objArr[0] = "from";
        }
        if (i2 != 16) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities";
        } else {
            objArr[1] = "toDescriptorVisibility";
        }
        switch (i2) {
            case 2:
            case 3:
                objArr[2] = "isVisibleIgnoringReceiver";
                break;
            case 4:
            case 5:
                objArr[2] = "isVisibleWithAnyReceiver";
                break;
            case 6:
            case 7:
                objArr[2] = "inSameFile";
                break;
            case 8:
            case 9:
                objArr[2] = "findInvisibleMember";
                break;
            case 10:
            case 11:
                objArr[2] = "compareLocal";
                break;
            case 12:
            case 13:
                objArr[2] = "compare";
                break;
            case 14:
                objArr[2] = "isPrivate";
                break;
            case 15:
                objArr[2] = "toDescriptorVisibility";
                break;
            case 16:
                break;
            default:
                objArr[2] = "isVisible";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 == 16) {
            throw new IllegalStateException(str2);
        }
    }

    public static Integer b(DescriptorVisibility descriptorVisibility, DescriptorVisibility descriptorVisibility2) {
        if (descriptorVisibility == null) {
            a(12);
            throw null;
        }
        if (descriptorVisibility2 == null) {
            a(13);
            throw null;
        }
        Visibility visibility = ((DelegatedDescriptorVisibility) descriptorVisibility).f72365a;
        Visibility visibility2 = ((DelegatedDescriptorVisibility) descriptorVisibility2).f72365a;
        Integer numA = visibility.a(visibility2);
        if (numA != null) {
            return numA;
        }
        Integer numA2 = visibility2.a(visibility);
        if (numA2 != null) {
            return Integer.valueOf(-numA2.intValue());
        }
        return null;
    }

    public static DeclarationDescriptorWithVisibility c(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
        DeclarationDescriptorWithVisibility declarationDescriptorWithVisibilityC;
        if (declarationDescriptorWithVisibility == null) {
            a(8);
            throw null;
        }
        if (declarationDescriptor == null) {
            a(9);
            throw null;
        }
        for (DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility2 = (DeclarationDescriptorWithVisibility) declarationDescriptorWithVisibility.y0(); declarationDescriptorWithVisibility2 != null && declarationDescriptorWithVisibility2.getVisibility() != f72370f; declarationDescriptorWithVisibility2 = (DeclarationDescriptorWithVisibility) DescriptorUtils.h(declarationDescriptorWithVisibility2, DeclarationDescriptorWithVisibility.class, true)) {
            if (!declarationDescriptorWithVisibility2.getVisibility().a(receiverValue, declarationDescriptorWithVisibility2, declarationDescriptor)) {
                return declarationDescriptorWithVisibility2;
            }
        }
        if (!(declarationDescriptorWithVisibility instanceof TypeAliasConstructorDescriptor) || (declarationDescriptorWithVisibilityC = c(receiverValue, ((TypeAliasConstructorDescriptor) declarationDescriptorWithVisibility).M(), declarationDescriptor)) == null) {
            return null;
        }
        return declarationDescriptorWithVisibilityC;
    }

    public static boolean d(DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor != null) {
            SourceFile sourceFileE = DescriptorUtils.e(declarationDescriptor);
            return sourceFileE != SourceFile.f72406a && sourceFileE == DescriptorUtils.e(declarationDescriptorWithVisibility);
        }
        a(7);
        throw null;
    }

    public static boolean e(DescriptorVisibility descriptorVisibility) {
        if (descriptorVisibility != null) {
            return descriptorVisibility == f72366a || descriptorVisibility == f72367b;
        }
        a(14);
        throw null;
    }

    public static void f(DelegatedDescriptorVisibility delegatedDescriptorVisibility) {
        q.put(delegatedDescriptorVisibility.f72365a, delegatedDescriptorVisibility);
    }

    public static DescriptorVisibility g(Visibility visibility) {
        if (visibility == null) {
            a(15);
            throw null;
        }
        DescriptorVisibility descriptorVisibility = (DescriptorVisibility) q.get(visibility);
        if (descriptorVisibility != null) {
            return descriptorVisibility;
        }
        az.m(visibility, "Inapplicable visibility: ");
        return null;
    }
}
