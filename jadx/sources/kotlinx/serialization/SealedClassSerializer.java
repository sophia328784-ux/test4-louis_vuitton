package kotlinx.serialization;

import defpackage.az;
import defpackage.jm0;
import java.lang.annotation.Annotation;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001b\n\u0002\b\u0003\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003BI\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0014\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00060\b\u0012\u0014\u0010\u000b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\n0\b¢\u0006\u0004\b\f\u0010\rBY\b\u0011\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0014\u0010\t\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00060\b\u0012\u0014\u0010\u000b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\n0\b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\b¢\u0006\u0004\b\f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lkotlinx/serialization/SealedClassSerializer;", "", "T", "Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;", "", "serialName", "Lkotlin/reflect/KClass;", "baseClass", "", "subclasses", "Lkotlinx/serialization/KSerializer;", "subclassSerializers", "<init>", "(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V", "", "classAnnotations", "(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@InternalSerializationApi
public final class SealedClassSerializer<T> extends AbstractPolymorphicSerializer<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KClass f75520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f75521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f75522c;
    public final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f75523e;

    public SealedClassSerializer(String str, KClass<T> kClass, KClass<? extends T>[] kClassArr, KSerializer<? extends T>[] kSerializerArr) {
        str.getClass();
        kClass.getClass();
        kClassArr.getClass();
        kSerializerArr.getClass();
        this.f75520a = kClass;
        this.f75521b = EmptyList.f71768b;
        this.f75522c = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new jm0(str, this, 17));
        if (kClassArr.length != kSerializerArr.length) {
            az.r("All subclasses of sealed class ", kClass.B(), " should be marked @Serializable");
            throw null;
        }
        Map mapN = MapsKt.n(ArraysKt.a0(kClassArr, kSerializerArr));
        this.d = mapN;
        SealedClassSerializer$special$$inlined$groupingBy$1 sealedClassSerializer$special$$inlined$groupingBy$1 = new SealedClassSerializer$special$$inlined$groupingBy$1(mapN.entrySet());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : sealedClassSerializer$special$$inlined$groupingBy$1.f75524a) {
            String f75677b = ((KSerializer) entry.getValue()).getF19838b().getF75659a();
            Object obj = linkedHashMap.get(f75677b);
            if (obj == null) {
                linkedHashMap.containsKey(f75677b);
            }
            Map.Entry entry2 = (Map.Entry) obj;
            if (entry2 != null) {
                StringBuilder sb = new StringBuilder("Multiple sealed subclasses of '");
                sb.append(this.f75520a);
                sb.append("' have the same serial name '");
                sb.append(f75677b);
                sb.append("': '");
                sb.append(entry2.getKey());
                Object key = entry.getKey();
                sb.append("', '");
                sb.append(key);
                sb.append('\'');
                throw new IllegalStateException(sb.toString().toString());
            }
            linkedHashMap.put(f75677b, entry);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.g(linkedHashMap.size()));
        for (Map.Entry entry3 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry3.getKey(), (KSerializer) ((Map.Entry) entry3.getValue()).getValue());
        }
        this.f75523e = linkedHashMap2;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return (SerialDescriptor) this.f75522c.getF71699b();
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final DeserializationStrategy f(CompositeDecoder compositeDecoder, String str) {
        KSerializer kSerializer = (KSerializer) this.f75523e.get(str);
        return kSerializer != null ? kSerializer : compositeDecoder.getF75784b().d(str, getF75517a());
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final SerializationStrategy g(Encoder encoder, Object obj) {
        obj.getClass();
        KSerializer kSerializer = (KSerializer) this.d.get(Reflection.f71922a.b(obj.getClass()));
        KSerializer kSerializerG = kSerializer != null ? kSerializer : super.g(encoder, obj);
        if (kSerializerG != null) {
            return kSerializerG;
        }
        return null;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    /* JADX INFO: renamed from: h, reason: from getter */
    public final KClass getF75517a() {
        return this.f75520a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SealedClassSerializer(String str, KClass<T> kClass, KClass<? extends T>[] kClassArr, KSerializer<? extends T>[] kSerializerArr, Annotation[] annotationArr) {
        this(str, kClass, kClassArr, kSerializerArr);
        str.getClass();
        kClass.getClass();
        kClassArr.getClass();
        kSerializerArr.getClass();
        annotationArr.getClass();
        this.f75521b = ArraysKt.d(annotationArr);
    }
}
