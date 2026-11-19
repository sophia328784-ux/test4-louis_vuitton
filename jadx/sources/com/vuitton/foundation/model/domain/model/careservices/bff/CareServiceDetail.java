package com.vuitton.foundation.model.domain.model.careservices.bff;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.product.universal.Price;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001:\n%&'()*+,-.B»\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\f\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b#\u0010$¨\u0006/"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;", "transactionId", "", "description", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;", "type", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;", "category", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;", "steps", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;", "action", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;", Payload.TYPE_STORE, "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;", "product", "trackingURL", "Lkotlinx/datetime/Instant;", "creationDate", "appointmentId", "payByLinkURL", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;", "preliminaryAssessmentInformation", "contactMethod", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$CancellationReason;", "cancellationReasons", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;", "appointmentInformation", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;", "shippingInformation", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;Ljava/lang/String;Lkotlinx/datetime/Instant;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Step", "StepStatus", "Store", "Assessment", "AssessmentItem", "CancellationReason", "AppointmentInformation", "AppointmentDetail", "ContactInformation", "ShippingInformation", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceDetail {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66842a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66844c;
    public final CareServiceType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CareServiceCategory f66845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f66846f;
    public final CareServiceAction g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Store f66847h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CareServiceProduct f66848i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66849j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Instant f66850k;
    public final String l;
    public final String m;
    public final Assessment n;
    public final String o;
    public final List p;
    public final AppointmentInformation q;
    public final ShippingInformation r;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;", "", "Lkotlinx/datetime/Instant;", "date", "", "title", "<init>", "(Lkotlinx/datetime/Instant;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AppointmentDetail {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Instant f66851a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66852b;

        public AppointmentDetail(Instant instant, String str) {
            this.f66851a = instant;
            this.f66852b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AppointmentDetail)) {
                return false;
            }
            AppointmentDetail appointmentDetail = (AppointmentDetail) obj;
            return Intrinsics.c(this.f66851a, appointmentDetail.f66851a) && Intrinsics.c(this.f66852b, appointmentDetail.f66852b);
        }

        public final int hashCode() {
            Instant instant = this.f66851a;
            int iHashCode = (instant == null ? 0 : instant.f75239b.hashCode()) * 31;
            String str = this.f66852b;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            return "AppointmentDetail(date=" + this.f66851a + ", title=" + this.f66852b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;", "contactInformation", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;", "detail", "<init>", "(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AppointmentInformation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContactInformation f66853a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AppointmentDetail f66854b;

        public AppointmentInformation(ContactInformation contactInformation, AppointmentDetail appointmentDetail) {
            this.f66853a = contactInformation;
            this.f66854b = appointmentDetail;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AppointmentInformation)) {
                return false;
            }
            AppointmentInformation appointmentInformation = (AppointmentInformation) obj;
            return Intrinsics.c(this.f66853a, appointmentInformation.f66853a) && Intrinsics.c(this.f66854b, appointmentInformation.f66854b);
        }

        public final int hashCode() {
            ContactInformation contactInformation = this.f66853a;
            int iHashCode = (contactInformation == null ? 0 : contactInformation.hashCode()) * 31;
            AppointmentDetail appointmentDetail = this.f66854b;
            return iHashCode + (appointmentDetail != null ? appointmentDetail.hashCode() : 0);
        }

        public final String toString() {
            return "AppointmentInformation(contactInformation=" + this.f66853a + ", detail=" + this.f66854b + ")";
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;", "", "", "title", "careExpertNote", "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;", "price", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;", "shippingAddress", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;", "items", "", "showOnCareDetail", "disclaimer", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/Price;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;Ljava/util/List;ZLjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Assessment {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66855a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66856b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Price f66857c;
        public final CareServiceAddress d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f66858e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f66859f;
        public final String g;

        public Assessment(String str, String str2, Price price, CareServiceAddress careServiceAddress, List<AssessmentItem> list, boolean z, String str3) {
            str.getClass();
            price.getClass();
            list.getClass();
            this.f66855a = str;
            this.f66856b = str2;
            this.f66857c = price;
            this.d = careServiceAddress;
            this.f66858e = list;
            this.f66859f = z;
            this.g = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Assessment)) {
                return false;
            }
            Assessment assessment = (Assessment) obj;
            return Intrinsics.c(this.f66855a, assessment.f66855a) && Intrinsics.c(this.f66856b, assessment.f66856b) && Intrinsics.c(this.f66857c, assessment.f66857c) && Intrinsics.c(this.d, assessment.d) && Intrinsics.c(this.f66858e, assessment.f66858e) && this.f66859f == assessment.f66859f && Intrinsics.c(this.g, assessment.g);
        }

        public final int hashCode() {
            int iHashCode = this.f66855a.hashCode() * 31;
            String str = this.f66856b;
            int iHashCode2 = (this.f66857c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
            CareServiceAddress careServiceAddress = this.d;
            int iB = o60.b(n00.a((iHashCode2 + (careServiceAddress == null ? 0 : careServiceAddress.hashCode())) * 31, 31, this.f66858e), 31, this.f66859f);
            String str2 = this.g;
            return iB + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("Assessment(title=", this.f66855a, ", careExpertNote=", this.f66856b, ", price=");
            sbS.append(this.f66857c);
            sbS.append(", shippingAddress=");
            sbS.append(this.d);
            sbS.append(", items=");
            sbS.append(this.f66858e);
            sbS.append(", showOnCareDetail=");
            sbS.append(this.f66859f);
            sbS.append(", disclaimer=");
            return n00.r(this.g, ")", sbS);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;", "", "", "instruction", "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;", "price", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AssessmentItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66860a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Price f66861b;

        public AssessmentItem(String str, Price price) {
            str.getClass();
            this.f66860a = str;
            this.f66861b = price;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AssessmentItem)) {
                return false;
            }
            AssessmentItem assessmentItem = (AssessmentItem) obj;
            return Intrinsics.c(this.f66860a, assessmentItem.f66860a) && Intrinsics.c(this.f66861b, assessmentItem.f66861b);
        }

        public final int hashCode() {
            int iHashCode = this.f66860a.hashCode() * 31;
            Price price = this.f66861b;
            return iHashCode + (price == null ? 0 : price.hashCode());
        }

        public final String toString() {
            return "AssessmentItem(instruction=" + this.f66860a + ", price=" + this.f66861b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$CancellationReason;", "", "", b.a.f24015b, "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancellationReason {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66862a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66863b;

        public CancellationReason(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f66862a = str;
            this.f66863b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CancellationReason)) {
                return false;
            }
            CancellationReason cancellationReason = (CancellationReason) obj;
            return Intrinsics.c(this.f66862a, cancellationReason.f66862a) && Intrinsics.c(this.f66863b, cancellationReason.f66863b);
        }

        public final int hashCode() {
            return this.f66863b.hashCode() + (this.f66862a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("CancellationReason(id=", this.f66862a, ", description=", this.f66863b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;", "", "", "phone", "email", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactInformation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66864a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66865b;

        public ContactInformation(String str, String str2) {
            this.f66864a = str;
            this.f66865b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ContactInformation)) {
                return false;
            }
            ContactInformation contactInformation = (ContactInformation) obj;
            return Intrinsics.c(this.f66864a, contactInformation.f66864a) && Intrinsics.c(this.f66865b, contactInformation.f66865b);
        }

        public final int hashCode() {
            String str = this.f66864a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f66865b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("ContactInformation(phone=", this.f66864a, ", email=", this.f66865b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;", "", "", "", "address", "disclaimer", "", "isEditable", "title", "<init>", "(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShippingInformation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66866a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66867b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f66868c;
        public final String d;

        public ShippingInformation(List<String> list, String str, boolean z, String str2) {
            list.getClass();
            str2.getClass();
            this.f66866a = list;
            this.f66867b = str;
            this.f66868c = z;
            this.d = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShippingInformation)) {
                return false;
            }
            ShippingInformation shippingInformation = (ShippingInformation) obj;
            return Intrinsics.c(this.f66866a, shippingInformation.f66866a) && Intrinsics.c(this.f66867b, shippingInformation.f66867b) && this.f66868c == shippingInformation.f66868c && Intrinsics.c(this.d, shippingInformation.d);
        }

        public final int hashCode() {
            int iHashCode = this.f66866a.hashCode() * 31;
            String str = this.f66867b;
            return this.d.hashCode() + o60.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f66868c);
        }

        public final String toString() {
            return "ShippingInformation(address=" + this.f66866a + ", disclaimer=" + this.f66867b + ", isEditable=" + this.f66868c + ", title=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;", "", "", "identifier", "description", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;", "status", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Step {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66869a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66870b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final StepStatus f66871c;

        public Step(String str, String str2, StepStatus stepStatus) {
            str.getClass();
            str2.getClass();
            stepStatus.getClass();
            this.f66869a = str;
            this.f66870b = str2;
            this.f66871c = stepStatus;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Step)) {
                return false;
            }
            Step step = (Step) obj;
            return Intrinsics.c(this.f66869a, step.f66869a) && Intrinsics.c(this.f66870b, step.f66870b) && this.f66871c == step.f66871c;
        }

        public final int hashCode() {
            return this.f66871c.hashCode() + fc.b(this.f66869a.hashCode() * 31, 31, this.f66870b);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("Step(identifier=", this.f66869a, ", description=", this.f66870b, ", status=");
            sbS.append(this.f66871c);
            sbS.append(")");
            return sbS.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;", "", "PAST", "CURRENT", "FUTURE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class StepStatus {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ StepStatus[] $VALUES;
        public static final StepStatus CURRENT;
        public static final StepStatus FUTURE;
        public static final StepStatus PAST;

        static {
            StepStatus stepStatus = new StepStatus("PAST", 0);
            PAST = stepStatus;
            StepStatus stepStatus2 = new StepStatus("CURRENT", 1);
            CURRENT = stepStatus2;
            StepStatus stepStatus3 = new StepStatus("FUTURE", 2);
            FUTURE = stepStatus3;
            StepStatus[] stepStatusArr = {stepStatus, stepStatus2, stepStatus3};
            $VALUES = stepStatusArr;
            $ENTRIES = EnumEntriesKt.a(stepStatusArr);
        }

        public static StepStatus valueOf(String str) {
            return (StepStatus) Enum.valueOf(StepStatus.class, str);
        }

        public static StepStatus[] values() {
            return (StepStatus[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;", "", "", "identifier", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Store {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66872a;

        public Store(String str) {
            str.getClass();
            this.f66872a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Store) && Intrinsics.c(this.f66872a, ((Store) obj).f66872a);
        }

        public final int hashCode() {
            return this.f66872a.hashCode();
        }

        public final String toString() {
            return fc.h("Store(identifier=", this.f66872a, ")");
        }
    }

    public CareServiceDetail(String str, String str2, String str3, CareServiceType careServiceType, CareServiceCategory careServiceCategory, List list, CareServiceAction careServiceAction, Store store, CareServiceProduct careServiceProduct, String str4, Instant instant, String str5, String str6, Assessment assessment, String str7, List list2, AppointmentInformation appointmentInformation, ShippingInformation shippingInformation, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        careServiceType.getClass();
        careServiceCategory.getClass();
        list.getClass();
        instant.getClass();
        list2.getClass();
        this.f66842a = str;
        this.f66843b = str2;
        this.f66844c = str3;
        this.d = careServiceType;
        this.f66845e = careServiceCategory;
        this.f66846f = list;
        this.g = careServiceAction;
        this.f66847h = store;
        this.f66848i = careServiceProduct;
        this.f66849j = str4;
        this.f66850k = instant;
        this.l = str5;
        this.m = str6;
        this.n = assessment;
        this.o = str7;
        this.p = list2;
        this.q = appointmentInformation;
        this.r = shippingInformation;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0026  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof CareServiceDetail) {
                CareServiceDetail careServiceDetail = (CareServiceDetail) obj;
                String str = careServiceDetail.f66842a;
                CareServiceId.Companion companion = CareServiceId.INSTANCE;
                if (this.f66842a.equals(str)) {
                    String str2 = careServiceDetail.f66843b;
                    String str3 = this.f66843b;
                    if (str3 == null) {
                        if (str2 == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (str2 == null) {
                        zEquals = false;
                    } else {
                        CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
                        zEquals = str3.equals(str2);
                    }
                    if (zEquals && Intrinsics.c(this.f66844c, careServiceDetail.f66844c) && this.d == careServiceDetail.d && this.f66845e == careServiceDetail.f66845e && this.f66846f.equals(careServiceDetail.f66846f) && this.g == careServiceDetail.g && Intrinsics.c(this.f66847h, careServiceDetail.f66847h) && Intrinsics.c(this.f66848i, careServiceDetail.f66848i) && Intrinsics.c(this.f66849j, careServiceDetail.f66849j) && this.f66850k.equals(careServiceDetail.f66850k) && Intrinsics.c(this.l, careServiceDetail.l) && Intrinsics.c(this.m, careServiceDetail.m) && Intrinsics.c(this.n, careServiceDetail.n) && Intrinsics.c(this.o, careServiceDetail.o) && this.p.equals(careServiceDetail.p) && Intrinsics.c(this.q, careServiceDetail.q) && Intrinsics.c(this.r, careServiceDetail.r)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        int iHashCode2 = this.f66842a.hashCode() * 31;
        String str = this.f66843b;
        if (str == null) {
            iHashCode = 0;
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int i2 = (iHashCode2 + iHashCode) * 31;
        String str2 = this.f66844c;
        int iA = n00.a((this.f66845e.hashCode() + ((this.d.hashCode() + ((i2 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31)) * 31, 31, this.f66846f);
        CareServiceAction careServiceAction = this.g;
        int iHashCode3 = (iA + (careServiceAction == null ? 0 : careServiceAction.hashCode())) * 31;
        Store store = this.f66847h;
        int iHashCode4 = (iHashCode3 + (store == null ? 0 : store.f66872a.hashCode())) * 31;
        CareServiceProduct careServiceProduct = this.f66848i;
        int iHashCode5 = (iHashCode4 + (careServiceProduct == null ? 0 : careServiceProduct.hashCode())) * 31;
        String str3 = this.f66849j;
        int iHashCode6 = (this.f66850k.f75239b.hashCode() + ((iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31)) * 31;
        String str4 = this.l;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.m;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Assessment assessment = this.n;
        int iHashCode9 = (iHashCode8 + (assessment == null ? 0 : assessment.hashCode())) * 31;
        String str6 = this.o;
        int iA2 = n00.a((iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.p);
        AppointmentInformation appointmentInformation = this.q;
        int iHashCode10 = (iA2 + (appointmentInformation == null ? 0 : appointmentInformation.hashCode())) * 31;
        ShippingInformation shippingInformation = this.r;
        return iHashCode10 + (shippingInformation != null ? shippingInformation.hashCode() : 0);
    }

    public final String toString() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        String str = this.f66843b;
        if (str == null) {
            str = "null";
        } else {
            CareServiceTransactionId.Companion companion2 = CareServiceTransactionId.INSTANCE;
        }
        StringBuilder sbS = fc.s("CareServiceDetail(id=", this.f66842a, ", transactionId=", str, ", description=");
        sbS.append(this.f66844c);
        sbS.append(", type=");
        sbS.append(this.d);
        sbS.append(", category=");
        sbS.append(this.f66845e);
        sbS.append(", steps=");
        sbS.append(this.f66846f);
        sbS.append(", action=");
        sbS.append(this.g);
        sbS.append(", store=");
        sbS.append(this.f66847h);
        sbS.append(", product=");
        sbS.append(this.f66848i);
        sbS.append(", trackingURL=");
        sbS.append(this.f66849j);
        sbS.append(", creationDate=");
        sbS.append(this.f66850k);
        sbS.append(", appointmentId=");
        sbS.append(this.l);
        sbS.append(", payByLinkURL=");
        sbS.append(this.m);
        sbS.append(", preliminaryAssessmentInformation=");
        sbS.append(this.n);
        sbS.append(", contactMethod=");
        d21.z(this.o, ", cancellationReasons=", ", appointmentInformation=", sbS, this.p);
        sbS.append(this.q);
        sbS.append(", shippingInformation=");
        sbS.append(this.r);
        sbS.append(")");
        return sbS.toString();
    }
}
