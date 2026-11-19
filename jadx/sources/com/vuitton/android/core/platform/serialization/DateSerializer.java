package com.vuitton.android.core.platform.serialization;

import defpackage.d21;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/core/platform/serialization/DateSerializer;", "Lkotlinx/serialization/KSerializer;", "Ljava/util/Date;", "", "format", "<init>", "(Ljava/lang/String;)V", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class DateSerializer implements KSerializer<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SimpleDateFormat f43516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PrimitiveSerialDescriptor f43517c;

    public DateSerializer(String str) {
        str.getClass();
        this.f43515a = str;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.f43516b = simpleDateFormat;
        this.f43517c = SerialDescriptorsKt.a("java.util.Date", PrimitiveKind.STRING.f75546a);
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return this.f43517c;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Date b(Decoder decoder) {
        decoder.getClass();
        String strX = decoder.x();
        try {
            Date date = this.f43516b.parse(strX);
            if (date != null) {
                return date;
            }
            throw new SerializationException("Failed to parse date: " + strX);
        } catch (Exception e2) {
            throw new SerializationException(d21.l("Invalid date format '", strX, "' for pattern '", this.f43515a, "'"), e2);
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final void c(Encoder encoder, Date date) {
        date.getClass();
        String str = this.f43516b.format(date);
        str.getClass();
        encoder.E(str);
    }
}
