package androidx.navigation;

import android.os.Bundle;
import android.os.Parcelable;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.lc0;
import defpackage.pq0;
import defpackage.x1;
import io.jsonwebtoken.JwtParser;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0006\u0007\b\t\n\u000b\fB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\r"}, d2 = {"Landroidx/navigation/NavType;", "T", "", "", "isNullableAllowed", "<init>", "(Z)V", "Companion", "ParcelableType", "ParcelableArrayType", "SerializableType", "EnumType", "SerializableArrayType", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class NavType<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f18196b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final IntNavType f18197c = new IntNavType();
    public static final NavType$Companion$ReferenceType$1 d = new NavType$Companion$ReferenceType$1(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final IntArrayNavType f18198e = new IntArrayNavType();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final IntListNavType f18199f = new IntListNavType();
    public static final LongNavType g = new LongNavType();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final LongArrayNavType f18200h = new LongArrayNavType();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final LongListNavType f18201i = new LongListNavType();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final FloatNavType f18202j = new FloatNavType();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final FloatArrayNavType f18203k = new FloatArrayNavType();
    public static final FloatListNavType l = new FloatListNavType();
    public static final BoolNavType m = new BoolNavType();
    public static final BoolArrayNavType n = new BoolArrayNavType();
    public static final BoolListNavType o = new BoolListNavType();
    public static final StringNavType p = new StringNavType();
    public static final StringArrayNavType q = new StringArrayNavType();
    public static final StringListNavType r = new StringListNavType();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f18204a;

    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0018\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005R\u001c\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0005R\"\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0005R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0005R\u001c\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0005R\"\u0010\u000f\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0005R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0005R\u001c\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0005R\"\u0010\u0014\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\t0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0005R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0005R\u001c\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0005R\"\u0010\u0019\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\t0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0005R\u001c\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0005R\"\u0010\u001d\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u001c0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0005R\"\u0010\u001e\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\t0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0005¨\u0006\u001f"}, d2 = {"Landroidx/navigation/NavType$Companion;", "", "Landroidx/navigation/NavType;", "", "IntType", "Landroidx/navigation/NavType;", "ReferenceType", "", "IntArrayType", "", "IntListType", "", "LongType", "", "LongArrayType", "LongListType", "", "FloatType", "", "FloatArrayType", "FloatListType", "", "BoolType", "", "BoolArrayType", "BoolListType", "", "StringType", "", "StringArrayType", "StringListType", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static NavType a(String str, String str2) {
            NavType navType = NavType.f18197c;
            navType.getClass();
            if (!"integer".equals(str)) {
                navType = NavType.f18198e;
                navType.getClass();
                if (!"integer[]".equals(str)) {
                    navType = NavType.f18199f;
                    navType.getClass();
                    if (!"List<Int>".equals(str)) {
                        navType = NavType.g;
                        navType.getClass();
                        if (!"long".equals(str)) {
                            navType = NavType.f18200h;
                            navType.getClass();
                            if (!"long[]".equals(str)) {
                                navType = NavType.f18201i;
                                navType.getClass();
                                if (!"List<Long>".equals(str)) {
                                    navType = NavType.m;
                                    navType.getClass();
                                    if (!"boolean".equals(str)) {
                                        navType = NavType.n;
                                        navType.getClass();
                                        if (!"boolean[]".equals(str)) {
                                            navType = NavType.o;
                                            navType.getClass();
                                            if (!"List<Boolean>".equals(str)) {
                                                navType = NavType.p;
                                                navType.getClass();
                                                if (!"string".equals(str)) {
                                                    navType = NavType.q;
                                                    navType.getClass();
                                                    if (!"string[]".equals(str)) {
                                                        navType = NavType.r;
                                                        navType.getClass();
                                                        if (!"List<String>".equals(str)) {
                                                            navType = NavType.f18202j;
                                                            navType.getClass();
                                                            if (!"float".equals(str)) {
                                                                navType = NavType.f18203k;
                                                                navType.getClass();
                                                                if (!"float[]".equals(str)) {
                                                                    navType = NavType.l;
                                                                    navType.getClass();
                                                                    if (!"List<Float>".equals(str)) {
                                                                        navType = null;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (navType != null) {
                return navType;
            }
            NavType$Companion$ReferenceType$1 navType$Companion$ReferenceType$1 = NavType.d;
            navType$Companion$ReferenceType$1.getClass();
            if ("reference".equals(str)) {
                return navType$Companion$ReferenceType$1;
            }
            if (str.length() == 0) {
                return NavType.p;
            }
            try {
                String strConcat = (!StringsKt.P(str, FileUtils.HIDDEN_PREFIX, false) || str2 == null) ? str : str2.concat(str);
                boolean zP = StringsKt.p(str, "[]", false);
                if (zP) {
                    strConcat = strConcat.substring(0, strConcat.length() - 2);
                }
                NavType navTypeB = b(Class.forName(strConcat), zP);
                if (navTypeB != null) {
                    return navTypeB;
                }
                throw new IllegalArgumentException(strConcat.concat(" is not Serializable or Parcelable.").toString());
            } catch (ClassNotFoundException e2) {
                x1.m(e2);
                return null;
            }
        }

        public static NavType b(Class cls, boolean z) {
            if (Parcelable.class.isAssignableFrom(cls)) {
                return z ? new ParcelableArrayType(cls) : new ParcelableType(cls);
            }
            if (Enum.class.isAssignableFrom(cls) && !z) {
                return new EnumType(cls);
            }
            if (Serializable.class.isAssignableFrom(cls)) {
                return z ? new SerializableArrayType(cls) : new SerializableType(cls);
            }
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\f\b\u0001\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/navigation/NavType$EnumType;", "", "D", "Landroidx/navigation/NavType$SerializableType;", "Ljava/lang/Class;", "type", "<init>", "(Ljava/lang/Class;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class EnumType<D extends Enum<?>> extends SerializableType<D> {
        public final Class t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumType(Class<D> cls) {
            super(false, cls);
            cls.getClass();
            if (cls.isEnum()) {
                this.t = cls;
            } else {
                lc0.i(cls, " is not an Enum type.");
                throw null;
            }
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        public final String b() {
            return this.t.getName();
        }

        @Override // androidx.navigation.NavType.SerializableType
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public final Enum h(String str) {
            Object obj;
            str.getClass();
            Class cls = this.t;
            Object[] enumConstants = cls.getEnumConstants();
            enumConstants.getClass();
            int length = enumConstants.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    obj = null;
                    break;
                }
                obj = enumConstants[i2];
                if (StringsKt.s(((Enum) obj).name(), str, true)) {
                    break;
                }
                i2++;
            }
            Enum r3 = (Enum) obj;
            if (r3 != null) {
                return r3;
            }
            StringBuilder sbR = pq0.r("Enum value ", str, " not found for type ");
            sbR.append(cls.getName());
            sbR.append(JwtParser.SEPARATOR_CHAR);
            throw new IllegalArgumentException(sbR.toString());
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00040\u0003B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/navigation/NavType$ParcelableArrayType;", "Landroid/os/Parcelable;", "D", "Landroidx/navigation/NavType;", "", "Ljava/lang/Class;", "type", "<init>", "(Ljava/lang/Class;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ParcelableArrayType<D extends Parcelable> extends NavType<D[]> {
        public final Class s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableArrayType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (!Parcelable.class.isAssignableFrom(cls)) {
                lc0.i(cls, " does not implement Parcelable.");
                throw null;
            }
            try {
                this.s = Class.forName("[L" + cls.getName() + ';');
            } catch (ClassNotFoundException e2) {
                x1.m(e2);
                throw null;
            }
        }

        @Override // androidx.navigation.NavType
        public final Object a(String str, Bundle bundle) {
            bundle.getClass();
            str.getClass();
            return (Parcelable[]) bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public final String b() {
            return this.s.getName();
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: d */
        public final Object h(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public final void e(Bundle bundle, String str, Object obj) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            str.getClass();
            this.s.cast(parcelableArr);
            bundle.putParcelableArray(str, parcelableArr);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !ParcelableArrayType.class.equals(obj.getClass())) {
                return false;
            }
            return Intrinsics.c(this.s, ((ParcelableArrayType) obj).s);
        }

        @Override // androidx.navigation.NavType
        public final boolean g(Object obj, Object obj2) {
            return ArraysKt.h((Parcelable[]) obj, (Parcelable[]) obj2);
        }

        public final int hashCode() {
            return this.s.hashCode();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/navigation/NavType$ParcelableType;", "D", "Landroidx/navigation/NavType;", "Ljava/lang/Class;", "type", "<init>", "(Ljava/lang/Class;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ParcelableType<D> extends NavType<D> {
        public final Class s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (Parcelable.class.isAssignableFrom(cls) || Serializable.class.isAssignableFrom(cls)) {
                this.s = cls;
            } else {
                lc0.i(cls, " does not implement Parcelable or Serializable.");
                throw null;
            }
        }

        @Override // androidx.navigation.NavType
        public final Object a(String str, Bundle bundle) {
            bundle.getClass();
            str.getClass();
            return bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public final String b() {
            return this.s.getName();
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: d */
        public final Object h(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public final void e(Bundle bundle, String str, Object obj) {
            str.getClass();
            this.s.cast(obj);
            if (obj == null || (obj instanceof Parcelable)) {
                bundle.putParcelable(str, (Parcelable) obj);
            } else if (obj instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) obj);
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !ParcelableType.class.equals(obj.getClass())) {
                return false;
            }
            return Intrinsics.c(this.s, ((ParcelableType) obj).s);
        }

        public final int hashCode() {
            return this.s.hashCode();
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00040\u0003B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/navigation/NavType$SerializableArrayType;", "Ljava/io/Serializable;", "D", "Landroidx/navigation/NavType;", "", "Ljava/lang/Class;", "type", "<init>", "(Ljava/lang/Class;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SerializableArrayType<D extends Serializable> extends NavType<D[]> {
        public final Class s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableArrayType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (!Serializable.class.isAssignableFrom(cls)) {
                lc0.i(cls, " does not implement Serializable.");
                throw null;
            }
            try {
                this.s = Class.forName("[L" + cls.getName() + ';');
            } catch (ClassNotFoundException e2) {
                x1.m(e2);
                throw null;
            }
        }

        @Override // androidx.navigation.NavType
        public final Object a(String str, Bundle bundle) {
            bundle.getClass();
            str.getClass();
            return (Serializable[]) bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public final String b() {
            return this.s.getName();
        }

        @Override // androidx.navigation.NavType
        /* JADX INFO: renamed from: d */
        public final Object h(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.io.Serializable, java.io.Serializable[], java.lang.Object] */
        @Override // androidx.navigation.NavType
        public final void e(Bundle bundle, String str, Object obj) {
            ?? r3 = (Serializable[]) obj;
            str.getClass();
            this.s.cast(r3);
            bundle.putSerializable(str, r3);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !SerializableArrayType.class.equals(obj.getClass())) {
                return false;
            }
            return Intrinsics.c(this.s, ((SerializableArrayType) obj).s);
        }

        @Override // androidx.navigation.NavType
        public final boolean g(Object obj, Object obj2) {
            return ArraysKt.h((Serializable[]) obj, (Serializable[]) obj2);
        }

        public final int hashCode() {
            return this.s.hashCode();
        }
    }

    public NavType(boolean z) {
        this.f18204a = z;
    }

    public abstract Object a(String str, Bundle bundle);

    public String b() {
        return "nav_type";
    }

    public Object c(Object obj, String str) {
        return h(str);
    }

    /* JADX INFO: renamed from: d */
    public abstract Object h(String str);

    public abstract void e(Bundle bundle, String str, Object obj);

    public String f(Object obj) {
        return String.valueOf(obj);
    }

    public boolean g(Object obj, Object obj2) {
        return Intrinsics.c(obj, obj2);
    }

    public final String toString() {
        return b();
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0016\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B\u0017\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u001f\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0004\b\u0006\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/navigation/NavType$SerializableType;", "Ljava/io/Serializable;", "D", "Landroidx/navigation/NavType;", "Ljava/lang/Class;", "type", "<init>", "(Ljava/lang/Class;)V", "", "nullableAllowed", "(ZLjava/lang/Class;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static class SerializableType<D extends Serializable> extends NavType<D> {
        public final Class s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (!Serializable.class.isAssignableFrom(cls)) {
                lc0.i(cls, " does not implement Serializable.");
                throw null;
            }
            if (cls.isEnum()) {
                lc0.i(cls, " is an Enum. You should use EnumType instead.");
                throw null;
            }
            this.s = cls;
        }

        @Override // androidx.navigation.NavType
        public final Object a(String str, Bundle bundle) {
            bundle.getClass();
            str.getClass();
            return (Serializable) bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public String b() {
            return this.s.getName();
        }

        @Override // androidx.navigation.NavType
        public final void e(Bundle bundle, String str, Object obj) {
            Serializable serializable = (Serializable) obj;
            str.getClass();
            serializable.getClass();
            this.s.cast(serializable);
            bundle.putSerializable(str, serializable);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SerializableType)) {
                return false;
            }
            return Intrinsics.c(this.s, ((SerializableType) obj).s);
        }

        @Override // androidx.navigation.NavType
        public Serializable h(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        public final int hashCode() {
            return this.s.hashCode();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(boolean z, Class<D> cls) {
            super(z);
            cls.getClass();
            if (Serializable.class.isAssignableFrom(cls)) {
                this.s = cls;
            } else {
                lc0.i(cls, " does not implement Serializable.");
                throw null;
            }
        }
    }
}
