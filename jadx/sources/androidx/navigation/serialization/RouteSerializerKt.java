package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NamedNavArgument;
import androidx.navigation.NavArgument;
import androidx.navigation.NavArgumentBuilder;
import androidx.navigation.NavType;
import defpackage.d21;
import defpackage.fc;
import defpackage.lc0;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tg0;
import defpackage.v40;
import defpackage.wp;
import io.jsonwebtoken.JwtParser;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.modules.SerializersModuleKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation-common_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class RouteSerializerKt {
    public static final NavType a(SerialDescriptor serialDescriptor, Map map) {
        Object next;
        NavType navTypeB;
        boolean zEquals;
        Iterator it = map.keySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            KType kType = (KType) next;
            serialDescriptor.getClass();
            kType.getClass();
            if (serialDescriptor.b() != kType.getF74407e()) {
                zEquals = false;
            } else {
                KSerializer kSerializerE = SerializersKt.e(SerializersModuleKt.f75847a, kType);
                if (kSerializerE == null) {
                    wp.e("Cannot find KSerializer for [", serialDescriptor.getF75659a(), "]. If applicable, custom KSerializers for custom and third-party KType is currently not supported when declared directly on a class field via @Serializable(with = ...). Please use @Serializable or @Serializable(with = ...) on the class or object declaration.");
                    return null;
                }
                zEquals = serialDescriptor.equals(kSerializerE.getF19838b());
            }
        } while (!zEquals);
        KType kType2 = (KType) next;
        NavType navType = kType2 != null ? (NavType) map.get(kType2) : null;
        if (navType == null) {
            navType = null;
        }
        if (navType == null) {
            serialDescriptor.getClass();
            InternalType internalTypeA = NavTypeConverterKt.a(serialDescriptor);
            int[] iArr = NavTypeConverterKt.WhenMappings.f18361a;
            switch (iArr[internalTypeA.ordinal()]) {
                case 1:
                    navTypeB = InternalNavType.g;
                    navType = navTypeB;
                    break;
                case 2:
                    navTypeB = NavType.p;
                    navType = navTypeB;
                    break;
                case 3:
                    navTypeB = NavType.f18197c;
                    navType = navTypeB;
                    break;
                case 4:
                    navTypeB = NavType.m;
                    navType = navTypeB;
                    break;
                case 5:
                    navTypeB = InternalNavType.f18354c;
                    navType = navTypeB;
                    break;
                case 6:
                    navTypeB = NavType.f18202j;
                    navType = navTypeB;
                    break;
                case 7:
                    navTypeB = NavType.g;
                    navType = navTypeB;
                    break;
                case 8:
                    NavType.Companion companion = NavType.f18196b;
                    Class clsA = NavTypeConverter_androidKt.a(serialDescriptor);
                    companion.getClass();
                    navTypeB = NavType.Companion.b(clsA, false);
                    if (navTypeB == null) {
                        navTypeB = UNKNOWN.s;
                    }
                    navType = navTypeB;
                    break;
                case 9:
                    navTypeB = InternalNavType.f18352a;
                    navType = navTypeB;
                    break;
                case 10:
                    navTypeB = InternalNavType.f18353b;
                    navType = navTypeB;
                    break;
                case 11:
                    navTypeB = InternalNavType.d;
                    navType = navTypeB;
                    break;
                case 12:
                    navTypeB = InternalNavType.f18355e;
                    navType = navTypeB;
                    break;
                case 13:
                    navTypeB = InternalNavType.f18356f;
                    navType = navTypeB;
                    break;
                case 14:
                    navTypeB = NavType.f18198e;
                    navType = navTypeB;
                    break;
                case 15:
                    navTypeB = NavType.n;
                    navType = navTypeB;
                    break;
                case 16:
                    navTypeB = InternalNavType.f18359j;
                    navType = navTypeB;
                    break;
                case 17:
                    navTypeB = NavType.f18203k;
                    navType = navTypeB;
                    break;
                case 18:
                    navTypeB = NavType.f18200h;
                    navType = navTypeB;
                    break;
                case 19:
                    int i2 = iArr[NavTypeConverterKt.a(serialDescriptor.h(0)).ordinal()];
                    navTypeB = i2 != 1 ? i2 != 2 ? UNKNOWN.s : InternalNavType.f18357h : NavType.q;
                    navType = navTypeB;
                    break;
                case 20:
                    switch (iArr[NavTypeConverterKt.a(serialDescriptor.h(0)).ordinal()]) {
                        case 1:
                            navTypeB = NavType.r;
                            navType = navTypeB;
                            break;
                        case 2:
                            navTypeB = InternalNavType.f18358i;
                            navType = navTypeB;
                            break;
                        case 3:
                            navTypeB = NavType.f18199f;
                            navType = navTypeB;
                            break;
                        case 4:
                            navTypeB = NavType.o;
                            navType = navTypeB;
                            break;
                        case 5:
                            navTypeB = InternalNavType.f18360k;
                            navType = navTypeB;
                            break;
                        case 6:
                            navTypeB = NavType.l;
                            navType = navTypeB;
                            break;
                        case 7:
                            navTypeB = NavType.f18201i;
                            navType = navTypeB;
                            break;
                        case 8:
                            final Class clsA2 = NavTypeConverter_androidKt.a(serialDescriptor.h(0));
                            navType = new CollectionNavType<List<? extends D>>(clsA2) { // from class: androidx.navigation.serialization.InternalAndroidNavType$EnumListType
                                public final NavType.EnumType s;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(true);
                                    clsA2.getClass();
                                    this.s = new NavType.EnumType(clsA2);
                                }

                                @Override // androidx.navigation.NavType
                                public final Object a(String str, Bundle bundle) {
                                    bundle.getClass();
                                    str.getClass();
                                    Object obj = bundle.get(str);
                                    if (obj instanceof List) {
                                        return (List) obj;
                                    }
                                    return null;
                                }

                                @Override // androidx.navigation.NavType
                                public final String b() {
                                    return n00.p(this.s.t, new StringBuilder("List<"), "}>");
                                }

                                @Override // androidx.navigation.NavType
                                public final Object c(Object obj, String str) {
                                    List list = (List) obj;
                                    NavType.EnumType enumType = this.s;
                                    return list != null ? CollectionsKt.Y(list, CollectionsKt.O(enumType.d(str))) : CollectionsKt.O(enumType.d(str));
                                }

                                @Override // androidx.navigation.NavType
                                /* JADX INFO: renamed from: d */
                                public final Object h(String str) {
                                    str.getClass();
                                    return CollectionsKt.O(this.s.d(str));
                                }

                                @Override // androidx.navigation.NavType
                                public final void e(Bundle bundle, String str, Object obj) {
                                    List list = (List) obj;
                                    str.getClass();
                                    bundle.putSerializable(str, list != null ? new ArrayList(list) : null);
                                }

                                public final boolean equals(Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    if (!(obj instanceof InternalAndroidNavType$EnumListType)) {
                                        return false;
                                    }
                                    return Intrinsics.c(this.s, ((InternalAndroidNavType$EnumListType) obj).s);
                                }

                                @Override // androidx.navigation.NavType
                                public final boolean g(Object obj, Object obj2) {
                                    List list = (List) obj;
                                    List list2 = (List) obj2;
                                    return Intrinsics.c(list != null ? new ArrayList(list) : null, list2 != null ? new ArrayList(list2) : null);
                                }

                                @Override // androidx.navigation.CollectionNavType
                                public final Object h() {
                                    return EmptyList.f71768b;
                                }

                                public final int hashCode() {
                                    return this.s.s.hashCode();
                                }

                                @Override // androidx.navigation.CollectionNavType
                                public final List i(Object obj) {
                                    List list = (List) obj;
                                    if (list == null) {
                                        return EmptyList.f71768b;
                                    }
                                    List list2 = list;
                                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                                    Iterator it2 = list2.iterator();
                                    while (it2.hasNext()) {
                                        arrayList.add(((Enum) it2.next()).toString());
                                    }
                                    return arrayList;
                                }
                            };
                            break;
                        default:
                            navTypeB = UNKNOWN.s;
                            navType = navTypeB;
                            break;
                    }
                    break;
                case 21:
                    final Class clsA3 = NavTypeConverter_androidKt.a(serialDescriptor);
                    if (!Enum.class.isAssignableFrom(clsA3)) {
                        navTypeB = UNKNOWN.s;
                        navType = navTypeB;
                    } else {
                        navType = new InternalAndroidNavType$SerializableNullableType<D>(clsA3) { // from class: androidx.navigation.serialization.InternalAndroidNavType$EnumNullableType
                            public final Class t;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                new NavType<D>(clsA3) { // from class: androidx.navigation.serialization.InternalAndroidNavType$SerializableNullableType
                                    public final Class s;

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(true);
                                        clsA3.getClass();
                                        this.s = clsA3;
                                        if (Serializable.class.isAssignableFrom(clsA3)) {
                                            return;
                                        }
                                        lc0.i(clsA3, " does not implement Serializable.");
                                        throw null;
                                    }

                                    @Override // androidx.navigation.NavType
                                    public final Object a(String str, Bundle bundle) {
                                        bundle.getClass();
                                        str.getClass();
                                        Object obj = bundle.get(str);
                                        if (obj instanceof Serializable) {
                                            return (Serializable) obj;
                                        }
                                        return null;
                                    }

                                    @Override // androidx.navigation.NavType
                                    public String b() {
                                        return this.s.getName();
                                    }

                                    @Override // androidx.navigation.NavType
                                    public final void e(Bundle bundle, String str, Object obj) {
                                        str.getClass();
                                        bundle.putSerializable(str, (Serializable) this.s.cast((Serializable) obj));
                                    }

                                    public final boolean equals(Object obj) {
                                        if (this == obj) {
                                            return true;
                                        }
                                        if (!(obj instanceof InternalAndroidNavType$SerializableNullableType)) {
                                            return false;
                                        }
                                        return Intrinsics.c(this.s, ((InternalAndroidNavType$SerializableNullableType) obj).s);
                                    }

                                    @Override // androidx.navigation.NavType
                                    public Serializable h(String str) {
                                        str.getClass();
                                        throw new UnsupportedOperationException("Serializables don't support default values.");
                                    }

                                    public final int hashCode() {
                                        return this.s.hashCode();
                                    }
                                };
                                clsA3.getClass();
                                if (clsA3.isEnum()) {
                                    this.t = clsA3;
                                } else {
                                    lc0.i(clsA3, " is not an Enum type.");
                                    throw null;
                                }
                            }

                            @Override // androidx.navigation.serialization.InternalAndroidNavType$SerializableNullableType, androidx.navigation.NavType
                            public final String b() {
                                return this.t.getName();
                            }

                            @Override // androidx.navigation.serialization.InternalAndroidNavType$SerializableNullableType
                            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
                            public final Enum h(String str) {
                                str.getClass();
                                Object obj = null;
                                if (Intrinsics.c(str, "null")) {
                                    return null;
                                }
                                Class cls = this.t;
                                Object[] enumConstants = cls.getEnumConstants();
                                enumConstants.getClass();
                                for (Object obj2 : enumConstants) {
                                    Enum r5 = (Enum) obj2;
                                    r5.getClass();
                                    if (StringsKt.s(r5.name(), str, true)) {
                                        obj = obj2;
                                        break;
                                    }
                                }
                                Enum r1 = (Enum) obj;
                                if (r1 != null) {
                                    return r1;
                                }
                                StringBuilder sbR = pq0.r("Enum value ", str, " not found for type ");
                                sbR.append(cls.getName());
                                sbR.append(JwtParser.SEPARATOR_CHAR);
                                throw new IllegalArgumentException(sbR.toString());
                            }
                        };
                    }
                    break;
                default:
                    navTypeB = UNKNOWN.s;
                    navType = navTypeB;
                    break;
            }
        }
        if (Intrinsics.c(navType, UNKNOWN.s)) {
            return null;
        }
        navType.getClass();
        return navType;
    }

    public static final int b(KSerializer kSerializer) {
        int iHashCode = kSerializer.getF19838b().getF75659a().hashCode();
        int f75549c = kSerializer.getF19838b().getF75661c();
        for (int i2 = 0; i2 < f75549c; i2++) {
            iHashCode = (iHashCode * 31) + kSerializer.getF19838b().f(i2).hashCode();
        }
        return iHashCode;
    }

    public static final ArrayList c(KSerializer kSerializer, Map map) {
        map.getClass();
        if (kSerializer instanceof PolymorphicSerializer) {
            lc0.n("Cannot generate NavArguments for polymorphic serializer ", kSerializer, ". Arguments can only be generated from concrete classes or objects.");
            return null;
        }
        int f75549c = kSerializer.getF19838b().getF75661c();
        ArrayList arrayList = new ArrayList(f75549c);
        for (int i2 = 0; i2 < f75549c; i2++) {
            String strF = kSerializer.getF19838b().f(i2);
            strF.getClass();
            NavArgumentBuilder navArgumentBuilder = new NavArgumentBuilder();
            SerialDescriptor serialDescriptorH = kSerializer.getF19838b().h(i2);
            boolean zB = serialDescriptorH.b();
            NavType navTypeA = a(serialDescriptorH, map);
            if (navTypeA == null) {
                md.n(f(strF, serialDescriptorH.getF75659a(), kSerializer.getF19838b().getF75659a(), map.toString()));
                return null;
            }
            NavArgument.Builder builder = navArgumentBuilder.f18110a;
            builder.f18106a = navTypeA;
            builder.f18107b = zB;
            if (kSerializer.getF19838b().j(i2)) {
                builder.f18109e = true;
            }
            arrayList.add(new NamedNavArgument(strF, builder.a()));
        }
        return arrayList;
    }

    public static final String d(Object obj, LinkedHashMap linkedHashMap) {
        obj.getClass();
        KSerializer kSerializerB = SerializersKt.b(Reflection.f71922a.b(obj.getClass()));
        final Map mapH = new RouteEncoder(kSerializerB, linkedHashMap).H(obj);
        final RouteBuilder routeBuilder = new RouteBuilder(kSerializerB);
        Function3 function3 = new Function3() { // from class: androidx.navigation.serialization.b
            @Override // kotlin.jvm.functions.Function3
            public final Object A(Object obj2, Object obj3, Object obj4) {
                int iIntValue = ((Integer) obj2).intValue();
                String str = (String) obj3;
                NavType navType = (NavType) obj4;
                str.getClass();
                navType.getClass();
                Object obj5 = mapH.get(str);
                obj5.getClass();
                List list = (List) obj5;
                boolean z = navType instanceof CollectionNavType;
                RouteBuilder routeBuilder2 = routeBuilder;
                int i2 = RouteBuilder.WhenMappings.f18365a[((z || routeBuilder2.f18362a.getF19838b().j(iIntValue)) ? RouteBuilder.ParamType.QUERY : RouteBuilder.ParamType.PATH).ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        v40.g();
                        return null;
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        routeBuilder2.a(str, (String) it.next());
                    }
                } else {
                    if (list.size() != 1) {
                        StringBuilder sbR = pq0.r("Expected one value for argument ", str, ", found ");
                        sbR.append(list.size());
                        sbR.append("values instead.");
                        throw new IllegalArgumentException(sbR.toString().toString());
                    }
                    routeBuilder2.f18364c += '/' + ((String) CollectionsKt.B(list));
                }
                return Unit.f71739a;
            }
        };
        int f75549c = kSerializerB.getF19838b().getF75661c();
        for (int i2 = 0; i2 < f75549c; i2++) {
            String strF = kSerializerB.getF19838b().f(i2);
            NavType navType = (NavType) linkedHashMap.get(strF);
            if (navType == null) {
                tg0.c(d21.d(']', "Cannot locate NavType for argument [", strF));
                return null;
            }
            function3.A(Integer.valueOf(i2), strF, navType);
        }
        return routeBuilder.f18363b + routeBuilder.f18364c + routeBuilder.d;
    }

    public static final boolean e(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return Intrinsics.c(serialDescriptor.getF75548b(), StructureKind.CLASS.f75564a) && serialDescriptor.getL() && serialDescriptor.getF75661c() == 1;
    }

    public static final String f(String str, String str2, String str3, String str4) {
        return d21.p(fc.s("Route ", str3, " could not find any NavType for argument ", str, " of type "), str2, " - typeMap received was ", str4);
    }
}
