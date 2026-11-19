package com.vuitton.android.presentation.screen.booking.form.models;

import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;", "", "BookingFormScreen", "MultipleTagScreen", "SelectValueEvent", "MultipleTagConfirmationEvent", "ContinueEvent", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$BookingFormScreen;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagScreen;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingFormTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$BookingFormScreen;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookingFormScreen implements BookingFormTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54545a;

        public BookingFormScreen(String str) {
            str.getClass();
            this.f54545a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookingFormScreen) && Intrinsics.c(this.f54545a, ((BookingFormScreen) obj).f54545a);
        }

        public final int hashCode() {
            return this.f54545a.hashCode();
        }

        public final String toString() {
            return fc.h("BookingFormScreen(experienceId=", this.f54545a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;", "", "experienceId", "", "isInModifyMode", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContinueEvent implements BookingFormTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54546a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f54547b;

        public ContinueEvent(String str, boolean z) {
            str.getClass();
            this.f54546a = str;
            this.f54547b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ContinueEvent)) {
                return false;
            }
            ContinueEvent continueEvent = (ContinueEvent) obj;
            return Intrinsics.c(this.f54546a, continueEvent.f54546a) && this.f54547b == continueEvent.f54547b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f54547b) + (this.f54546a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("ContinueEvent(experienceId=", this.f54546a, ", isInModifyMode=", ")", this.f54547b);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;", "", "experienceId", "stepId", "", "tagIds", "", "isInModifyMode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleTagConfirmationEvent implements BookingFormTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54548a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54549b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f54550c;
        public final boolean d;

        public MultipleTagConfirmationEvent(String str, String str2, List<String> list, boolean z) {
            pq0.B(str, str2, list);
            this.f54548a = str;
            this.f54549b = str2;
            this.f54550c = list;
            this.d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleTagConfirmationEvent)) {
                return false;
            }
            MultipleTagConfirmationEvent multipleTagConfirmationEvent = (MultipleTagConfirmationEvent) obj;
            return Intrinsics.c(this.f54548a, multipleTagConfirmationEvent.f54548a) && Intrinsics.c(this.f54549b, multipleTagConfirmationEvent.f54549b) && Intrinsics.c(this.f54550c, multipleTagConfirmationEvent.f54550c) && this.d == multipleTagConfirmationEvent.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + n00.a(fc.b(this.f54548a.hashCode() * 31, 31, this.f54549b), 31, this.f54550c);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("MultipleTagConfirmationEvent(experienceId=", this.f54548a, ", stepId=", this.f54549b, ", tagIds=");
            sbS.append(this.f54550c);
            sbS.append(", isInModifyMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagScreen;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;", "", "experienceId", "categoryId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleTagScreen implements BookingFormTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54551a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54552b;

        public MultipleTagScreen(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f54551a = str;
            this.f54552b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleTagScreen)) {
                return false;
            }
            MultipleTagScreen multipleTagScreen = (MultipleTagScreen) obj;
            return Intrinsics.c(this.f54551a, multipleTagScreen.f54551a) && Intrinsics.c(this.f54552b, multipleTagScreen.f54552b);
        }

        public final int hashCode() {
            return this.f54552b.hashCode() + (this.f54551a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("MultipleTagScreen(experienceId=", this.f54551a, ", categoryId=", this.f54552b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;", "", "experienceId", "stepId", "valueId", "", "isInModifyMode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SelectValueEvent implements BookingFormTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54553a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f54554b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f54555c;
        public final boolean d;

        public SelectValueEvent(String str, String str2, String str3, boolean z) {
            cj.z(str, str2, str3);
            this.f54553a = str;
            this.f54554b = str2;
            this.f54555c = str3;
            this.d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectValueEvent)) {
                return false;
            }
            SelectValueEvent selectValueEvent = (SelectValueEvent) obj;
            return Intrinsics.c(this.f54553a, selectValueEvent.f54553a) && Intrinsics.c(this.f54554b, selectValueEvent.f54554b) && Intrinsics.c(this.f54555c, selectValueEvent.f54555c) && this.d == selectValueEvent.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + fc.b(fc.b(this.f54553a.hashCode() * 31, 31, this.f54554b), 31, this.f54555c);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("SelectValueEvent(experienceId=", this.f54553a, ", stepId=", this.f54554b, ", valueId=");
            sbS.append(this.f54555c);
            sbS.append(", isInModifyMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }
}
