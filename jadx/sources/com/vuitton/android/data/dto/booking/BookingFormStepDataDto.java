package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.n00;
import defpackage.xe;
import java.util.List;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \b2\u00020\u0001:\u0006\t\n\u000b\f\r\bB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0001\u0005\u000e\u000f\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;", "", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "<init>", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "SingleTextDataDto", "MultipleTextDataDto", "DateDataDto", "SlotDataDto", "UnknownDataDto", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public abstract class BookingFormStepDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f44695a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(12));

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingFormStepDataDto> serializer() {
            return (KSerializer) BookingFormStepDataDto.f44695a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class UnknownDataDto extends BookingFormStepDataDto {
        public static final UnknownDataDto INSTANCE = new UnknownDataDto(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f44710b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(18));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UnknownDataDto);
        }

        public final int hashCode() {
            return 758523926;
        }

        public final KSerializer<UnknownDataDto> serializer() {
            return (KSerializer) f44710b.getF71699b();
        }

        public final String toString() {
            return "UnknownDataDto";
        }
    }

    public /* synthetic */ BookingFormStepDataDto(int i2, SerializationConstructorMarker serializationConstructorMarker) {
    }

    public BookingFormStepDataDto(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B+\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;", "", "Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;", "dates", "<init>", "(Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class SlotDataDto extends BookingFormStepDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Lazy[] f44707c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(17))};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f44708b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<SlotDataDto> serializer() {
                return BookingFormStepDataDto$SlotDataDto$$serializer.f44709a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ SlotDataDto(int i2, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, BookingFormStepDataDto$SlotDataDto$$serializer.f44709a.getF19838b());
                throw null;
            }
            this.f44708b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SlotDataDto) && Intrinsics.c(this.f44708b, ((SlotDataDto) obj).f44708b);
        }

        public final int hashCode() {
            return this.f44708b.hashCode();
        }

        public final String toString() {
            return d21.o("SlotDataDto(dates=", ")", this.f44708b);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SlotDataDto(List<BookingFormSlotDateDto> list) {
            super(null);
            list.getClass();
            this.f44708b = list;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007B5\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;", "", "", "availableDates", "selectedDate", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class DateDataDto extends BookingFormStepDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        public static final Lazy[] d = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(13)), null};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f44696b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f44697c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<DateDataDto> serializer() {
                return BookingFormStepDataDto$DateDataDto$$serializer.f44698a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ DateDataDto(int i2, List list, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, BookingFormStepDataDto$DateDataDto$$serializer.f44698a.getF19838b());
                throw null;
            }
            this.f44696b = list;
            if ((i2 & 2) == 0) {
                this.f44697c = null;
            } else {
                this.f44697c = str;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DateDataDto)) {
                return false;
            }
            DateDataDto dateDataDto = (DateDataDto) obj;
            return Intrinsics.c(this.f44696b, dateDataDto.f44696b) && Intrinsics.c(this.f44697c, dateDataDto.f44697c);
        }

        public final int hashCode() {
            int iHashCode = this.f44696b.hashCode() * 31;
            String str = this.f44697c;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "DateDataDto(availableDates=" + this.f44696b + ", selectedDate=" + this.f44697c + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DateDataDto(List<String> list, String str) {
            super(null);
            list.getClass();
            this.f44696b = list;
            this.f44697c = str;
        }

        public /* synthetic */ DateDataDto(List list, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i2 & 2) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B)\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;", "", "Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;", "categories", "Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;", "freeTyping", "", "filledDisplayName", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class MultipleTextDataDto extends BookingFormStepDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f44699e = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(14)), null, null};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f44700b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BookingFormFreeTypingDto f44701c;
        public final String d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<MultipleTextDataDto> serializer() {
                return BookingFormStepDataDto$MultipleTextDataDto$$serializer.f44702a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ MultipleTextDataDto(int i2, List list, BookingFormFreeTypingDto bookingFormFreeTypingDto, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (5 != (i2 & 5)) {
                PluginExceptionsKt.b(i2, 5, BookingFormStepDataDto$MultipleTextDataDto$$serializer.f44702a.getF19838b());
                throw null;
            }
            this.f44700b = list;
            if ((i2 & 2) == 0) {
                this.f44701c = null;
            } else {
                this.f44701c = bookingFormFreeTypingDto;
            }
            this.d = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleTextDataDto)) {
                return false;
            }
            MultipleTextDataDto multipleTextDataDto = (MultipleTextDataDto) obj;
            return Intrinsics.c(this.f44700b, multipleTextDataDto.f44700b) && Intrinsics.c(this.f44701c, multipleTextDataDto.f44701c) && Intrinsics.c(this.d, multipleTextDataDto.d);
        }

        public final int hashCode() {
            int iHashCode = this.f44700b.hashCode() * 31;
            BookingFormFreeTypingDto bookingFormFreeTypingDto = this.f44701c;
            return this.d.hashCode() + ((iHashCode + (bookingFormFreeTypingDto == null ? 0 : bookingFormFreeTypingDto.hashCode())) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MultipleTextDataDto(categories=");
            sb.append(this.f44700b);
            sb.append(", freeTyping=");
            sb.append(this.f44701c);
            sb.append(", filledDisplayName=");
            return n00.r(this.d, ")", sb);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MultipleTextDataDto(List<BookingFormCategoryDto> list, BookingFormFreeTypingDto bookingFormFreeTypingDto, String str) {
            super(null);
            list.getClass();
            str.getClass();
            this.f44700b = list;
            this.f44701c = bookingFormFreeTypingDto;
            this.d = str;
        }

        public /* synthetic */ MultipleTextDataDto(List list, BookingFormFreeTypingDto bookingFormFreeTypingDto, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i2 & 2) != 0 ? null : bookingFormFreeTypingDto, str);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B)\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;", "", "Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto;", "values", "", "selectedId", "Lcom/vuitton/android/data/dto/booking/SingleTextLayoutDto;", "layout", "<init>", "(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/SingleTextLayoutDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/SingleTextLayoutDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class SingleTextDataDto extends BookingFormStepDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f44703e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f44704b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f44705c;
        public final SingleTextLayoutDto d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<SingleTextDataDto> serializer() {
                return BookingFormStepDataDto$SingleTextDataDto$$serializer.f44706a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f44703e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new xe(15)), null, LazyKt.a(lazyThreadSafetyMode, new xe(16))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ SingleTextDataDto(int i2, List list, String str, SingleTextLayoutDto singleTextLayoutDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (5 != (i2 & 5)) {
                PluginExceptionsKt.b(i2, 5, BookingFormStepDataDto$SingleTextDataDto$$serializer.f44706a.getF19838b());
                throw null;
            }
            this.f44704b = list;
            if ((i2 & 2) == 0) {
                this.f44705c = null;
            } else {
                this.f44705c = str;
            }
            this.d = singleTextLayoutDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SingleTextDataDto)) {
                return false;
            }
            SingleTextDataDto singleTextDataDto = (SingleTextDataDto) obj;
            return Intrinsics.c(this.f44704b, singleTextDataDto.f44704b) && Intrinsics.c(this.f44705c, singleTextDataDto.f44705c) && this.d == singleTextDataDto.d;
        }

        public final int hashCode() {
            int iHashCode = this.f44704b.hashCode() * 31;
            String str = this.f44705c;
            return this.d.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            return "SingleTextDataDto(values=" + this.f44704b + ", selectedId=" + this.f44705c + ", layout=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SingleTextDataDto(List<BookingFormChoiceValueDto> list, String str, SingleTextLayoutDto singleTextLayoutDto) {
            super(null);
            list.getClass();
            singleTextLayoutDto.getClass();
            this.f44704b = list;
            this.f44705c = str;
            this.d = singleTextLayoutDto;
        }

        public /* synthetic */ SingleTextDataDto(List list, String str, SingleTextLayoutDto singleTextLayoutDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i2 & 2) != 0 ? null : str, singleTextLayoutDto);
        }
    }
}
