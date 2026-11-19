package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import io.jsonwebtoken.JwtParser;
import java.io.InputStream;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInSerializerProtocol;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsResourceLoader;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectKotlinClassFinder implements KotlinClassFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClassLoader f72582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BuiltInsResourceLoader f72583b;

    public ReflectKotlinClassFinder(ClassLoader classLoader) {
        classLoader.getClass();
        this.f72582a = classLoader;
        this.f72583b = new BuiltInsResourceLoader();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder
    public final KotlinClassFinder.Result.KotlinClass a(ClassId classId, MetadataVersion metadataVersion) {
        classId.getClass();
        metadataVersion.getClass();
        String strI = StringsKt.I(classId.f73676b.f73679a.f73683a, JwtParser.SEPARATOR_CHAR, '$');
        FqName fqName = classId.f73675a;
        if (!fqName.f73679a.c()) {
            strI = fqName + JwtParser.SEPARATOR_CHAR + strI;
        }
        Class clsA = ReflectJavaClassFinderKt.a(this.f72582a, strI);
        if (clsA != null) {
            ReflectKotlinClass.f72579c.getClass();
            ReflectKotlinClass reflectKotlinClassA = ReflectKotlinClass.Factory.a(clsA);
            if (reflectKotlinClassA != null) {
                return new KotlinClassFinder.Result.KotlinClass(reflectKotlinClassA, null, 2, null);
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.KotlinMetadataFinder
    public final InputStream b(FqName fqName) {
        fqName.getClass();
        Name name = StandardNames.f72270k;
        name.getClass();
        if (!fqName.f73679a.h(name)) {
            return null;
        }
        BuiltInSerializerProtocol.q.getClass();
        String strA = BuiltInSerializerProtocol.a(fqName);
        this.f72583b.getClass();
        return BuiltInsResourceLoader.a(strA);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder
    public final KotlinClassFinder.Result.KotlinClass c(JavaClass javaClass, MetadataVersion metadataVersion) {
        String str;
        Class clsA;
        javaClass.getClass();
        metadataVersion.getClass();
        FqName fqNameC = javaClass.c();
        if (fqNameC != null && (str = fqNameC.f73679a.f73683a) != null && (clsA = ReflectJavaClassFinderKt.a(this.f72582a, str)) != null) {
            ReflectKotlinClass.f72579c.getClass();
            ReflectKotlinClass reflectKotlinClassA = ReflectKotlinClass.Factory.a(clsA);
            if (reflectKotlinClassA != null) {
                return new KotlinClassFinder.Result.KotlinClass(reflectKotlinClassA, null, 2, null);
            }
        }
        return null;
    }
}
