package kotlinx.serialization.modules;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/modules/SerializersModule;", "", "Lkotlinx/serialization/modules/SerialModuleImpl;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class SerializersModule {
    public SerializersModule(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract void a(SerializersModuleCollector serializersModuleCollector);

    public abstract KSerializer b(KClass kClass, List list);

    public abstract boolean c();

    public abstract DeserializationStrategy d(String str, KClass kClass);

    public abstract SerializationStrategy e(KClass kClass, Object obj);
}
