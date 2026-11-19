package com.vuitton.android.presentation.screen.booking;

import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.BookingId$$serializer;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId$$serializer;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/presentation/screen/booking/MyBookingsRoutes.Modify.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class MyBookingsRoutes$Modify$$serializer implements GeneratedSerializer<MyBookingsRoutes.Modify> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MyBookingsRoutes$Modify$$serializer f54333a;
    private static final SerialDescriptor descriptor;

    static {
        MyBookingsRoutes$Modify$$serializer myBookingsRoutes$Modify$$serializer = new MyBookingsRoutes$Modify$$serializer();
        f54333a = myBookingsRoutes$Modify$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.presentation.screen.booking.MyBookingsRoutes.Modify", myBookingsRoutes$Modify$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("experienceId", false);
        pluginGeneratedSerialDescriptor.k("bookingId", false);
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
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                BookingId bookingId = (BookingId) compositeDecoderB.w(serialDescriptor, 1, BookingId$$serializer.f66744a, str2 != null ? new BookingId(str2) : null);
                str2 = bookingId != null ? bookingId.f66743a : null;
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new MyBookingsRoutes.Modify(i2, str, str2, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        MyBookingsRoutes.Modify modify = (MyBookingsRoutes.Modify) obj;
        modify.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 0, ExperienceId$$serializer.f66756a, new ExperienceId(modify.f54331a));
        compositeEncoderB.A(serialDescriptor, 1, BookingId$$serializer.f66744a, new BookingId(modify.f54332b));
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{ExperienceId$$serializer.f66756a, BookingId$$serializer.f66744a};
    }
}
