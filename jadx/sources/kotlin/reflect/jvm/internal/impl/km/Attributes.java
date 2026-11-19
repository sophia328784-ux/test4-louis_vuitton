package kotlin.reflect.jvm.internal.impl.km;

import com.batch.android.s.b;
import defpackage.cj;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.km.internal.BooleanFlagDelegate;
import kotlin.reflect.jvm.internal.impl.km.internal.EnumFlagDelegate;
import kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt;
import kotlin.reflect.jvm.internal.impl.km.internal.FlagImpl;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Attributes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final EnumFlagDelegate f72644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EnumFlagDelegate f72645c;
    public static final EnumFlagDelegate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BooleanFlagDelegate f72646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final BooleanFlagDelegate f72647f;
    public static final BooleanFlagDelegate g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final BooleanFlagDelegate f72648h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final BooleanFlagDelegate f72649i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final BooleanFlagDelegate f72650j;

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(Attributes.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmClass;)Z", 1);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f72643a = new KProperty[]{reflectionFactory.f(mutablePropertyReference1Impl), cj.r(Attributes.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmConstructor;)Z", 1, reflectionFactory), cj.r(Attributes.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmFunction;)Z", 1, reflectionFactory), cj.r(Attributes.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmProperty;)Z", 1, reflectionFactory), cj.r(Attributes.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z", 1, reflectionFactory), cj.r(Attributes.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmValueParameter;)Z", 1, reflectionFactory), cj.r(Attributes.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmTypeAlias;)Z", 1, reflectionFactory), cj.r(Attributes.class, "modality", "getModality(Lkotlin/metadata/KmClass;)Lkotlin/metadata/Modality;", 1, reflectionFactory), cj.r(Attributes.class, "visibility", "getVisibility(Lkotlin/metadata/KmClass;)Lkotlin/metadata/Visibility;", 1, reflectionFactory), cj.r(Attributes.class, b.a.d, "getKind(Lkotlin/metadata/KmClass;)Lkotlin/metadata/ClassKind;", 1, reflectionFactory), cj.r(Attributes.class, "isInner", "isInner(Lkotlin/metadata/KmClass;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isData", "isData(Lkotlin/metadata/KmClass;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isExternal", "isExternal(Lkotlin/metadata/KmClass;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isExpect", "isExpect(Lkotlin/metadata/KmClass;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isValue", "isValue(Lkotlin/metadata/KmClass;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isFunInterface", "isFunInterface(Lkotlin/metadata/KmClass;)Z", 1, reflectionFactory), cj.r(Attributes.class, "hasEnumEntries", "getHasEnumEntries(Lkotlin/metadata/KmClass;)Z", 1, reflectionFactory), cj.r(Attributes.class, "visibility", "getVisibility(Lkotlin/metadata/KmConstructor;)Lkotlin/metadata/Visibility;", 1, reflectionFactory), cj.r(Attributes.class, "isSecondary", "isSecondary(Lkotlin/metadata/KmConstructor;)Z", 1, reflectionFactory), cj.r(Attributes.class, "hasNonStableParameterNames", "getHasNonStableParameterNames(Lkotlin/metadata/KmConstructor;)Z", 1, reflectionFactory), cj.r(Attributes.class, b.a.d, "getKind(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/MemberKind;", 1, reflectionFactory), cj.r(Attributes.class, "visibility", "getVisibility(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/Visibility;", 1, reflectionFactory), cj.r(Attributes.class, "modality", "getModality(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/Modality;", 1, reflectionFactory), cj.r(Attributes.class, "isOperator", "isOperator(Lkotlin/metadata/KmFunction;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isInfix", "isInfix(Lkotlin/metadata/KmFunction;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isInline", "isInline(Lkotlin/metadata/KmFunction;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isTailrec", "isTailrec(Lkotlin/metadata/KmFunction;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isExternal", "isExternal(Lkotlin/metadata/KmFunction;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isSuspend", "isSuspend(Lkotlin/metadata/KmFunction;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isExpect", "isExpect(Lkotlin/metadata/KmFunction;)Z", 1, reflectionFactory), cj.r(Attributes.class, "hasNonStableParameterNames", "getHasNonStableParameterNames(Lkotlin/metadata/KmFunction;)Z", 1, reflectionFactory), cj.r(Attributes.class, "visibility", "getVisibility(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/Visibility;", 1, reflectionFactory), cj.r(Attributes.class, "modality", "getModality(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/Modality;", 1, reflectionFactory), cj.r(Attributes.class, b.a.d, "getKind(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/MemberKind;", 1, reflectionFactory), cj.r(Attributes.class, "isVar", "isVar(Lkotlin/metadata/KmProperty;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isConst", "isConst(Lkotlin/metadata/KmProperty;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isLateinit", "isLateinit(Lkotlin/metadata/KmProperty;)Z", 1, reflectionFactory), cj.r(Attributes.class, "hasConstant", "getHasConstant(Lkotlin/metadata/KmProperty;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isExternal", "isExternal(Lkotlin/metadata/KmProperty;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isDelegated", "isDelegated(Lkotlin/metadata/KmProperty;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isExpect", "isExpect(Lkotlin/metadata/KmProperty;)Z", 1, reflectionFactory), cj.r(Attributes.class, "visibility", "getVisibility(Lkotlin/metadata/KmPropertyAccessorAttributes;)Lkotlin/metadata/Visibility;", 1, reflectionFactory), cj.r(Attributes.class, "modality", "getModality(Lkotlin/metadata/KmPropertyAccessorAttributes;)Lkotlin/metadata/Modality;", 1, reflectionFactory), cj.r(Attributes.class, "isNotDefault", "isNotDefault(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isExternal", "isExternal(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isInline", "isInline(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isNullable", "isNullable(Lkotlin/metadata/KmType;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isSuspend", "isSuspend(Lkotlin/metadata/KmType;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isDefinitelyNonNull", "isDefinitelyNonNull(Lkotlin/metadata/KmType;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isReified", "isReified(Lkotlin/metadata/KmTypeParameter;)Z", 1, reflectionFactory), cj.r(Attributes.class, "visibility", "getVisibility(Lkotlin/metadata/KmTypeAlias;)Lkotlin/metadata/Visibility;", 1, reflectionFactory), cj.r(Attributes.class, "declaresDefaultValue", "getDeclaresDefaultValue(Lkotlin/metadata/KmValueParameter;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isCrossinline", "isCrossinline(Lkotlin/metadata/KmValueParameter;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isNoinline", "isNoinline(Lkotlin/metadata/KmValueParameter;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isNegated", "isNegated(Lkotlin/metadata/KmEffectExpression;)Z", 1, reflectionFactory), cj.r(Attributes.class, "isNullCheckPredicate", "isNullCheckPredicate(Lkotlin/metadata/KmEffectExpression;)Z", 1, reflectionFactory)};
        Flags.BooleanFlagField booleanFlagField = Flags.f73574c;
        booleanFlagField.getClass();
        FlagDelegatesImplKt.a(new FlagImpl(booleanFlagField));
        FlagDelegatesImplKt.b(new FlagImpl(booleanFlagField));
        FlagDelegatesImplKt.c(new FlagImpl(booleanFlagField));
        FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField));
        FlagDelegatesImplKt.f(new FlagImpl(booleanFlagField));
        FlagDelegatesImplKt.j(new FlagImpl(booleanFlagField));
        FlagDelegatesImplKt.h(new FlagImpl(booleanFlagField));
        f72644b = FlagDelegatesImplKt.e(Attributes$modality$2.f72659b);
        f72645c = FlagDelegatesImplKt.k(Attributes$visibility$2.f72664b);
        Attributes$kind$2 attributes$kind$2 = Attributes$kind$2.f72655b;
        Flags.FlagField flagField = Flags.f73576f;
        flagField.getClass();
        EnumEntries enumEntriesA = ClassKind.a();
        EnumEntries enumEntriesA2 = ClassKind.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(enumEntriesA2, 10));
        Iterator<E> it = enumEntriesA2.iterator();
        while (it.hasNext()) {
            arrayList.add(((ClassKind) it.next()).b());
        }
        d = new EnumFlagDelegate(attributes$kind$2, flagField, enumEntriesA, arrayList);
        Flags.BooleanFlagField booleanFlagField2 = Flags.g;
        booleanFlagField2.getClass();
        f72646e = FlagDelegatesImplKt.a(new FlagImpl(booleanFlagField2));
        Flags.BooleanFlagField booleanFlagField3 = Flags.f73577h;
        booleanFlagField3.getClass();
        FlagDelegatesImplKt.a(new FlagImpl(booleanFlagField3));
        Flags.BooleanFlagField booleanFlagField4 = Flags.f73578i;
        booleanFlagField4.getClass();
        FlagDelegatesImplKt.a(new FlagImpl(booleanFlagField4));
        Flags.BooleanFlagField booleanFlagField5 = Flags.f73579j;
        booleanFlagField5.getClass();
        FlagDelegatesImplKt.a(new FlagImpl(booleanFlagField5));
        Flags.BooleanFlagField booleanFlagField6 = Flags.f73580k;
        booleanFlagField6.getClass();
        f72647f = FlagDelegatesImplKt.a(new FlagImpl(booleanFlagField6));
        Flags.BooleanFlagField booleanFlagField7 = Flags.l;
        booleanFlagField7.getClass();
        FlagDelegatesImplKt.a(new FlagImpl(booleanFlagField7));
        Flags.BooleanFlagField booleanFlagField8 = Flags.m;
        booleanFlagField8.getClass();
        FlagDelegatesImplKt.a(new FlagImpl(booleanFlagField8));
        FlagDelegatesImplKt.k(Attributes$visibility$6.f72666b);
        Flags.BooleanFlagField booleanFlagField9 = Flags.n;
        booleanFlagField9.getClass();
        FlagDelegatesImplKt.b(new FlagImpl(booleanFlagField9));
        Flags.BooleanFlagField booleanFlagField10 = Flags.o;
        booleanFlagField10.getClass();
        FlagDelegatesImplKt.b(new FlagImpl(booleanFlagField10));
        FlagDelegatesImplKt.d(Attributes$kind$7.f72656b);
        FlagDelegatesImplKt.k(Attributes$visibility$10.f72661b);
        FlagDelegatesImplKt.e(Attributes$modality$6.f72660b);
        Flags.BooleanFlagField booleanFlagField11 = Flags.q;
        booleanFlagField11.getClass();
        FlagDelegatesImplKt.c(new FlagImpl(booleanFlagField11));
        Flags.BooleanFlagField booleanFlagField12 = Flags.r;
        booleanFlagField12.getClass();
        FlagDelegatesImplKt.c(new FlagImpl(booleanFlagField12));
        Flags.BooleanFlagField booleanFlagField13 = Flags.s;
        booleanFlagField13.getClass();
        FlagDelegatesImplKt.c(new FlagImpl(booleanFlagField13));
        Flags.BooleanFlagField booleanFlagField14 = Flags.t;
        booleanFlagField14.getClass();
        FlagDelegatesImplKt.c(new FlagImpl(booleanFlagField14));
        Flags.BooleanFlagField booleanFlagField15 = Flags.u;
        booleanFlagField15.getClass();
        FlagDelegatesImplKt.c(new FlagImpl(booleanFlagField15));
        Flags.BooleanFlagField booleanFlagField16 = Flags.v;
        booleanFlagField16.getClass();
        FlagDelegatesImplKt.c(new FlagImpl(booleanFlagField16));
        Flags.BooleanFlagField booleanFlagField17 = Flags.w;
        booleanFlagField17.getClass();
        FlagDelegatesImplKt.c(new FlagImpl(booleanFlagField17));
        Flags.BooleanFlagField booleanFlagField18 = Flags.x;
        booleanFlagField18.getClass();
        FlagDelegatesImplKt.c(new FlagImpl(booleanFlagField18));
        FlagDelegatesImplKt.k(Attributes$visibility$14.f72662b);
        FlagDelegatesImplKt.e(Attributes$modality$10.f72657b);
        FlagDelegatesImplKt.d(Attributes$kind$11.f72654b);
        Flags.BooleanFlagField booleanFlagField19 = Flags.y;
        booleanFlagField19.getClass();
        FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField19));
        Flags.BooleanFlagField booleanFlagField20 = Flags.B;
        booleanFlagField20.getClass();
        FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField20));
        Flags.BooleanFlagField booleanFlagField21 = Flags.C;
        booleanFlagField21.getClass();
        FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField21));
        Flags.BooleanFlagField booleanFlagField22 = Flags.D;
        booleanFlagField22.getClass();
        FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField22));
        Flags.BooleanFlagField booleanFlagField23 = Flags.E;
        booleanFlagField23.getClass();
        FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField23));
        Flags.BooleanFlagField booleanFlagField24 = Flags.F;
        booleanFlagField24.getClass();
        FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField24));
        Flags.BooleanFlagField booleanFlagField25 = Flags.G;
        booleanFlagField25.getClass();
        FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField25));
        FlagDelegatesImplKt.k(Attributes$visibility$18.f72663b);
        FlagDelegatesImplKt.e(Attributes$modality$14.f72658b);
        Flags.BooleanFlagField booleanFlagField26 = Flags.K;
        booleanFlagField26.getClass();
        FlagDelegatesImplKt.f(new FlagImpl(booleanFlagField26));
        Flags.BooleanFlagField booleanFlagField27 = Flags.L;
        booleanFlagField27.getClass();
        FlagDelegatesImplKt.f(new FlagImpl(booleanFlagField27));
        Flags.BooleanFlagField booleanFlagField28 = Flags.M;
        booleanFlagField28.getClass();
        FlagDelegatesImplKt.f(new FlagImpl(booleanFlagField28));
        g = FlagDelegatesImplKt.i(new FlagImpl(0, 1, 1));
        Flags.BooleanFlagField booleanFlagField29 = Flags.f73572a;
        f72648h = FlagDelegatesImplKt.i(new FlagImpl(booleanFlagField29.f73582a + 1, booleanFlagField29.f73583b, 1));
        Flags.BooleanFlagField booleanFlagField30 = Flags.f73573b;
        f72649i = FlagDelegatesImplKt.i(new FlagImpl(booleanFlagField30.f73582a + 1, booleanFlagField30.f73583b, 1));
        f72650j = new BooleanFlagDelegate(Attributes$isReified$2.f72653b, new FlagImpl(0, 1, 1));
        FlagDelegatesImplKt.k(Attributes$visibility$22.f72665b);
        Flags.BooleanFlagField booleanFlagField31 = Flags.H;
        booleanFlagField31.getClass();
        FlagDelegatesImplKt.j(new FlagImpl(booleanFlagField31));
        Flags.BooleanFlagField booleanFlagField32 = Flags.I;
        booleanFlagField32.getClass();
        FlagDelegatesImplKt.j(new FlagImpl(booleanFlagField32));
        Flags.BooleanFlagField booleanFlagField33 = Flags.J;
        booleanFlagField33.getClass();
        FlagDelegatesImplKt.j(new FlagImpl(booleanFlagField33));
        Attributes$isNegated$2 attributes$isNegated$2 = Attributes$isNegated$2.f72651b;
        Flags.BooleanFlagField booleanFlagField34 = Flags.N;
        booleanFlagField34.getClass();
        new BooleanFlagDelegate(attributes$isNegated$2, new FlagImpl(booleanFlagField34));
        Attributes$isNullCheckPredicate$2 attributes$isNullCheckPredicate$2 = Attributes$isNullCheckPredicate$2.f72652b;
        Flags.BooleanFlagField booleanFlagField35 = Flags.O;
        booleanFlagField35.getClass();
        new BooleanFlagDelegate(attributes$isNullCheckPredicate$2, new FlagImpl(booleanFlagField35));
    }

    public static final ClassKind a(KmClass kmClass) {
        return (ClassKind) d.a(kmClass, f72643a[9]);
    }
}
