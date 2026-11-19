package com.vuitton.android.presentation.screen.connectivity.faq.models;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import defpackage.n00;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;", "", "FaqPageScreen", "OpenFaqItemEvent", "CloseFaqItemEvent", "OpenFaqQuestionEvent", "CloseFaqQuestionEvent", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqItemEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqQuestionEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$FaqPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqItemEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FaqTrackingUiModel {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqItemEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;", "faqType", "", "questionPosition", "", "categoryId", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseFaqItemEvent implements FaqTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FaqType f56006a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f56007b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f56008c;

        public CloseFaqItemEvent(FaqType faqType, int i2, String str) {
            this.f56006a = faqType;
            this.f56007b = i2;
            this.f56008c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CloseFaqItemEvent)) {
                return false;
            }
            CloseFaqItemEvent closeFaqItemEvent = (CloseFaqItemEvent) obj;
            return this.f56006a == closeFaqItemEvent.f56006a && this.f56007b == closeFaqItemEvent.f56007b && Intrinsics.c(this.f56008c, closeFaqItemEvent.f56008c);
        }

        public final int hashCode() {
            FaqType faqType = this.f56006a;
            int iB = tr.b(this.f56007b, (faqType == null ? 0 : faqType.hashCode()) * 31, 31);
            String str = this.f56008c;
            return iB + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CloseFaqItemEvent(faqType=");
            sb.append(this.f56006a);
            sb.append(", questionPosition=");
            sb.append(this.f56007b);
            sb.append(", categoryId=");
            return n00.r(this.f56008c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqQuestionEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;", "faqType", "", "questionPosition", "", "categoryId", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseFaqQuestionEvent implements FaqTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FaqType f56009a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f56010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f56011c;

        public CloseFaqQuestionEvent(FaqType faqType, int i2, String str) {
            this.f56009a = faqType;
            this.f56010b = i2;
            this.f56011c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CloseFaqQuestionEvent)) {
                return false;
            }
            CloseFaqQuestionEvent closeFaqQuestionEvent = (CloseFaqQuestionEvent) obj;
            return this.f56009a == closeFaqQuestionEvent.f56009a && this.f56010b == closeFaqQuestionEvent.f56010b && Intrinsics.c(this.f56011c, closeFaqQuestionEvent.f56011c);
        }

        public final int hashCode() {
            FaqType faqType = this.f56009a;
            int iB = tr.b(this.f56010b, (faqType == null ? 0 : faqType.hashCode()) * 31, 31);
            String str = this.f56011c;
            return iB + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CloseFaqQuestionEvent(faqType=");
            sb.append(this.f56009a);
            sb.append(", questionPosition=");
            sb.append(this.f56010b);
            sb.append(", categoryId=");
            return n00.r(this.f56011c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$FaqPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;", "faqType", "", "categoryId", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FaqPageScreen implements FaqTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FaqType f56012a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f56013b;

        public FaqPageScreen(FaqType faqType, String str) {
            this.f56012a = faqType;
            this.f56013b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FaqPageScreen)) {
                return false;
            }
            FaqPageScreen faqPageScreen = (FaqPageScreen) obj;
            return this.f56012a == faqPageScreen.f56012a && Intrinsics.c(this.f56013b, faqPageScreen.f56013b);
        }

        public final int hashCode() {
            FaqType faqType = this.f56012a;
            int iHashCode = (faqType == null ? 0 : faqType.hashCode()) * 31;
            String str = this.f56013b;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            return "FaqPageScreen(faqType=" + this.f56012a + ", categoryId=" + this.f56013b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqItemEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;", "faqType", "", "questionPosition", "", "categoryId", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenFaqItemEvent implements FaqTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FaqType f56014a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f56015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f56016c;

        public OpenFaqItemEvent(FaqType faqType, int i2, String str) {
            this.f56014a = faqType;
            this.f56015b = i2;
            this.f56016c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OpenFaqItemEvent)) {
                return false;
            }
            OpenFaqItemEvent openFaqItemEvent = (OpenFaqItemEvent) obj;
            return this.f56014a == openFaqItemEvent.f56014a && this.f56015b == openFaqItemEvent.f56015b && Intrinsics.c(this.f56016c, openFaqItemEvent.f56016c);
        }

        public final int hashCode() {
            FaqType faqType = this.f56014a;
            int iB = tr.b(this.f56015b, (faqType == null ? 0 : faqType.hashCode()) * 31, 31);
            String str = this.f56016c;
            return iB + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("OpenFaqItemEvent(faqType=");
            sb.append(this.f56014a);
            sb.append(", questionPosition=");
            sb.append(this.f56015b);
            sb.append(", categoryId=");
            return n00.r(this.f56016c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;", "faqType", "", "questionPosition", "", "categoryId", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenFaqQuestionEvent implements FaqTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FaqType f56017a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f56018b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f56019c;

        public OpenFaqQuestionEvent(FaqType faqType, int i2, String str) {
            this.f56017a = faqType;
            this.f56018b = i2;
            this.f56019c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OpenFaqQuestionEvent)) {
                return false;
            }
            OpenFaqQuestionEvent openFaqQuestionEvent = (OpenFaqQuestionEvent) obj;
            return this.f56017a == openFaqQuestionEvent.f56017a && this.f56018b == openFaqQuestionEvent.f56018b && Intrinsics.c(this.f56019c, openFaqQuestionEvent.f56019c);
        }

        public final int hashCode() {
            FaqType faqType = this.f56017a;
            int iB = tr.b(this.f56018b, (faqType == null ? 0 : faqType.hashCode()) * 31, 31);
            String str = this.f56019c;
            return iB + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("OpenFaqQuestionEvent(faqType=");
            sb.append(this.f56017a);
            sb.append(", questionPosition=");
            sb.append(this.f56018b);
            sb.append(", categoryId=");
            return n00.r(this.f56019c, ")", sb);
        }
    }
}
