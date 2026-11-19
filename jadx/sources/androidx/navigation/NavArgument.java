package androidx.navigation;

import android.os.Parcelable;
import defpackage.az;
import defpackage.lc0;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001\u000bB;\b\u0000\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/navigation/NavArgument;", "", "Landroidx/navigation/NavType;", "type", "", "isNullable", "defaultValue", "defaultValuePresent", "unknownDefaultValuePresent", "<init>", "(Landroidx/navigation/NavType;ZLjava/lang/Object;ZZ)V", "Builder", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavArgument {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavType f18102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f18103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f18104c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f18105e;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigation/NavArgument$Builder;", "", "<init>", "()V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public NavType f18106a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f18107b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f18108c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f18109e;

        /* JADX WARN: Code duplicated, block: B:45:0x00af  */
        /* JADX WARN: Code duplicated, block: B:47:0x00b9  */
        /* JADX WARN: Code duplicated, block: B:49:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:50:0x00dd  */
        /* JADX WARN: Code duplicated, block: B:52:0x00e1  */
        /* JADX WARN: Code duplicated, block: B:53:0x00eb  */
        /* JADX WARN: Code duplicated, block: B:55:0x00ef  */
        /* JADX WARN: Code duplicated, block: B:56:0x00f9  */
        /* JADX WARN: Code duplicated, block: B:58:0x00fd  */
        /* JADX WARN: Code duplicated, block: B:59:0x0107  */
        public final NavArgument a() {
            Class<?> componentType;
            NavType serializableType = this.f18106a;
            if (serializableType == null) {
                NavType.Companion companion = NavType.f18196b;
                Object obj = this.f18108c;
                companion.getClass();
                if (obj instanceof Integer) {
                    serializableType = NavType.f18197c;
                    serializableType.getClass();
                } else if (obj instanceof int[]) {
                    serializableType = NavType.f18198e;
                    serializableType.getClass();
                } else if (obj instanceof Long) {
                    serializableType = NavType.g;
                    serializableType.getClass();
                } else if (obj instanceof long[]) {
                    serializableType = NavType.f18200h;
                    serializableType.getClass();
                } else if (obj instanceof Float) {
                    serializableType = NavType.f18202j;
                    serializableType.getClass();
                } else if (obj instanceof float[]) {
                    serializableType = NavType.f18203k;
                    serializableType.getClass();
                } else if (obj instanceof Boolean) {
                    serializableType = NavType.m;
                    serializableType.getClass();
                } else if (obj instanceof boolean[]) {
                    serializableType = NavType.n;
                    serializableType.getClass();
                } else if ((obj instanceof String) || obj == null) {
                    serializableType = NavType.p;
                    serializableType.getClass();
                } else {
                    serializableType = null;
                }
                if (serializableType == null) {
                    if ((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) {
                        serializableType = NavType.q;
                        serializableType.getClass();
                    } else {
                        obj.getClass();
                        if (obj.getClass().isArray()) {
                            Class<?> componentType2 = obj.getClass().getComponentType();
                            componentType2.getClass();
                            if (Parcelable.class.isAssignableFrom(componentType2)) {
                                Class<?> componentType3 = obj.getClass().getComponentType();
                                componentType3.getClass();
                                serializableType = new NavType.ParcelableArrayType(componentType3);
                            } else if (obj.getClass().isArray()) {
                                componentType = obj.getClass().getComponentType();
                                componentType.getClass();
                                if (Serializable.class.isAssignableFrom(componentType)) {
                                    Class<?> componentType4 = obj.getClass().getComponentType();
                                    componentType4.getClass();
                                    serializableType = new NavType.SerializableArrayType(componentType4);
                                } else if (obj instanceof Parcelable) {
                                    serializableType = new NavType.ParcelableType(obj.getClass());
                                } else if (obj instanceof Enum) {
                                    serializableType = new NavType.EnumType(obj.getClass());
                                } else {
                                    if (obj instanceof Serializable) {
                                        az.r("Object of type ", obj.getClass().getName(), " is not supported for navigation arguments.");
                                        return null;
                                    }
                                    serializableType = new NavType.SerializableType(obj.getClass());
                                }
                            } else if (obj instanceof Parcelable) {
                                serializableType = new NavType.ParcelableType(obj.getClass());
                            } else if (obj instanceof Enum) {
                                serializableType = new NavType.EnumType(obj.getClass());
                            } else {
                                if (obj instanceof Serializable) {
                                    az.r("Object of type ", obj.getClass().getName(), " is not supported for navigation arguments.");
                                    return null;
                                }
                                serializableType = new NavType.SerializableType(obj.getClass());
                            }
                        } else if (obj.getClass().isArray()) {
                            componentType = obj.getClass().getComponentType();
                            componentType.getClass();
                            if (Serializable.class.isAssignableFrom(componentType)) {
                                Class<?> componentType5 = obj.getClass().getComponentType();
                                componentType5.getClass();
                                serializableType = new NavType.SerializableArrayType(componentType5);
                            } else if (obj instanceof Parcelable) {
                                serializableType = new NavType.ParcelableType(obj.getClass());
                            } else if (obj instanceof Enum) {
                                serializableType = new NavType.EnumType(obj.getClass());
                            } else {
                                if (obj instanceof Serializable) {
                                    az.r("Object of type ", obj.getClass().getName(), " is not supported for navigation arguments.");
                                    return null;
                                }
                                serializableType = new NavType.SerializableType(obj.getClass());
                            }
                        } else if (obj instanceof Parcelable) {
                            serializableType = new NavType.ParcelableType(obj.getClass());
                        } else if (obj instanceof Enum) {
                            serializableType = new NavType.EnumType(obj.getClass());
                        } else {
                            if (obj instanceof Serializable) {
                                az.r("Object of type ", obj.getClass().getName(), " is not supported for navigation arguments.");
                                return null;
                            }
                            serializableType = new NavType.SerializableType(obj.getClass());
                        }
                    }
                }
            }
            return new NavArgument(serializableType, this.f18107b, this.f18108c, this.d, this.f18109e);
        }
    }

    public NavArgument(NavType<Object> navType, boolean z, Object obj, boolean z2, boolean z3) {
        navType.getClass();
        if (!navType.f18204a && z) {
            lc0.i(navType.b(), " does not allow nullable values");
            throw null;
        }
        if (!z && z2 && obj == null) {
            lc0.v("Argument with type ", navType.b(), " has null value but is not nullable.");
            throw null;
        }
        this.f18102a = navType;
        this.f18103b = z;
        this.f18105e = obj;
        this.f18104c = z2 || z3;
        this.d = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NavArgument.class != obj.getClass()) {
            return false;
        }
        NavArgument navArgument = (NavArgument) obj;
        if (this.f18103b != navArgument.f18103b || this.f18104c != navArgument.f18104c || !this.f18102a.equals(navArgument.f18102a)) {
            return false;
        }
        Object obj2 = navArgument.f18105e;
        Object obj3 = this.f18105e;
        if (obj3 != null) {
            return obj3.equals(obj2);
        }
        return obj2 == null;
    }

    public final int hashCode() {
        int iHashCode = ((((this.f18102a.hashCode() * 31) + (this.f18103b ? 1 : 0)) * 31) + (this.f18104c ? 1 : 0)) * 31;
        Object obj = this.f18105e;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Reflection.f71922a.b(NavArgument.class).B());
        sb.append(" Type: " + this.f18102a);
        sb.append(" Nullable: " + this.f18103b);
        if (this.f18104c) {
            sb.append(" DefaultValue: " + this.f18105e);
        }
        return sb.toString();
    }
}
