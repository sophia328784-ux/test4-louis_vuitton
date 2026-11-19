package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.event.CustomProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.DynamicCustomProperties;
import defpackage.md;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/CustomPropertiesSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomProperties;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CustomPropertiesSerializer implements KSerializer<CustomProperties> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CustomPropertiesSerializer f25950a = new CustomPropertiesSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f25951b = MapsKt.j(new Pair(Reflection.f71922a.b(DynamicCustomProperties.class), DynamicCustomPropertiesSerializer.f25961a));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SerialDescriptorImpl f25952c;

    static {
        SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[0];
        if (StringsKt.w("CustomProperties")) {
            md.n("Blank serial names are prohibited");
            return;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder("CustomProperties");
        classSerialDescriptorBuilder.a("dyType", StringSerializer.f75685b, EmptyList.f71768b, false);
        f25952c = new SerialDescriptorImpl("CustomProperties", StructureKind.CLASS.f75564a, classSerialDescriptorBuilder.f75530c.size(), ArraysKt.W(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f25952c;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        throw new SerializationException("This class can't be deserialize");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CustomProperties customProperties = (CustomProperties) obj;
        customProperties.getClass();
        Class<?> cls = customProperties.getClass();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        KSerializer kSerializer = (KSerializer) f25951b.get(reflectionFactory.b(cls));
        if (kSerializer != null) {
            kSerializer.c(encoder, customProperties);
            return;
        }
        throw new SerializationException("Serializer not found for " + reflectionFactory.b(customProperties.getClass()));
    }
}
