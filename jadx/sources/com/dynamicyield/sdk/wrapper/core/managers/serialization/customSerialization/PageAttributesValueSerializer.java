package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.common.payload.PageAttribute;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PageAttributesValueSerializer implements KSerializer<PageAttribute> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PageAttributesValueSerializer f25973a = new PageAttributesValueSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f25974b = SerialDescriptorsKt.a("PageAttributesValue", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f25974b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        String strX = decoder.x();
        return StringsKt.toIntOrNull(strX) != null ? new PageAttribute.NumberValue(Integer.parseInt(strX)) : new PageAttribute.StringValue(strX);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PageAttribute pageAttribute = (PageAttribute) obj;
        pageAttribute.getClass();
        if (pageAttribute instanceof PageAttribute.NumberValue) {
            encoder.z(((PageAttribute.NumberValue) pageAttribute).f26234a);
        } else if (pageAttribute instanceof PageAttribute.StringValue) {
            encoder.E(((PageAttribute.StringValue) pageAttribute).f26236a);
        } else {
            v40.g();
        }
    }
}
