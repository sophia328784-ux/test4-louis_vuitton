package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DateAsStringSerializer;", "Lkotlinx/serialization/KSerializer;", "Ljava/util/Date;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DateAsStringSerializer implements KSerializer<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DateAsStringSerializer f25955a = new DateAsStringSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f25956b = SerialDescriptorsKt.a("LocalDate", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19850b() {
        return f25956b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        throw new SerializationException("Unknown type for deserialize");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Date date = (Date) obj;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-dd'T'hh:mm:ss.sss-hh:mm", Locale.getDefault());
        if (date != null) {
            String str = simpleDateFormat.format(date);
            str.getClass();
            encoder.E(str);
        }
    }
}
