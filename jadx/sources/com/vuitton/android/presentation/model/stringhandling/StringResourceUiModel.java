package com.vuitton.android.presentation.model.stringhandling;

import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "Landroid/os/Parcelable;", "ResId", "ResName", "Text", "WithoutTrailingAsterisk", "PluralResId", "Empty", "ConcatStringResource", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StringResourceUiModel implements Parcelable {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "", "concatStringResourceList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConcatStringResource extends StringResourceUiModel {
        public static final Parcelable.Creator<ConcatStringResource> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f51824b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ConcatStringResource> {
            @Override // android.os.Parcelable.Creator
            public final ConcatStringResource createFromParcel(Parcel parcel) {
                parcel.getClass();
                int i2 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i2);
                for (int i3 = 0; i3 != i2; i3++) {
                    arrayList.add(parcel.readParcelable(ConcatStringResource.class.getClassLoader()));
                }
                return new ConcatStringResource(arrayList);
            }

            @Override // android.os.Parcelable.Creator
            public final ConcatStringResource[] newArray(int i2) {
                return new ConcatStringResource[i2];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConcatStringResource(List<? extends StringResourceUiModel> list) {
            super(null);
            list.getClass();
            this.f51824b = list;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConcatStringResource) && Intrinsics.c(this.f51824b, ((ConcatStringResource) obj).f51824b);
        }

        public final int hashCode() {
            return this.f51824b.hashCode();
        }

        public final String toString() {
            return d21.o("ConcatStringResource(concatStringResourceList=", ")", this.f51824b);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            Iterator itP = cj.p(this.f51824b, parcel);
            while (itP.hasNext()) {
                parcel.writeParcelable((Parcelable) itP.next(), i2);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Empty extends StringResourceUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Empty f51825b = new Empty(null);
        public static final Parcelable.Creator<Empty> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Empty> {
            @Override // android.os.Parcelable.Creator
            public final Empty createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Empty.f51825b;
            }

            @Override // android.os.Parcelable.Creator
            public final Empty[] newArray(int i2) {
                return new Empty[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Empty);
        }

        public final int hashCode() {
            return -1485899291;
        }

        public final String toString() {
            return "Empty";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "", "text", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Text extends StringResourceUiModel {
        public static final Parcelable.Creator<Text> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51832b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Text> {
            @Override // android.os.Parcelable.Creator
            public final Text createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Text(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Text[] newArray(int i2) {
                return new Text[i2];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Text(String str) {
            super(null);
            str.getClass();
            this.f51832b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Text) && Intrinsics.c(this.f51832b, ((Text) obj).f51832b);
        }

        public final int hashCode() {
            return this.f51832b.hashCode();
        }

        public final String toString() {
            return fc.h("Text(text=", this.f51832b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51832b);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", Payload.SOURCE, "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WithoutTrailingAsterisk extends StringResourceUiModel {
        public static final Parcelable.Creator<WithoutTrailingAsterisk> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final StringResourceUiModel f51833b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<WithoutTrailingAsterisk> {
            @Override // android.os.Parcelable.Creator
            public final WithoutTrailingAsterisk createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new WithoutTrailingAsterisk((StringResourceUiModel) parcel.readParcelable(WithoutTrailingAsterisk.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final WithoutTrailingAsterisk[] newArray(int i2) {
                return new WithoutTrailingAsterisk[i2];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithoutTrailingAsterisk(StringResourceUiModel stringResourceUiModel) {
            super(null);
            stringResourceUiModel.getClass();
            this.f51833b = stringResourceUiModel;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WithoutTrailingAsterisk) && Intrinsics.c(this.f51833b, ((WithoutTrailingAsterisk) obj).f51833b);
        }

        public final int hashCode() {
            return this.f51833b.hashCode();
        }

        public final String toString() {
            return "WithoutTrailingAsterisk(source=" + this.f51833b + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeParcelable(this.f51833b, i2);
        }
    }

    public StringResourceUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public final ConcatStringResource a(ResId resId) {
        return new ConcatStringResource(CollectionsKt.P(this, resId));
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B&\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0013\b\u0002\u0010\u0007\u001a\r\u0012\t\u0012\u00070\u0005¢\u0006\u0002\b\u00060\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "", "resId", "", "", "Lkotlinx/parcelize/RawValue;", "formatArgs", "<init>", "(ILjava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ResId extends StringResourceUiModel {
        public static final Parcelable.Creator<ResId> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f51828b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f51829c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ResId> {
            @Override // android.os.Parcelable.Creator
            public final ResId createFromParcel(Parcel parcel) {
                parcel.getClass();
                int i2 = parcel.readInt();
                int i3 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i3);
                for (int i4 = 0; i4 != i3; i4++) {
                    arrayList.add(parcel.readValue(ResId.class.getClassLoader()));
                }
                return new ResId(i2, arrayList);
            }

            @Override // android.os.Parcelable.Creator
            public final ResId[] newArray(int i2) {
                return new ResId[i2];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResId(int i2, List<? extends Object> list) {
            super(null);
            list.getClass();
            this.f51828b = i2;
            this.f51829c = list;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ResId)) {
                return false;
            }
            ResId resId = (ResId) obj;
            return this.f51828b == resId.f51828b && Intrinsics.c(this.f51829c, resId.f51829c);
        }

        public final int hashCode() {
            return this.f51829c.hashCode() + (Integer.hashCode(this.f51828b) * 31);
        }

        public final String toString() {
            return "ResId(resId=" + this.f51828b + ", formatArgs=" + this.f51829c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(this.f51828b);
            Iterator itP = cj.p(this.f51829c, parcel);
            while (itP.hasNext()) {
                parcel.writeValue(itP.next());
            }
        }

        public ResId(int i2, List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, (i3 & 2) != 0 ? EmptyList.f71768b : list);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B.\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0013\b\u0002\u0010\b\u001a\r\u0012\t\u0012\u00070\u0006¢\u0006\u0002\b\u00070\u0005¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "", "resId", "quantity", "", "", "Lkotlinx/parcelize/RawValue;", "formatArgs", "<init>", "(IILjava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PluralResId extends StringResourceUiModel {
        public static final Parcelable.Creator<PluralResId> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f51826b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f51827c;
        public final List d;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<PluralResId> {
            @Override // android.os.Parcelable.Creator
            public final PluralResId createFromParcel(Parcel parcel) {
                parcel.getClass();
                int i2 = parcel.readInt();
                int i3 = parcel.readInt();
                int i4 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i4);
                for (int i5 = 0; i5 != i4; i5++) {
                    arrayList.add(parcel.readValue(PluralResId.class.getClassLoader()));
                }
                return new PluralResId(i2, i3, arrayList);
            }

            @Override // android.os.Parcelable.Creator
            public final PluralResId[] newArray(int i2) {
                return new PluralResId[i2];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PluralResId(int i2, int i3, List<? extends Object> list) {
            super(null);
            list.getClass();
            this.f51826b = i2;
            this.f51827c = i3;
            this.d = list;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PluralResId)) {
                return false;
            }
            PluralResId pluralResId = (PluralResId) obj;
            return this.f51826b == pluralResId.f51826b && this.f51827c == pluralResId.f51827c && Intrinsics.c(this.d, pluralResId.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + tr.b(this.f51827c, Integer.hashCode(this.f51826b) * 31, 31);
        }

        public final String toString() {
            return a.o(fc.p(this.f51826b, this.f51827c, "PluralResId(resId=", ", quantity=", ", formatArgs="), this.d, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(this.f51826b);
            parcel.writeInt(this.f51827c);
            Iterator itP = cj.p(this.d, parcel);
            while (itP.hasNext()) {
                parcel.writeValue(itP.next());
            }
        }

        public PluralResId(int i2, int i3, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, i3, (i4 & 4) != 0 ? EmptyList.f71768b : list);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B.\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0013\b\u0002\u0010\u0007\u001a\r\u0012\t\u0012\u00070\u0005¢\u0006\u0002\b\u00060\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0001¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "", "resName", "", "", "Lkotlinx/parcelize/RawValue;", "formatArgs", "fallback", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ResName extends StringResourceUiModel {
        public static final Parcelable.Creator<ResName> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f51831c;
        public final StringResourceUiModel d;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ResName> {
            @Override // android.os.Parcelable.Creator
            public final ResName createFromParcel(Parcel parcel) {
                parcel.getClass();
                String string = parcel.readString();
                int i2 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i2);
                for (int i3 = 0; i3 != i2; i3++) {
                    arrayList.add(parcel.readValue(ResName.class.getClassLoader()));
                }
                return new ResName(string, arrayList, (StringResourceUiModel) parcel.readParcelable(ResName.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final ResName[] newArray(int i2) {
                return new ResName[i2];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResName(String str, List<? extends Object> list, StringResourceUiModel stringResourceUiModel) {
            super(null);
            str.getClass();
            list.getClass();
            stringResourceUiModel.getClass();
            this.f51830b = str;
            this.f51831c = list;
            this.d = stringResourceUiModel;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ResName)) {
                return false;
            }
            ResName resName = (ResName) obj;
            return Intrinsics.c(this.f51830b, resName.f51830b) && Intrinsics.c(this.f51831c, resName.f51831c) && Intrinsics.c(this.d, resName.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + n00.a(this.f51830b.hashCode() * 31, 31, this.f51831c);
        }

        public final String toString() {
            StringBuilder sbT = d21.t("ResName(resName=", this.f51830b, ", formatArgs=", this.f51831c, ", fallback=");
            sbT.append(this.d);
            sbT.append(")");
            return sbT.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51830b);
            Iterator itP = cj.p(this.f51831c, parcel);
            while (itP.hasNext()) {
                parcel.writeValue(itP.next());
            }
            parcel.writeParcelable(this.d, i2);
        }

        public ResName(String str, List list, StringResourceUiModel stringResourceUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? Empty.f51825b : stringResourceUiModel);
        }
    }
}
