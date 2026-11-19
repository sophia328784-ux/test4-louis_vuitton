package com.vuitton.android.presentation.screen.tracking;

import kotlin.Metadata;
import org.bouncycastle.cms.CMSAttributeTableGenerator;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel;", "", "LegalConsentsScreen", "AcceptConsentsClickedEvent", "DeclineConsentsClickedEvent", "Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$AcceptConsentsClickedEvent;", "Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$DeclineConsentsClickedEvent;", "Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$LegalConsentsScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LegalConsentsTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$AcceptConsentsClickedEvent;", "Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;", CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AcceptConsentsClickedEvent implements LegalConsentsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LegalConsentsTrackingContentType f65399a;

        public AcceptConsentsClickedEvent(LegalConsentsTrackingContentType legalConsentsTrackingContentType) {
            legalConsentsTrackingContentType.getClass();
            this.f65399a = legalConsentsTrackingContentType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AcceptConsentsClickedEvent) && this.f65399a == ((AcceptConsentsClickedEvent) obj).f65399a;
        }

        public final int hashCode() {
            return this.f65399a.hashCode();
        }

        public final String toString() {
            return "AcceptConsentsClickedEvent(contentType=" + this.f65399a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$DeclineConsentsClickedEvent;", "Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;", CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeclineConsentsClickedEvent implements LegalConsentsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LegalConsentsTrackingContentType f65400a;

        public DeclineConsentsClickedEvent(LegalConsentsTrackingContentType legalConsentsTrackingContentType) {
            legalConsentsTrackingContentType.getClass();
            this.f65400a = legalConsentsTrackingContentType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DeclineConsentsClickedEvent) && this.f65400a == ((DeclineConsentsClickedEvent) obj).f65400a;
        }

        public final int hashCode() {
            return this.f65400a.hashCode();
        }

        public final String toString() {
            return "DeclineConsentsClickedEvent(contentType=" + this.f65400a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$LegalConsentsScreen;", "Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;", CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LegalConsentsScreen implements LegalConsentsTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LegalConsentsTrackingContentType f65401a;

        public LegalConsentsScreen(LegalConsentsTrackingContentType legalConsentsTrackingContentType) {
            legalConsentsTrackingContentType.getClass();
            this.f65401a = legalConsentsTrackingContentType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LegalConsentsScreen) && this.f65401a == ((LegalConsentsScreen) obj).f65401a;
        }

        public final int hashCode() {
            return this.f65401a.hashCode();
        }

        public final String toString() {
            return "LegalConsentsScreen(contentType=" + this.f65401a + ")";
        }
    }
}
