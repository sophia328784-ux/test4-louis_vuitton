package kotlinx.serialization.json.internal;

import defpackage.b21;
import defpackage.bm;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.modules.SerializersModuleCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/internal/JsonSerializersModuleValidator;", "Lkotlinx/serialization/modules/SerializersModuleCollector;", "Lkotlinx/serialization/json/JsonConfiguration;", "configuration", "<init>", "(Lkotlinx/serialization/json/JsonConfiguration;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonSerializersModuleValidator implements SerializersModuleCollector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f75793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f75794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f75795c;

    public JsonSerializersModuleValidator(JsonConfiguration jsonConfiguration) {
        jsonConfiguration.getClass();
        this.f75793a = jsonConfiguration.f75741j;
        this.f75794b = jsonConfiguration.f75740i;
        this.f75795c = jsonConfiguration.q != ClassDiscriminatorMode.NONE;
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public final void a(KClass kClass, KClass kClass2, KSerializer kSerializer) {
        SerialDescriptor f19838b = kSerializer.getF19838b();
        SerialKind f75548b = f19838b.getF75548b();
        if ((f75548b instanceof PolymorphicKind) || Intrinsics.c(f75548b, SerialKind.CONTEXTUAL.f75562a)) {
            bm.c(kClass2.B(), " can't be registered as a subclass for polymorphic serialization because its kind ", f75548b, " is not concrete. To work with multiple hierarchies, register it as a base class.", "Serializer for ");
            return;
        }
        boolean z = this.f75795c;
        boolean z2 = this.f75794b;
        if (!z2 && z && (Intrinsics.c(f75548b, StructureKind.LIST.f75565a) || Intrinsics.c(f75548b, StructureKind.MAP.f75566a) || (f75548b instanceof PrimitiveKind) || (f75548b instanceof SerialKind.ENUM))) {
            bm.c(kClass2.B(), " of kind ", f75548b, " cannot be serialized polymorphically with class discriminator.", "Serializer for ");
            return;
        }
        if (z2 || !z) {
            return;
        }
        int f75661c = f19838b.getF75661c();
        for (int i2 = 0; i2 < f75661c; i2++) {
            String strF = f19838b.f(i2);
            if (Intrinsics.c(strF, this.f75793a)) {
                b21.o(kClass2, " has property '", strF, "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism", "Polymorphic serializer for ");
                return;
            }
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public final void b(KClass kClass, Function1 function1) {
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public final void d(KClass kClass, Function1 function1) {
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public final void e(KClass kClass, Function1 function1) {
        kClass.getClass();
        function1.getClass();
    }
}
