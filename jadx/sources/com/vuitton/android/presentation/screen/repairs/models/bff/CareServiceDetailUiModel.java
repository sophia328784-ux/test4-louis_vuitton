package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceType;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001:\u0004\u001e\u001f !B\u008d\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\""}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;", "transactionId", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;", "type", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;", "category", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;", "action", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;", Payload.TYPE_STORE, "", "trackingURL", "creationFormattedDate", "appointmentId", "payByLinkURL", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;", "assessment", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;", "contactMethod", "", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;", "cancellationReasons", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;", "detail", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Store", "Assessment", "AssessmentItem", "CancellationReason", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceDetailUiModel implements Parcelable {
    public static final Parcelable.Creator<CareServiceDetailUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64038c;
    public final CareServiceType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CareServiceCategory f64039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CareServiceAction f64040f;
    public final Store g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f64041h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f64042i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f64043j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f64044k;
    public final Assessment l;
    public final DistantRepairContactMethod m;
    public final List n;
    public final RepairDetailUiModel o;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;", "Landroid/os/Parcelable;", "", "title", "careExpertNote", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;", "price", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;", "shippingAddress", "billingAddress", "", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;", "items", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Assessment implements Parcelable {
        public static final Parcelable.Creator<Assessment> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64045b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f64046c;
        public final PriceUiModel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CareServiceAddressUiModel f64047e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final CareServiceAddressUiModel f64048f;
        public final List g;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Assessment> {
            @Override // android.os.Parcelable.Creator
            public final Assessment createFromParcel(Parcel parcel) {
                parcel.getClass();
                String string = parcel.readString();
                String string2 = parcel.readString();
                PriceUiModel priceUiModelCreateFromParcel = PriceUiModel.CREATOR.createFromParcel(parcel);
                CareServiceAddressUiModel careServiceAddressUiModelCreateFromParcel = parcel.readInt() == 0 ? null : CareServiceAddressUiModel.CREATOR.createFromParcel(parcel);
                CareServiceAddressUiModel careServiceAddressUiModelCreateFromParcel2 = parcel.readInt() != 0 ? CareServiceAddressUiModel.CREATOR.createFromParcel(parcel) : null;
                int i2 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i2);
                int iD = 0;
                while (iD != i2) {
                    iD = pq0.d(AssessmentItem.CREATOR, parcel, arrayList, iD, 1);
                }
                return new Assessment(string, string2, priceUiModelCreateFromParcel, careServiceAddressUiModelCreateFromParcel, careServiceAddressUiModelCreateFromParcel2, arrayList);
            }

            @Override // android.os.Parcelable.Creator
            public final Assessment[] newArray(int i2) {
                return new Assessment[i2];
            }
        }

        public Assessment(String str, String str2, PriceUiModel priceUiModel, CareServiceAddressUiModel careServiceAddressUiModel, CareServiceAddressUiModel careServiceAddressUiModel2, List<AssessmentItem> list) {
            str.getClass();
            priceUiModel.getClass();
            list.getClass();
            this.f64045b = str;
            this.f64046c = str2;
            this.d = priceUiModel;
            this.f64047e = careServiceAddressUiModel;
            this.f64048f = careServiceAddressUiModel2;
            this.g = list;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Assessment)) {
                return false;
            }
            Assessment assessment = (Assessment) obj;
            return Intrinsics.c(this.f64045b, assessment.f64045b) && Intrinsics.c(this.f64046c, assessment.f64046c) && Intrinsics.c(this.d, assessment.d) && Intrinsics.c(this.f64047e, assessment.f64047e) && Intrinsics.c(this.f64048f, assessment.f64048f) && Intrinsics.c(this.g, assessment.g);
        }

        public final int hashCode() {
            int iHashCode = this.f64045b.hashCode() * 31;
            String str = this.f64046c;
            int iHashCode2 = (this.d.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
            CareServiceAddressUiModel careServiceAddressUiModel = this.f64047e;
            int iHashCode3 = (iHashCode2 + (careServiceAddressUiModel == null ? 0 : careServiceAddressUiModel.hashCode())) * 31;
            CareServiceAddressUiModel careServiceAddressUiModel2 = this.f64048f;
            return this.g.hashCode() + ((iHashCode3 + (careServiceAddressUiModel2 != null ? careServiceAddressUiModel2.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("Assessment(title=", this.f64045b, ", careExpertNote=", this.f64046c, ", price=");
            sbS.append(this.d);
            sbS.append(", shippingAddress=");
            sbS.append(this.f64047e);
            sbS.append(", billingAddress=");
            sbS.append(this.f64048f);
            sbS.append(", items=");
            sbS.append(this.g);
            sbS.append(")");
            return sbS.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f64045b);
            parcel.writeString(this.f64046c);
            this.d.writeToParcel(parcel, i2);
            CareServiceAddressUiModel careServiceAddressUiModel = this.f64047e;
            if (careServiceAddressUiModel == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                careServiceAddressUiModel.writeToParcel(parcel, i2);
            }
            CareServiceAddressUiModel careServiceAddressUiModel2 = this.f64048f;
            if (careServiceAddressUiModel2 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                careServiceAddressUiModel2.writeToParcel(parcel, i2);
            }
            Iterator itP = cj.p(this.g, parcel);
            while (itP.hasNext()) {
                ((AssessmentItem) itP.next()).writeToParcel(parcel, i2);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;", "Landroid/os/Parcelable;", "", "instruction", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;", "price", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AssessmentItem implements Parcelable {
        public static final Parcelable.Creator<AssessmentItem> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64049b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PriceUiModel f64050c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<AssessmentItem> {
            @Override // android.os.Parcelable.Creator
            public final AssessmentItem createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new AssessmentItem(parcel.readString(), parcel.readInt() == 0 ? null : PriceUiModel.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final AssessmentItem[] newArray(int i2) {
                return new AssessmentItem[i2];
            }
        }

        public AssessmentItem(String str, PriceUiModel priceUiModel) {
            str.getClass();
            this.f64049b = str;
            this.f64050c = priceUiModel;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AssessmentItem)) {
                return false;
            }
            AssessmentItem assessmentItem = (AssessmentItem) obj;
            return Intrinsics.c(this.f64049b, assessmentItem.f64049b) && Intrinsics.c(this.f64050c, assessmentItem.f64050c);
        }

        public final int hashCode() {
            int iHashCode = this.f64049b.hashCode() * 31;
            PriceUiModel priceUiModel = this.f64050c;
            return iHashCode + (priceUiModel == null ? 0 : priceUiModel.hashCode());
        }

        public final String toString() {
            return "AssessmentItem(instruction=" + this.f64049b + ", price=" + this.f64050c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f64049b);
            PriceUiModel priceUiModel = this.f64050c;
            if (priceUiModel == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                priceUiModel.writeToParcel(parcel, i2);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;", "Landroid/os/Parcelable;", "", b.a.f24015b, "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancellationReason implements Parcelable {
        public static final Parcelable.Creator<CancellationReason> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f64052c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<CancellationReason> {
            @Override // android.os.Parcelable.Creator
            public final CancellationReason createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new CancellationReason(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final CancellationReason[] newArray(int i2) {
                return new CancellationReason[i2];
            }
        }

        public CancellationReason(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f64051b = str;
            this.f64052c = str2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CancellationReason)) {
                return false;
            }
            CancellationReason cancellationReason = (CancellationReason) obj;
            return Intrinsics.c(this.f64051b, cancellationReason.f64051b) && Intrinsics.c(this.f64052c, cancellationReason.f64052c);
        }

        public final int hashCode() {
            return this.f64052c.hashCode() + (this.f64051b.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("CancellationReason(id=", this.f64051b, ", description=", this.f64052c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f64051b);
            parcel.writeString(this.f64052c);
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CareServiceDetailUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CareServiceDetailUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String str = CareServiceIdUiModel.CREATOR.createFromParcel(parcel).f64060b;
            CareServiceTransactionIdUiModel careServiceTransactionIdUiModelCreateFromParcel = parcel.readInt() == 0 ? null : CareServiceTransactionIdUiModel.CREATOR.createFromParcel(parcel);
            String str2 = careServiceTransactionIdUiModelCreateFromParcel != null ? careServiceTransactionIdUiModelCreateFromParcel.f64072b : null;
            CareServiceType careServiceTypeValueOf = CareServiceType.valueOf(parcel.readString());
            CareServiceCategory careServiceCategoryValueOf = CareServiceCategory.valueOf(parcel.readString());
            CareServiceAction careServiceActionValueOf = parcel.readInt() == 0 ? null : CareServiceAction.valueOf(parcel.readString());
            Store storeCreateFromParcel = parcel.readInt() == 0 ? null : Store.CREATOR.createFromParcel(parcel);
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            Assessment assessmentCreateFromParcel = parcel.readInt() == 0 ? null : Assessment.CREATOR.createFromParcel(parcel);
            DistantRepairContactMethod distantRepairContactMethodValueOf = parcel.readInt() != 0 ? DistantRepairContactMethod.valueOf(parcel.readString()) : null;
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iD = 0;
            while (iD != i2) {
                iD = pq0.d(CancellationReason.CREATOR, parcel, arrayList, iD, 1);
                i2 = i2;
                str = str;
            }
            return new CareServiceDetailUiModel(str, str2, careServiceTypeValueOf, careServiceCategoryValueOf, careServiceActionValueOf, storeCreateFromParcel, string, string2, string3, string4, assessmentCreateFromParcel, distantRepairContactMethodValueOf, arrayList, RepairDetailUiModel.CREATOR.createFromParcel(parcel), null);
        }

        @Override // android.os.Parcelable.Creator
        public final CareServiceDetailUiModel[] newArray(int i2) {
            return new CareServiceDetailUiModel[i2];
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;", "Landroid/os/Parcelable;", "", "identifier", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Store implements Parcelable {
        public static final Parcelable.Creator<Store> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64053b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Store> {
            @Override // android.os.Parcelable.Creator
            public final Store createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Store(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Store[] newArray(int i2) {
                return new Store[i2];
            }
        }

        public Store(String str) {
            str.getClass();
            this.f64053b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Store) && Intrinsics.c(this.f64053b, ((Store) obj).f64053b);
        }

        public final int hashCode() {
            return this.f64053b.hashCode();
        }

        public final String toString() {
            return fc.h("Store(identifier=", this.f64053b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f64053b);
        }
    }

    public CareServiceDetailUiModel(String str, String str2, CareServiceType careServiceType, CareServiceCategory careServiceCategory, CareServiceAction careServiceAction, Store store, String str3, String str4, String str5, String str6, Assessment assessment, DistantRepairContactMethod distantRepairContactMethod, List list, RepairDetailUiModel repairDetailUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        careServiceType.getClass();
        careServiceCategory.getClass();
        str4.getClass();
        list.getClass();
        repairDetailUiModel.getClass();
        this.f64037b = str;
        this.f64038c = str2;
        this.d = careServiceType;
        this.f64039e = careServiceCategory;
        this.f64040f = careServiceAction;
        this.g = store;
        this.f64041h = str3;
        this.f64042i = str4;
        this.f64043j = str5;
        this.f64044k = str6;
        this.l = assessment;
        this.m = distantRepairContactMethod;
        this.n = list;
        this.o = repairDetailUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0026  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof CareServiceDetailUiModel) {
                CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) obj;
                String str = careServiceDetailUiModel.f64037b;
                CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
                if (this.f64037b.equals(str)) {
                    String str2 = careServiceDetailUiModel.f64038c;
                    String str3 = this.f64038c;
                    if (str3 == null) {
                        if (str2 == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (str2 == null) {
                        zEquals = false;
                    } else {
                        CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
                        zEquals = str3.equals(str2);
                    }
                    if (zEquals && this.d == careServiceDetailUiModel.d && this.f64039e == careServiceDetailUiModel.f64039e && this.f64040f == careServiceDetailUiModel.f64040f && Intrinsics.c(this.g, careServiceDetailUiModel.g) && Intrinsics.c(this.f64041h, careServiceDetailUiModel.f64041h) && this.f64042i.equals(careServiceDetailUiModel.f64042i) && Intrinsics.c(this.f64043j, careServiceDetailUiModel.f64043j) && Intrinsics.c(this.f64044k, careServiceDetailUiModel.f64044k) && Intrinsics.c(this.l, careServiceDetailUiModel.l) && this.m == careServiceDetailUiModel.m && this.n.equals(careServiceDetailUiModel.n) && this.o.equals(careServiceDetailUiModel.o)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        int iHashCode2 = this.f64037b.hashCode() * 31;
        String str = this.f64038c;
        if (str == null) {
            iHashCode = 0;
        } else {
            CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
            iHashCode = str.hashCode();
        }
        int iHashCode3 = (this.f64039e.hashCode() + ((this.d.hashCode() + ((iHashCode2 + iHashCode) * 31)) * 31)) * 31;
        CareServiceAction careServiceAction = this.f64040f;
        int iHashCode4 = (iHashCode3 + (careServiceAction == null ? 0 : careServiceAction.hashCode())) * 31;
        Store store = this.g;
        int iHashCode5 = (iHashCode4 + (store == null ? 0 : store.f64053b.hashCode())) * 31;
        String str2 = this.f64041h;
        int iB = fc.b((iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f64042i);
        String str3 = this.f64043j;
        int iHashCode6 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f64044k;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Assessment assessment = this.l;
        int iHashCode8 = (iHashCode7 + (assessment == null ? 0 : assessment.hashCode())) * 31;
        DistantRepairContactMethod distantRepairContactMethod = this.m;
        return this.o.hashCode() + n00.a((iHashCode8 + (distantRepairContactMethod != null ? distantRepairContactMethod.hashCode() : 0)) * 31, 31, this.n);
    }

    public final String toString() {
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str = this.f64038c;
        if (str == null) {
            str = "null";
        } else {
            CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
        }
        StringBuilder sbS = fc.s("CareServiceDetailUiModel(id=", this.f64037b, ", transactionId=", str, ", type=");
        sbS.append(this.d);
        sbS.append(", category=");
        sbS.append(this.f64039e);
        sbS.append(", action=");
        sbS.append(this.f64040f);
        sbS.append(", store=");
        sbS.append(this.g);
        sbS.append(", trackingURL=");
        cj.C(sbS, this.f64041h, ", creationFormattedDate=", this.f64042i, ", appointmentId=");
        cj.C(sbS, this.f64043j, ", payByLinkURL=", this.f64044k, ", assessment=");
        sbS.append(this.l);
        sbS.append(", contactMethod=");
        sbS.append(this.m);
        sbS.append(", cancellationReasons=");
        sbS.append(this.n);
        sbS.append(", detail=");
        sbS.append(this.o);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        parcel.writeString(this.f64037b);
        String str = this.f64038c;
        if (str == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            CareServiceTransactionIdUiModel.Companion companion2 = CareServiceTransactionIdUiModel.f64071c;
            parcel.writeString(str);
        }
        parcel.writeString(this.d.name());
        parcel.writeString(this.f64039e.name());
        CareServiceAction careServiceAction = this.f64040f;
        if (careServiceAction == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(careServiceAction.name());
        }
        Store store = this.g;
        if (store == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(store.f64053b);
        }
        parcel.writeString(this.f64041h);
        parcel.writeString(this.f64042i);
        parcel.writeString(this.f64043j);
        parcel.writeString(this.f64044k);
        Assessment assessment = this.l;
        if (assessment == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            assessment.writeToParcel(parcel, i2);
        }
        DistantRepairContactMethod distantRepairContactMethod = this.m;
        if (distantRepairContactMethod == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(distantRepairContactMethod.name());
        }
        Iterator itP = cj.p(this.n, parcel);
        while (itP.hasNext()) {
            ((CancellationReason) itP.next()).writeToParcel(parcel, i2);
        }
        this.o.writeToParcel(parcel, i2);
    }
}
