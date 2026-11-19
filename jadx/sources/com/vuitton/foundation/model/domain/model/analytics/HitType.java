package com.vuitton.foundation.model.domain.model.analytics;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0018\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u0082\u0001\u0018\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./01¨\u00062À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "", "AddToCart", "AddToWishlist", "BeginCheckout", "Purchase", "Screen", "SelectItem", "ViewItem", "ViewItemList", "ViewSearchResults", "ABTest", "ActivateStore", "Anomaly", "CloseStore", "Custom", "Interaction", "Scroll", "LegalConsents", "LiveChat", "Login", "PasswordResetSuccess", "RemoveFromWishlist", "Register", "Vto", "VtoLaunch", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ABTest;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$BeginCheckout;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LegalConsents;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LiveChat;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$PasswordResetSuccess;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Purchase;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$RemoveFromWishlist;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Screen;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$SelectItem;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItem;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItemList;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Vto;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$VtoLaunch;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface HitType {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ABTest;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ABTest implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ABTest f66503a = new ABTest();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ABTest);
        }

        public final int hashCode() {
            return 1968785917;
        }

        public final String toString() {
            return "ABTest";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivateStore implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ActivateStore f66504a = new ActivateStore();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ActivateStore);
        }

        public final int hashCode() {
            return -2146849116;
        }

        public final String toString() {
            return "ActivateStore";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToCart implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AddToCart f66505a = new AddToCart();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddToCart);
        }

        public final int hashCode() {
            return -22727118;
        }

        public final String toString() {
            return "AddToCart";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlist implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AddToWishlist f66506a = new AddToWishlist();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddToWishlist);
        }

        public final int hashCode() {
            return -438134825;
        }

        public final String toString() {
            return "AddToWishlist";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "", "name", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Anomaly implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66507a;

        public Anomaly(String str) {
            str.getClass();
            this.f66507a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Anomaly) && Intrinsics.c(this.f66507a, ((Anomaly) obj).f66507a);
        }

        public final int hashCode() {
            return this.f66507a.hashCode();
        }

        public final String toString() {
            return fc.h("Anomaly(name=", this.f66507a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$BeginCheckout;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BeginCheckout implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BeginCheckout f66508a = new BeginCheckout();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BeginCheckout);
        }

        public final int hashCode() {
            return -1512125435;
        }

        public final String toString() {
            return "BeginCheckout";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseStore implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseStore f66509a = new CloseStore();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseStore);
        }

        public final int hashCode() {
            return 790601363;
        }

        public final String toString() {
            return "CloseStore";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "", "name", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Custom implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66510a;

        public Custom(String str) {
            str.getClass();
            this.f66510a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Custom) && Intrinsics.c(this.f66510a, ((Custom) obj).f66510a);
        }

        public final int hashCode() {
            return this.f66510a.hashCode();
        }

        public final String toString() {
            return fc.h("Custom(name=", this.f66510a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Interaction implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Interaction f66511a = new Interaction();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Interaction);
        }

        public final int hashCode() {
            return 410021512;
        }

        public final String toString() {
            return "Interaction";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LegalConsents;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LegalConsents implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LegalConsents f66512a = new LegalConsents();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LegalConsents);
        }

        public final int hashCode() {
            return -1364288408;
        }

        public final String toString() {
            return "LegalConsents";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LiveChat;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LiveChat implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LiveChat f66513a = new LiveChat();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LiveChat);
        }

        public final int hashCode() {
            return 1138591150;
        }

        public final String toString() {
            return "LiveChat";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Login implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Login f66514a = new Login();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Login);
        }

        public final int hashCode() {
            return -340615073;
        }

        public final String toString() {
            return "Login";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$PasswordResetSuccess;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PasswordResetSuccess implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PasswordResetSuccess f66515a = new PasswordResetSuccess();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PasswordResetSuccess);
        }

        public final int hashCode() {
            return -1311410631;
        }

        public final String toString() {
            return "PasswordResetSuccess";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Purchase;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Purchase implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Purchase f66516a = new Purchase();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Purchase);
        }

        public final int hashCode() {
            return 1464739915;
        }

        public final String toString() {
            return "Purchase";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Register implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Register f66517a = new Register();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Register);
        }

        public final int hashCode() {
            return -968797715;
        }

        public final String toString() {
            return "Register";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$RemoveFromWishlist;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RemoveFromWishlist implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RemoveFromWishlist f66518a = new RemoveFromWishlist();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RemoveFromWishlist);
        }

        public final int hashCode() {
            return -698639107;
        }

        public final String toString() {
            return "RemoveFromWishlist";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Screen;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Screen implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Screen f66519a = new Screen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Screen);
        }

        public final int hashCode() {
            return -1779487178;
        }

        public final String toString() {
            return "Screen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Scroll implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Scroll f66520a = new Scroll();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Scroll);
        }

        public final int hashCode() {
            return -1779477353;
        }

        public final String toString() {
            return "Scroll";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$SelectItem;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SelectItem implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SelectItem f66521a = new SelectItem();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SelectItem);
        }

        public final int hashCode() {
            return 1206959865;
        }

        public final String toString() {
            return "SelectItem";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItem;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViewItem implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ViewItem f66522a = new ViewItem();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ViewItem);
        }

        public final int hashCode() {
            return 916943522;
        }

        public final String toString() {
            return "ViewItem";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItemList;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViewItemList implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ViewItemList f66523a = new ViewItemList();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ViewItemList);
        }

        public final int hashCode() {
            return -626166176;
        }

        public final String toString() {
            return "ViewItemList";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViewSearchResults implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ViewSearchResults f66524a = new ViewSearchResults();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ViewSearchResults);
        }

        public final int hashCode() {
            return 507075199;
        }

        public final String toString() {
            return "ViewSearchResults";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Vto;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Vto implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Vto f66525a = new Vto();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Vto);
        }

        public final int hashCode() {
            return -1747828761;
        }

        public final String toString() {
            return "Vto";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/HitType$VtoLaunch;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VtoLaunch implements HitType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final VtoLaunch f66526a = new VtoLaunch();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof VtoLaunch);
        }

        public final int hashCode() {
            return -572225926;
        }

        public final String toString() {
            return "VtoLaunch";
        }
    }
}
