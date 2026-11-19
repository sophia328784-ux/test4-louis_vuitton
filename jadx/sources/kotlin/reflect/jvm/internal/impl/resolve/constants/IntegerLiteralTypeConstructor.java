package kotlin.reflect.jvm.internal.impl.resolve.constants;

import defpackage.mt;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class IntegerLiteralTypeConstructor implements TypeConstructor {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f73875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ModuleDescriptor f73876c;
    public final Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SimpleType f73877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f73878f;

    public static final class Companion {

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class Mode {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Mode[] $VALUES;
            public static final Mode COMMON_SUPER_TYPE;
            public static final Mode INTERSECTION_TYPE;

            static {
                Mode mode = new Mode("COMMON_SUPER_TYPE", 0);
                COMMON_SUPER_TYPE = mode;
                Mode mode2 = new Mode("INTERSECTION_TYPE", 1);
                INTERSECTION_TYPE = mode2;
                Mode[] modeArr = {mode, mode2};
                $VALUES = modeArr;
                $ENTRIES = EnumEntriesKt.a(modeArr);
            }

            public static Mode valueOf(String str) {
                return (Mode) Enum.valueOf(Mode.class, str);
            }

            public static Mode[] values() {
                return (Mode[]) $VALUES.clone();
            }
        }

        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f73881a;

            static {
                int[] iArr = new int[Mode.values().length];
                try {
                    iArr[Mode.COMMON_SUPER_TYPE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Mode.INTERSECTION_TYPE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f73881a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v17, types: [kotlin.reflect.jvm.internal.impl.types.SimpleType] */
        /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.types.KotlinType, kotlin.reflect.jvm.internal.impl.types.SimpleType] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r3v4, types: [java.util.Set] */
        public static SimpleType a(ArrayList arrayList) {
            LinkedHashSet linkedHashSetI;
            Mode mode = Mode.INTERSECTION_TYPE;
            if (arrayList.isEmpty()) {
                return null;
            }
            Iterator it = arrayList.iterator();
            if (!it.hasNext()) {
                mt.i("Empty collection can't be reduced.");
                return null;
            }
            ?? next = it.next();
            while (it.hasNext()) {
                SimpleType simpleType = (SimpleType) it.next();
                next = (SimpleType) next;
                IntegerLiteralTypeConstructor.g.getClass();
                if (next != 0 && simpleType != null) {
                    TypeConstructor typeConstructorH0 = next.H0();
                    TypeConstructor typeConstructorH1 = simpleType.H0();
                    boolean z = typeConstructorH0 instanceof IntegerLiteralTypeConstructor;
                    if (z && (typeConstructorH1 instanceof IntegerLiteralTypeConstructor)) {
                        IntegerLiteralTypeConstructor integerLiteralTypeConstructor = (IntegerLiteralTypeConstructor) typeConstructorH0;
                        Set set = integerLiteralTypeConstructor.d;
                        Set set2 = ((IntegerLiteralTypeConstructor) typeConstructorH1).d;
                        int i2 = WhenMappings.f73881a[mode.ordinal()];
                        if (i2 == 1) {
                            linkedHashSetI = CollectionsKt.I(set, set2);
                        } else {
                            if (i2 != 2) {
                                v40.g();
                                return null;
                            }
                            Set set3 = set;
                            Set set4 = set2;
                            set3.getClass();
                            set4.getClass();
                            linkedHashSetI = CollectionsKt.A0(set3);
                            CollectionsKt.j(linkedHashSetI, set4);
                        }
                        IntegerLiteralTypeConstructor integerLiteralTypeConstructor2 = new IntegerLiteralTypeConstructor(integerLiteralTypeConstructor.f73875b, integerLiteralTypeConstructor.f73876c, linkedHashSetI, null);
                        TypeAttributes.f74232c.getClass();
                        TypeAttributes typeAttributes = TypeAttributes.d;
                        typeAttributes.getClass();
                        next = KotlinTypeFactory.f(integerLiteralTypeConstructor2, EmptyList.f71768b, typeAttributes, false, ErrorUtils.a(ErrorScopeKind.INTEGER_LITERAL_TYPE_SCOPE, true, "unknown integer literal type"));
                    } else if (z) {
                        if (((IntegerLiteralTypeConstructor) typeConstructorH0).d.contains(simpleType)) {
                            next = simpleType;
                        }
                    } else if (!(typeConstructorH1 instanceof IntegerLiteralTypeConstructor) || !((IntegerLiteralTypeConstructor) typeConstructorH1).d.contains(next)) {
                    }
                }
                next = 0;
            }
            return (SimpleType) next;
        }
    }

    public IntegerLiteralTypeConstructor(long j2, ModuleDescriptor moduleDescriptor, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        TypeAttributes.f74232c.getClass();
        TypeAttributes typeAttributes = TypeAttributes.d;
        typeAttributes.getClass();
        this.f73877e = KotlinTypeFactory.f(this, EmptyList.f71768b, typeAttributes, false, ErrorUtils.a(ErrorScopeKind.INTEGER_LITERAL_TYPE_SCOPE, true, "unknown integer literal type"));
        this.f73878f = LazyKt.b(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final IntegerLiteralTypeConstructor f73879b;

            {
                this.f73879b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                IntegerLiteralTypeConstructor integerLiteralTypeConstructor = this.f73879b;
                SimpleType simpleTypeO = integerLiteralTypeConstructor.f73876c.g().k("Comparable").o();
                simpleTypeO.getClass();
                ArrayList arrayListU = CollectionsKt.U(TypeSubstitutionKt.d(simpleTypeO, CollectionsKt.O(new TypeProjectionImpl(Variance.IN_VARIANCE, integerLiteralTypeConstructor.f73877e)), null, 2));
                ModuleDescriptor moduleDescriptor2 = integerLiteralTypeConstructor.f73876c;
                moduleDescriptor2.getClass();
                KotlinBuiltIns kotlinBuiltInsG = moduleDescriptor2.g();
                kotlinBuiltInsG.getClass();
                SimpleType simpleTypeT = kotlinBuiltInsG.t(PrimitiveType.INT);
                if (simpleTypeT == null) {
                    KotlinBuiltIns.a(59);
                    throw null;
                }
                KotlinBuiltIns kotlinBuiltInsG2 = moduleDescriptor2.g();
                kotlinBuiltInsG2.getClass();
                SimpleType simpleTypeT2 = kotlinBuiltInsG2.t(PrimitiveType.LONG);
                if (simpleTypeT2 == null) {
                    KotlinBuiltIns.a(60);
                    throw null;
                }
                KotlinBuiltIns kotlinBuiltInsG3 = moduleDescriptor2.g();
                kotlinBuiltInsG3.getClass();
                SimpleType simpleTypeT3 = kotlinBuiltInsG3.t(PrimitiveType.BYTE);
                if (simpleTypeT3 == null) {
                    KotlinBuiltIns.a(57);
                    throw null;
                }
                KotlinBuiltIns kotlinBuiltInsG4 = moduleDescriptor2.g();
                kotlinBuiltInsG4.getClass();
                SimpleType simpleTypeT4 = kotlinBuiltInsG4.t(PrimitiveType.SHORT);
                if (simpleTypeT4 == null) {
                    KotlinBuiltIns.a(58);
                    throw null;
                }
                List listP = CollectionsKt.P(simpleTypeT, simpleTypeT2, simpleTypeT3, simpleTypeT4);
                if (!(listP instanceof Collection) || !listP.isEmpty()) {
                    Iterator it = listP.iterator();
                    while (it.hasNext()) {
                        if (integerLiteralTypeConstructor.d.contains((KotlinType) it.next())) {
                            SimpleType simpleTypeO2 = moduleDescriptor2.g().k("Number").o();
                            if (simpleTypeO2 != null) {
                                arrayListU.add(simpleTypeO2);
                                return arrayListU;
                            }
                            KotlinBuiltIns.a(56);
                            throw null;
                        }
                    }
                }
                return arrayListU;
            }
        });
        this.f73875b = j2;
        this.f73876c = moduleDescriptor;
        this.d = set;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean A() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final KotlinBuiltIns g() {
        return this.f73876c.g();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List getParameters() {
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final Collection i() {
        return (List) this.f73878f.getF71699b();
    }

    public final String toString() {
        return "IntegerLiteralType".concat("[" + CollectionsKt.K(this.d, ",", null, null, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinType kotlinType = (KotlinType) obj;
                IntegerLiteralTypeConstructor.Companion companion = IntegerLiteralTypeConstructor.g;
                kotlinType.getClass();
                return kotlinType.toString();
            }
        }, 30) + ']');
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final ClassifierDescriptor y() {
        return null;
    }
}
