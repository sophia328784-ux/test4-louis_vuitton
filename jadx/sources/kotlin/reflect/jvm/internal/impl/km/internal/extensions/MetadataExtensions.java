package kotlin.reflect.jvm.internal.impl.km.internal.extensions;

import defpackage.md;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.km.KmClass;
import kotlin.reflect.jvm.internal.impl.km.KmConstructor;
import kotlin.reflect.jvm.internal.impl.km.KmEnumEntry;
import kotlin.reflect.jvm.internal.impl.km.KmFunction;
import kotlin.reflect.jvm.internal.impl.km.KmPackage;
import kotlin.reflect.jvm.internal.impl.km.KmProperty;
import kotlin.reflect.jvm.internal.impl.km.KmType;
import kotlin.reflect.jvm.internal.impl.km.KmTypeAlias;
import kotlin.reflect.jvm.internal.impl.km.KmTypeParameter;
import kotlin.reflect.jvm.internal.impl.km.KmValueParameter;
import kotlin.reflect.jvm.internal.impl.km.internal.ReadContext;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmClassExtension;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmConstructorExtension;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmFunctionExtension;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmPackageExtension;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmPropertyExtension;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmTypeExtension;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmTypeParameterExtension;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;

/* JADX INFO: loaded from: classes4.dex */
public interface MetadataExtensions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f72792a = Companion.f72793a;

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f72793a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Lazy f72794b = LazyKt.b(new Function0() { // from class: kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions$Companion$$Lambda$0
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                MetadataExtensions.Companion companion = MetadataExtensions.Companion.f72793a;
                ServiceLoader serviceLoaderLoad = ServiceLoader.load(MetadataExtensions.class, MetadataExtensions.class.getClassLoader());
                serviceLoaderLoad.getClass();
                List listY0 = CollectionsKt.y0(serviceLoaderLoad);
                if (!listY0.isEmpty()) {
                    return listY0;
                }
                md.k("No MetadataExtensions instances found in the classpath. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
                return null;
            }
        });

        public static List a() {
            return (List) f72794b.getF71699b();
        }
    }

    void a(KmEnumEntry kmEnumEntry, ProtoBuf$EnumEntry protoBuf$EnumEntry, ReadContext readContext);

    void b(KmPackage kmPackage, ProtoBuf$Package protoBuf$Package, ReadContext readContext);

    JvmPackageExtension c();

    void d(KmTypeParameter kmTypeParameter, ProtoBuf$TypeParameter protoBuf$TypeParameter, ReadContext readContext);

    JvmClassExtension e();

    void f(KmConstructor kmConstructor, ProtoBuf$Constructor protoBuf$Constructor, ReadContext readContext);

    JvmConstructorExtension g();

    void h(KmProperty kmProperty, ProtoBuf$Property protoBuf$Property, ReadContext readContext);

    JvmPropertyExtension i();

    void j(KmType kmType, ProtoBuf$Type protoBuf$Type, ReadContext readContext);

    JvmTypeExtension k();

    void l(KmClass kmClass, ProtoBuf$Class protoBuf$Class, ReadContext readContext);

    void m(KmValueParameter kmValueParameter, ProtoBuf$ValueParameter protoBuf$ValueParameter, ReadContext readContext);

    JvmFunctionExtension n();

    JvmTypeParameterExtension o();

    void p(KmTypeAlias kmTypeAlias, ProtoBuf$TypeAlias protoBuf$TypeAlias, ReadContext readContext);

    void q(KmFunction kmFunction, ProtoBuf$Function protoBuf$Function, ReadContext readContext);
}
