package com.vuitton.android.presentation.contributionlink;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0017\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0082\u0001\u0017\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./¨\u00060À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "Landroid/os/Parcelable;", "AICompanion", "Wishlist", "WishlistShared", "MyLv", "Category", "ExclusiveOffer", "ImmersiveArticle", "Monogram", "Portal", "Product", "ProductList", "PushNotification", "SeoLandingPage", "ShadeFinder", "Spotlight", "Story", "WebView", "Osa", "RepairCreate", "Other", "BookingExperience", "AudioGuide", "Unknown", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AICompanion;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AudioGuide;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Category;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ExclusiveOffer;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$MyLv;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Osa;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Other;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Portal;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ProductList;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$RepairCreate;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$SeoLandingPage;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ShadeFinder;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Spotlight;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Story;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Unknown;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Wishlist;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WishlistShared;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ContributionLinkUiModel extends Parcelable {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AICompanion;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AICompanion implements ContributionLinkUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AICompanion f51163b = new AICompanion();
        public static final Parcelable.Creator<AICompanion> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<AICompanion> {
            @Override // android.os.Parcelable.Creator
            public final AICompanion createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return AICompanion.f51163b;
            }

            @Override // android.os.Parcelable.Creator
            public final AICompanion[] newArray(int i2) {
                return new AICompanion[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AICompanion);
        }

        public final int hashCode() {
            return 377789536;
        }

        public final String toString() {
            return "AICompanion";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AudioGuide;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AudioGuide implements ContributionLinkUiModel {
        public static final Parcelable.Creator<AudioGuide> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51164b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<AudioGuide> {
            @Override // android.os.Parcelable.Creator
            public final AudioGuide createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new AudioGuide(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final AudioGuide[] newArray(int i2) {
                return new AudioGuide[i2];
            }
        }

        public AudioGuide(String str) {
            str.getClass();
            this.f51164b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AudioGuide) && Intrinsics.c(this.f51164b, ((AudioGuide) obj).f51164b);
        }

        public final int hashCode() {
            return this.f51164b.hashCode();
        }

        public final String toString() {
            return fc.h("AudioGuide(id=", this.f51164b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51164b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookingExperience implements ContributionLinkUiModel {
        public static final Parcelable.Creator<BookingExperience> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51165b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<BookingExperience> {
            @Override // android.os.Parcelable.Creator
            public final BookingExperience createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new BookingExperience(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final BookingExperience[] newArray(int i2) {
                return new BookingExperience[i2];
            }
        }

        public BookingExperience(String str) {
            str.getClass();
            this.f51165b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookingExperience) && Intrinsics.c(this.f51165b, ((BookingExperience) obj).f51165b);
        }

        public final int hashCode() {
            return this.f51165b.hashCode();
        }

        public final String toString() {
            return fc.h("BookingExperience(experienceId=", this.f51165b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51165b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Category;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "dimId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Category implements ContributionLinkUiModel {
        public static final Parcelable.Creator<Category> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51166b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Category> {
            @Override // android.os.Parcelable.Creator
            public final Category createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Category(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Category[] newArray(int i2) {
                return new Category[i2];
            }
        }

        public Category(String str) {
            str.getClass();
            this.f51166b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Category) && Intrinsics.c(this.f51166b, ((Category) obj).f51166b);
        }

        public final int hashCode() {
            return this.f51166b.hashCode();
        }

        public final String toString() {
            return fc.h("Category(dimId=", this.f51166b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51166b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ExclusiveOffer;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "dimId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExclusiveOffer implements ContributionLinkUiModel {
        public static final Parcelable.Creator<ExclusiveOffer> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51167b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ExclusiveOffer> {
            @Override // android.os.Parcelable.Creator
            public final ExclusiveOffer createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new ExclusiveOffer(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final ExclusiveOffer[] newArray(int i2) {
                return new ExclusiveOffer[i2];
            }
        }

        public ExclusiveOffer(String str) {
            str.getClass();
            this.f51167b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExclusiveOffer) && Intrinsics.c(this.f51167b, ((ExclusiveOffer) obj).f51167b);
        }

        public final int hashCode() {
            return this.f51167b.hashCode();
        }

        public final String toString() {
            return fc.h("ExclusiveOffer(dimId=", this.f51167b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51167b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "articleKey", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ImmersiveArticle implements ContributionLinkUiModel {
        public static final Parcelable.Creator<ImmersiveArticle> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51168b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ImmersiveArticle> {
            @Override // android.os.Parcelable.Creator
            public final ImmersiveArticle createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new ImmersiveArticle(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final ImmersiveArticle[] newArray(int i2) {
                return new ImmersiveArticle[i2];
            }
        }

        public ImmersiveArticle(String str) {
            str.getClass();
            this.f51168b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImmersiveArticle) && Intrinsics.c(this.f51168b, ((ImmersiveArticle) obj).f51168b);
        }

        public final int hashCode() {
            return this.f51168b.hashCode();
        }

        public final String toString() {
            return fc.h("ImmersiveArticle(articleKey=", this.f51168b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51168b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$MyLv;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyLv implements ContributionLinkUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final MyLv f51171b = new MyLv();
        public static final Parcelable.Creator<MyLv> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<MyLv> {
            @Override // android.os.Parcelable.Creator
            public final MyLv createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return MyLv.f51171b;
            }

            @Override // android.os.Parcelable.Creator
            public final MyLv[] newArray(int i2) {
                return new MyLv[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MyLv);
        }

        public final int hashCode() {
            return 2056033114;
        }

        public final String toString() {
            return "MyLv";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Osa;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "reason", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Osa implements ContributionLinkUiModel {
        public static final Parcelable.Creator<Osa> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51172b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Osa> {
            @Override // android.os.Parcelable.Creator
            public final Osa createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Osa(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Osa[] newArray(int i2) {
                return new Osa[i2];
            }
        }

        public Osa(String str) {
            this.f51172b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Osa) && Intrinsics.c(this.f51172b, ((Osa) obj).f51172b);
        }

        public final int hashCode() {
            String str = this.f51172b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("Osa(reason=", this.f51172b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51172b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Other;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "link", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Other implements ContributionLinkUiModel {
        public static final Parcelable.Creator<Other> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51173b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Other> {
            @Override // android.os.Parcelable.Creator
            public final Other createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Other(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Other[] newArray(int i2) {
                return new Other[i2];
            }
        }

        public Other(String str) {
            str.getClass();
            this.f51173b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Other) && Intrinsics.c(this.f51173b, ((Other) obj).f51173b);
        }

        public final int hashCode() {
            return this.f51173b.hashCode();
        }

        public final String toString() {
            return fc.h("Other(link=", this.f51173b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51173b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Portal;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Portal implements ContributionLinkUiModel {
        public static final Parcelable.Creator<Portal> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51174b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Portal> {
            @Override // android.os.Parcelable.Creator
            public final Portal createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Portal(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Portal[] newArray(int i2) {
                return new Portal[i2];
            }
        }

        public Portal(String str) {
            str.getClass();
            this.f51174b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Portal) && Intrinsics.c(this.f51174b, ((Portal) obj).f51174b);
        }

        public final int hashCode() {
            return this.f51174b.hashCode();
        }

        public final String toString() {
            return fc.h("Portal(id=", this.f51174b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51174b);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuId", "", "isFromNativeShare", "<init>", "(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Product implements ContributionLinkUiModel {
        public static final Parcelable.Creator<Product> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51175b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f51176c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Product> {
            @Override // android.os.Parcelable.Creator
            public final Product createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Product(SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b, parcel.readInt() != 0, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Product[] newArray(int i2) {
                return new Product[i2];
            }
        }

        public Product(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f51175b = str;
            this.f51176c = z;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Product)) {
                return false;
            }
            Product product = (Product) obj;
            String str = product.f51175b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f51175b.equals(str) && this.f51176c == product.f51176c;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Boolean.hashCode(this.f51176c) + (this.f51175b.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.m("Product(skuId=", this.f51175b, ", isFromNativeShare=", ")", this.f51176c);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            parcel.writeString(this.f51175b);
            parcel.writeInt(this.f51176c ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ProductList;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuIds", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductList implements ContributionLinkUiModel {
        public static final Parcelable.Creator<ProductList> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f51177b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ProductList> {
            @Override // android.os.Parcelable.Creator
            public final ProductList createFromParcel(Parcel parcel) {
                parcel.getClass();
                int i2 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i2);
                int iD = 0;
                while (iD != i2) {
                    iD = pq0.d(SkuIdUiModel.CREATOR, parcel, arrayList, iD, 1);
                }
                return new ProductList(arrayList);
            }

            @Override // android.os.Parcelable.Creator
            public final ProductList[] newArray(int i2) {
                return new ProductList[i2];
            }
        }

        public ProductList(List<SkuIdUiModel> list) {
            list.getClass();
            this.f51177b = list;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductList) && Intrinsics.c(this.f51177b, ((ProductList) obj).f51177b);
        }

        public final int hashCode() {
            return this.f51177b.hashCode();
        }

        public final String toString() {
            return d21.o("ProductList(skuIds=", ")", this.f51177b);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            Iterator itP = cj.p(this.f51177b, parcel);
            while (itP.hasNext()) {
                parcel.writeString(((SkuIdUiModel) itP.next()).f61764b);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PushNotification implements ContributionLinkUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final PushNotification f51178b = new PushNotification();
        public static final Parcelable.Creator<PushNotification> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<PushNotification> {
            @Override // android.os.Parcelable.Creator
            public final PushNotification createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return PushNotification.f51178b;
            }

            @Override // android.os.Parcelable.Creator
            public final PushNotification[] newArray(int i2) {
                return new PushNotification[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PushNotification);
        }

        public final int hashCode() {
            return -410679767;
        }

        public final String toString() {
            return "PushNotification";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$RepairCreate;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairCreate implements ContributionLinkUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final RepairCreate f51179b = new RepairCreate();
        public static final Parcelable.Creator<RepairCreate> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<RepairCreate> {
            @Override // android.os.Parcelable.Creator
            public final RepairCreate createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return RepairCreate.f51179b;
            }

            @Override // android.os.Parcelable.Creator
            public final RepairCreate[] newArray(int i2) {
                return new RepairCreate[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairCreate);
        }

        public final int hashCode() {
            return -229244435;
        }

        public final String toString() {
            return "RepairCreate";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$SeoLandingPage;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SeoLandingPage implements ContributionLinkUiModel {
        public static final Parcelable.Creator<SeoLandingPage> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51180b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<SeoLandingPage> {
            @Override // android.os.Parcelable.Creator
            public final SeoLandingPage createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new SeoLandingPage(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final SeoLandingPage[] newArray(int i2) {
                return new SeoLandingPage[i2];
            }
        }

        public SeoLandingPage(String str) {
            str.getClass();
            this.f51180b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SeoLandingPage) && Intrinsics.c(this.f51180b, ((SeoLandingPage) obj).f51180b);
        }

        public final int hashCode() {
            return this.f51180b.hashCode();
        }

        public final String toString() {
            return fc.h("SeoLandingPage(id=", this.f51180b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51180b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ShadeFinder;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShadeFinder implements ContributionLinkUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final ShadeFinder f51181b = new ShadeFinder();
        public static final Parcelable.Creator<ShadeFinder> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ShadeFinder> {
            @Override // android.os.Parcelable.Creator
            public final ShadeFinder createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return ShadeFinder.f51181b;
            }

            @Override // android.os.Parcelable.Creator
            public final ShadeFinder[] newArray(int i2) {
                return new ShadeFinder[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShadeFinder);
        }

        public final int hashCode() {
            return 510212399;
        }

        public final String toString() {
            return "ShadeFinder";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Spotlight;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Spotlight implements ContributionLinkUiModel {
        public static final Parcelable.Creator<Spotlight> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51182b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Spotlight> {
            @Override // android.os.Parcelable.Creator
            public final Spotlight createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Spotlight(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Spotlight[] newArray(int i2) {
                return new Spotlight[i2];
            }
        }

        public Spotlight(String str) {
            str.getClass();
            this.f51182b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Spotlight) && Intrinsics.c(this.f51182b, ((Spotlight) obj).f51182b);
        }

        public final int hashCode() {
            return this.f51182b.hashCode();
        }

        public final String toString() {
            return fc.h("Spotlight(id=", this.f51182b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51182b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Story;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Story implements ContributionLinkUiModel {
        public static final Parcelable.Creator<Story> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51183b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Story> {
            @Override // android.os.Parcelable.Creator
            public final Story createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Story(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Story[] newArray(int i2) {
                return new Story[i2];
            }
        }

        public Story(String str) {
            str.getClass();
            this.f51183b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Story) && Intrinsics.c(this.f51183b, ((Story) obj).f51183b);
        }

        public final int hashCode() {
            return this.f51183b.hashCode();
        }

        public final String toString() {
            return fc.h("Story(id=", this.f51183b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51183b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Unknown;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Unknown implements ContributionLinkUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Unknown f51184b = new Unknown();
        public static final Parcelable.Creator<Unknown> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Unknown> {
            @Override // android.os.Parcelable.Creator
            public final Unknown createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Unknown.f51184b;
            }

            @Override // android.os.Parcelable.Creator
            public final Unknown[] newArray(int i2) {
                return new Unknown[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Unknown);
        }

        public final int hashCode() {
            return -1022433594;
        }

        public final String toString() {
            return "Unknown";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "paramUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WebView implements ContributionLinkUiModel {
        public static final Parcelable.Creator<WebView> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51185b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<WebView> {
            @Override // android.os.Parcelable.Creator
            public final WebView createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new WebView(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final WebView[] newArray(int i2) {
                return new WebView[i2];
            }
        }

        public WebView(String str) {
            this.f51185b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WebView) && Intrinsics.c(this.f51185b, ((WebView) obj).f51185b);
        }

        public final int hashCode() {
            String str = this.f51185b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("WebView(paramUrl=", this.f51185b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51185b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Wishlist;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Wishlist implements ContributionLinkUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Wishlist f51186b = new Wishlist();
        public static final Parcelable.Creator<Wishlist> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Wishlist> {
            @Override // android.os.Parcelable.Creator
            public final Wishlist createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Wishlist.f51186b;
            }

            @Override // android.os.Parcelable.Creator
            public final Wishlist[] newArray(int i2) {
                return new Wishlist[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Wishlist);
        }

        public final int hashCode() {
            return 1935788745;
        }

        public final String toString() {
            return "Wishlist";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WishlistShared;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "date", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuIds", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WishlistShared implements ContributionLinkUiModel {
        public static final Parcelable.Creator<WishlistShared> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51187b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f51188c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<WishlistShared> {
            @Override // android.os.Parcelable.Creator
            public final WishlistShared createFromParcel(Parcel parcel) {
                parcel.getClass();
                String string = parcel.readString();
                int i2 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i2);
                int iD = 0;
                while (iD != i2) {
                    iD = pq0.d(SkuIdUiModel.CREATOR, parcel, arrayList, iD, 1);
                }
                return new WishlistShared(string, arrayList);
            }

            @Override // android.os.Parcelable.Creator
            public final WishlistShared[] newArray(int i2) {
                return new WishlistShared[i2];
            }
        }

        public WishlistShared(String str, List<SkuIdUiModel> list) {
            str.getClass();
            list.getClass();
            this.f51187b = str;
            this.f51188c = list;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WishlistShared)) {
                return false;
            }
            WishlistShared wishlistShared = (WishlistShared) obj;
            return Intrinsics.c(this.f51187b, wishlistShared.f51187b) && Intrinsics.c(this.f51188c, wishlistShared.f51188c);
        }

        public final int hashCode() {
            return this.f51188c.hashCode() + (this.f51187b.hashCode() * 31);
        }

        public final String toString() {
            return cj.k("WishlistShared(date=", this.f51187b, ", skuIds=", this.f51188c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51187b);
            Iterator itP = cj.p(this.f51188c, parcel);
            while (itP.hasNext()) {
                parcel.writeString(((SkuIdUiModel) itP.next()).f61764b);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "", "configuratorUrl", "trackingName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Monogram implements ContributionLinkUiModel {
        public static final Parcelable.Creator<Monogram> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51169b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f51170c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Monogram> {
            @Override // android.os.Parcelable.Creator
            public final Monogram createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Monogram(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Monogram[] newArray(int i2) {
                return new Monogram[i2];
            }
        }

        public Monogram(String str, String str2) {
            str.getClass();
            this.f51169b = str;
            this.f51170c = str2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Monogram)) {
                return false;
            }
            Monogram monogram = (Monogram) obj;
            return Intrinsics.c(this.f51169b, monogram.f51169b) && Intrinsics.c(this.f51170c, monogram.f51170c);
        }

        public final int hashCode() {
            int iHashCode = this.f51169b.hashCode() * 31;
            String str = this.f51170c;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return d21.l("Monogram(configuratorUrl=", this.f51169b, ", trackingName=", this.f51170c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51169b);
            parcel.writeString(this.f51170c);
        }

        public /* synthetic */ Monogram(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2);
        }
    }
}
