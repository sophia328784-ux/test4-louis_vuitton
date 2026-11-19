package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SlottedSku;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import defpackage.a;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0082\u0001\u000f\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f¨\u0006 À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "", "ToLVPassPage", "ToLoginPage", "ToRegisterPage", "ToOrderDetailPage", "ToLiveVideoPage", "ToPrivacyPolicyPage", "ToPdpPage", "ToAudioGuidePage", "ToPlpPage", "ToOsaPage", "ToAICompanionPage", "ToRepairDetailPage", "ToRepairPreliminaryAssessmentConfirmationPage", "ToRepairAddressConfirmationPage", "ToRepairAwaitingPaymentPage", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAICompanionPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAudioGuidePage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLVPassPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOrderDetailPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOsaPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPdpPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPlpPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPrivacyPolicyPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRegisterPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAddressConfirmationPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAwaitingPaymentPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairDetailPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairPreliminaryAssessmentConfirmationPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FeedDestinations {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAICompanionPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToAICompanionPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToAICompanionPage f57588a = new ToAICompanionPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToAICompanionPage);
        }

        public final int hashCode() {
            return 835832830;
        }

        public final String toString() {
            return "ToAICompanionPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAudioGuidePage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "", "audioGuideId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToAudioGuidePage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57589a;

        public ToAudioGuidePage(String str) {
            str.getClass();
            this.f57589a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToAudioGuidePage) && Intrinsics.c(this.f57589a, ((ToAudioGuidePage) obj).f57589a);
        }

        public final int hashCode() {
            return this.f57589a.hashCode();
        }

        public final String toString() {
            return fc.h("ToAudioGuidePage(audioGuideId=", this.f57589a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLVPassPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLVPassPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToLVPassPage f57590a = new ToLVPassPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToLVPassPage);
        }

        public final int hashCode() {
            return -2000194689;
        }

        public final String toString() {
            return "ToLVPassPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;", "liveVideoId", "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;", "format", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLiveVideoPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LiveFormatUiModel f57592b;

        public ToLiveVideoPage(String str, LiveFormatUiModel liveFormatUiModel, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            liveFormatUiModel.getClass();
            this.f57591a = str;
            this.f57592b = liveFormatUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToLiveVideoPage)) {
                return false;
            }
            ToLiveVideoPage toLiveVideoPage = (ToLiveVideoPage) obj;
            String str = toLiveVideoPage.f57591a;
            VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
            return this.f57591a.equals(str) && this.f57592b == toLiveVideoPage.f57592b;
        }

        public final int hashCode() {
            VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
            return this.f57592b.hashCode() + (this.f57591a.hashCode() * 31);
        }

        public final String toString() {
            VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
            return "ToLiveVideoPage(liveVideoId=" + this.f57591a + ", format=" + this.f57592b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "loginContext", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLoginPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoginContext f57593a;

        public ToLoginPage(LoginContext loginContext) {
            loginContext.getClass();
            this.f57593a = loginContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToLoginPage) && this.f57593a == ((ToLoginPage) obj).f57593a;
        }

        public final int hashCode() {
            return this.f57593a.hashCode();
        }

        public final String toString() {
            return "ToLoginPage(loginContext=" + this.f57593a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOrderDetailPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "", "transactionId", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;", "item", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOrderDetailPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57594a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TransactionItemUiModel f57595b;

        public ToOrderDetailPage(String str, TransactionItemUiModel transactionItemUiModel) {
            str.getClass();
            transactionItemUiModel.getClass();
            this.f57594a = str;
            this.f57595b = transactionItemUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToOrderDetailPage)) {
                return false;
            }
            ToOrderDetailPage toOrderDetailPage = (ToOrderDetailPage) obj;
            return Intrinsics.c(this.f57594a, toOrderDetailPage.f57594a) && Intrinsics.c(this.f57595b, toOrderDetailPage.f57595b);
        }

        public final int hashCode() {
            return this.f57595b.hashCode() + (this.f57594a.hashCode() * 31);
        }

        public final String toString() {
            return "ToOrderDetailPage(transactionId=" + this.f57594a + ", item=" + this.f57595b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOsaPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOsaPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToOsaPage f57596a = new ToOsaPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToOsaPage);
        }

        public final int hashCode() {
            return -1307123305;
        }

        public final String toString() {
            return "ToOsaPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPrivacyPolicyPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPrivacyPolicyPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToPrivacyPolicyPage f57602a = new ToPrivacyPolicyPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToPrivacyPolicyPage);
        }

        public final int hashCode() {
            return -2141642444;
        }

        public final String toString() {
            return "ToPrivacyPolicyPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRegisterPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "loginContext", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRegisterPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoginContext f57603a;

        public ToRegisterPage(LoginContext loginContext) {
            loginContext.getClass();
            this.f57603a = loginContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToRegisterPage) && this.f57603a == ((ToRegisterPage) obj).f57603a;
        }

        public final int hashCode() {
            return this.f57603a.hashCode();
        }

        public final String toString() {
            return "ToRegisterPage(loginContext=" + this.f57603a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAddressConfirmationPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "careServiceId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRepairAddressConfirmationPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57604a;

        public ToRepairAddressConfirmationPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f57604a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToRepairAddressConfirmationPage)) {
                return false;
            }
            String str = ((ToRepairAddressConfirmationPage) obj).f57604a;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f57604a.equals(str);
        }

        public final int hashCode() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f57604a.hashCode();
        }

        public final String toString() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return fc.h("ToRepairAddressConfirmationPage(careServiceId=", this.f57604a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAwaitingPaymentPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "careServiceId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRepairAwaitingPaymentPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57605a;

        public ToRepairAwaitingPaymentPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f57605a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToRepairAwaitingPaymentPage)) {
                return false;
            }
            String str = ((ToRepairAwaitingPaymentPage) obj).f57605a;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f57605a.equals(str);
        }

        public final int hashCode() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f57605a.hashCode();
        }

        public final String toString() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return fc.h("ToRepairAwaitingPaymentPage(careServiceId=", this.f57605a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairDetailPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "careServiceId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRepairDetailPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57606a;

        public ToRepairDetailPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f57606a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToRepairDetailPage)) {
                return false;
            }
            String str = ((ToRepairDetailPage) obj).f57606a;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f57606a.equals(str);
        }

        public final int hashCode() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f57606a.hashCode();
        }

        public final String toString() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return fc.h("ToRepairDetailPage(careServiceId=", this.f57606a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairPreliminaryAssessmentConfirmationPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "careServiceId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRepairPreliminaryAssessmentConfirmationPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57607a;

        public ToRepairPreliminaryAssessmentConfirmationPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f57607a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToRepairPreliminaryAssessmentConfirmationPage)) {
                return false;
            }
            String str = ((ToRepairPreliminaryAssessmentConfirmationPage) obj).f57607a;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f57607a.equals(str);
        }

        public final int hashCode() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f57607a.hashCode();
        }

        public final String toString() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return fc.h("ToRepairPreliminaryAssessmentConfirmationPage(careServiceId=", this.f57607a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPdpPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;", "customizationId", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPdpPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57597a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CustomizationIdUiModel f57598b;

        public ToPdpPage(String str, CustomizationIdUiModel customizationIdUiModel, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f57597a = str;
            this.f57598b = customizationIdUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToPdpPage)) {
                return false;
            }
            ToPdpPage toPdpPage = (ToPdpPage) obj;
            String str = toPdpPage.f57597a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f57597a, str) && Intrinsics.c(this.f57598b, toPdpPage.f57598b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iHashCode = this.f57597a.hashCode() * 31;
            CustomizationIdUiModel customizationIdUiModel = this.f57598b;
            return iHashCode + (customizationIdUiModel == null ? 0 : customizationIdUiModel.hashCode());
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "ToPdpPage(sku=" + this.f57597a + ", customizationId=" + this.f57598b + ")";
        }

        public /* synthetic */ ToPdpPage(String str, CustomizationIdUiModel customizationIdUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : customizationIdUiModel, null);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPlpPage;", "Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SlottedSku;", "recommendationList", "", "title", "", "isMostPurchasedWith", "<init>", "(Ljava/util/List;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPlpPage implements FeedDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f57599a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57600b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f57601c;

        public ToPlpPage(List<SlottedSku> list, String str, boolean z) {
            list.getClass();
            str.getClass();
            this.f57599a = list;
            this.f57600b = str;
            this.f57601c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToPlpPage)) {
                return false;
            }
            ToPlpPage toPlpPage = (ToPlpPage) obj;
            return Intrinsics.c(this.f57599a, toPlpPage.f57599a) && Intrinsics.c(this.f57600b, toPlpPage.f57600b) && this.f57601c == toPlpPage.f57601c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f57601c) + fc.b(this.f57599a.hashCode() * 31, 31, this.f57600b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ToPlpPage(recommendationList=");
            sb.append(this.f57599a);
            sb.append(", title=");
            sb.append(this.f57600b);
            sb.append(", isMostPurchasedWith=");
            return a.p(sb, this.f57601c, ")");
        }

        public /* synthetic */ ToPlpPage(List list, String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, str, (i2 & 4) != 0 ? false : z);
        }
    }
}
