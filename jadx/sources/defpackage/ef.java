package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.R;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldWideIdDestinations;
import com.vuitton.android.presentation.screen.cart.NativeCartDestinations;
import com.vuitton.android.presentation.screen.cart.NativeCartDestinationsKt;
import com.vuitton.android.presentation.screen.feed.components.FeedComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinations;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinationsKt;
import com.vuitton.android.presentation.screen.mylv.components.MyLvComposableKt;
import com.vuitton.android.presentation.screen.options.OptionsDestinations;
import com.vuitton.android.presentation.screen.options.OptionsDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceHotContentUiModel;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ef implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f68845c;

    public /* synthetic */ ef(Context context, int i2) {
        this.f68844b = i2;
        this.f68845c = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Activity activity;
        Intent intentA;
        int i2 = this.f68844b;
        Context context = this.f68845c;
        switch (i2) {
            case 0:
                String str = (String) obj;
                str.getClass();
                activity = context instanceof Activity ? (Activity) context : null;
                if (activity != null) {
                    ActivityExtKt.f(activity, str);
                }
                return Unit.f71739a;
            case 1:
                String str2 = (String) obj;
                str2.getClass();
                activity = context instanceof Activity ? (Activity) context : null;
                if (activity != null) {
                    ActivityExtKt.f(activity, str2);
                }
                return Unit.f71739a;
            case 2:
                String str3 = (String) obj;
                str3.getClass();
                activity = context instanceof Activity ? (Activity) context : null;
                if (activity != null) {
                    ActivityExtKt.k(activity, str3);
                }
                return Unit.f71739a;
            case 3:
                String str4 = (String) obj;
                str4.getClass();
                Activity activity2 = context instanceof Activity ? (Activity) context : null;
                if (activity2 != null) {
                    ActivityExtKt.j(activity2, str4, null, 6);
                }
                return Unit.f71739a;
            case 4:
                return FeedComposableKt.a(context, (ActivityResult) obj);
            case 5:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                String string = context.getResources().getString(R.string.alt_hide_filters);
                string.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                return Unit.f71739a;
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                ImmersiveArticleActivity.Companion companion = ImmersiveArticleActivity.H;
                semanticsPropertyReceiver2.getClass();
                String string2 = context.getString(R.string.alt_loading_status);
                string2.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, string2);
                return Unit.f71739a;
            case 7:
                String str5 = (String) obj;
                LVPassActivity.Companion companion2 = LVPassActivity.s;
                str5.getClass();
                UserWorldWideIdDestinations.ToCatalogStoreModePage toCatalogStoreModePage = new UserWorldWideIdDestinations.ToCatalogStoreModePage(str5);
                Context context2 = this.f68845c;
                context2.getClass();
                context2.startActivity(MainActivity.Companion.a(MainActivity.L, context2, MainTopLevelDestination.CATALOG, toCatalogStoreModePage.f52688a, StoreModeLaunchMode.NEW_FROM_QRCODE_SCAN, null, 16));
                return Unit.f71739a;
            case 8:
                CareServiceHotContentUiModel careServiceHotContentUiModel = (CareServiceHotContentUiModel) obj;
                careServiceHotContentUiModel.getClass();
                CareServiceAction careServiceAction = careServiceHotContentUiModel.g;
                String str6 = careServiceHotContentUiModel.f64054b;
                int i3 = careServiceAction != null ? MyLvComposableKt.WhenMappings.f59397a[careServiceAction.ordinal()] : -1;
                if (i3 == 1) {
                    context.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToRepairPreliminaryAssessmentConfirmationPage(str6, null), context));
                } else if (i3 == 2) {
                    context.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToRepairAddressConfirmationPage(str6, null), context));
                } else if (i3 != 3) {
                    context.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToRepairDetailPage(str6, null), context));
                } else {
                    context.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToRepairAwaitingPaymentPage(str6, null), context));
                }
                return Unit.f71739a;
            case 9:
                String str7 = (String) obj;
                str7.getClass();
                if (StringExtKt.b(str7) != null) {
                    context.startActivity(NativeCartDestinationsKt.a(new NativeCartDestinations.ToWebViewPage(str7), context));
                }
                return Unit.f71739a;
            case 10:
                String str8 = (String) obj;
                str8.getClass();
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                if (appCompatActivityB != null) {
                    appCompatActivityB.startActivity(OptionsDestinationsKt.a(new OptionsDestinations.ToConsumerRightsPage(str8), appCompatActivityB));
                }
                return Unit.f71739a;
            case 11:
                String str9 = (String) obj;
                str9.getClass();
                AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context);
                if (appCompatActivityB2 != null) {
                    ActivityExtKt.f(appCompatActivityB2, str9);
                }
                return Unit.f71739a;
            case 12:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                String string3 = context.getString(R.string.alt_loading_status);
                string3.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver3, string3);
                return Unit.f71739a;
            case 13:
                String str10 = (String) obj;
                str10.getClass();
                context.startActivity(Intent.createChooser(new Intent("android.intent.action.VIEW", Uri.parse(str10)), null));
                return Unit.f71739a;
            case 14:
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                plpProductUiModel.getClass();
                PdpActivity.Companion companion3 = PdpActivity.D;
                String str11 = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62943a;
                companion3.getClass();
                context.startActivity(PdpActivity.Companion.b(context, str11));
                return Unit.f71739a;
            case 15:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.f731b == -1 && (intentA = ServicesDestinationsKt.a(ServicesDestinations.ToCareServicesPage.f64292a, context)) != null) {
                    context.startActivity(intentA);
                }
                return Unit.f71739a;
            case 16:
                StringResourceUiModel stringResourceUiModel = (StringResourceUiModel) obj;
                stringResourceUiModel.getClass();
                return StringResourceUiModelKt.a(stringResourceUiModel, context);
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver4, 0);
                String string4 = context.getString(R.string.alt_previous);
                string4.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver4, string4);
                return Unit.f71739a;
            case 18:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver5, 0);
                String string5 = context.getString(R.string.alt_next);
                string5.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver5, string5);
                return Unit.f71739a;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                String string6 = context.getString(R.string.alt_edit_avatar);
                string6.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver6, string6);
                return Unit.f71739a;
        }
    }
}
