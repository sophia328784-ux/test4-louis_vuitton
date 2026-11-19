package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.event.DynamicCustomProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SupportedValue;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.LinkedHashMapClassDesc;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DynamicCustomPropertiesSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DynamicCustomPropertiesSerializer implements KSerializer<DynamicCustomProperties> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicCustomPropertiesSerializer f25961a = new DynamicCustomPropertiesSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LinkedHashMapClassDesc f25962b;

    static {
        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
        f25962b = BuiltinSerializersKt.c(StringSerializer.f75684a, JsonElement.INSTANCE.serializer()).f75629c;
    }

    public static JsonElement f(SupportedValue supportedValue, Set set, int i2) {
        if (i2 > 100) {
            throw new SerializationException("Maximum nesting depth of 100 exceeded");
        }
        if (supportedValue == null) {
            return JsonNull.INSTANCE;
        }
        if (!set.add(supportedValue)) {
            throw new SerializationException("Circular reference detected in DynamicCustomProperties");
        }
        if (supportedValue instanceof SupportedValue.StringVal) {
            return JsonElementKt.a(((SupportedValue.StringVal) supportedValue).f26375a);
        }
        if (supportedValue instanceof SupportedValue.NumberVal) {
            Number number = ((SupportedValue.NumberVal) supportedValue).f26374a;
            InlineClassDescriptor inlineClassDescriptor = JsonElementKt.f75745a;
            if (number == null) {
                return JsonNull.INSTANCE;
            }
            return new JsonLiteral(number, false, null, 4, null);
        }
        if (supportedValue instanceof SupportedValue.BooleanVal) {
            Boolean bool = ((SupportedValue.BooleanVal) supportedValue).f26371a;
            InlineClassDescriptor inlineClassDescriptor2 = JsonElementKt.f75745a;
            if (bool == null) {
                return JsonNull.INSTANCE;
            }
            return new JsonLiteral(bool, false, null, 4, null);
        }
        if (supportedValue instanceof SupportedValue.ListVal) {
            List list = ((SupportedValue.ListVal) supportedValue).f26372a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(f((SupportedValue) it.next(), set, i2 + 1));
            }
            return new JsonArray(arrayList);
        }
        if (!(supportedValue instanceof SupportedValue.MapVal)) {
            v40.g();
            return null;
        }
        Map map = ((SupportedValue.MapVal) supportedValue).f26373a;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), f((SupportedValue) entry.getValue(), set, i2 + 1));
        }
        return new JsonObject(linkedHashMap);
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f25962b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        throw new SerializationException("This class can't be deserialize");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        DynamicCustomProperties dynamicCustomProperties = (DynamicCustomProperties) obj;
        dynamicCustomProperties.getClass();
        JsonEncoder jsonEncoder = encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null;
        if (jsonEncoder == null) {
            md.k("DynamicCustomPropertiesSerializer only supports JSON");
            return;
        }
        Map map = dynamicCustomProperties.f26310a;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), f((SupportedValue) entry.getValue(), Collections.newSetFromMap(new IdentityHashMap()), 0));
        }
        jsonEncoder.j(new JsonObject(linkedHashMap));
    }
}
