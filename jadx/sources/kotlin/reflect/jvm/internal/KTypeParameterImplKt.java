package kotlin.reflect.jvm.internal;

import defpackage.os;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class KTypeParameterImplKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72164a;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f72164a = iArr;
        }
    }

    public static final KClassImpl a(ClassDescriptor classDescriptor) {
        Class clsI = UtilKt.i(classDescriptor);
        KClassImpl kClassImpl = (KClassImpl) (clsI != null ? Reflection.f71922a.b(clsI) : null);
        if (kClassImpl != null) {
            return kClassImpl;
        }
        os.f(classDescriptor.d(), "Type parameter container is not resolved: ");
        return null;
    }
}
