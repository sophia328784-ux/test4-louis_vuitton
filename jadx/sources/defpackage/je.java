package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.datastore.DataStoreFile;
import com.dynatrace.agent.lifecycle.NewUserCheckerImpl;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.PowerManagementAdapter;
import com.vuitton.android.presentation.screen.feed.FeedDestinations;
import com.vuitton.android.presentation.screen.feed.FeedDestinationsKt;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinations;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinationsKt;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinations;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinationsKt;
import com.vuitton.android.presentation.screen.options.OptionsDestinations;
import com.vuitton.android.presentation.screen.options.OptionsDestinationsKt;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinations;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinationsKt;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import java.io.File;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class je implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f71369c;

    public /* synthetic */ je(Context context, int i2) {
        this.f71368b = i2;
        this.f71369c = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() throws IOException {
        Intent intentA;
        Intent intentA2;
        int i2 = this.f71368b;
        FeedDestinations.ToPrivacyPolicyPage toPrivacyPolicyPage = FeedDestinations.ToPrivacyPolicyPage.f57602a;
        PLPDestinations.ToWishlistPage toWishlistPage = PLPDestinations.ToWishlistPage.f62717a;
        Context context = this.f71369c;
        switch (i2) {
            case 0:
                LegalTextActivity.p.getClass();
                context.startActivity(LegalTextActivity.Companion.a(context, false));
                return Unit.f71739a;
            case 1:
                LegalTextActivity.p.getClass();
                context.startActivity(LegalTextActivity.Companion.a(context, false));
                return Unit.f71739a;
            case 2:
                context.startActivity(PLPDestinationsKt.a(toWishlistPage, context));
                return Unit.f71739a;
            case 3:
                context.startActivity(PLPDestinationsKt.a(PLPDestinations.ToAICompanionPage.f62716a, context));
                return Unit.f71739a;
            case 4:
                Context context2 = this.f71369c;
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context2);
                if (appCompatActivityB != null) {
                    appCompatActivityB.startActivity(WishlistActivity.Companion.a(WishlistActivity.t, context2, true, null, null, 12));
                }
                return Unit.f71739a;
            case 5:
                AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context);
                if (appCompatActivityB2 != null) {
                    appCompatActivityB2.startActivity(FeedDestinationsKt.a(toPrivacyPolicyPage, appCompatActivityB2));
                }
                return Unit.f71739a;
            case 6:
                context.getClass();
                Object systemService = context.getSystemService("window");
                systemService.getClass();
                Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                return Integer.valueOf((int) (((double) displayMetrics.widthPixels) * 0.8d));
            case 7:
                AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context);
                if (appCompatActivityB3 != null) {
                    appCompatActivityB3.startActivity(FeedDestinationsKt.a(toPrivacyPolicyPage, appCompatActivityB3));
                }
                return Unit.f71739a;
            case 8:
                AppCompatActivity appCompatActivityB4 = ContextExtKt.b(context);
                if (appCompatActivityB4 != null) {
                    appCompatActivityB4.startActivity(FeedDestinationsKt.a(new FeedDestinations.ToRegisterPage(LoginContext.CONTENT_CURATION), appCompatActivityB4));
                }
                return Unit.f71739a;
            case 9:
                AppCompatActivity appCompatActivityB5 = ContextExtKt.b(context);
                if (appCompatActivityB5 != null) {
                    appCompatActivityB5.startActivity(FeedDestinationsKt.a(new FeedDestinations.ToLoginPage(LoginContext.CONTENT_CURATION), appCompatActivityB5));
                }
                return Unit.f71739a;
            case 10:
                File fileA = DataStoreFile.a(context, "firebaseSessions/sessionConfigsDataStore.data");
                FirebaseSessionsComponent.MainModule.Companion.b(fileA);
                return fileA;
            case 11:
                File fileA2 = DataStoreFile.a(context, "firebaseSessions/sessionDataStore.data");
                FirebaseSessionsComponent.MainModule.Companion.b(fileA2);
                return fileA2;
            case 12:
                AppCompatActivity appCompatActivityB6 = ContextExtKt.b(context);
                if (appCompatActivityB6 != null && (intentA = ImmersiveArticleDestinationsKt.a(new ImmersiveArticleDestinations.ToLoginPage(LoginContext.DEFAULT), appCompatActivityB6)) != null) {
                    appCompatActivityB6.startActivity(intentA);
                }
                return Unit.f71739a;
            case 13:
                AppCompatActivity appCompatActivityB7 = ContextExtKt.b(context);
                if (appCompatActivityB7 != null && (intentA2 = ImmersiveArticleDestinationsKt.a(new ImmersiveArticleDestinations.ToRegisterPage(LoginContext.DEFAULT), appCompatActivityB7)) != null) {
                    appCompatActivityB7.startActivity(intentA2);
                }
                return Unit.f71739a;
            case 14:
                context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToMyExperiencesPage.f59248a, context));
                return Unit.f71739a;
            case 15:
                int i3 = NewUserCheckerImpl.f26835c;
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.dynatrace.android.dtxPref", 0);
                sharedPreferences.getClass();
                return sharedPreferences;
            case 16:
                AppCompatActivity appCompatActivityB8 = ContextExtKt.b(context);
                if (appCompatActivityB8 != null) {
                    appCompatActivityB8.finish();
                }
                return Unit.f71739a;
            case 17:
                AppCompatActivity appCompatActivityB9 = ContextExtKt.b(context);
                if (appCompatActivityB9 != null) {
                    appCompatActivityB9.startActivity(OptionsDestinationsKt.a(OptionsDestinations.ToSettingsPage.f59627a, appCompatActivityB9));
                }
                return Unit.f71739a;
            case 18:
                AppCompatActivity appCompatActivityB10 = ContextExtKt.b(context);
                if (appCompatActivityB10 != null) {
                    appCompatActivityB10.startActivity(OptionsDestinationsKt.a(OptionsDestinations.ToOptOutPrivacyMenuPage.f59624a, appCompatActivityB10));
                }
                return Unit.f71739a;
            case 19:
                AppCompatActivity appCompatActivityB11 = ContextExtKt.b(context);
                if (appCompatActivityB11 != null) {
                    String string = context.getString(R.string.icp_certificate_url);
                    string.getClass();
                    appCompatActivityB11.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                }
                return Unit.f71739a;
            case 20:
                context.startActivity(PLPDestinationsKt.a(toWishlistPage, context));
                return Unit.f71739a;
            case 21:
                context.startActivity(PLPDestinationsKt.a(toWishlistPage, context));
                return Unit.f71739a;
            case 22:
                MainActivity.Companion companion = MainActivity.L;
                MainTopLevelDestination mainTopLevelDestination = MainTopLevelDestination.CATALOG;
                Context context3 = this.f71369c;
                context3.startActivity(MainActivity.Companion.a(companion, context3, mainTopLevelDestination, null, null, null, 28));
                return Unit.f71739a;
            case 23:
                context.startActivity(PLPDestinationsKt.a(toWishlistPage, context));
                return Unit.f71739a;
            case 24:
                context.startActivity(PLPDestinationsKt.a(toWishlistPage, context));
                return Unit.f71739a;
            case 25:
                context.startActivity(PLPDestinationsKt.a(toWishlistPage, context));
                return Unit.f71739a;
            case 26:
                context.getClass();
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", context.getPackageName(), null));
                context.startActivity(intent);
                return Unit.f71739a;
            case 27:
                context.startActivity(PLPDestinationsKt.a(toWishlistPage, context));
                return Unit.f71739a;
            default:
                int i4 = PowerManagementAdapter.f56146f;
                return LayoutInflater.from(context);
        }
    }
}
