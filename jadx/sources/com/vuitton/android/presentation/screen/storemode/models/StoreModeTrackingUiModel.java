package com.vuitton.android.presentation.screen.storemode.models;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0082\u0001\u000f\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f¨\u0006 À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "WelcomeScreen", "CloseScreen", "ExploreScreen", "CatalogScreen", "CatalogCategoryClickScreen", "CatalogLevel1ClickEvent", "CatalogLevel2ClickEvent", "CatalogLevel3ClickEvent", "ActivationClickedEvent", "CloseClickedEvent", "ConfirmExitClickedEvent", "CancelExitClickedEvent", "ExploreClickedEvent", "SearchClickedEvent", "ArticleClickedEvent", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ActivationClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ArticleClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CancelExitClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel1ClickEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel2ClickEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel3ClickEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogScreen;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseScreen;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ConfirmExitClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreScreen;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$SearchClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$WelcomeScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface StoreModeTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ActivationClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "storeId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivationClickedEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65058a;

        public ActivationClickedEvent(String str) {
            str.getClass();
            this.f65058a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ActivationClickedEvent) && Intrinsics.c(this.f65058a, ((ActivationClickedEvent) obj).f65058a);
        }

        public final int hashCode() {
            return this.f65058a.hashCode();
        }

        public final String toString() {
            return fc.h("ActivationClickedEvent(storeId=", this.f65058a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ArticleClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "articleIdentifier", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ArticleClickedEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65059a;

        public ArticleClickedEvent(String str) {
            str.getClass();
            this.f65059a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ArticleClickedEvent) && Intrinsics.c(this.f65059a, ((ArticleClickedEvent) obj).f65059a);
        }

        public final int hashCode() {
            return this.f65059a.hashCode();
        }

        public final String toString() {
            return fc.h("ArticleClickedEvent(articleIdentifier=", this.f65059a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CancelExitClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "storeId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancelExitClickedEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65060a;

        public CancelExitClickedEvent(String str) {
            str.getClass();
            this.f65060a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CancelExitClickedEvent) && Intrinsics.c(this.f65060a, ((CancelExitClickedEvent) obj).f65060a);
        }

        public final int hashCode() {
            return this.f65060a.hashCode();
        }

        public final String toString() {
            return fc.h("CancelExitClickedEvent(storeId=", this.f65060a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogScreen;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CatalogScreen implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CatalogScreen f65069a = new CatalogScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CatalogScreen);
        }

        public final int hashCode() {
            return 1105394028;
        }

        public final String toString() {
            return "CatalogScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "storeId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseClickedEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65070a;

        public CloseClickedEvent(String str) {
            str.getClass();
            this.f65070a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CloseClickedEvent) && Intrinsics.c(this.f65070a, ((CloseClickedEvent) obj).f65070a);
        }

        public final int hashCode() {
            return this.f65070a.hashCode();
        }

        public final String toString() {
            return fc.h("CloseClickedEvent(storeId=", this.f65070a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseScreen;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseScreen implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseScreen f65071a = new CloseScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseScreen);
        }

        public final int hashCode() {
            return -577336885;
        }

        public final String toString() {
            return "CloseScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ConfirmExitClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "storeId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConfirmExitClickedEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65072a;

        public ConfirmExitClickedEvent(String str) {
            str.getClass();
            this.f65072a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConfirmExitClickedEvent) && Intrinsics.c(this.f65072a, ((ConfirmExitClickedEvent) obj).f65072a);
        }

        public final int hashCode() {
            return this.f65072a.hashCode();
        }

        public final String toString() {
            return fc.h("ConfirmExitClickedEvent(storeId=", this.f65072a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExploreClickedEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExploreClickedEvent f65073a = new ExploreClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ExploreClickedEvent);
        }

        public final int hashCode() {
            return -570351827;
        }

        public final String toString() {
            return "ExploreClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreScreen;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExploreScreen implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExploreScreen f65074a = new ExploreScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ExploreScreen);
        }

        public final int hashCode() {
            return -2045226906;
        }

        public final String toString() {
            return "ExploreScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$SearchClickedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SearchClickedEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SearchClickedEvent f65075a = new SearchClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SearchClickedEvent);
        }

        public final int hashCode() {
            return 1791584596;
        }

        public final String toString() {
            return "SearchClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$WelcomeScreen;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WelcomeScreen implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WelcomeScreen f65076a = new WelcomeScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof WelcomeScreen);
        }

        public final int hashCode() {
            return -946742795;
        }

        public final String toString() {
            return "WelcomeScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "categoryName", "rmsCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CatalogCategoryClickScreen implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65061a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65062b;

        public /* synthetic */ CatalogCategoryClickScreen(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CatalogCategoryClickScreen)) {
                return false;
            }
            CatalogCategoryClickScreen catalogCategoryClickScreen = (CatalogCategoryClickScreen) obj;
            return Intrinsics.c(this.f65061a, catalogCategoryClickScreen.f65061a) && Intrinsics.c(this.f65062b, catalogCategoryClickScreen.f65062b);
        }

        public final int hashCode() {
            String str = this.f65061a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65062b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("CatalogCategoryClickScreen(categoryName=", this.f65061a, ", rmsCode=", this.f65062b, ")");
        }

        public CatalogCategoryClickScreen(String str, String str2) {
            this.f65061a = str;
            this.f65062b = str2;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel1ClickEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "categoryName", "rmsCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CatalogLevel1ClickEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65063a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65064b;

        public /* synthetic */ CatalogLevel1ClickEvent(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CatalogLevel1ClickEvent)) {
                return false;
            }
            CatalogLevel1ClickEvent catalogLevel1ClickEvent = (CatalogLevel1ClickEvent) obj;
            return Intrinsics.c(this.f65063a, catalogLevel1ClickEvent.f65063a) && Intrinsics.c(this.f65064b, catalogLevel1ClickEvent.f65064b);
        }

        public final int hashCode() {
            String str = this.f65063a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65064b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("CatalogLevel1ClickEvent(categoryName=", this.f65063a, ", rmsCode=", this.f65064b, ")");
        }

        public CatalogLevel1ClickEvent(String str, String str2) {
            this.f65063a = str;
            this.f65064b = str2;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel2ClickEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "categoryName", "rmsCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CatalogLevel2ClickEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65065a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65066b;

        public /* synthetic */ CatalogLevel2ClickEvent(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CatalogLevel2ClickEvent)) {
                return false;
            }
            CatalogLevel2ClickEvent catalogLevel2ClickEvent = (CatalogLevel2ClickEvent) obj;
            return Intrinsics.c(this.f65065a, catalogLevel2ClickEvent.f65065a) && Intrinsics.c(this.f65066b, catalogLevel2ClickEvent.f65066b);
        }

        public final int hashCode() {
            String str = this.f65065a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65066b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("CatalogLevel2ClickEvent(categoryName=", this.f65065a, ", rmsCode=", this.f65066b, ")");
        }

        public CatalogLevel2ClickEvent(String str, String str2) {
            this.f65065a = str;
            this.f65066b = str2;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel3ClickEvent;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;", "", "categoryName", "rmsCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CatalogLevel3ClickEvent implements StoreModeTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65067a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65068b;

        public /* synthetic */ CatalogLevel3ClickEvent(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CatalogLevel3ClickEvent)) {
                return false;
            }
            CatalogLevel3ClickEvent catalogLevel3ClickEvent = (CatalogLevel3ClickEvent) obj;
            return Intrinsics.c(this.f65067a, catalogLevel3ClickEvent.f65067a) && Intrinsics.c(this.f65068b, catalogLevel3ClickEvent.f65068b);
        }

        public final int hashCode() {
            String str = this.f65067a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65068b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("CatalogLevel3ClickEvent(categoryName=", this.f65067a, ", rmsCode=", this.f65068b, ")");
        }

        public CatalogLevel3ClickEvent(String str, String str2) {
            this.f65067a = str;
            this.f65068b = str2;
        }
    }
}
