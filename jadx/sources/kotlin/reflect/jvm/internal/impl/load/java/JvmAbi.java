package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JvmAbi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FqName f72867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ClassId f72868b;

    static {
        FqName fqName = new FqName("kotlin.jvm.JvmField");
        f72867a = fqName;
        ClassId.d.getClass();
        ClassId.Companion.b(fqName);
        ClassId.Companion.b(new FqName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl"));
        f72868b = ClassId.Companion.a("kotlin/jvm/internal/RepeatableContainer", false);
    }

    public static final String a(String str) {
        str.getClass();
        if (c(str)) {
            return str;
        }
        return "get" + CapitalizeDecapitalizeKt.a(str);
    }

    public static final String b(String str) {
        str.getClass();
        StringBuilder sb = new StringBuilder("set");
        sb.append(c(str) ? str.substring(2) : CapitalizeDecapitalizeKt.a(str));
        return sb.toString();
    }

    public static final boolean c(String str) {
        str.getClass();
        if (StringsKt.P(str, "is", false) && str.length() != 2) {
            char cCharAt = str.charAt(2);
            if (Intrinsics.d(97, cCharAt) > 0 || Intrinsics.d(cCharAt, 122) > 0) {
                return true;
            }
        }
        return false;
    }
}
