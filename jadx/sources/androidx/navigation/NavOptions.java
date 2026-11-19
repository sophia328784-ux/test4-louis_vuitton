package androidx.navigation;

import androidx.navigation.serialization.RouteSerializerKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.SerializersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0017B[\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\b\u0001\u0010\t\u001a\u00020\u0005\u0012\b\b\u0001\u0010\n\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0001\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eBS\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u0011BW\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0012\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u0014BQ\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0001\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u0016¨\u0006\u0018"}, d2 = {"Landroidx/navigation/NavOptions;", "", "", "singleTop", "restoreState", "", "popUpToId", "popUpToInclusive", "popUpToSaveState", "enterAnim", "exitAnim", "popEnterAnim", "popExitAnim", "<init>", "(ZZIZZIIII)V", "", "popUpToRoute", "(ZZLjava/lang/String;ZZIIII)V", "Lkotlin/reflect/KClass;", "popUpToRouteClass", "(ZZLkotlin/reflect/KClass;ZZIIII)V", "popUpToRouteObject", "(ZZLjava/lang/Object;ZZIIII)V", "Builder", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f18174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f18175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18176c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f18177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f18178f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f18179h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f18180i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f18181j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final KClass f18182k;
    public final Object l;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigation/NavOptions$Builder;", "", "<init>", "()V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f18183a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f18184b;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f18186e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f18187f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f18185c = -1;
        public int g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f18188h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f18189i = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f18190j = -1;

        public final NavOptions a() {
            Object obj = this.d;
            boolean z = this.f18183a;
            boolean z2 = this.f18184b;
            return obj != null ? new NavOptions(z, z2, obj, this.f18186e, this.f18187f, this.g, this.f18188h, this.f18189i, this.f18190j) : new NavOptions(z, z2, this.f18185c, this.f18186e, this.f18187f, this.g, this.f18188h, this.f18189i, this.f18190j);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavOptions(boolean z, boolean z2, Object obj, boolean z3, boolean z4, int i2, int i3, int i4, int i5) {
        this(z, z2, RouteSerializerKt.b(SerializersKt.b(Reflection.f71922a.b(obj.getClass()))), z3, z4, i2, i3, i4, i5);
        obj.getClass();
        this.l = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof NavOptions)) {
            NavOptions navOptions = (NavOptions) obj;
            if (this.f18174a == navOptions.f18174a && this.f18175b == navOptions.f18175b && this.f18176c == navOptions.f18176c && Intrinsics.c(this.f18181j, navOptions.f18181j) && Intrinsics.c(this.f18182k, navOptions.f18182k) && Intrinsics.c(this.l, navOptions.l) && this.d == navOptions.d && this.f18177e == navOptions.f18177e && this.f18178f == navOptions.f18178f && this.g == navOptions.g && this.f18179h == navOptions.f18179h && this.f18180i == navOptions.f18180i) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (((((this.f18174a ? 1 : 0) * 31) + (this.f18175b ? 1 : 0)) * 31) + this.f18176c) * 31;
        String str = this.f18181j;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        KClass kClass = this.f18182k;
        int iHashCode2 = (iHashCode + (kClass != null ? kClass.hashCode() : 0)) * 31;
        Object obj = this.l;
        return ((((((((((((iHashCode2 + (obj != null ? obj.hashCode() : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.f18177e ? 1 : 0)) * 31) + this.f18178f) * 31) + this.g) * 31) + this.f18179h) * 31) + this.f18180i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NavOptions(");
        if (this.f18174a) {
            sb.append("launchSingleTop ");
        }
        if (this.f18175b) {
            sb.append("restoreState ");
        }
        int i2 = this.f18176c;
        String str = this.f18181j;
        if ((str != null || i2 != -1) && str != null) {
            sb.append("popUpTo(");
            if (str != null) {
                sb.append(str);
            } else {
                KClass kClass = this.f18182k;
                if (kClass != null) {
                    sb.append(kClass);
                } else {
                    Object obj = this.l;
                    if (obj != null) {
                        sb.append(obj);
                    } else {
                        sb.append("0x");
                        sb.append(Integer.toHexString(i2));
                    }
                }
            }
            if (this.d) {
                sb.append(" inclusive");
            }
            if (this.f18177e) {
                sb.append(" saveState");
            }
            sb.append(")");
        }
        int i3 = this.f18180i;
        int i4 = this.f18179h;
        int i5 = this.g;
        int i6 = this.f18178f;
        if (i6 != -1 || i5 != -1 || i4 != -1 || i3 != -1) {
            sb.append("anim(enterAnim=0x");
            sb.append(Integer.toHexString(i6));
            sb.append(" exitAnim=0x");
            sb.append(Integer.toHexString(i5));
            sb.append(" popEnterAnim=0x");
            sb.append(Integer.toHexString(i4));
            sb.append(" popExitAnim=0x");
            sb.append(Integer.toHexString(i3));
            sb.append(")");
        }
        return sb.toString();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavOptions(boolean z, boolean z2, String str, boolean z3, boolean z4, int i2, int i3, int i4, int i5) {
        this(z, z2, (str != null ? "android-app://androidx.navigation/".concat(str) : "").hashCode(), z3, z4, i2, i3, i4, i5);
        NavDestination.g.getClass();
        this.f18181j = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavOptions(boolean z, boolean z2, KClass<?> kClass, boolean z3, boolean z4, int i2, int i3, int i4, int i5) {
        this(z, z2, RouteSerializerKt.b(SerializersKt.b(kClass)), z3, z4, i2, i3, i4, i5);
        kClass.getClass();
        this.f18182k = kClass;
    }

    public NavOptions(boolean z, boolean z2, int i2, boolean z3, boolean z4, int i3, int i4, int i5, int i6) {
        this.f18174a = z;
        this.f18175b = z2;
        this.f18176c = i2;
        this.d = z3;
        this.f18177e = z4;
        this.f18178f = i3;
        this.g = i4;
        this.f18179h = i5;
        this.f18180i = i6;
    }
}
