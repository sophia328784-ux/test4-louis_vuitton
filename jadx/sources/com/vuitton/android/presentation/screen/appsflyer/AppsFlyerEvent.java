package com.vuitton.android.presentation.screen.appsflyer;

import com.appsflyer.share.AFInAppEventType;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0017\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0082\u0001\u0017\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./¨\u00060"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "AddToCart", "AddToWishlist", "BookStoreAppointment", "ContentView", "FromWebView", "InitiateCheckout", "ListView", "Login", "OpenFromPushNotification", "OpenProductLocator", "OpenStoreLocator", "Purchase", "RegistrationCompleted", "RemoveFromCart", "Search", "SpeedyPass", "LVPass", "OmniWishlist", "InteractiveWardrobing", "LookBook", "ServiceRepair", "OnlineStoreAppointment", "AudioGuide", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToCart;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AudioGuide;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$BookStoreAppointment;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ContentView;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$FromWebView;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$InitiateCheckout;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$InteractiveWardrobing;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$LVPass;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ListView;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Login;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$LookBook;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OmniWishlist;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OnlineStoreAppointment;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenFromPushNotification;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenProductLocator;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenStoreLocator;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Purchase;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RegistrationCompleted;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RemoveFromCart;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Search;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ServiceRepair;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$SpeedyPass;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AppsFlyerEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f52939b;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToCart;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToCart extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52940c;

        public AddToCart(Map<String, ? extends Object> map) {
            super(AFInAppEventType.ADD_TO_CART, map, null);
            this.f52940c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52940c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AddToCart) && Intrinsics.c(this.f52940c, ((AddToCart) obj).f52940c);
        }

        public final int hashCode() {
            Map map = this.f52940c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "AddToCart(eventParam=" + this.f52940c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlist extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52941c;

        public AddToWishlist(Map<String, ? extends Object> map) {
            super(AFInAppEventType.ADD_TO_WISH_LIST, map, null);
            this.f52941c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52941c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AddToWishlist) && Intrinsics.c(this.f52941c, ((AddToWishlist) obj).f52941c);
        }

        public final int hashCode() {
            Map map = this.f52941c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "AddToWishlist(eventParam=" + this.f52941c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AudioGuide;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AudioGuide extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52942c;

        public AudioGuide(Map<String, ? extends Object> map) {
            super("lv_audio_guide", map, null);
            this.f52942c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52942c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AudioGuide) && Intrinsics.c(this.f52942c, ((AudioGuide) obj).f52942c);
        }

        public final int hashCode() {
            Map map = this.f52942c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "AudioGuide(eventParam=" + this.f52942c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$BookStoreAppointment;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookStoreAppointment extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final BookStoreAppointment f52943c = new BookStoreAppointment("af_book_store_appointment", null, 2, 0 == true ? 1 : 0);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BookStoreAppointment);
        }

        public final int hashCode() {
            return -1650313878;
        }

        public final String toString() {
            return "BookStoreAppointment";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ContentView;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContentView extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52944c;

        public ContentView(Map<String, ? extends Object> map) {
            super(AFInAppEventType.CONTENT_VIEW, map, null);
            this.f52944c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52944c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ContentView) && Intrinsics.c(this.f52944c, ((ContentView) obj).f52944c);
        }

        public final int hashCode() {
            Map map = this.f52944c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "ContentView(eventParam=" + this.f52944c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$FromWebView;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "eventName", "", "", "eventParam", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FromWebView extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f52945c;
        public final Map d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FromWebView(String str, Map<String, ? extends Object> map) {
            super(str, map, null);
            str.getClass();
            this.f52945c = str;
            this.d = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF52938a() {
            return this.f52945c;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FromWebView)) {
                return false;
            }
            FromWebView fromWebView = (FromWebView) obj;
            return Intrinsics.c(this.f52945c, fromWebView.f52945c) && Intrinsics.c(this.d, fromWebView.d);
        }

        public final int hashCode() {
            int iHashCode = this.f52945c.hashCode() * 31;
            Map map = this.d;
            return iHashCode + (map == null ? 0 : map.hashCode());
        }

        public final String toString() {
            return "FromWebView(eventName=" + this.f52945c + ", eventParam=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$InitiateCheckout;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InitiateCheckout extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52946c;

        public InitiateCheckout(Map<String, ? extends Object> map) {
            super(AFInAppEventType.INITIATED_CHECKOUT, map, null);
            this.f52946c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52946c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InitiateCheckout) && Intrinsics.c(this.f52946c, ((InitiateCheckout) obj).f52946c);
        }

        public final int hashCode() {
            Map map = this.f52946c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "InitiateCheckout(eventParam=" + this.f52946c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$InteractiveWardrobing;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InteractiveWardrobing extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52947c;

        public InteractiveWardrobing(Map<String, ? extends Object> map) {
            super("lv_interactive_wardrobing", map, null);
            this.f52947c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52947c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InteractiveWardrobing) && Intrinsics.c(this.f52947c, ((InteractiveWardrobing) obj).f52947c);
        }

        public final int hashCode() {
            Map map = this.f52947c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "InteractiveWardrobing(eventParam=" + this.f52947c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$LVPass;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LVPass extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52948c;

        public LVPass(Map<String, ? extends Object> map) {
            super("lv_pass", map, null);
            this.f52948c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52948c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LVPass) && Intrinsics.c(this.f52948c, ((LVPass) obj).f52948c);
        }

        public final int hashCode() {
            Map map = this.f52948c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "LVPass(eventParam=" + this.f52948c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ListView;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ListView extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52949c;

        public ListView(Map<String, ? extends Object> map) {
            super(AFInAppEventType.LIST_VIEW, map, null);
            this.f52949c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52949c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ListView) && Intrinsics.c(this.f52949c, ((ListView) obj).f52949c);
        }

        public final int hashCode() {
            Map map = this.f52949c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "ListView(eventParam=" + this.f52949c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Login;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Login extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Login f52950c = new Login(AFInAppEventType.LOGIN, null, 2, 0 == true ? 1 : 0);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Login);
        }

        public final int hashCode() {
            return 1930613094;
        }

        public final String toString() {
            return "Login";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$LookBook;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LookBook extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52951c;

        public LookBook(Map<String, ? extends Object> map) {
            super("lv_look_book", map, null);
            this.f52951c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52951c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LookBook) && Intrinsics.c(this.f52951c, ((LookBook) obj).f52951c);
        }

        public final int hashCode() {
            Map map = this.f52951c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "LookBook(eventParam=" + this.f52951c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OmniWishlist;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OmniWishlist extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52952c;

        public OmniWishlist(Map<String, ? extends Object> map) {
            super("lv_omni_wishlist", map, null);
            this.f52952c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52952c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OmniWishlist) && Intrinsics.c(this.f52952c, ((OmniWishlist) obj).f52952c);
        }

        public final int hashCode() {
            Map map = this.f52952c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "OmniWishlist(eventParam=" + this.f52952c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OnlineStoreAppointment;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnlineStoreAppointment extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52953c;

        public OnlineStoreAppointment(Map<String, ? extends Object> map) {
            super("lv_online_store_appointment", map, null);
            this.f52953c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52953c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnlineStoreAppointment) && Intrinsics.c(this.f52953c, ((OnlineStoreAppointment) obj).f52953c);
        }

        public final int hashCode() {
            Map map = this.f52953c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "OnlineStoreAppointment(eventParam=" + this.f52953c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenFromPushNotification;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenFromPushNotification extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final OpenFromPushNotification f52954c = new OpenFromPushNotification(AFInAppEventType.OPENED_FROM_PUSH_NOTIFICATION, null, 2, 0 == true ? 1 : 0);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenFromPushNotification);
        }

        public final int hashCode() {
            return -1434572484;
        }

        public final String toString() {
            return "OpenFromPushNotification";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenProductLocator;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenProductLocator extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final OpenProductLocator f52955c = new OpenProductLocator("af_open_product_locator", null, 2, 0 == true ? 1 : 0);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenProductLocator);
        }

        public final int hashCode() {
            return 165164724;
        }

        public final String toString() {
            return "OpenProductLocator";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenStoreLocator;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenStoreLocator extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final OpenStoreLocator f52956c = new OpenStoreLocator("af_open_store_locator", null, 2, 0 == true ? 1 : 0);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenStoreLocator);
        }

        public final int hashCode() {
            return 1464743362;
        }

        public final String toString() {
            return "OpenStoreLocator";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Purchase;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Purchase extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52957c;

        public Purchase(Map<String, ? extends Object> map) {
            super(AFInAppEventType.PURCHASE, map, null);
            this.f52957c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52957c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Purchase) && Intrinsics.c(this.f52957c, ((Purchase) obj).f52957c);
        }

        public final int hashCode() {
            Map map = this.f52957c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "Purchase(eventParam=" + this.f52957c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RegistrationCompleted;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RegistrationCompleted extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52958c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RegistrationCompleted(Map<String, ? extends Object> map) {
            super(AFInAppEventType.COMPLETE_REGISTRATION, map, null);
            map.getClass();
            this.f52958c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52958c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RegistrationCompleted) && Intrinsics.c(this.f52958c, ((RegistrationCompleted) obj).f52958c);
        }

        public final int hashCode() {
            return this.f52958c.hashCode();
        }

        public final String toString() {
            return "RegistrationCompleted(eventParam=" + this.f52958c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RemoveFromCart;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RemoveFromCart extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52959c;

        public RemoveFromCart(Map<String, ? extends Object> map) {
            super("af_remove_from_cart", map, null);
            this.f52959c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52959c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RemoveFromCart) && Intrinsics.c(this.f52959c, ((RemoveFromCart) obj).f52959c);
        }

        public final int hashCode() {
            Map map = this.f52959c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "RemoveFromCart(eventParam=" + this.f52959c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Search;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Search extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52960c;

        public Search(Map<String, ? extends Object> map) {
            super(AFInAppEventType.SEARCH, map, null);
            this.f52960c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52960c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Search) && Intrinsics.c(this.f52960c, ((Search) obj).f52960c);
        }

        public final int hashCode() {
            Map map = this.f52960c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "Search(eventParam=" + this.f52960c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ServiceRepair;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ServiceRepair extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52961c;

        public ServiceRepair(Map<String, ? extends Object> map) {
            super("lv_service_repair", map, null);
            this.f52961c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52961c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ServiceRepair) && Intrinsics.c(this.f52961c, ((ServiceRepair) obj).f52961c);
        }

        public final int hashCode() {
            Map map = this.f52961c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "ServiceRepair(eventParam=" + this.f52961c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$SpeedyPass;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;", "", "", "", "eventParam", "<init>", "(Ljava/util/Map;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SpeedyPass extends AppsFlyerEvent {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f52962c;

        public SpeedyPass(Map<String, ? extends Object> map) {
            super("lv_speedy_pass", map, null);
            this.f52962c = map;
        }

        @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Map getF52939b() {
            return this.f52962c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SpeedyPass) && Intrinsics.c(this.f52962c, ((SpeedyPass) obj).f52962c);
        }

        public final int hashCode() {
            Map map = this.f52962c;
            if (map == null) {
                return 0;
            }
            return map.hashCode();
        }

        public final String toString() {
            return "SpeedyPass(eventParam=" + this.f52962c + ")";
        }
    }

    public /* synthetic */ AppsFlyerEvent(String str, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : map, null);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public String getF52938a() {
        return this.f52938a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public Map getF52939b() {
        return this.f52939b;
    }

    public AppsFlyerEvent(String str, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this.f52938a = str;
        this.f52939b = map;
    }
}
