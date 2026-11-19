package com.vuitton.android.presentation.screen.pdp.contextualsizing.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;", "", "ContextualSizingScreen", "OnSwipeOnModelSize", "OnClickOnModelSize", "OnClickOnViewDetails", "OnClickOnClose", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$ContextualSizingScreen;", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnClose;", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnModelSize;", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnViewDetails;", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnSwipeOnModelSize;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ContextualSizingTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$ContextualSizingScreen;", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContextualSizingScreen implements ContextualSizingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContextualSizingScreen f61528a = new ContextualSizingScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContextualSizingScreen);
        }

        public final int hashCode() {
            return -1603654384;
        }

        public final String toString() {
            return "ContextualSizingScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnClose;", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnClickOnClose implements ContextualSizingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61529a;

        public OnClickOnClose(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61529a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnClickOnClose)) {
                return false;
            }
            String str = ((OnClickOnClose) obj).f61529a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61529a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61529a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnClickOnClose(sku=", this.f61529a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnModelSize;", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnClickOnModelSize implements ContextualSizingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61530a;

        public OnClickOnModelSize(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61530a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnClickOnModelSize)) {
                return false;
            }
            String str = ((OnClickOnModelSize) obj).f61530a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61530a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61530a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnClickOnModelSize(sku=", this.f61530a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnViewDetails;", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnClickOnViewDetails implements ContextualSizingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61531a;

        public OnClickOnViewDetails(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61531a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnClickOnViewDetails)) {
                return false;
            }
            String str = ((OnClickOnViewDetails) obj).f61531a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61531a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61531a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnClickOnViewDetails(sku=", this.f61531a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnSwipeOnModelSize;", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSwipeOnModelSize implements ContextualSizingTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61532a;

        public OnSwipeOnModelSize(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61532a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSwipeOnModelSize)) {
                return false;
            }
            String str = ((OnSwipeOnModelSize) obj).f61532a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61532a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61532a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnSwipeOnModelSize(sku=", this.f61532a, ")");
        }
    }
}
