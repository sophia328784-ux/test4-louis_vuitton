package com.vuitton.android.core.platform.serialization;

import java.util.Date;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/core/platform/serialization/NoSecondsDateSerializer;", "Lkotlinx/serialization/KSerializer;", "Ljava/util/Date;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NoSecondsDateSerializer implements KSerializer<Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final NoSecondsDateSerializer f43521b = new NoSecondsDateSerializer();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DateSerializer f43522a = new DateSerializer("yyyy-MM-dd'T'HH:mm");

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return this.f43522a.f43517c;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        return this.f43522a.b(decoder);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Date date = (Date) obj;
        date.getClass();
        this.f43522a.c(encoder, date);
    }
}
