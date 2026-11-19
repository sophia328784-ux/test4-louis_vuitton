package kotlinx.serialization.modules;

import defpackage.v40;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001Bî\u0001\u0012\u0016\u0010\u0005\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012*\u0010\u0007\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0018\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00020\u0002\u0012.\u0010\u000b\u001a*\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u001c\u0012\u001a\u0012\u0002\b\u0003\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\t0\bj\u0006\u0012\u0002\b\u0003`\n0\u0002\u0012&\u0010\r\u001a\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00020\u0002\u0012A\u0010\u0013\u001a=\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012/\u0012-\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00110\bj\u0006\u0012\u0002\b\u0003`\u00120\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lkotlinx/serialization/modules/SerialModuleImpl;", "Lkotlinx/serialization/modules/SerializersModule;", "", "Lkotlin/reflect/KClass;", "Lkotlinx/serialization/modules/ContextualProvider;", "class2ContextualFactory", "Lkotlinx/serialization/KSerializer;", "polyBase2Serializers", "Lkotlin/Function1;", "Lkotlinx/serialization/SerializationStrategy;", "Lkotlinx/serialization/modules/PolymorphicSerializerProvider;", "polyBase2DefaultSerializerProvider", "", "polyBase2NamedSerializers", "Lkotlin/ParameterName;", "name", "className", "Lkotlinx/serialization/DeserializationStrategy;", "Lkotlinx/serialization/modules/PolymorphicDeserializerProvider;", "polyBase2DefaultDeserializerProvider", "", "hasInterfaceContextualSerializers", "<init>", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SerialModuleImpl extends SerializersModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f75837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f75838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f75839c;
    public final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f75840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f75841f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerialModuleImpl(Map<KClass<?>, ? extends ContextualProvider> map, Map<KClass<?>, ? extends Map<KClass<?>, ? extends KSerializer<?>>> map2, Map<KClass<?>, ? extends Function1<?, ? extends SerializationStrategy<?>>> map3, Map<KClass<?>, ? extends Map<String, ? extends KSerializer<?>>> map4, Map<KClass<?>, ? extends Function1<? super String, ? extends DeserializationStrategy<?>>> map5, boolean z) {
        super(null);
        map.getClass();
        map2.getClass();
        map3.getClass();
        map4.getClass();
        map5.getClass();
        this.f75837a = map;
        this.f75838b = map2;
        this.f75839c = map3;
        this.d = map4;
        this.f75840e = map5;
        this.f75841f = z;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public final void a(SerializersModuleCollector serializersModuleCollector) {
        for (Map.Entry entry : this.f75837a.entrySet()) {
            KClass kClass = (KClass) entry.getKey();
            ContextualProvider contextualProvider = (ContextualProvider) entry.getValue();
            if (contextualProvider instanceof ContextualProvider.Argless) {
                kClass.getClass();
                KSerializer kSerializer = ((ContextualProvider.Argless) contextualProvider).f75835a;
                kSerializer.getClass();
                serializersModuleCollector.c(kClass, kSerializer);
            } else {
                if (!(contextualProvider instanceof ContextualProvider.WithTypeArguments)) {
                    v40.g();
                    return;
                }
                serializersModuleCollector.e(kClass, ((ContextualProvider.WithTypeArguments) contextualProvider).f75836a);
            }
        }
        for (Map.Entry entry2 : this.f75838b.entrySet()) {
            KClass kClass2 = (KClass) entry2.getKey();
            for (Map.Entry entry3 : ((Map) entry2.getValue()).entrySet()) {
                KClass kClass3 = (KClass) entry3.getKey();
                KSerializer kSerializer2 = (KSerializer) entry3.getValue();
                kClass2.getClass();
                kClass3.getClass();
                kSerializer2.getClass();
                serializersModuleCollector.a(kClass2, kClass3, kSerializer2);
            }
        }
        for (Map.Entry entry4 : this.f75839c.entrySet()) {
            KClass kClass4 = (KClass) entry4.getKey();
            Function1 function1 = (Function1) entry4.getValue();
            kClass4.getClass();
            function1.getClass();
            TypeIntrinsics.e(1, function1);
            serializersModuleCollector.d(kClass4, function1);
        }
        for (Map.Entry entry5 : this.f75840e.entrySet()) {
            KClass kClass5 = (KClass) entry5.getKey();
            Function1 function2 = (Function1) entry5.getValue();
            kClass5.getClass();
            function2.getClass();
            TypeIntrinsics.e(1, function2);
            serializersModuleCollector.b(kClass5, function2);
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public final KSerializer b(KClass kClass, List list) {
        list.getClass();
        ContextualProvider contextualProvider = (ContextualProvider) this.f75837a.get(kClass);
        KSerializer kSerializerA = contextualProvider != null ? contextualProvider.a(list) : null;
        if (kSerializerA instanceof KSerializer) {
            return kSerializerA;
        }
        return null;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getF75841f() {
        return this.f75841f;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public final DeserializationStrategy d(String str, KClass kClass) {
        kClass.getClass();
        Map map = (Map) this.d.get(kClass);
        KSerializer kSerializer = map != null ? (KSerializer) map.get(str) : null;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        Object obj = this.f75840e.get(kClass);
        Function1 function1 = TypeIntrinsics.f(1, obj) ? (Function1) obj : null;
        if (function1 != null) {
            return (DeserializationStrategy) function1.invoke(str);
        }
        return null;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public final SerializationStrategy e(KClass kClass, Object obj) {
        KSerializer kSerializer;
        kClass.getClass();
        obj.getClass();
        if (kClass.t(obj)) {
            Map map = (Map) this.f75838b.get(kClass);
            if (map != null) {
                kSerializer = (KSerializer) map.get(Reflection.f71922a.b(obj.getClass()));
            } else {
                kSerializer = null;
            }
            KSerializer kSerializer2 = kSerializer instanceof SerializationStrategy ? kSerializer : null;
            if (kSerializer2 != null) {
                return kSerializer2;
            }
            Object obj2 = this.f75839c.get(kClass);
            Function1 function1 = TypeIntrinsics.f(1, obj2) ? (Function1) obj2 : null;
            if (function1 != null) {
                return (SerializationStrategy) function1.invoke(obj);
            }
        }
        return null;
    }
}
