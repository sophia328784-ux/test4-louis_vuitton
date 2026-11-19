package com.vuitton.android.presentation.link.models;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.BatchActionActivity;
import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:-\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-.\u0082\u0001-/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[¨\u0006\\À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink;", "Landroid/os/Parcelable;", "AICompanion", "Appointments", "AudioGuide", "Authenticate", "AuthenticateGoogle", "AuthenticateLine", "AuthenticateKakao", "BareExplore", "Cart", "CatalogCategory", "CatalogProduct", "CatalogProductList", "CatalogSection", "Feed", "Connectivity", "ImmersiveArticle", "LegalNotices", "NativeStory", "OrderConfirmation", "Pdp", "Plp", "PortalSlider", "PreferenceCenter", "Privacy", "RepairCreate", "Services", "SharedWishlist", "StoreLocator", "StoryArticle", "WebView", "MyLv", "PersonalWishlist", "LvPassQrCode", "MyLvPrivacySettings", "MyOrders", "OrderDetail", "Gdpr", "CertificatesList", "CertificateDetail", "CertificateDiamondActivation", "ExclusiveSection", "ExclusiveCategory", "ExclusiveProduct", "Travels", "PairingV2", "Lcom/vuitton/android/presentation/link/models/ParsedLink$AICompanion;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Authenticate;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateGoogle;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateKakao;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateLine;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Cart;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Pdp;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Plp;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Services;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$StoreLocator;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$StoryArticle;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;", "Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ParsedLink extends Parcelable {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$AICompanion;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AICompanion implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AICompanion f51637b = new AICompanion();
        public static final Parcelable.Creator<AICompanion> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<AICompanion> {
            @Override // android.os.Parcelable.Creator
            public final AICompanion createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return AICompanion.f51637b;
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
            return 877707924;
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

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "reason", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Appointments implements ParsedLink {
        public static final Parcelable.Creator<Appointments> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51638b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Appointments> {
            @Override // android.os.Parcelable.Creator
            public final Appointments createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Appointments(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Appointments[] newArray(int i2) {
                return new Appointments[i2];
            }
        }

        public Appointments(String str) {
            this.f51638b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Appointments) && Intrinsics.c(this.f51638b, ((Appointments) obj).f51638b);
        }

        public final int hashCode() {
            String str = this.f51638b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("Appointments(reason=", this.f51638b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51638b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "audioGuideId", "trackId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AudioGuide implements ParsedLink {
        public static final Parcelable.Creator<AudioGuide> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51639b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f51640c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<AudioGuide> {
            @Override // android.os.Parcelable.Creator
            public final AudioGuide createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new AudioGuide(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final AudioGuide[] newArray(int i2) {
                return new AudioGuide[i2];
            }
        }

        public AudioGuide(String str, String str2) {
            str.getClass();
            this.f51639b = str;
            this.f51640c = str2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioGuide)) {
                return false;
            }
            AudioGuide audioGuide = (AudioGuide) obj;
            return Intrinsics.c(this.f51639b, audioGuide.f51639b) && Intrinsics.c(this.f51640c, audioGuide.f51640c);
        }

        public final int hashCode() {
            int iHashCode = this.f51639b.hashCode() * 31;
            String str = this.f51640c;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return d21.l("AudioGuide(audioGuideId=", this.f51639b, ", trackId=", this.f51640c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51639b);
            parcel.writeString(this.f51640c);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Authenticate;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Authenticate implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Authenticate f51641b = new Authenticate();
        public static final Parcelable.Creator<Authenticate> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Authenticate> {
            @Override // android.os.Parcelable.Creator
            public final Authenticate createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Authenticate.f51641b;
            }

            @Override // android.os.Parcelable.Creator
            public final Authenticate[] newArray(int i2) {
                return new Authenticate[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Authenticate);
        }

        public final int hashCode() {
            return 412269093;
        }

        public final String toString() {
            return "Authenticate";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateGoogle;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AuthenticateGoogle implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AuthenticateGoogle f51642b = new AuthenticateGoogle();
        public static final Parcelable.Creator<AuthenticateGoogle> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<AuthenticateGoogle> {
            @Override // android.os.Parcelable.Creator
            public final AuthenticateGoogle createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return AuthenticateGoogle.f51642b;
            }

            @Override // android.os.Parcelable.Creator
            public final AuthenticateGoogle[] newArray(int i2) {
                return new AuthenticateGoogle[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AuthenticateGoogle);
        }

        public final int hashCode() {
            return 1323177150;
        }

        public final String toString() {
            return "AuthenticateGoogle";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateKakao;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AuthenticateKakao implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AuthenticateKakao f51643b = new AuthenticateKakao();
        public static final Parcelable.Creator<AuthenticateKakao> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<AuthenticateKakao> {
            @Override // android.os.Parcelable.Creator
            public final AuthenticateKakao createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return AuthenticateKakao.f51643b;
            }

            @Override // android.os.Parcelable.Creator
            public final AuthenticateKakao[] newArray(int i2) {
                return new AuthenticateKakao[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AuthenticateKakao);
        }

        public final int hashCode() {
            return 461598110;
        }

        public final String toString() {
            return "AuthenticateKakao";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateLine;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AuthenticateLine implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AuthenticateLine f51644b = new AuthenticateLine();
        public static final Parcelable.Creator<AuthenticateLine> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<AuthenticateLine> {
            @Override // android.os.Parcelable.Creator
            public final AuthenticateLine createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return AuthenticateLine.f51644b;
            }

            @Override // android.os.Parcelable.Creator
            public final AuthenticateLine[] newArray(int i2) {
                return new AuthenticateLine[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AuthenticateLine);
        }

        public final int hashCode() {
            return -1093450823;
        }

        public final String toString() {
            return "AuthenticateLine";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BareExplore implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final BareExplore f51645b = new BareExplore();
        public static final Parcelable.Creator<BareExplore> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<BareExplore> {
            @Override // android.os.Parcelable.Creator
            public final BareExplore createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return BareExplore.f51645b;
            }

            @Override // android.os.Parcelable.Creator
            public final BareExplore[] newArray(int i2) {
                return new BareExplore[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BareExplore);
        }

        public final int hashCode() {
            return -1537424847;
        }

        public final String toString() {
            return "BareExplore";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Cart;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Cart implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Cart f51646b = new Cart();
        public static final Parcelable.Creator<Cart> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Cart> {
            @Override // android.os.Parcelable.Creator
            public final Cart createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Cart.f51646b;
            }

            @Override // android.os.Parcelable.Creator
            public final Cart[] newArray(int i2) {
                return new Cart[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Cart);
        }

        public final int hashCode() {
            return -1705288080;
        }

        public final String toString() {
            return "Cart";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogCategory;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "categoryId", "themeId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CatalogCategory implements ParsedLink {
        public static final Parcelable.Creator<CatalogCategory> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51647b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f51648c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<CatalogCategory> {
            @Override // android.os.Parcelable.Creator
            public final CatalogCategory createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new CatalogCategory(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final CatalogCategory[] newArray(int i2) {
                return new CatalogCategory[i2];
            }
        }

        public CatalogCategory(String str, String str2) {
            str.getClass();
            this.f51647b = str;
            this.f51648c = str2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CatalogCategory)) {
                return false;
            }
            CatalogCategory catalogCategory = (CatalogCategory) obj;
            return Intrinsics.c(this.f51647b, catalogCategory.f51647b) && Intrinsics.c(this.f51648c, catalogCategory.f51648c);
        }

        public final int hashCode() {
            int iHashCode = this.f51647b.hashCode() * 31;
            String str = this.f51648c;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return d21.l("CatalogCategory(categoryId=", this.f51647b, ", themeId=", this.f51648c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51647b);
            parcel.writeString(this.f51648c);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProduct;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "sku", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CatalogProduct implements ParsedLink {
        public static final Parcelable.Creator<CatalogProduct> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51649b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<CatalogProduct> {
            @Override // android.os.Parcelable.Creator
            public final CatalogProduct createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new CatalogProduct(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final CatalogProduct[] newArray(int i2) {
                return new CatalogProduct[i2];
            }
        }

        public CatalogProduct(String str) {
            str.getClass();
            this.f51649b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CatalogProduct) && Intrinsics.c(this.f51649b, ((CatalogProduct) obj).f51649b);
        }

        public final int hashCode() {
            return this.f51649b.hashCode();
        }

        public final String toString() {
            return fc.h("CatalogProduct(sku=", this.f51649b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51649b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "Landroid/net/Uri;", "queryUri", "<init>", "(Landroid/net/Uri;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CatalogProductList implements ParsedLink {
        public static final Parcelable.Creator<CatalogProductList> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f51650b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<CatalogProductList> {
            @Override // android.os.Parcelable.Creator
            public final CatalogProductList createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new CatalogProductList((Uri) parcel.readParcelable(CatalogProductList.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final CatalogProductList[] newArray(int i2) {
                return new CatalogProductList[i2];
            }
        }

        public CatalogProductList(Uri uri) {
            uri.getClass();
            this.f51650b = uri;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CatalogProductList) && Intrinsics.c(this.f51650b, ((CatalogProductList) obj).f51650b);
        }

        public final int hashCode() {
            return this.f51650b.hashCode();
        }

        public final String toString() {
            return "CatalogProductList(queryUri=" + this.f51650b + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeParcelable(this.f51650b, i2);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogSection;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "section", "category", "subCategory", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CatalogSection implements ParsedLink {
        public static final Parcelable.Creator<CatalogSection> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51651b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f51652c;
        public final String d;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<CatalogSection> {
            @Override // android.os.Parcelable.Creator
            public final CatalogSection createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new CatalogSection(parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final CatalogSection[] newArray(int i2) {
                return new CatalogSection[i2];
            }
        }

        public CatalogSection(String str, String str2, String str3) {
            str.getClass();
            this.f51651b = str;
            this.f51652c = str2;
            this.d = str3;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CatalogSection)) {
                return false;
            }
            CatalogSection catalogSection = (CatalogSection) obj;
            return Intrinsics.c(this.f51651b, catalogSection.f51651b) && Intrinsics.c(this.f51652c, catalogSection.f51652c) && Intrinsics.c(this.d, catalogSection.d);
        }

        public final int hashCode() {
            int iHashCode = this.f51651b.hashCode() * 31;
            String str = this.f51652c;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.d;
            return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return n00.r(this.d, ")", fc.s("CatalogSection(section=", this.f51651b, ", category=", this.f51652c, ", subCategory="));
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51651b);
            parcel.writeString(this.f51652c);
            parcel.writeString(this.d);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateDetail implements ParsedLink {
        public static final Parcelable.Creator<CertificateDetail> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51653b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<CertificateDetail> {
            @Override // android.os.Parcelable.Creator
            public final CertificateDetail createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new CertificateDetail(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final CertificateDetail[] newArray(int i2) {
                return new CertificateDetail[i2];
            }
        }

        public CertificateDetail(String str) {
            str.getClass();
            this.f51653b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CertificateDetail) && Intrinsics.c(this.f51653b, ((CertificateDetail) obj).f51653b);
        }

        public final int hashCode() {
            return this.f51653b.hashCode();
        }

        public final String toString() {
            return fc.h("CertificateDetail(id=", this.f51653b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51653b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateDiamondActivation implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final CertificateDiamondActivation f51654b = new CertificateDiamondActivation();
        public static final Parcelable.Creator<CertificateDiamondActivation> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<CertificateDiamondActivation> {
            @Override // android.os.Parcelable.Creator
            public final CertificateDiamondActivation createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return CertificateDiamondActivation.f51654b;
            }

            @Override // android.os.Parcelable.Creator
            public final CertificateDiamondActivation[] newArray(int i2) {
                return new CertificateDiamondActivation[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CertificateDiamondActivation);
        }

        public final int hashCode() {
            return -402696189;
        }

        public final String toString() {
            return "CertificateDiamondActivation";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificatesList implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final CertificatesList f51655b = new CertificatesList();
        public static final Parcelable.Creator<CertificatesList> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<CertificatesList> {
            @Override // android.os.Parcelable.Creator
            public final CertificatesList createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return CertificatesList.f51655b;
            }

            @Override // android.os.Parcelable.Creator
            public final CertificatesList[] newArray(int i2) {
                return new CertificatesList[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CertificatesList);
        }

        public final int hashCode() {
            return -771210294;
        }

        public final String toString() {
            return "CertificatesList";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Connectivity;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", BatchActionActivity.EXTRA_DEEPLINK_KEY, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Connectivity implements ParsedLink {
        public static final Parcelable.Creator<Connectivity> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51656b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Connectivity> {
            @Override // android.os.Parcelable.Creator
            public final Connectivity createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Connectivity(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Connectivity[] newArray(int i2) {
                return new Connectivity[i2];
            }
        }

        public Connectivity(String str) {
            str.getClass();
            this.f51656b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Connectivity) && Intrinsics.c(this.f51656b, ((Connectivity) obj).f51656b);
        }

        public final int hashCode() {
            return this.f51656b.hashCode();
        }

        public final String toString() {
            return fc.h("Connectivity(deeplink=", this.f51656b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51656b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "dimId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExclusiveCategory implements ParsedLink {
        public static final Parcelable.Creator<ExclusiveCategory> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51657b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ExclusiveCategory> {
            @Override // android.os.Parcelable.Creator
            public final ExclusiveCategory createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new ExclusiveCategory(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final ExclusiveCategory[] newArray(int i2) {
                return new ExclusiveCategory[i2];
            }
        }

        public ExclusiveCategory(String str) {
            str.getClass();
            this.f51657b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExclusiveCategory) && Intrinsics.c(this.f51657b, ((ExclusiveCategory) obj).f51657b);
        }

        public final int hashCode() {
            return this.f51657b.hashCode();
        }

        public final String toString() {
            return fc.h("ExclusiveCategory(dimId=", this.f51657b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51657b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "sku", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExclusiveProduct implements ParsedLink {
        public static final Parcelable.Creator<ExclusiveProduct> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51658b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ExclusiveProduct> {
            @Override // android.os.Parcelable.Creator
            public final ExclusiveProduct createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new ExclusiveProduct(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final ExclusiveProduct[] newArray(int i2) {
                return new ExclusiveProduct[i2];
            }
        }

        public ExclusiveProduct(String str) {
            str.getClass();
            this.f51658b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExclusiveProduct) && Intrinsics.c(this.f51658b, ((ExclusiveProduct) obj).f51658b);
        }

        public final int hashCode() {
            return this.f51658b.hashCode();
        }

        public final String toString() {
            return fc.h("ExclusiveProduct(sku=", this.f51658b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51658b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExclusiveSection implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final ExclusiveSection f51659b = new ExclusiveSection();
        public static final Parcelable.Creator<ExclusiveSection> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ExclusiveSection> {
            @Override // android.os.Parcelable.Creator
            public final ExclusiveSection createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return ExclusiveSection.f51659b;
            }

            @Override // android.os.Parcelable.Creator
            public final ExclusiveSection[] newArray(int i2) {
                return new ExclusiveSection[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ExclusiveSection);
        }

        public final int hashCode() {
            return 1248507319;
        }

        public final String toString() {
            return "ExclusiveSection";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Feed;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "feedTab", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Feed implements ParsedLink {
        public static final Parcelable.Creator<Feed> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51660b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Feed> {
            @Override // android.os.Parcelable.Creator
            public final Feed createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Feed(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Feed[] newArray(int i2) {
                return new Feed[i2];
            }
        }

        public Feed(String str) {
            this.f51660b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Feed) && Intrinsics.c(this.f51660b, ((Feed) obj).f51660b);
        }

        public final int hashCode() {
            String str = this.f51660b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("Feed(feedTab=", this.f51660b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51660b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Gdpr implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Gdpr f51661b = new Gdpr();
        public static final Parcelable.Creator<Gdpr> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Gdpr> {
            @Override // android.os.Parcelable.Creator
            public final Gdpr createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Gdpr.f51661b;
            }

            @Override // android.os.Parcelable.Creator
            public final Gdpr[] newArray(int i2) {
                return new Gdpr[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Gdpr);
        }

        public final int hashCode() {
            return -1705166097;
        }

        public final String toString() {
            return "Gdpr";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "Landroid/net/Uri;", "uri", "<init>", "(Landroid/net/Uri;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ImmersiveArticle implements ParsedLink {
        public static final Parcelable.Creator<ImmersiveArticle> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f51662b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ImmersiveArticle> {
            @Override // android.os.Parcelable.Creator
            public final ImmersiveArticle createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new ImmersiveArticle((Uri) parcel.readParcelable(ImmersiveArticle.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final ImmersiveArticle[] newArray(int i2) {
                return new ImmersiveArticle[i2];
            }
        }

        public ImmersiveArticle(Uri uri) {
            uri.getClass();
            this.f51662b = uri;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImmersiveArticle) && Intrinsics.c(this.f51662b, ((ImmersiveArticle) obj).f51662b);
        }

        public final int hashCode() {
            return this.f51662b.hashCode();
        }

        public final String toString() {
            return "ImmersiveArticle(uri=" + this.f51662b + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeParcelable(this.f51662b, i2);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LegalNotices implements ParsedLink {
        public static final Parcelable.Creator<LegalNotices> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51663b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<LegalNotices> {
            @Override // android.os.Parcelable.Creator
            public final LegalNotices createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new LegalNotices(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final LegalNotices[] newArray(int i2) {
                return new LegalNotices[i2];
            }
        }

        public LegalNotices(String str) {
            str.getClass();
            this.f51663b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LegalNotices) && Intrinsics.c(this.f51663b, ((LegalNotices) obj).f51663b);
        }

        public final int hashCode() {
            return this.f51663b.hashCode();
        }

        public final String toString() {
            return fc.h("LegalNotices(url=", this.f51663b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51663b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LvPassQrCode implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final LvPassQrCode f51664b = new LvPassQrCode();
        public static final Parcelable.Creator<LvPassQrCode> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<LvPassQrCode> {
            @Override // android.os.Parcelable.Creator
            public final LvPassQrCode createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return LvPassQrCode.f51664b;
            }

            @Override // android.os.Parcelable.Creator
            public final LvPassQrCode[] newArray(int i2) {
                return new LvPassQrCode[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LvPassQrCode);
        }

        public final int hashCode() {
            return 359468953;
        }

        public final String toString() {
            return "LvPassQrCode";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyLv implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final MyLv f51665b = new MyLv();
        public static final Parcelable.Creator<MyLv> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<MyLv> {
            @Override // android.os.Parcelable.Creator
            public final MyLv createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return MyLv.f51665b;
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
            return -1704968282;
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

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyLvPrivacySettings implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final MyLvPrivacySettings f51666b = new MyLvPrivacySettings();
        public static final Parcelable.Creator<MyLvPrivacySettings> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<MyLvPrivacySettings> {
            @Override // android.os.Parcelable.Creator
            public final MyLvPrivacySettings createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return MyLvPrivacySettings.f51666b;
            }

            @Override // android.os.Parcelable.Creator
            public final MyLvPrivacySettings[] newArray(int i2) {
                return new MyLvPrivacySettings[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MyLvPrivacySettings);
        }

        public final int hashCode() {
            return -578243771;
        }

        public final String toString() {
            return "MyLvPrivacySettings";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyOrders implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final MyOrders f51667b = new MyOrders();
        public static final Parcelable.Creator<MyOrders> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<MyOrders> {
            @Override // android.os.Parcelable.Creator
            public final MyOrders createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return MyOrders.f51667b;
            }

            @Override // android.os.Parcelable.Creator
            public final MyOrders[] newArray(int i2) {
                return new MyOrders[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MyOrders);
        }

        public final int hashCode() {
            return -262068479;
        }

        public final String toString() {
            return "MyOrders";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$NativeStory;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "storyId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NativeStory implements ParsedLink {
        public static final Parcelable.Creator<NativeStory> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51668b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<NativeStory> {
            @Override // android.os.Parcelable.Creator
            public final NativeStory createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new NativeStory(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final NativeStory[] newArray(int i2) {
                return new NativeStory[i2];
            }
        }

        public NativeStory(String str) {
            str.getClass();
            this.f51668b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NativeStory) && Intrinsics.c(this.f51668b, ((NativeStory) obj).f51668b);
        }

        public final int hashCode() {
            return this.f51668b.hashCode();
        }

        public final String toString() {
            return fc.h("NativeStory(storyId=", this.f51668b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51668b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "retUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OrderConfirmation implements ParsedLink {
        public static final Parcelable.Creator<OrderConfirmation> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51669b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<OrderConfirmation> {
            @Override // android.os.Parcelable.Creator
            public final OrderConfirmation createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new OrderConfirmation(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final OrderConfirmation[] newArray(int i2) {
                return new OrderConfirmation[i2];
            }
        }

        public OrderConfirmation(String str) {
            this.f51669b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OrderConfirmation) && Intrinsics.c(this.f51669b, ((OrderConfirmation) obj).f51669b);
        }

        public final int hashCode() {
            String str = this.f51669b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("OrderConfirmation(retUrl=", this.f51669b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51669b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "shippingGroupId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OrderDetail implements ParsedLink {
        public static final Parcelable.Creator<OrderDetail> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51670b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<OrderDetail> {
            @Override // android.os.Parcelable.Creator
            public final OrderDetail createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new OrderDetail(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final OrderDetail[] newArray(int i2) {
                return new OrderDetail[i2];
            }
        }

        public OrderDetail(String str) {
            str.getClass();
            this.f51670b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OrderDetail) && Intrinsics.c(this.f51670b, ((OrderDetail) obj).f51670b);
        }

        public final int hashCode() {
            return this.f51670b.hashCode();
        }

        public final String toString() {
            return fc.h("OrderDetail(shippingGroupId=", this.f51670b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51670b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "param1", "param2", "param3", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PairingV2 implements ParsedLink {
        public static final Parcelable.Creator<PairingV2> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51671b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f51672c;
        public final String d;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<PairingV2> {
            @Override // android.os.Parcelable.Creator
            public final PairingV2 createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new PairingV2(parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final PairingV2[] newArray(int i2) {
                return new PairingV2[i2];
            }
        }

        public PairingV2(String str, String str2, String str3) {
            cj.z(str, str2, str3);
            this.f51671b = str;
            this.f51672c = str2;
            this.d = str3;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PairingV2)) {
                return false;
            }
            PairingV2 pairingV2 = (PairingV2) obj;
            return Intrinsics.c(this.f51671b, pairingV2.f51671b) && Intrinsics.c(this.f51672c, pairingV2.f51672c) && Intrinsics.c(this.d, pairingV2.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + fc.b(this.f51671b.hashCode() * 31, 31, this.f51672c);
        }

        public final String toString() {
            return n00.r(this.d, ")", fc.s("PairingV2(param1=", this.f51671b, ", param2=", this.f51672c, ", param3="));
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51671b);
            parcel.writeString(this.f51672c);
            parcel.writeString(this.d);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Pdp;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "sku", "", "isNativeShare", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Pdp implements ParsedLink {
        public static final Parcelable.Creator<Pdp> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51673b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f51674c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Pdp> {
            @Override // android.os.Parcelable.Creator
            public final Pdp createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Pdp(parcel.readString(), parcel.readInt() != 0);
            }

            @Override // android.os.Parcelable.Creator
            public final Pdp[] newArray(int i2) {
                return new Pdp[i2];
            }
        }

        public Pdp(String str, boolean z) {
            str.getClass();
            this.f51673b = str;
            this.f51674c = z;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pdp)) {
                return false;
            }
            Pdp pdp = (Pdp) obj;
            return Intrinsics.c(this.f51673b, pdp.f51673b) && this.f51674c == pdp.f51674c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f51674c) + (this.f51673b.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("Pdp(sku=", this.f51673b, ", isNativeShare=", ")", this.f51674c);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51673b);
            parcel.writeInt(this.f51674c ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PersonalWishlist implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final PersonalWishlist f51675b = new PersonalWishlist();
        public static final Parcelable.Creator<PersonalWishlist> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<PersonalWishlist> {
            @Override // android.os.Parcelable.Creator
            public final PersonalWishlist createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return PersonalWishlist.f51675b;
            }

            @Override // android.os.Parcelable.Creator
            public final PersonalWishlist[] newArray(int i2) {
                return new PersonalWishlist[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PersonalWishlist);
        }

        public final int hashCode() {
            return -2080347275;
        }

        public final String toString() {
            return "PersonalWishlist";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Plp;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "categoryId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Plp implements ParsedLink {
        public static final Parcelable.Creator<Plp> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51676b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Plp> {
            @Override // android.os.Parcelable.Creator
            public final Plp createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Plp(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Plp[] newArray(int i2) {
                return new Plp[i2];
            }
        }

        public Plp(String str) {
            str.getClass();
            this.f51676b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Plp) && Intrinsics.c(this.f51676b, ((Plp) obj).f51676b);
        }

        public final int hashCode() {
            return this.f51676b.hashCode();
        }

        public final String toString() {
            return fc.h("Plp(categoryId=", this.f51676b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51676b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$PortalSlider;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "portalId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PortalSlider implements ParsedLink {
        public static final Parcelable.Creator<PortalSlider> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51677b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<PortalSlider> {
            @Override // android.os.Parcelable.Creator
            public final PortalSlider createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new PortalSlider(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final PortalSlider[] newArray(int i2) {
                return new PortalSlider[i2];
            }
        }

        public PortalSlider(String str) {
            str.getClass();
            this.f51677b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PortalSlider) && Intrinsics.c(this.f51677b, ((PortalSlider) obj).f51677b);
        }

        public final int hashCode() {
            return this.f51677b.hashCode();
        }

        public final String toString() {
            return fc.h("PortalSlider(portalId=", this.f51677b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51677b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PreferenceCenter implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final PreferenceCenter f51678b = new PreferenceCenter();
        public static final Parcelable.Creator<PreferenceCenter> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<PreferenceCenter> {
            @Override // android.os.Parcelable.Creator
            public final PreferenceCenter createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return PreferenceCenter.f51678b;
            }

            @Override // android.os.Parcelable.Creator
            public final PreferenceCenter[] newArray(int i2) {
                return new PreferenceCenter[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PreferenceCenter);
        }

        public final int hashCode() {
            return 946770016;
        }

        public final String toString() {
            return "PreferenceCenter";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Privacy implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Privacy f51679b = new Privacy();
        public static final Parcelable.Creator<Privacy> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Privacy> {
            @Override // android.os.Parcelable.Creator
            public final Privacy createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Privacy.f51679b;
            }

            @Override // android.os.Parcelable.Creator
            public final Privacy[] newArray(int i2) {
                return new Privacy[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Privacy);
        }

        public final int hashCode() {
            return 2062138936;
        }

        public final String toString() {
            return "Privacy";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairCreate implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final RepairCreate f51680b = new RepairCreate();
        public static final Parcelable.Creator<RepairCreate> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<RepairCreate> {
            @Override // android.os.Parcelable.Creator
            public final RepairCreate createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return RepairCreate.f51680b;
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
            return -1911643591;
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

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Services;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Services implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Services f51681b = new Services();
        public static final Parcelable.Creator<Services> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Services> {
            @Override // android.os.Parcelable.Creator
            public final Services createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Services.f51681b;
            }

            @Override // android.os.Parcelable.Creator
            public final Services[] newArray(int i2) {
                return new Services[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Services);
        }

        public final int hashCode() {
            return 2040515502;
        }

        public final String toString() {
            return "Services";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B$\u0012\u0011\u0010\u0005\u001a\r\u0012\t\u0012\u00070\u0003¢\u0006\u0002\b\u00040\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "Lkotlinx/parcelize/RawValue;", "skuIds", "", "date", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SharedWishlist implements ParsedLink {
        public static final Parcelable.Creator<SharedWishlist> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f51682b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f51683c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<SharedWishlist> {
            @Override // android.os.Parcelable.Creator
            public final SharedWishlist createFromParcel(Parcel parcel) {
                parcel.getClass();
                int i2 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i2);
                for (int i3 = 0; i3 != i2; i3++) {
                    arrayList.add(parcel.readValue(SharedWishlist.class.getClassLoader()));
                }
                return new SharedWishlist(arrayList, parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final SharedWishlist[] newArray(int i2) {
                return new SharedWishlist[i2];
            }
        }

        public SharedWishlist(List<SkuId> list, String str) {
            list.getClass();
            this.f51682b = list;
            this.f51683c = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SharedWishlist)) {
                return false;
            }
            SharedWishlist sharedWishlist = (SharedWishlist) obj;
            return Intrinsics.c(this.f51682b, sharedWishlist.f51682b) && Intrinsics.c(this.f51683c, sharedWishlist.f51683c);
        }

        public final int hashCode() {
            int iHashCode = this.f51682b.hashCode() * 31;
            String str = this.f51683c;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "SharedWishlist(skuIds=" + this.f51682b + ", date=" + this.f51683c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            Iterator itP = cj.p(this.f51682b, parcel);
            while (itP.hasNext()) {
                parcel.writeValue(itP.next());
            }
            parcel.writeString(this.f51683c);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$StoreLocator;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreLocator implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final StoreLocator f51684b = new StoreLocator();
        public static final Parcelable.Creator<StoreLocator> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<StoreLocator> {
            @Override // android.os.Parcelable.Creator
            public final StoreLocator createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return StoreLocator.f51684b;
            }

            @Override // android.os.Parcelable.Creator
            public final StoreLocator[] newArray(int i2) {
                return new StoreLocator[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof StoreLocator);
        }

        public final int hashCode() {
            return 66551749;
        }

        public final String toString() {
            return "StoreLocator";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$StoryArticle;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", "articleKey", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoryArticle implements ParsedLink {
        public static final Parcelable.Creator<StoryArticle> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51685b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<StoryArticle> {
            @Override // android.os.Parcelable.Creator
            public final StoryArticle createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new StoryArticle(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final StoryArticle[] newArray(int i2) {
                return new StoryArticle[i2];
            }
        }

        public StoryArticle(String str) {
            str.getClass();
            this.f51685b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StoryArticle) && Intrinsics.c(this.f51685b, ((StoryArticle) obj).f51685b);
        }

        public final int hashCode() {
            return this.f51685b.hashCode();
        }

        public final String toString() {
            return fc.h("StoryArticle(articleKey=", this.f51685b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51685b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Travels implements ParsedLink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Travels f51686b = new Travels();
        public static final Parcelable.Creator<Travels> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Travels> {
            @Override // android.os.Parcelable.Creator
            public final Travels createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Travels.f51686b;
            }

            @Override // android.os.Parcelable.Creator
            public final Travels[] newArray(int i2) {
                return new Travels[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Travels);
        }

        public final int hashCode() {
            return 1309802313;
        }

        public final String toString() {
            return "Travels";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WebView implements ParsedLink {
        public static final Parcelable.Creator<WebView> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51687b;

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
            str.getClass();
            this.f51687b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WebView) && Intrinsics.c(this.f51687b, ((WebView) obj).f51687b);
        }

        public final int hashCode() {
            return this.f51687b.hashCode();
        }

        public final String toString() {
            return fc.h("WebView(url=", this.f51687b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f51687b);
        }
    }
}
