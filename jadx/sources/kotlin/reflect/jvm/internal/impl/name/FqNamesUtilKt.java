package kotlin.reflect.jvm.internal.impl.name;

import defpackage.v40;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FqNamesUtilKt {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73686a;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.BEGINNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.AFTER_DOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[State.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f73686a = iArr;
        }
    }

    public static final boolean a(String str) {
        if (str == null) {
            return false;
        }
        State state = State.BEGINNING;
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            int i3 = WhenMappings.f73686a[state.ordinal()];
            if (i3 == 1 || i3 == 2) {
                if (!Character.isJavaIdentifierStart(cCharAt)) {
                    return false;
                }
                state = State.MIDDLE;
            } else {
                if (i3 != 3) {
                    v40.g();
                    return false;
                }
                if (cCharAt == '.') {
                    state = State.AFTER_DOT;
                } else if (!Character.isJavaIdentifierPart(cCharAt)) {
                    return false;
                }
            }
        }
        return state != State.AFTER_DOT;
    }

    public static final FqName b(FqName fqName, FqName fqName2) {
        fqName.getClass();
        fqName2.getClass();
        FqNameUnsafe fqNameUnsafe = fqName.f73679a;
        FqNameUnsafe fqNameUnsafe2 = fqName2.f73679a;
        if (!fqName.equals(fqName2) && !fqNameUnsafe2.c()) {
            String str = fqNameUnsafe.f73683a;
            String str2 = fqNameUnsafe2.f73683a;
            if (!StringsKt.P(str, str2, false) || str.charAt(str2.length()) != '.') {
                return fqName;
            }
        }
        if (fqNameUnsafe2.c()) {
            return fqName;
        }
        return fqName.equals(fqName2) ? FqName.d : new FqName(fqNameUnsafe.f73683a.substring(fqNameUnsafe2.f73683a.length() + 1));
    }
}
