package kotlinx.serialization.builtins;

import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.NullableSerializer;
import kotlinx.serialization.internal.ReferenceArraySerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BuiltinSerializersKt {
    public static final ReferenceArraySerializer a(KClass kClass, KSerializer kSerializer) {
        kClass.getClass();
        kSerializer.getClass();
        return new ReferenceArraySerializer(kClass, kSerializer);
    }

    public static final ArrayListSerializer b(KSerializer kSerializer) {
        kSerializer.getClass();
        return new ArrayListSerializer(kSerializer);
    }

    public static final LinkedHashMapSerializer c(KSerializer kSerializer, KSerializer kSerializer2) {
        kSerializer.getClass();
        kSerializer2.getClass();
        return new LinkedHashMapSerializer(kSerializer, kSerializer2);
    }

    public static final KSerializer d(KSerializer kSerializer) {
        kSerializer.getClass();
        return kSerializer.getF19850b().b() ? kSerializer : new NullableSerializer(kSerializer);
    }

    public static final void e(StringCompanionObject stringCompanionObject) {
        stringCompanionObject.getClass();
        StringSerializer stringSerializer = StringSerializer.f75684a;
    }
}
