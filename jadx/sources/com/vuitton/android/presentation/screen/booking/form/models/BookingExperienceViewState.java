package com.vuitton.android.presentation.screen.booking.form.models;

import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;", "", "Loading", "Success", "Error", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Error;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Loading;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingExperienceViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Error;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error implements BookingExperienceViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f54500a = new Error();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return -1734442255;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Loading;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements BookingExperienceViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f54501a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 1463942117;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;", "experience", "", "isFlowCompleted", "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;", "prebookId", "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;", "bookingId", "", "editingModuleId", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;", "editingCategory", "<init>", "(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success implements BookingExperienceViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BookingFormUiModel f54502a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f54503b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f54504c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f54505e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final BookingFormModuleDataUiModel.MultipleTextCategory f54506f;

        public /* synthetic */ Success(BookingFormUiModel bookingFormUiModel, boolean z, String str, String str2, String str3, BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(bookingFormUiModel, z, str, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : multipleTextCategory, null);
        }

        public static Success a(Success success, BookingFormUiModel bookingFormUiModel, boolean z, String str, BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory, int i2) {
            if ((i2 & 1) != 0) {
                bookingFormUiModel = success.f54502a;
            }
            BookingFormUiModel bookingFormUiModel2 = bookingFormUiModel;
            if ((i2 & 2) != 0) {
                z = success.f54503b;
            }
            boolean z2 = z;
            String str2 = success.f54504c;
            String str3 = success.d;
            if ((i2 & 16) != 0) {
                str = success.f54505e;
            }
            String str4 = str;
            if ((i2 & 32) != 0) {
                multipleTextCategory = success.f54506f;
            }
            bookingFormUiModel2.getClass();
            return new Success(bookingFormUiModel2, z2, str2, str3, str4, multipleTextCategory, null);
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0028  */
        /* JADX WARN: Code duplicated, block: B:28:0x0040  */
        public final boolean equals(Object obj) {
            boolean zC;
            boolean zC2;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            if (!Intrinsics.c(this.f54502a, success.f54502a) || this.f54503b != success.f54503b) {
                return false;
            }
            String str = success.f54504c;
            String str2 = this.f54504c;
            if (str2 == null) {
                if (str == null) {
                    zC = true;
                } else {
                    zC = false;
                }
            } else if (str == null) {
                zC = false;
            } else {
                PreBookId.Companion companion = PreBookId.INSTANCE;
                zC = Intrinsics.c(str2, str);
            }
            if (!zC) {
                return false;
            }
            String str3 = success.d;
            String str4 = this.d;
            if (str4 == null) {
                if (str3 == null) {
                    zC2 = true;
                } else {
                    zC2 = false;
                }
            } else if (str3 == null) {
                zC2 = false;
            } else {
                BookingId.Companion companion2 = BookingId.INSTANCE;
                zC2 = Intrinsics.c(str4, str3);
            }
            return zC2 && Intrinsics.c(this.f54505e, success.f54505e) && Intrinsics.c(this.f54506f, success.f54506f);
        }

        public final int hashCode() {
            int iHashCode;
            int iHashCode2;
            int iB = o60.b(this.f54502a.hashCode() * 31, 31, this.f54503b);
            String str = this.f54504c;
            if (str == null) {
                iHashCode = 0;
            } else {
                PreBookId.Companion companion = PreBookId.INSTANCE;
                iHashCode = str.hashCode();
            }
            int i2 = (iB + iHashCode) * 31;
            String str2 = this.d;
            if (str2 == null) {
                iHashCode2 = 0;
            } else {
                BookingId.Companion companion2 = BookingId.INSTANCE;
                iHashCode2 = str2.hashCode();
            }
            int i3 = (i2 + iHashCode2) * 31;
            String str3 = this.f54505e;
            int iHashCode3 = (i3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory = this.f54506f;
            return iHashCode3 + (multipleTextCategory != null ? multipleTextCategory.hashCode() : 0);
        }

        public final String toString() {
            String str = "null";
            String str2 = this.f54504c;
            if (str2 == null) {
                str2 = "null";
            } else {
                PreBookId.Companion companion = PreBookId.INSTANCE;
            }
            String str3 = this.d;
            if (str3 != null) {
                BookingId.Companion companion2 = BookingId.INSTANCE;
                str = str3;
            }
            StringBuilder sb = new StringBuilder("Success(experience=");
            sb.append(this.f54502a);
            sb.append(", isFlowCompleted=");
            sb.append(this.f54503b);
            sb.append(", prebookId=");
            cj.C(sb, str2, ", bookingId=", str, ", editingModuleId=");
            sb.append(this.f54505e);
            sb.append(", editingCategory=");
            sb.append(this.f54506f);
            sb.append(")");
            return sb.toString();
        }

        public Success(BookingFormUiModel bookingFormUiModel, boolean z, String str, String str2, String str3, BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory, DefaultConstructorMarker defaultConstructorMarker) {
            bookingFormUiModel.getClass();
            this.f54502a = bookingFormUiModel;
            this.f54503b = z;
            this.f54504c = str;
            this.d = str2;
            this.f54505e = str3;
            this.f54506f = multipleTextCategory;
        }
    }
}
