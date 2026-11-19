package com.vuitton.android.presentation.screen.booking;

import androidx.navigation3.runtime.NavKey;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import defpackage.d21;
import defpackage.dd0;
import defpackage.fc;
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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes;", "Landroidx/navigation3/runtime/NavKey;", "List", "Details", "Modify", "Pass", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Details;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$List;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Pass;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MyBookingsRoutes implements NavKey {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$List;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class List extends MyBookingsRoutes {
        public static final List INSTANCE = new List(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f54330a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(4));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof List);
        }

        public final int hashCode() {
            return 1393730728;
        }

        public final KSerializer<List> serializer() {
            return (KSerializer) f54330a.getF71699b();
        }

        public final String toString() {
            return "List";
        }
    }

    public MyBookingsRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Details;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;", "bookingId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Details extends MyBookingsRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54328a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Details$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Details;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Details> serializer() {
                return MyBookingsRoutes$Details$$serializer.f54329a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Details(int i2, String str, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, MyBookingsRoutes$Details$$serializer.f54329a.getF19838b());
                throw null;
            }
            this.f54328a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Details)) {
                return false;
            }
            String str = ((Details) obj).f54328a;
            BookingId.Companion companion = BookingId.INSTANCE;
            return Intrinsics.c(this.f54328a, str);
        }

        public final int hashCode() {
            BookingId.Companion companion = BookingId.INSTANCE;
            return this.f54328a.hashCode();
        }

        public final String toString() {
            BookingId.Companion companion = BookingId.INSTANCE;
            return fc.h("Details(bookingId=", this.f54328a, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Details(String str, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            str.getClass();
            this.f54328a = str;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes;", "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", "experienceId", "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;", "bookingId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Modify extends MyBookingsRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54331a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54332b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Modify> serializer() {
                return MyBookingsRoutes$Modify$$serializer.f54333a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Modify(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, MyBookingsRoutes$Modify$$serializer.f54333a.getF19838b());
                throw null;
            }
            this.f54331a = str;
            this.f54332b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Modify)) {
                return false;
            }
            Modify modify = (Modify) obj;
            String str = modify.f54331a;
            ExperienceId.Companion companion = ExperienceId.INSTANCE;
            if (!Intrinsics.c(this.f54331a, str)) {
                return false;
            }
            String str2 = modify.f54332b;
            BookingId.Companion companion2 = BookingId.INSTANCE;
            return Intrinsics.c(this.f54332b, str2);
        }

        public final int hashCode() {
            ExperienceId.Companion companion = ExperienceId.INSTANCE;
            int iHashCode = this.f54331a.hashCode() * 31;
            BookingId.Companion companion2 = BookingId.INSTANCE;
            return this.f54332b.hashCode() + iHashCode;
        }

        public final String toString() {
            ExperienceId.Companion companion = ExperienceId.INSTANCE;
            BookingId.Companion companion2 = BookingId.INSTANCE;
            return d21.l("Modify(experienceId=", this.f54331a, ", bookingId=", this.f54332b, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Modify(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f54331a = str;
            this.f54332b = str2;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Pass;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;", "bookingId", "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", "experienceId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Pass extends MyBookingsRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54334a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54335b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Pass$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Pass;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Pass> serializer() {
                return MyBookingsRoutes$Pass$$serializer.f54336a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Pass(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, MyBookingsRoutes$Pass$$serializer.f54336a.getF19838b());
                throw null;
            }
            this.f54334a = str;
            this.f54335b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pass)) {
                return false;
            }
            Pass pass = (Pass) obj;
            String str = pass.f54334a;
            BookingId.Companion companion = BookingId.INSTANCE;
            if (!Intrinsics.c(this.f54334a, str)) {
                return false;
            }
            String str2 = pass.f54335b;
            ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
            return Intrinsics.c(this.f54335b, str2);
        }

        public final int hashCode() {
            BookingId.Companion companion = BookingId.INSTANCE;
            int iHashCode = this.f54334a.hashCode() * 31;
            ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
            return this.f54335b.hashCode() + iHashCode;
        }

        public final String toString() {
            BookingId.Companion companion = BookingId.INSTANCE;
            ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
            return d21.l("Pass(bookingId=", this.f54334a, ", experienceId=", this.f54335b, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Pass(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f54334a = str;
            this.f54335b = str2;
        }
    }
}
