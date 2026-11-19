package com.vuitton.android.presentation.screen.booking;

import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId$$serializer;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId$$serializer;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/presentation/screen/booking/BookingRoutes.Reservation.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class BookingRoutes$Reservation$$serializer implements GeneratedSerializer<BookingRoutes.Reservation> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingRoutes$Reservation$$serializer f54324a;
    private static final SerialDescriptor descriptor;

    static {
        BookingRoutes$Reservation$$serializer bookingRoutes$Reservation$$serializer = new BookingRoutes$Reservation$$serializer();
        f54324a = bookingRoutes$Reservation$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.presentation.screen.booking.BookingRoutes.Reservation", bookingRoutes$Reservation$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("experienceId", false);
        pluginGeneratedSerialDescriptor.k("prebookId", true);
        pluginGeneratedSerialDescriptor.k("isAdditional", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        boolean z = true;
        int i2 = 0;
        boolean zY = false;
        String str = null;
        String str2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                ExperienceId experienceId = (ExperienceId) compositeDecoderB.w(serialDescriptor, 0, ExperienceId$$serializer.f66756a, str != null ? new ExperienceId(str) : null);
                str = experienceId != null ? experienceId.f66755a : null;
                i2 |= 1;
            } else if (iN == 1) {
                PreBookId preBookId = (PreBookId) compositeDecoderB.m(serialDescriptor, 1, PreBookId$$serializer.f66775a, str2 != null ? new PreBookId(str2) : null);
                str2 = preBookId != null ? preBookId.f66774a : null;
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                zY = compositeDecoderB.y(serialDescriptor, 2);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new BookingRoutes.Reservation(i2, str, str2, zY, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        BookingRoutes.Reservation reservation = (BookingRoutes.Reservation) obj;
        reservation.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        ExperienceId$$serializer experienceId$$serializer = ExperienceId$$serializer.f66756a;
        String str = reservation.f54321a;
        boolean z = reservation.f54323c;
        String str2 = reservation.f54322b;
        compositeEncoderB.A(serialDescriptor, 0, experienceId$$serializer, new ExperienceId(str));
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, PreBookId$$serializer.f66775a, str2 != null ? new PreBookId(str2) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || z) {
            compositeEncoderB.x(serialDescriptor, 2, z);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{ExperienceId$$serializer.f66756a, BuiltinSerializersKt.d(PreBookId$$serializer.f66775a), BooleanSerializer.f75574a};
    }
}
