package com.vuitton.android.presentation.screen.booking;

import androidx.navigation3.runtime.NavKey;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import defpackage.fc;
import defpackage.lg;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;", "Landroidx/navigation3/runtime/NavKey;", "Reservation", "Summary", "Confirmation", "PersonalInfo", "Pass", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Confirmation;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Pass;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$PersonalInfo;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Summary;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BookingRoutes implements NavKey {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Confirmation;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Confirmation extends BookingRoutes {
        public static final Confirmation INSTANCE = new Confirmation(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f54317a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lg(0));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Confirmation);
        }

        public final int hashCode() {
            return 564457012;
        }

        public final KSerializer<Confirmation> serializer() {
            return (KSerializer) f54317a.getF71699b();
        }

        public final String toString() {
            return "Confirmation";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$PersonalInfo;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PersonalInfo extends BookingRoutes {
        public static final PersonalInfo INSTANCE = new PersonalInfo(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f54320a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lg(1));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PersonalInfo);
        }

        public final int hashCode() {
            return -1793703667;
        }

        public final KSerializer<PersonalInfo> serializer() {
            return (KSerializer) f54320a.getF71699b();
        }

        public final String toString() {
            return "PersonalInfo";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Summary;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Summary extends BookingRoutes {
        public static final Summary INSTANCE = new Summary(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f54325a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lg(2));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Summary);
        }

        public final int hashCode() {
            return -1489190329;
        }

        public final KSerializer<Summary> serializer() {
            return (KSerializer) f54325a.getF71699b();
        }

        public final String toString() {
            return "Summary";
        }
    }

    public BookingRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Pass;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;", "bookingId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Pass extends BookingRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54318a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Pass$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Pass;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Pass> serializer() {
                return BookingRoutes$Pass$$serializer.f54319a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Pass(int i2, String str, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, BookingRoutes$Pass$$serializer.f54319a.getF19838b());
                throw null;
            }
            this.f54318a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pass)) {
                return false;
            }
            String str = ((Pass) obj).f54318a;
            BookingId.Companion companion = BookingId.INSTANCE;
            return Intrinsics.c(this.f54318a, str);
        }

        public final int hashCode() {
            BookingId.Companion companion = BookingId.INSTANCE;
            return this.f54318a.hashCode();
        }

        public final String toString() {
            BookingId.Companion companion = BookingId.INSTANCE;
            return fc.h("Pass(bookingId=", this.f54318a, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Pass(String str, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            str.getClass();
            this.f54318a = str;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB7\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes;", "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", "experienceId", "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;", "prebookId", "", "isAdditional", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Reservation extends BookingRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54321a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54322b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f54323c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Reservation> serializer() {
                return BookingRoutes$Reservation$$serializer.f54324a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Reservation(int i2, String str, String str2, boolean z, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, BookingRoutes$Reservation$$serializer.f54324a.getF19838b());
                throw null;
            }
            this.f54321a = str;
            if ((i2 & 2) == 0) {
                this.f54322b = null;
            } else {
                this.f54322b = str2;
            }
            if ((i2 & 4) == 0) {
                this.f54323c = false;
            } else {
                this.f54323c = z;
            }
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0023  */
        public final boolean equals(Object obj) {
            boolean zC;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Reservation)) {
                return false;
            }
            Reservation reservation = (Reservation) obj;
            String str = reservation.f54321a;
            ExperienceId.Companion companion = ExperienceId.INSTANCE;
            if (!Intrinsics.c(this.f54321a, str)) {
                return false;
            }
            String str2 = reservation.f54322b;
            String str3 = this.f54322b;
            if (str3 == null) {
                if (str2 == null) {
                    zC = true;
                } else {
                    zC = false;
                }
            } else if (str2 == null) {
                zC = false;
            } else {
                PreBookId.Companion companion2 = PreBookId.INSTANCE;
                zC = Intrinsics.c(str3, str2);
            }
            return zC && this.f54323c == reservation.f54323c;
        }

        public final int hashCode() {
            int iHashCode;
            ExperienceId.Companion companion = ExperienceId.INSTANCE;
            int iHashCode2 = this.f54321a.hashCode() * 31;
            String str = this.f54322b;
            if (str == null) {
                iHashCode = 0;
            } else {
                PreBookId.Companion companion2 = PreBookId.INSTANCE;
                iHashCode = str.hashCode();
            }
            return Boolean.hashCode(this.f54323c) + ((iHashCode2 + iHashCode) * 31);
        }

        public final String toString() {
            ExperienceId.Companion companion = ExperienceId.INSTANCE;
            String str = this.f54322b;
            if (str == null) {
                str = "null";
            } else {
                PreBookId.Companion companion2 = PreBookId.INSTANCE;
            }
            return defpackage.a.p(fc.s("Reservation(experienceId=", this.f54321a, ", prebookId=", str, ", isAdditional="), this.f54323c, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Reservation(String str, String str2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            str.getClass();
            this.f54321a = str;
            this.f54322b = str2;
            this.f54323c = z;
        }

        public /* synthetic */ Reservation(String str, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? false : z, null);
        }
    }
}
