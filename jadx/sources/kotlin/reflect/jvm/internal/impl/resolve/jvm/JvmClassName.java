package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import io.jsonwebtoken.JwtParser;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public class JvmClassName {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f73899a;

    public JvmClassName(String str) {
        if (str != null) {
            this.f73899a = str;
        } else {
            a(7);
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000c  */
    public static /* synthetic */ void a(int i2) {
        String str;
        int i3;
        if (i2 != 3 && i2 != 5) {
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i2 != 3 && i2 != 5) {
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    i3 = 2;
                    break;
                default:
                    i3 = 3;
                    break;
            }
        } else {
            i3 = 2;
        }
        Object[] objArr = new Object[i3];
        switch (i2) {
            case 1:
            case 2:
                objArr[0] = "classId";
                break;
            case 3:
            case 5:
            case 8:
            case 9:
            case 10:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
                break;
            case 4:
            case 6:
                objArr[0] = "fqName";
                break;
            case 7:
            default:
                objArr[0] = "internalName";
                break;
        }
        if (i2 == 3) {
            objArr[1] = "internalNameByClassId";
        } else if (i2 != 5) {
            switch (i2) {
                case 8:
                    objArr[1] = "getFqNameForClassNameWithoutDollars";
                    break;
                case 9:
                    objArr[1] = "getPackageFqName";
                    break;
                case 10:
                    objArr[1] = "getInternalName";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
                    break;
            }
        } else {
            objArr[1] = "byFqNameWithoutInnerClasses";
        }
        switch (i2) {
            case 1:
                objArr[2] = "byClassId";
                break;
            case 2:
                objArr[2] = "internalNameByClassId";
                break;
            case 3:
            case 5:
            case 8:
            case 9:
            case 10:
                break;
            case 4:
            case 6:
                objArr[2] = "byFqNameWithoutInnerClasses";
                break;
            case 7:
                objArr[2] = "<init>";
                break;
            default:
                objArr[2] = "byInternalName";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 3 && i2 != 5) {
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static JvmClassName b(FqName fqName) {
        if (fqName != null) {
            return new JvmClassName(fqName.f73679a.f73683a.replace(JwtParser.SEPARATOR_CHAR, '/'));
        }
        a(4);
        throw null;
    }

    public static JvmClassName c(String str) {
        if (str != null) {
            return new JvmClassName(str);
        }
        a(0);
        throw null;
    }

    public static String e(ClassId classId) {
        FqName fqName = classId.f73675a;
        String strReplace = classId.f73676b.f73679a.f73683a.replace(JwtParser.SEPARATOR_CHAR, '$');
        if (!fqName.f73679a.c()) {
            strReplace = fqName.f73679a.f73683a.replace(JwtParser.SEPARATOR_CHAR, '/') + "/" + strReplace;
        }
        if (strReplace != null) {
            return strReplace;
        }
        a(3);
        throw null;
    }

    public final String d() {
        String str = this.f73899a;
        if (str != null) {
            return str;
        }
        a(10);
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f73899a.equals(((JvmClassName) obj).f73899a);
    }

    public final int hashCode() {
        return this.f73899a.hashCode();
    }

    public final String toString() {
        return this.f73899a;
    }
}
