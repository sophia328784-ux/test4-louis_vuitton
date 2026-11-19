package kotlin.reflect.jvm.internal;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.fc;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KCallable;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.full.KCallables;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKind;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.RenderingUtilsKt;
import kotlin.reflect.jvm.internal.types.AbstractKType;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;", "", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReflectionObjectRenderer {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72175a;

        static {
            int[] iArr = new int[KParameter.Kind.values().length];
            try {
                iArr[KParameter.Kind.INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KParameter.Kind.CONTEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KParameter.Kind.EXTENSION_RECEIVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[KParameter.Kind.VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f72175a = iArr;
        }
    }

    public static void a(StringBuilder sb, KCallable kCallable) {
        List parameters = kCallable.getParameters();
        ArrayList arrayList = new ArrayList();
        for (Object obj : parameters) {
            if (((KParameter) obj).e() == KParameter.Kind.CONTEXT) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        CollectionsKt.J(arrayList, sb, null, "context(", ") ", new Function1() { // from class: kotlin.reflect.jvm.internal.ReflectionObjectRenderer$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                KParameter kParameter = (KParameter) obj2;
                kParameter.getClass();
                StringBuilder sb2 = new StringBuilder();
                String name = kParameter.getName();
                if (name == null) {
                    name = "_";
                }
                sb2.append(name);
                sb2.append(": ");
                sb2.append(kParameter.getType());
                return sb2.toString();
            }
        }, 50);
    }

    public static void b(StringBuilder sb, KCallable kCallable) {
        List listU = ((ReflectKCallable) kCallable).u();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listU) {
            KParameter kParameter = (KParameter) obj;
            if (kParameter.e() == KParameter.Kind.INSTANCE || kParameter.e() == KParameter.Kind.EXTENSION_RECEIVER) {
                arrayList.add(obj);
            }
        }
        KParameter kParameter2 = (KParameter) CollectionsKt.G(0, arrayList);
        if (kParameter2 != null) {
            sb.append(f(kParameter2.getType(), false));
            sb.append(FileUtils.HIDDEN_PREFIX);
        }
        KParameter kParameter3 = (KParameter) CollectionsKt.G(1, arrayList);
        if (kParameter3 != null) {
            sb.append("(");
            sb.append(f(kParameter3.getType(), false));
            sb.append(FileUtils.HIDDEN_PREFIX);
            sb.append(")");
        }
    }

    public static String c(KFunction kFunction) {
        StringBuilder sb = new StringBuilder();
        a(sb, kFunction);
        sb.append("fun ");
        b(sb, kFunction);
        sb.append(RenderingUtilsKt.a(Name.e(kFunction.getF72049j())));
        CollectionsKt.J(KCallables.a(kFunction), sb, ", ", "(", ")", new Function1() { // from class: kotlin.reflect.jvm.internal.ReflectionObjectRenderer$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KParameter kParameter = (KParameter) obj;
                kParameter.getClass();
                return ReflectionObjectRenderer.f(kParameter.getType(), false);
            }
        }, 48);
        sb.append(": ");
        sb.append(f(kFunction.getReturnType(), false));
        return sb.toString();
    }

    public static String d(KProperty kProperty) {
        StringBuilder sb = new StringBuilder();
        a(sb, kProperty);
        sb.append(kProperty instanceof KMutableProperty ? "var " : "val ");
        b(sb, kProperty);
        sb.append(RenderingUtilsKt.a(Name.e(kProperty.getF72049j())));
        sb.append(": ");
        sb.append(f(kProperty.getReturnType(), false));
        return sb.toString();
    }

    public static void e(StringBuilder sb, KClass kClass, FqNameUnsafe fqNameUnsafe, List list, boolean z, boolean z2) {
        StringBuilder sb2;
        boolean z3;
        if (kClass.getD().size() >= list.size() || JvmClassMappingKt.b(kClass).getDeclaringClass() == null) {
            sb2 = sb;
            z3 = z2;
            fqNameUnsafe.getClass();
            sb2.append(RenderingUtilsKt.d(FqNameUnsafe.f(fqNameUnsafe)));
        } else {
            Class<?> declaringClass = JvmClassMappingKt.b(kClass).getDeclaringClass();
            declaringClass.getClass();
            sb2 = sb;
            z3 = z2;
            e(sb2, Reflection.f71922a.b(declaringClass), fqNameUnsafe.e(), CollectionsKt.w(list, kClass.getD().size()), false, z3);
            sb2.append(FileUtils.HIDDEN_PREFIX);
            sb2.append(RenderingUtilsKt.a(fqNameUnsafe.g()));
        }
        h(sb2, CollectionsKt.q0(list, kClass.getD().size()), z, z3);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x019a  */
    public static String f(KType kType, boolean z) {
        FqNameUnsafe fqNameUnsafe;
        kType.getClass();
        AbstractKType abstractKType = (AbstractKType) kType;
        if (abstractKType.getF74425e()) {
            AbstractKType abstractKTypeA = abstractKType.getF74424c();
            abstractKTypeA.getClass();
            return f(abstractKTypeA, true);
        }
        AbstractKType abstractKTypeA2 = abstractKType.getF74424c();
        AbstractKType abstractKTypeH = abstractKType.getD();
        if (abstractKTypeA2 != null && abstractKTypeH != null) {
            final String strG = g(abstractKTypeA2);
            String strG2 = g(abstractKTypeH);
            if (Intrinsics.c(strG, StringsKt.J(strG2, "?", ""))) {
                return StringsKt.J(strG2, "?", "!");
            }
            if (StringsKt.p(strG2, "?", false)) {
                if ((strG + '?').equals(strG2)) {
                    return strG + '!';
                }
            }
            if (("(" + strG + ")?").equals(strG2)) {
                return fc.h("(", strG, ")!");
            }
            String strB = RenderingUtilsKt.b(strG, strG2, new Function0(strG) { // from class: kotlin.reflect.jvm.internal.ReflectionObjectRenderer$$Lambda$5

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final String f72173b;

                {
                    this.f72173b = strG;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    String strL = fc.l(new StringBuilder(), StandardNames.n.f73679a.f73683a, JwtParser.SEPARATOR_CHAR);
                    if (!StringsKt.P(this.f72173b, strL, false)) {
                        strL = null;
                    }
                    return strL == null ? "" : strL;
                }
            }, new Function0(strG) { // from class: kotlin.reflect.jvm.internal.ReflectionObjectRenderer$$Lambda$6

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final String f72174b;

                {
                    this.f72174b = strG;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    String strL = fc.l(new StringBuilder(), StandardNames.l.f73679a.f73683a, JwtParser.SEPARATOR_CHAR);
                    if (!StringsKt.P(this.f72174b, strL, false)) {
                        strL = null;
                    }
                    return strL == null ? "" : strL;
                }
            }, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.RenderingUtilsKt$$Lambda$0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    String str = (String) obj;
                    str.getClass();
                    return str;
                }
            });
            if (strB != null) {
                return strB;
            }
            return "(" + strG + ".." + strG2 + ')';
        }
        StringBuilder sb = new StringBuilder();
        KType kTypeG = abstractKType.getG();
        if (kTypeG != null) {
            sb.append(kTypeG);
            sb.append(" /* = ");
        }
        KClassifier kClassifierA = kType.getF74442c();
        if (kClassifierA instanceof KTypeParameter) {
            sb.append(RenderingUtilsKt.a(Name.e(((KTypeParameter) kClassifierA).getD())));
            if (kType.getF74443e()) {
                sb.append("?");
            } else if (abstractKType.getF74445h()) {
                sb.append(" & Any");
            }
        } else if (kClassifierA instanceof KClass) {
            KClass kClass = (KClass) kClassifierA;
            if (abstractKType.getF74446i()) {
                fqNameUnsafe = StandardNames.FqNames.f72272b;
            } else {
                KClass kClassH = abstractKType.getF74448k();
                if (kClassH == null) {
                    kClassH = kClass;
                }
                String f74431c = kClassH.getF74431c();
                fqNameUnsafe = f74431c != null ? new FqNameUnsafe(f74431c) : null;
            }
            if (fqNameUnsafe == null) {
                fqNameUnsafe = new FqNameUnsafe(((KClassImpl) kClass).f72090e.getName());
            }
            if (fqNameUnsafe.h(StandardNames.f72270k) && Intrinsics.c(FunctionTypesKt.e(fqNameUnsafe), FunctionTypeKind.Function.f72293c)) {
                List listB = kType.getD();
                KTypeProjection.INSTANCE.getClass();
                if (listB.contains(KTypeProjection.d)) {
                    e(sb, kClass, fqNameUnsafe, kType.getD(), kType.getF74443e(), z);
                } else {
                    if (abstractKType.getF74443e()) {
                        sb.append("(");
                    }
                    if (abstractKType.getF74447j()) {
                        sb.append("suspend ");
                    }
                    CollectionsKt.J(CollectionsKt.x(1, abstractKType.getD()), sb, null, "(", ") -> ", null, 114);
                    sb.append(CollectionsKt.M(abstractKType.getD()));
                    if (abstractKType.getF74443e()) {
                        sb.append(")?");
                    }
                }
            } else {
                e(sb, kClass, fqNameUnsafe, kType.getD(), kType.getF74443e(), z);
            }
        } else if (kClassifierA instanceof KTypeAliasImpl) {
            FqNameUnsafe fqNameUnsafe2 = ((KTypeAliasImpl) kClassifierA).f72158b.f73679a;
            fqNameUnsafe2.getClass();
            CollectionsKt.J(FqNameUnsafe.f(fqNameUnsafe2), sb, FileUtils.HIDDEN_PREFIX, null, null, new Function1() { // from class: kotlin.reflect.jvm.internal.ReflectionObjectRenderer$$Lambda$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Name name = (Name) obj;
                    name.getClass();
                    return RenderingUtilsKt.a(name);
                }
            }, 60);
            sb = sb;
            h(sb, kType.getD(), kType.getF74443e(), z);
        } else {
            sb.append("???");
        }
        if (abstractKType.getG() != null) {
            sb.append(" */");
        }
        return sb.toString();
    }

    public static /* synthetic */ String g(KType kType) {
        return f(kType, false);
    }

    public static void h(StringBuilder sb, List list, boolean z, final boolean z2) {
        StringBuilder sb2;
        if (list.isEmpty()) {
            sb2 = sb;
        } else {
            sb2 = sb;
            CollectionsKt.J(list, sb2, null, "<", ">", new Function1(z2) { // from class: kotlin.reflect.jvm.internal.ReflectionObjectRenderer$$Lambda$4

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final boolean f72172b;

                {
                    this.f72172b = z2;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    KTypeProjection kTypeProjection = (KTypeProjection) obj;
                    kTypeProjection.getClass();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.f72172b ? "(raw) " : "");
                    sb3.append(kTypeProjection);
                    return sb3.toString();
                }
            }, 50);
        }
        if (z) {
            sb2.append("?");
        }
    }
}
