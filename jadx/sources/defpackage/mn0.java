package defpackage;

import android.content.Intent;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import com.linkplay.medialib.server.HttpServer;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVServiceLocalProviderKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsActivity;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsDestinations;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsDestinationsKt;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import defpackage.v40;
import defpackage.x60;
import defpackage.xe0;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mn0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f76328c;
    public final /* synthetic */ SelectionTypeUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsActivity f76329e;

    public /* synthetic */ mn0(String str, SelectionTypeUiModel selectionTypeUiModel, PersonalSelectionsActivity personalSelectionsActivity, int i2) {
        this.f76327b = i2;
        this.f76328c = str;
        this.d = selectionTypeUiModel;
        this.f76329e = personalSelectionsActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76327b;
        final PersonalSelectionsActivity personalSelectionsActivity = this.f76329e;
        final SelectionTypeUiModel selectionTypeUiModel = this.d;
        final String str = this.f76328c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                PersonalSelectionsActivity.Companion companion = PersonalSelectionsActivity.s;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(901418007, new mn0(str, selectionTypeUiModel, personalSelectionsActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                PersonalSelectionsActivity.Companion companion2 = PersonalSelectionsActivity.s;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    final NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer);
                    LVServiceLocalProviderKt.a(ComposableLambdaKt.b(-421699591, new Function2() { // from class: com.vuitton.android.presentation.screen.personalselections.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            PersonalSelectionsRoute inStoreDetail;
                            SelectionTypeUiModel selectionTypeUiModel2;
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            PersonalSelectionsActivity.Companion companion3 = PersonalSelectionsActivity.s;
                            final int i4 = 0;
                            final int i5 = 1;
                            final int i6 = 2;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                String str2 = str;
                                if (str2 == null || (selectionTypeUiModel2 = selectionTypeUiModel) == null) {
                                    inStoreDetail = PersonalSelectionsRoute.List.INSTANCE;
                                } else {
                                    int i7 = PersonalSelectionsActivity.WhenMappings.f62378a[selectionTypeUiModel2.ordinal()];
                                    if (i7 == 1) {
                                        inStoreDetail = new PersonalSelectionsRoute.InStoreDetail(str2);
                                    } else {
                                        if (i7 != 2) {
                                            v40.g();
                                            return null;
                                        }
                                        inStoreDetail = new PersonalSelectionsRoute.AdvisorCurationDetail(str2);
                                    }
                                }
                                final PersonalSelectionsActivity personalSelectionsActivity2 = personalSelectionsActivity;
                                boolean zY = composer2.y(personalSelectionsActivity2);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    PersonalSelectionsActivity$onCreate$1$1$1$1$1 personalSelectionsActivity$onCreate$1$1$1$1$1 = new PersonalSelectionsActivity$onCreate$1$1$1$1$1(0, personalSelectionsActivity2, PersonalSelectionsActivity.class, "finish", "finish()V", 0);
                                    composer2.q(personalSelectionsActivity$onCreate$1$1$1$1$1);
                                    objX = personalSelectionsActivity$onCreate$1$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer2.y(personalSelectionsActivity2);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new xe0(personalSelectionsActivity2, 8);
                                    composer2.q(objX2);
                                }
                                Function3 function3 = (Function3) objX2;
                                boolean zY3 = composer2.y(personalSelectionsActivity2);
                                Object objX3 = composer2.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new x60(personalSelectionsActivity2, 28);
                                    composer2.q(objX3);
                                }
                                Function0 function1 = (Function0) objX3;
                                boolean zY4 = composer2.y(personalSelectionsActivity2);
                                Object objX4 = composer2.x();
                                if (zY4 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsActivity$onCreate$1$1$1$4$1
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            String str3 = ((SkuIdUiModel) obj5).f61764b;
                                            str3.getClass();
                                            PersonalSelectionsDestinations.ToProductDetailPage toProductDetailPage = new PersonalSelectionsDestinations.ToProductDetailPage(str3, null);
                                            PersonalSelectionsActivity personalSelectionsActivity3 = personalSelectionsActivity2;
                                            personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(toProductDetailPage, personalSelectionsActivity3));
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX4);
                                }
                                Function1 function2 = (Function1) objX4;
                                boolean zY5 = composer2.y(personalSelectionsActivity2);
                                Object objX5 = composer2.x();
                                if (zY5 || objX5 == composer$Companion$Empty$1) {
                                    objX5 = new Function1() { // from class: nn0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i8 = i4;
                                            PersonalSelectionsActivity personalSelectionsActivity3 = personalSelectionsActivity2;
                                            switch (i8) {
                                                case 0:
                                                    String str3 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion4 = PersonalSelectionsActivity.s;
                                                    str3.getClass();
                                                    Intent intent = new Intent();
                                                    intent.setAction("android.intent.action.SEND");
                                                    intent.setType(HttpServer.MIME_PLAINTEXT);
                                                    intent.putExtra("android.intent.extra.TEXT", str3);
                                                    personalSelectionsActivity3.startActivity(Intent.createChooser(intent, personalSelectionsActivity3.getString(R.string.share_using)));
                                                    break;
                                                case 1:
                                                    String str4 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion5 = PersonalSelectionsActivity.s;
                                                    str4.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenVideo(str4), personalSelectionsActivity3));
                                                    break;
                                                case 2:
                                                    String str5 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion6 = PersonalSelectionsActivity.s;
                                                    str5.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenImage(CollectionsKt.O(str5)), personalSelectionsActivity3));
                                                    break;
                                                case 3:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion7 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher.getClass();
                                                    managedActivityResultLauncher.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToLoginPage.f62383a, personalSelectionsActivity3));
                                                    break;
                                                default:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion8 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher2.getClass();
                                                    managedActivityResultLauncher2.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToRegisterPage.f62385a, personalSelectionsActivity3));
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX5);
                                }
                                Function1 function4 = (Function1) objX5;
                                boolean zY6 = composer2.y(personalSelectionsActivity2);
                                Object objX6 = composer2.x();
                                if (zY6 || objX6 == composer$Companion$Empty$1) {
                                    objX6 = new Function1() { // from class: nn0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i8 = i5;
                                            PersonalSelectionsActivity personalSelectionsActivity3 = personalSelectionsActivity2;
                                            switch (i8) {
                                                case 0:
                                                    String str3 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion4 = PersonalSelectionsActivity.s;
                                                    str3.getClass();
                                                    Intent intent = new Intent();
                                                    intent.setAction("android.intent.action.SEND");
                                                    intent.setType(HttpServer.MIME_PLAINTEXT);
                                                    intent.putExtra("android.intent.extra.TEXT", str3);
                                                    personalSelectionsActivity3.startActivity(Intent.createChooser(intent, personalSelectionsActivity3.getString(R.string.share_using)));
                                                    break;
                                                case 1:
                                                    String str4 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion5 = PersonalSelectionsActivity.s;
                                                    str4.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenVideo(str4), personalSelectionsActivity3));
                                                    break;
                                                case 2:
                                                    String str5 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion6 = PersonalSelectionsActivity.s;
                                                    str5.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenImage(CollectionsKt.O(str5)), personalSelectionsActivity3));
                                                    break;
                                                case 3:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion7 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher.getClass();
                                                    managedActivityResultLauncher.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToLoginPage.f62383a, personalSelectionsActivity3));
                                                    break;
                                                default:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion8 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher2.getClass();
                                                    managedActivityResultLauncher2.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToRegisterPage.f62385a, personalSelectionsActivity3));
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX6);
                                }
                                Function1 function5 = (Function1) objX6;
                                boolean zY7 = composer2.y(personalSelectionsActivity2);
                                Object objX7 = composer2.x();
                                if (zY7 || objX7 == composer$Companion$Empty$1) {
                                    objX7 = new Function1() { // from class: nn0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i8 = i6;
                                            PersonalSelectionsActivity personalSelectionsActivity3 = personalSelectionsActivity2;
                                            switch (i8) {
                                                case 0:
                                                    String str3 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion4 = PersonalSelectionsActivity.s;
                                                    str3.getClass();
                                                    Intent intent = new Intent();
                                                    intent.setAction("android.intent.action.SEND");
                                                    intent.setType(HttpServer.MIME_PLAINTEXT);
                                                    intent.putExtra("android.intent.extra.TEXT", str3);
                                                    personalSelectionsActivity3.startActivity(Intent.createChooser(intent, personalSelectionsActivity3.getString(R.string.share_using)));
                                                    break;
                                                case 1:
                                                    String str4 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion5 = PersonalSelectionsActivity.s;
                                                    str4.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenVideo(str4), personalSelectionsActivity3));
                                                    break;
                                                case 2:
                                                    String str5 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion6 = PersonalSelectionsActivity.s;
                                                    str5.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenImage(CollectionsKt.O(str5)), personalSelectionsActivity3));
                                                    break;
                                                case 3:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion7 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher.getClass();
                                                    managedActivityResultLauncher.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToLoginPage.f62383a, personalSelectionsActivity3));
                                                    break;
                                                default:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion8 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher2.getClass();
                                                    managedActivityResultLauncher2.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToRegisterPage.f62385a, personalSelectionsActivity3));
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX7);
                                }
                                Function1 function6 = (Function1) objX7;
                                boolean zY8 = composer2.y(personalSelectionsActivity2);
                                Object objX8 = composer2.x();
                                if (zY8 || objX8 == composer$Companion$Empty$1) {
                                    final int i8 = 3;
                                    objX8 = new Function1() { // from class: nn0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i9 = i8;
                                            PersonalSelectionsActivity personalSelectionsActivity3 = personalSelectionsActivity2;
                                            switch (i9) {
                                                case 0:
                                                    String str3 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion4 = PersonalSelectionsActivity.s;
                                                    str3.getClass();
                                                    Intent intent = new Intent();
                                                    intent.setAction("android.intent.action.SEND");
                                                    intent.setType(HttpServer.MIME_PLAINTEXT);
                                                    intent.putExtra("android.intent.extra.TEXT", str3);
                                                    personalSelectionsActivity3.startActivity(Intent.createChooser(intent, personalSelectionsActivity3.getString(R.string.share_using)));
                                                    break;
                                                case 1:
                                                    String str4 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion5 = PersonalSelectionsActivity.s;
                                                    str4.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenVideo(str4), personalSelectionsActivity3));
                                                    break;
                                                case 2:
                                                    String str5 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion6 = PersonalSelectionsActivity.s;
                                                    str5.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenImage(CollectionsKt.O(str5)), personalSelectionsActivity3));
                                                    break;
                                                case 3:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion7 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher.getClass();
                                                    managedActivityResultLauncher.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToLoginPage.f62383a, personalSelectionsActivity3));
                                                    break;
                                                default:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion8 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher2.getClass();
                                                    managedActivityResultLauncher2.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToRegisterPage.f62385a, personalSelectionsActivity3));
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX8);
                                }
                                Function1 function7 = (Function1) objX8;
                                boolean zY9 = composer2.y(personalSelectionsActivity2);
                                Object objX9 = composer2.x();
                                if (zY9 || objX9 == composer$Companion$Empty$1) {
                                    final int i9 = 4;
                                    objX9 = new Function1() { // from class: nn0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i10 = i9;
                                            PersonalSelectionsActivity personalSelectionsActivity3 = personalSelectionsActivity2;
                                            switch (i10) {
                                                case 0:
                                                    String str3 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion4 = PersonalSelectionsActivity.s;
                                                    str3.getClass();
                                                    Intent intent = new Intent();
                                                    intent.setAction("android.intent.action.SEND");
                                                    intent.setType(HttpServer.MIME_PLAINTEXT);
                                                    intent.putExtra("android.intent.extra.TEXT", str3);
                                                    personalSelectionsActivity3.startActivity(Intent.createChooser(intent, personalSelectionsActivity3.getString(R.string.share_using)));
                                                    break;
                                                case 1:
                                                    String str4 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion5 = PersonalSelectionsActivity.s;
                                                    str4.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenVideo(str4), personalSelectionsActivity3));
                                                    break;
                                                case 2:
                                                    String str5 = (String) obj5;
                                                    PersonalSelectionsActivity.Companion companion6 = PersonalSelectionsActivity.s;
                                                    str5.getClass();
                                                    personalSelectionsActivity3.startActivity(PersonalSelectionsDestinationsKt.a(new PersonalSelectionsDestinations.ToFullScreenImage(CollectionsKt.O(str5)), personalSelectionsActivity3));
                                                    break;
                                                case 3:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion7 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher.getClass();
                                                    managedActivityResultLauncher.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToLoginPage.f62383a, personalSelectionsActivity3));
                                                    break;
                                                default:
                                                    ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj5;
                                                    PersonalSelectionsActivity.Companion companion8 = PersonalSelectionsActivity.s;
                                                    managedActivityResultLauncher2.getClass();
                                                    managedActivityResultLauncher2.a(PersonalSelectionsDestinationsKt.a(PersonalSelectionsDestinations.ToRegisterPage.f62385a, personalSelectionsActivity3));
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX9);
                                }
                                Function1 function8 = (Function1) objX9;
                                Object objX10 = composer2.x();
                                if (objX10 == composer$Companion$Empty$1) {
                                    objX10 = PersonalSelectionsActivity$onCreate$1$1$1$10$1.f62379b;
                                    composer2.q(objX10);
                                }
                                PersonalSelectionsNavHostKt.a(navHostControllerA, function0, inStoreDetail, function3, function1, function2, function4, function5, function6, function7, function8, (Function1) objX10, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
