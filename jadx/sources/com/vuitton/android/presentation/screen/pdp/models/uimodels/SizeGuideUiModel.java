package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u00ad\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00060\u00060\u000b\u0012\u001e\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00060\u00060\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;", "Landroid/os/Parcelable;", "", "title", "reinsuranceText", "selectYourCountryTitle", "", "cmCountryList", "inchesCountryList", "cmLabel", "inchesLabel", "", "cmTableMap", "inchesTableMap", "howToMeasureTitle", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HowToMeasureItemUiModel;", "howToMeasureList", "topDescription", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SizeGuideUiModel implements Parcelable {
    public static final Parcelable.Creator<SizeGuideUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61750c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f61751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f61752f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f61753h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Map f61754i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map f61755j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f61756k;
    public final List l;
    public final String m;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<SizeGuideUiModel> {
        @Override // android.os.Parcelable.Creator
        public final SizeGuideUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            int i2 = parcel.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(i2);
            for (int i3 = 0; i3 != i2; i3++) {
                String string6 = parcel.readString();
                int i4 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i4);
                for (int i5 = 0; i5 != i4; i5++) {
                    arrayList.add(parcel.createStringArrayList());
                }
                linkedHashMap.put(string6, arrayList);
            }
            int i6 = parcel.readInt();
            int i7 = 0;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(i6);
            int i8 = 0;
            while (i8 != i6) {
                String string7 = parcel.readString();
                int i9 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i9);
                for (int i10 = i7; i10 != i9; i10++) {
                    arrayList2.add(parcel.createStringArrayList());
                }
                linkedHashMap2.put(string7, arrayList2);
                i8++;
                i7 = 0;
            }
            String string8 = parcel.readString();
            int i11 = parcel.readInt();
            ArrayList arrayList3 = new ArrayList(i11);
            int iD = 0;
            while (iD != i11) {
                iD = pq0.d(HowToMeasureItemUiModel.CREATOR, parcel, arrayList3, iD, 1);
            }
            return new SizeGuideUiModel(string, string2, string3, arrayListCreateStringArrayList, arrayListCreateStringArrayList2, string4, string5, linkedHashMap, linkedHashMap2, string8, arrayList3, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final SizeGuideUiModel[] newArray(int i2) {
            return new SizeGuideUiModel[i2];
        }
    }

    public SizeGuideUiModel(String str, String str2, String str3, List<String> list, List<String> list2, String str4, String str5, Map<String, ? extends List<? extends List<String>>> map, Map<String, ? extends List<? extends List<String>>> map2, String str6, List<HowToMeasureItemUiModel> list3, String str7) {
        str.getClass();
        str3.getClass();
        list.getClass();
        list2.getClass();
        str4.getClass();
        str5.getClass();
        map.getClass();
        map2.getClass();
        str6.getClass();
        list3.getClass();
        this.f61749b = str;
        this.f61750c = str2;
        this.d = str3;
        this.f61751e = list;
        this.f61752f = list2;
        this.g = str4;
        this.f61753h = str5;
        this.f61754i = map;
        this.f61755j = map2;
        this.f61756k = str6;
        this.l = list3;
        this.m = str7;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeGuideUiModel)) {
            return false;
        }
        SizeGuideUiModel sizeGuideUiModel = (SizeGuideUiModel) obj;
        return Intrinsics.c(this.f61749b, sizeGuideUiModel.f61749b) && Intrinsics.c(this.f61750c, sizeGuideUiModel.f61750c) && Intrinsics.c(this.d, sizeGuideUiModel.d) && Intrinsics.c(this.f61751e, sizeGuideUiModel.f61751e) && Intrinsics.c(this.f61752f, sizeGuideUiModel.f61752f) && Intrinsics.c(this.g, sizeGuideUiModel.g) && Intrinsics.c(this.f61753h, sizeGuideUiModel.f61753h) && Intrinsics.c(this.f61754i, sizeGuideUiModel.f61754i) && Intrinsics.c(this.f61755j, sizeGuideUiModel.f61755j) && Intrinsics.c(this.f61756k, sizeGuideUiModel.f61756k) && Intrinsics.c(this.l, sizeGuideUiModel.l) && Intrinsics.c(this.m, sizeGuideUiModel.m);
    }

    public final int hashCode() {
        int iHashCode = this.f61749b.hashCode() * 31;
        String str = this.f61750c;
        int iA = n00.a(fc.b((this.f61755j.hashCode() + ((this.f61754i.hashCode() + fc.b(fc.b(n00.a(n00.a(fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.d), 31, this.f61751e), 31, this.f61752f), 31, this.g), 31, this.f61753h)) * 31)) * 31, 31, this.f61756k), 31, this.l);
        String str2 = this.m;
        return iA + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SizeGuideUiModel(title=", this.f61749b, ", reinsuranceText=", this.f61750c, ", selectYourCountryTitle=");
        d21.z(this.d, ", cmCountryList=", ", inchesCountryList=", sbS, this.f61751e);
        o60.B(", cmLabel=", this.g, ", inchesLabel=", sbS, this.f61752f);
        sbS.append(this.f61753h);
        sbS.append(", cmTableMap=");
        sbS.append(this.f61754i);
        sbS.append(", inchesTableMap=");
        sbS.append(this.f61755j);
        sbS.append(", howToMeasureTitle=");
        sbS.append(this.f61756k);
        sbS.append(", howToMeasureList=");
        sbS.append(this.l);
        sbS.append(", topDescription=");
        sbS.append(this.m);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61749b);
        parcel.writeString(this.f61750c);
        parcel.writeString(this.d);
        parcel.writeStringList(this.f61751e);
        parcel.writeStringList(this.f61752f);
        parcel.writeString(this.g);
        parcel.writeString(this.f61753h);
        Map map = this.f61754i;
        parcel.writeInt(map.size());
        for (Map.Entry entry : map.entrySet()) {
            parcel.writeString((String) entry.getKey());
            Iterator itP = cj.p((List) entry.getValue(), parcel);
            while (itP.hasNext()) {
                parcel.writeStringList((List) itP.next());
            }
        }
        Map map2 = this.f61755j;
        parcel.writeInt(map2.size());
        for (Map.Entry entry2 : map2.entrySet()) {
            parcel.writeString((String) entry2.getKey());
            Iterator itP2 = cj.p((List) entry2.getValue(), parcel);
            while (itP2.hasNext()) {
                parcel.writeStringList((List) itP2.next());
            }
        }
        parcel.writeString(this.f61756k);
        Iterator itP3 = cj.p(this.l, parcel);
        while (itP3.hasNext()) {
            ((HowToMeasureItemUiModel) itP3.next()).writeToParcel(parcel, i2);
        }
        parcel.writeString(this.m);
    }
}
