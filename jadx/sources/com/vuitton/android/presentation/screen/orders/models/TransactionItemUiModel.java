package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001#BÅ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0015\u001a\u00020\b\u0012\u0006\u0010\u0016\u001a\u00020\b\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\r\u0012\b\b\u0002\u0010\u001b\u001a\u00020\b\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e¢\u0006\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;", "Landroid/os/Parcelable;", "", "identifier", "Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;", "timeline", "Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;", "priceWithoutVAT", "", "eligibleForExchange", "name", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "images", "mainImage", "price", "", "quantity", "color", "size", "isReturned", "eligibleForReturn", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "disclaimer", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization;", "customizations", "selectedForReturn", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;", "returnReason", "", "Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier;", "fieldsError", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TransactionItemUiModel implements Parcelable {
    public static final Parcelable.Creator<TransactionItemUiModel> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimelineUiModel f60414c;
    public final PriceItemUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f60415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f60416f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f60417h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f60418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PriceItemUiModel f60419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f60420k;
    public final String l;
    public final String m;
    public final boolean n;
    public final boolean o;
    public final StringResourceUiModel p;
    public final List q;
    public final boolean r;
    public final OrderReturnReasonUiModel s;
    public final Set t;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<TransactionItemUiModel> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v15 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v3, types: [int] */
        @Override // android.os.Parcelable.Creator
        public final TransactionItemUiModel createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            parcel.getClass();
            String string = parcel.readString();
            TimelineUiModel timelineUiModelCreateFromParcel = parcel.readInt() == 0 ? null : TimelineUiModel.CREATOR.createFromParcel(parcel);
            Parcelable.Creator<PriceItemUiModel> creator = PriceItemUiModel.CREATOR;
            PriceItemUiModel priceItemUiModelCreateFromParcel = creator.createFromParcel(parcel);
            boolean z = parcel.readInt() != 0;
            String string2 = parcel.readString();
            String str = SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b;
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            String string3 = parcel.readString();
            PriceItemUiModel priceItemUiModelCreateFromParcel2 = creator.createFromParcel(parcel);
            boolean z2 = z;
            int i2 = parcel.readInt();
            boolean z3 = false;
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            boolean z4 = parcel.readInt() != 0;
            if (parcel.readInt() != 0) {
                z3 = true;
            }
            StringResourceUiModel stringResourceUiModel = (StringResourceUiModel) parcel.readParcelable(TransactionItemUiModel.class.getClassLoader());
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i3 = parcel.readInt();
                arrayList = new ArrayList(i3);
                for (?? r3 = z3; r3 != i3; r3++) {
                    arrayList.add(parcel.readParcelable(TransactionItemUiModel.class.getClassLoader()));
                    i3 = i3;
                }
            }
            if (parcel.readInt() != 0) {
                z3 = true;
            }
            OrderReturnReasonUiModel orderReturnReasonUiModelCreateFromParcel = parcel.readInt() == 0 ? r13 : OrderReturnReasonUiModel.CREATOR.createFromParcel(parcel);
            int i4 = parcel.readInt();
            ArrayList arrayList2 = arrayList;
            LinkedHashSet linkedHashSet = new LinkedHashSet(i4);
            int i5 = 0;
            while (i5 != i4) {
                linkedHashSet.add(parcel.readParcelable(TransactionItemUiModel.class.getClassLoader()));
                i5++;
                i4 = i4;
            }
            return new TransactionItemUiModel(string, timelineUiModelCreateFromParcel, priceItemUiModelCreateFromParcel, z2, string2, str, arrayListCreateStringArrayList, string3, priceItemUiModelCreateFromParcel2, i2, string4, string5, z4, z3, stringResourceUiModel, arrayList2, z3, orderReturnReasonUiModelCreateFromParcel, linkedHashSet, null);
        }

        @Override // android.os.Parcelable.Creator
        public final TransactionItemUiModel[] newArray(int i2) {
            return new TransactionItemUiModel[i2];
        }
    }

    static {
        new Companion(null);
        CREATOR = new Creator();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TransactionItemUiModel(String str, TimelineUiModel timelineUiModel, PriceItemUiModel priceItemUiModel, boolean z, String str2, String str3, List list, String str4, PriceItemUiModel priceItemUiModel2, int i2, String str5, String str6, boolean z2, boolean z3, StringResourceUiModel stringResourceUiModel, List list2, boolean z4, OrderReturnReasonUiModel orderReturnReasonUiModel, Set set, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        String str7;
        if ((i3 & 128) != 0) {
            String str8 = (String) CollectionsKt.firstOrNull(list);
            str7 = str8 == null ? "" : str8;
        } else {
            str7 = str4;
        }
        this(str, timelineUiModel, priceItemUiModel, z, str2, str3, list, str7, priceItemUiModel2, i2, str5, str6, z2, z3, stringResourceUiModel, list2, (65536 & i3) != 0 ? false : z4, (131072 & i3) != 0 ? null : orderReturnReasonUiModel, (i3 & 262144) != 0 ? new LinkedHashSet() : set, null);
    }

    public static TransactionItemUiModel a(TransactionItemUiModel transactionItemUiModel, EmptyList emptyList) {
        String str = transactionItemUiModel.f60413b;
        TimelineUiModel timelineUiModel = transactionItemUiModel.f60414c;
        PriceItemUiModel priceItemUiModel = transactionItemUiModel.d;
        boolean z = transactionItemUiModel.f60415e;
        String str2 = transactionItemUiModel.f60416f;
        String str3 = transactionItemUiModel.g;
        List list = transactionItemUiModel.f60417h;
        String str4 = transactionItemUiModel.f60418i;
        PriceItemUiModel priceItemUiModel2 = transactionItemUiModel.f60419j;
        int i2 = transactionItemUiModel.f60420k;
        String str5 = transactionItemUiModel.l;
        String str6 = transactionItemUiModel.m;
        boolean z2 = transactionItemUiModel.n;
        boolean z3 = transactionItemUiModel.o;
        StringResourceUiModel stringResourceUiModel = transactionItemUiModel.p;
        boolean z4 = transactionItemUiModel.r;
        OrderReturnReasonUiModel orderReturnReasonUiModel = transactionItemUiModel.s;
        Set set = transactionItemUiModel.t;
        str.getClass();
        priceItemUiModel.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        str4.getClass();
        priceItemUiModel2.getClass();
        set.getClass();
        return new TransactionItemUiModel(str, timelineUiModel, priceItemUiModel, z, str2, str3, list, str4, priceItemUiModel2, i2, str5, str6, z2, z3, stringResourceUiModel, emptyList, z4, orderReturnReasonUiModel, set, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransactionItemUiModel)) {
            return false;
        }
        TransactionItemUiModel transactionItemUiModel = (TransactionItemUiModel) obj;
        if (!Intrinsics.c(this.f60413b, transactionItemUiModel.f60413b) || !Intrinsics.c(this.f60414c, transactionItemUiModel.f60414c) || !Intrinsics.c(this.d, transactionItemUiModel.d) || this.f60415e != transactionItemUiModel.f60415e || !Intrinsics.c(this.f60416f, transactionItemUiModel.f60416f)) {
            return false;
        }
        String str = transactionItemUiModel.g;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.g, str) && Intrinsics.c(this.f60417h, transactionItemUiModel.f60417h) && Intrinsics.c(this.f60418i, transactionItemUiModel.f60418i) && Intrinsics.c(this.f60419j, transactionItemUiModel.f60419j) && this.f60420k == transactionItemUiModel.f60420k && Intrinsics.c(this.l, transactionItemUiModel.l) && Intrinsics.c(this.m, transactionItemUiModel.m) && this.n == transactionItemUiModel.n && this.o == transactionItemUiModel.o && Intrinsics.c(this.p, transactionItemUiModel.p) && Intrinsics.c(this.q, transactionItemUiModel.q) && this.r == transactionItemUiModel.r && Intrinsics.c(this.s, transactionItemUiModel.s) && Intrinsics.c(this.t, transactionItemUiModel.t);
    }

    public final int hashCode() {
        int iHashCode = this.f60413b.hashCode() * 31;
        TimelineUiModel timelineUiModel = this.f60414c;
        int iB = fc.b(o60.b((this.d.hashCode() + ((iHashCode + (timelineUiModel == null ? 0 : timelineUiModel.hashCode())) * 31)) * 31, 31, this.f60415e), 31, this.f60416f);
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB2 = tr.b(this.f60420k, (this.f60419j.hashCode() + fc.b(n00.a(fc.b(iB, 31, this.g), 31, this.f60417h), 31, this.f60418i)) * 31, 31);
        String str = this.l;
        int iHashCode2 = (iB2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.m;
        int iB3 = o60.b(o60.b((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.n), 31, this.o);
        StringResourceUiModel stringResourceUiModel = this.p;
        int iHashCode3 = (iB3 + (stringResourceUiModel == null ? 0 : stringResourceUiModel.hashCode())) * 31;
        List list = this.q;
        int iB4 = o60.b((iHashCode3 + (list == null ? 0 : list.hashCode())) * 31, 31, this.r);
        OrderReturnReasonUiModel orderReturnReasonUiModel = this.s;
        return this.t.hashCode() + ((iB4 + (orderReturnReasonUiModel != null ? orderReturnReasonUiModel.hashCode() : 0)) * 31);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sb = new StringBuilder("TransactionItemUiModel(identifier=");
        sb.append(this.f60413b);
        sb.append(", timeline=");
        sb.append(this.f60414c);
        sb.append(", priceWithoutVAT=");
        sb.append(this.d);
        sb.append(", eligibleForExchange=");
        sb.append(this.f60415e);
        sb.append(", name=");
        cj.C(sb, this.f60416f, ", sku=", this.g, ", images=");
        o60.B(", mainImage=", this.f60418i, ", price=", sb, this.f60417h);
        sb.append(this.f60419j);
        sb.append(", quantity=");
        sb.append(this.f60420k);
        sb.append(", color=");
        cj.C(sb, this.l, ", size=", this.m, ", isReturned=");
        fc.y(sb, this.n, ", eligibleForReturn=", this.o, ", disclaimer=");
        sb.append(this.p);
        sb.append(", customizations=");
        sb.append(this.q);
        sb.append(", selectedForReturn=");
        sb.append(this.r);
        sb.append(", returnReason=");
        sb.append(this.s);
        sb.append(", fieldsError=");
        sb.append(this.t);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f60413b);
        TimelineUiModel timelineUiModel = this.f60414c;
        if (timelineUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            timelineUiModel.writeToParcel(parcel, i2);
        }
        this.d.writeToParcel(parcel, i2);
        parcel.writeInt(this.f60415e ? 1 : 0);
        parcel.writeString(this.f60416f);
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.g);
        parcel.writeStringList(this.f60417h);
        parcel.writeString(this.f60418i);
        this.f60419j.writeToParcel(parcel, i2);
        parcel.writeInt(this.f60420k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeInt(this.n ? 1 : 0);
        parcel.writeInt(this.o ? 1 : 0);
        parcel.writeParcelable(this.p, i2);
        List list = this.q;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                parcel.writeParcelable((Parcelable) it.next(), i2);
            }
        }
        parcel.writeInt(this.r ? 1 : 0);
        OrderReturnReasonUiModel orderReturnReasonUiModel = this.s;
        if (orderReturnReasonUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            orderReturnReasonUiModel.writeToParcel(parcel, i2);
        }
        Set set = this.t;
        parcel.writeInt(set.size());
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            parcel.writeParcelable((Parcelable) it2.next(), i2);
        }
    }

    public TransactionItemUiModel(String str, TimelineUiModel timelineUiModel, PriceItemUiModel priceItemUiModel, boolean z, String str2, String str3, List list, String str4, PriceItemUiModel priceItemUiModel2, int i2, String str5, String str6, boolean z2, boolean z3, StringResourceUiModel stringResourceUiModel, List list2, boolean z4, OrderReturnReasonUiModel orderReturnReasonUiModel, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        priceItemUiModel.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        str4.getClass();
        priceItemUiModel2.getClass();
        set.getClass();
        this.f60413b = str;
        this.f60414c = timelineUiModel;
        this.d = priceItemUiModel;
        this.f60415e = z;
        this.f60416f = str2;
        this.g = str3;
        this.f60417h = list;
        this.f60418i = str4;
        this.f60419j = priceItemUiModel2;
        this.f60420k = i2;
        this.l = str5;
        this.m = str6;
        this.n = z2;
        this.o = z3;
        this.p = stringResourceUiModel;
        this.q = list2;
        this.r = z4;
        this.s = orderReturnReasonUiModel;
        this.t = set;
    }
}
