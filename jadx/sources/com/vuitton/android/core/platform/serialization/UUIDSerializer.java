package com.vuitton.android.core.platform.serialization;

import java.util.UUID;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/core/platform/serialization/UUIDSerializer;", "Lkotlinx/serialization/KSerializer;", "Ljava/util/UUID;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UUIDSerializer implements KSerializer<UUID> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UUIDSerializer f43525a = new UUIDSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f43526b = SerialDescriptorsKt.a("java.util.UUID", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19850b() {
        return f43526b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        UUID uuidFromString = UUID.fromString(decoder.x());
        uuidFromString.getClass();
        return uuidFromString;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        UUID uuid = (UUID) obj;
        uuid.getClass();
        String string = uuid.toString();
        string.getClass();
        encoder.E(string);
    }
}
