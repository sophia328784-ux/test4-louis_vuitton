package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AnnotationUtilKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Name f72427a = Name.e("message");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Name f72428b = Name.e("replaceWith");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Name f72429c = Name.e("level");
    public static final Name d = Name.e("expression");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Name f72430e = Name.e("imports");

    public static final BuiltInAnnotationDescriptor a(final KotlinBuiltIns kotlinBuiltIns, String str, String str2, String str3, boolean z) {
        kotlinBuiltIns.getClass();
        BuiltInAnnotationDescriptor builtInAnnotationDescriptor = new BuiltInAnnotationDescriptor(kotlinBuiltIns, StandardNames.FqNames.o, MapsKt.i(new Pair(d, new StringValue(str2)), new Pair(f72430e, new ArrayValue(EmptyList.f71768b, new Function1(kotlinBuiltIns) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUtilKt$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final KotlinBuiltIns f72431b;

            {
                this.f72431b = kotlinBuiltIns;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ModuleDescriptor moduleDescriptor = (ModuleDescriptor) obj;
                Name name = AnnotationUtilKt.f72427a;
                moduleDescriptor.getClass();
                return moduleDescriptor.g().h(Variance.INVARIANT, this.f72431b.v());
            }
        }))), false, 8, null);
        FqName fqName = StandardNames.FqNames.m;
        Pair pair = new Pair(f72427a, new StringValue(str));
        Pair pair2 = new Pair(f72428b, new AnnotationValue(builtInAnnotationDescriptor));
        ClassId.Companion companion = ClassId.d;
        FqName fqName2 = StandardNames.FqNames.n;
        companion.getClass();
        return new BuiltInAnnotationDescriptor(kotlinBuiltIns, fqName, MapsKt.i(pair, pair2, new Pair(f72429c, new EnumValue(ClassId.Companion.b(fqName2), Name.e(str3)))), z);
    }
}
