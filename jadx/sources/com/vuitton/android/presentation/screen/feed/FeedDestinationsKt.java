package com.vuitton.android.presentation.screen.feed;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.orders.OrderActivity;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SlottedSku;
import com.vuitton.android.presentation.screen.plp.activities.SkusPLPActivity;
import com.vuitton.android.presentation.screen.repairs.RepairActivity;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedDestinationsKt {
    public static final Intent a(FeedDestinations feedDestinations, Context context) {
        context.getClass();
        if (feedDestinations instanceof FeedDestinations.ToLVPassPage) {
            LVPassActivity.s.getClass();
            return LVPassActivity.Companion.a(context);
        }
        if (feedDestinations instanceof FeedDestinations.ToLoginPage) {
            AuthenticationActivity.Companion companion = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
            LoginContext loginContext = ((FeedDestinations.ToLoginPage) feedDestinations).f57593a;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.ONBOARDING;
            companion.getClass();
            return AuthenticationActivity.Companion.a(context, routes, loginContext, trackingAuthOrigin);
        }
        if (feedDestinations instanceof FeedDestinations.ToOsaPage) {
            OsaActivity.Companion companion2 = OsaActivity.u;
            OsaRoutesName osaRoutesName = OsaRoutesName.LIST;
            OsaOriginScreen osaOriginScreen = OsaOriginScreen.APPOINTMENT_LIST;
            companion2.getClass();
            return OsaActivity.Companion.a(context, osaRoutesName, osaOriginScreen);
        }
        if (feedDestinations instanceof FeedDestinations.ToAICompanionPage) {
            AICompanionActivity.v.getClass();
            return AICompanionActivity.Companion.a(context);
        }
        if (feedDestinations instanceof FeedDestinations.ToRegisterPage) {
            AuthenticationActivity.Companion companion3 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
            LoginContext loginContext2 = ((FeedDestinations.ToRegisterPage) feedDestinations).f57603a;
            TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.ONBOARDING;
            companion3.getClass();
            return AuthenticationActivity.Companion.a(context, routes2, loginContext2, trackingAuthOrigin2);
        }
        if (feedDestinations instanceof FeedDestinations.ToOrderDetailPage) {
            OrderActivity.Companion companion4 = OrderActivity.q;
            FeedDestinations.ToOrderDetailPage toOrderDetailPage = (FeedDestinations.ToOrderDetailPage) feedDestinations;
            String str = toOrderDetailPage.f57594a;
            TransactionItemUiModel transactionItemUiModel = toOrderDetailPage.f57595b;
            companion4.getClass();
            return OrderActivity.Companion.a(context, "detail", str, transactionItemUiModel);
        }
        if (feedDestinations instanceof FeedDestinations.ToLiveVideoPage) {
            LiveVideoActivity.Companion companion5 = LiveVideoActivity.q;
            FeedDestinations.ToLiveVideoPage toLiveVideoPage = (FeedDestinations.ToLiveVideoPage) feedDestinations;
            String str2 = toLiveVideoPage.f57591a;
            boolean z = toLiveVideoPage.f57592b == LiveFormatUiModel.LANDSCAPE;
            companion5.getClass();
            return LiveVideoActivity.Companion.a(context, str2, z);
        }
        if (feedDestinations instanceof FeedDestinations.ToPrivacyPolicyPage) {
            LegalTextActivity.p.getClass();
            return LegalTextActivity.Companion.a(context, false);
        }
        if (feedDestinations instanceof FeedDestinations.ToPdpPage) {
            FeedDestinations.ToPdpPage toPdpPage = (FeedDestinations.ToPdpPage) feedDestinations;
            CustomizationIdUiModel customizationIdUiModel = toPdpPage.f57598b;
            if (customizationIdUiModel == null) {
                return PdpActivity.Companion.a(PdpActivity.D, context, toPdpPage.f57597a, false, null, null, null, false, 120);
            }
            PdpActivity.Companion companion6 = PdpActivity.D;
            String str3 = toPdpPage.f57597a;
            companion6.getClass();
            return PdpActivity.Companion.c(context, str3, customizationIdUiModel);
        }
        if (feedDestinations instanceof FeedDestinations.ToAudioGuidePage) {
            AudioGuideActivity.Companion companion7 = AudioGuideActivity.r;
            String str4 = ((FeedDestinations.ToAudioGuidePage) feedDestinations).f57589a;
            companion7.getClass();
            return AudioGuideActivity.Companion.a(context, str4, null);
        }
        if (feedDestinations instanceof FeedDestinations.ToPlpPage) {
            SkusPLPActivity.Companion companion8 = SkusPLPActivity.p;
            FeedDestinations.ToPlpPage toPlpPage = (FeedDestinations.ToPlpPage) feedDestinations;
            List list = toPlpPage.f57599a;
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(new SkuIdUiModel(((SlottedSku) it.next()).f61765b));
            }
            String str5 = toPlpPage.f57600b;
            boolean z2 = toPlpPage.f57601c;
            companion8.getClass();
            return SkusPLPActivity.Companion.a(context, arrayList, list, str5, z2);
        }
        if (feedDestinations instanceof FeedDestinations.ToRepairDetailPage) {
            RepairActivity.Companion companion9 = RepairActivity.t;
            String str6 = ((FeedDestinations.ToRepairDetailPage) feedDestinations).f57606a;
            companion9.getClass();
            return RepairActivity.Companion.a(context, "REPAIR_DETAIL", str6);
        }
        if (feedDestinations instanceof FeedDestinations.ToRepairPreliminaryAssessmentConfirmationPage) {
            RepairActivity.Companion companion10 = RepairActivity.t;
            String str7 = ((FeedDestinations.ToRepairPreliminaryAssessmentConfirmationPage) feedDestinations).f57607a;
            companion10.getClass();
            return RepairActivity.Companion.a(context, "PRELIMINARY_ASSESSMENT_CONFIRMATION", str7);
        }
        if (feedDestinations instanceof FeedDestinations.ToRepairAddressConfirmationPage) {
            RepairActivity.Companion companion11 = RepairActivity.t;
            String str8 = ((FeedDestinations.ToRepairAddressConfirmationPage) feedDestinations).f57604a;
            companion11.getClass();
            return RepairActivity.Companion.a(context, "ADDRESS_CONFIRMATION", str8);
        }
        if (!(feedDestinations instanceof FeedDestinations.ToRepairAwaitingPaymentPage)) {
            v40.g();
            return null;
        }
        RepairActivity.Companion companion12 = RepairActivity.t;
        String str9 = ((FeedDestinations.ToRepairAwaitingPaymentPage) feedDestinations).f57605a;
        companion12.getClass();
        return RepairActivity.Companion.a(context, "PAYMENT_CONFIRMATION", str9);
    }
}
