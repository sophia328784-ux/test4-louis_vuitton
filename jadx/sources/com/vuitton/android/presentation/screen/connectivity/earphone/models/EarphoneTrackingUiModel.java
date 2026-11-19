package com.vuitton.android.presentation.screen.connectivity.earphone.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;", "", "EarphoneGeneralScreen", "FaqCategoriesScreen", "TutorialScreen", "TutorialClickScreen", "ClickOnDiscoverEvent", "FaqCategoryClickEvent", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$ClickOnDiscoverEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$EarphoneGeneralScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoriesScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoryClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialClickScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface EarphoneTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$ClickOnDiscoverEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;", "", "linkId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClickOnDiscoverEvent implements EarphoneTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55977a;

        public ClickOnDiscoverEvent(String str) {
            str.getClass();
            this.f55977a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ClickOnDiscoverEvent) && Intrinsics.c(this.f55977a, ((ClickOnDiscoverEvent) obj).f55977a);
        }

        public final int hashCode() {
            return this.f55977a.hashCode();
        }

        public final String toString() {
            return fc.h("ClickOnDiscoverEvent(linkId=", this.f55977a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$EarphoneGeneralScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EarphoneGeneralScreen implements EarphoneTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EarphoneGeneralScreen f55978a = new EarphoneGeneralScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EarphoneGeneralScreen);
        }

        public final int hashCode() {
            return 586993774;
        }

        public final String toString() {
            return "EarphoneGeneralScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoriesScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FaqCategoriesScreen implements EarphoneTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final FaqCategoriesScreen f55979a = new FaqCategoriesScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof FaqCategoriesScreen);
        }

        public final int hashCode() {
            return -962544816;
        }

        public final String toString() {
            return "FaqCategoriesScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoryClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;", "", "categoryId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FaqCategoryClickEvent implements EarphoneTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55980a;

        public FaqCategoryClickEvent(String str) {
            this.f55980a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FaqCategoryClickEvent) && Intrinsics.c(this.f55980a, ((FaqCategoryClickEvent) obj).f55980a);
        }

        public final int hashCode() {
            String str = this.f55980a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("FaqCategoryClickEvent(categoryId=", this.f55980a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialClickScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;", "", "tutorialTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TutorialClickScreen implements EarphoneTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55981a;

        public TutorialClickScreen(String str) {
            str.getClass();
            this.f55981a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TutorialClickScreen) && Intrinsics.c(this.f55981a, ((TutorialClickScreen) obj).f55981a);
        }

        public final int hashCode() {
            return this.f55981a.hashCode();
        }

        public final String toString() {
            return fc.h("TutorialClickScreen(tutorialTitle=", this.f55981a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TutorialScreen implements EarphoneTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TutorialScreen f55982a = new TutorialScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TutorialScreen);
        }

        public final int hashCode() {
            return -1130811464;
        }

        public final String toString() {
            return "TutorialScreen";
        }
    }
}
