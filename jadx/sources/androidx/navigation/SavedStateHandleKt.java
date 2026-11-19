package androidx.navigation;

import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.serialization.RouteDecoder;
import androidx.navigation.serialization.RouteSerializerKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 0, 0}, xi = 48)
public abstract class SavedStateHandleKt {
    public static final Object a(SavedStateHandle savedStateHandle, KClass kClass, Map map) {
        savedStateHandle.getClass();
        kClass.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        KSerializer kSerializerB = SerializersKt.b(kClass);
        for (NamedNavArgument namedNavArgument : RouteSerializerKt.c(kSerializerB, map)) {
            linkedHashMap.put(namedNavArgument.f18097a, namedNavArgument.f18098b.f18102a);
        }
        return kSerializerB.b(new RouteDecoder(savedStateHandle, linkedHashMap));
    }
}
