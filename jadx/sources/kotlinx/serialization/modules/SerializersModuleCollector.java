package kotlinx.serialization.modules;

import defpackage.xo0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lkotlinx/serialization/modules/SerializersModuleCollector;", "", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalSerializationApi
public interface SerializersModuleCollector {
    void a(KClass kClass, KClass kClass2, KSerializer kSerializer);

    void b(KClass kClass, Function1 function1);

    default void c(KClass kClass, KSerializer kSerializer) {
        e(kClass, new xo0(kSerializer, 18));
    }

    void d(KClass kClass, Function1 function1);

    void e(KClass kClass, Function1 function1);
}
