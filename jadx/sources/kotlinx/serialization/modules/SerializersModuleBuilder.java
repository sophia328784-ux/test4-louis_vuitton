package kotlinx.serialization.modules;

import defpackage.b21;
import defpackage.ct0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0001¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/serialization/modules/SerializersModuleBuilder;", "Lkotlinx/serialization/modules/SerializersModuleCollector;", "<init>", "()V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SerializersModuleBuilder implements SerializersModuleCollector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f75842a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f75843b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f75844c = new HashMap();
    public final HashMap d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f75845e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f75846f;

    public static void g(SerializersModuleBuilder serializersModuleBuilder, KClass kClass, ContextualProvider contextualProvider) {
        HashMap map = serializersModuleBuilder.f75842a;
        kClass.getClass();
        ContextualProvider contextualProvider2 = (ContextualProvider) map.get(kClass);
        if (contextualProvider2 != null && !contextualProvider2.equals(contextualProvider)) {
            throw new SerializerAlreadyRegisteredException("Contextual serializer or serializer provider for " + kClass + " already registered in this module");
        }
        map.put(kClass, contextualProvider);
        if (JvmClassMappingKt.b(kClass).isInterface()) {
            serializersModuleBuilder.f75846f = true;
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public final void a(KClass kClass, KClass kClass2, KSerializer kSerializer) {
        Object next;
        KClass kClass3;
        String f75677b = kSerializer.getF19838b().getF75659a();
        HashMap map = this.f75843b;
        Object map2 = map.get(kClass);
        if (map2 == null) {
            map2 = new HashMap();
            map.put(kClass, map2);
        }
        Map map3 = (Map) map2;
        HashMap map4 = this.d;
        Object map5 = map4.get(kClass);
        if (map5 == null) {
            map5 = new HashMap();
            map4.put(kClass, map5);
        }
        Map map6 = (Map) map5;
        KSerializer kSerializer2 = (KSerializer) map3.get(kClass2);
        if (kSerializer2 != null && !kSerializer2.equals(kSerializer)) {
            throw new SerializerAlreadyRegisteredException(kClass, kClass2);
        }
        KSerializer kSerializer3 = (KSerializer) map6.get(f75677b);
        if (kSerializer3 == null || kSerializer3.equals(kSerializer)) {
            map3.put(kClass2, kSerializer);
            map6.put(f75677b, kSerializer);
            return;
        }
        Iterator it = CollectionsKt.o(map3.entrySet()).f71766a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((Map.Entry) next).getValue() != kSerializer3);
        Map.Entry entry = (Map.Entry) next;
        if (entry == null || (kClass3 = (KClass) entry.getKey()) == null) {
            ct0.q("Name ", f75677b, " is registered in the module but no Kotlin class is associated with it.");
            return;
        }
        throw new IllegalArgumentException("Multiple polymorphic serializers in a scope of '" + kClass + "' have the same serial name '" + f75677b + "': " + kSerializer + " for '" + kClass2 + "' and " + kSerializer3 + " for '" + kClass3 + '\'');
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public final void b(KClass kClass, Function1 function1) {
        HashMap map = this.f75845e;
        Function1 function2 = (Function1) map.get(kClass);
        if (function2 == null || function2.equals(function1)) {
            map.put(kClass, function1);
        } else {
            b21.s("Default deserializers provider for ", kClass, " is already registered: ", function2);
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public final void c(KClass kClass, KSerializer kSerializer) {
        kClass.getClass();
        g(this, kClass, new ContextualProvider.Argless(kSerializer));
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public final void d(KClass kClass, Function1 function1) {
        HashMap map = this.f75844c;
        Function1 function2 = (Function1) map.get(kClass);
        if (function2 == null || function2.equals(function1)) {
            map.put(kClass, function1);
        } else {
            b21.s("Default serializers provider for ", kClass, " is already registered: ", function2);
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public final void e(KClass kClass, Function1 function1) {
        kClass.getClass();
        function1.getClass();
        g(this, kClass, new ContextualProvider.WithTypeArguments(function1));
    }

    public final SerialModuleImpl f() {
        return new SerialModuleImpl(this.f75842a, this.f75843b, this.f75844c, this.d, this.f75845e, this.f75846f);
    }
}
