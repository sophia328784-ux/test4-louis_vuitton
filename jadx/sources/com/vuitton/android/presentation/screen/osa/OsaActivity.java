package com.vuitton.android.presentation.screen.osa;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.navigation3.runtime.RememberNavBackStackKt;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.cj0;
import defpackage.fw;
import defpackage.nd;
import defpackage.od0;
import defpackage.of0;
import defpackage.rh0;
import defpackage.tb0;
import defpackage.v40;
import defpackage.wc0;
import defpackage.x60;
import defpackage.xg0;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class OsaActivity extends Hilt_OsaActivity {
    public static final Companion u = new Companion(null);
    public ContributionLinkNavigator p;
    public final ViewModelLazy q;
    public final ViewModelLazy r;
    public final ViewModelLazy s;
    public final ActivityResultLauncher t;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;", "", "", "ROOT_SCREEN", "Ljava/lang/String;", "OSA_REASON", "PREFILLED_STORE_CODES", "PREFILLED_STORE_NAME", "IS_PREFILLED_EDITABLE", "ORIGIN", "SELECTION_ID", "REDIRECT_TO_MY_EXPERIENCES_AFTER_LOGIN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, OsaRoutesName osaRoutesName, OsaOriginScreen osaOriginScreen) {
            context.getClass();
            osaRoutesName.getClass();
            Intent intent = new Intent(context, (Class<?>) OsaActivity.class);
            intent.putExtra("rootScreen", osaRoutesName);
            if (osaOriginScreen != null) {
                intent.putExtra("ORIGIN", osaOriginScreen.getTrackingName());
            }
            return intent;
        }

        public static Intent b(Context context, OsaRoutesName osaRoutesName, List list, String str, String str2, boolean z, OsaOriginScreen osaOriginScreen, String str3, boolean z2) {
            context.getClass();
            osaRoutesName.getClass();
            Intent intent = new Intent(context, (Class<?>) OsaActivity.class);
            if (CollectionExtKt.a(list) && str != null) {
                osaRoutesName = OsaRoutesName.LOCATION_FORM;
            }
            intent.putExtra("rootScreen", osaRoutesName);
            if (list != null) {
                intent.putExtra("PREFILLED_STORE_CODES", (String[]) list.toArray(new String[0]));
            }
            if (str != null) {
                intent.putExtra("OSA_REASON", str);
            }
            if (str2 != null) {
                intent.putExtra("PREFILLED_STORE_NAME", str2);
            }
            intent.putExtra("IS_PREFILLED_EDITABLE", z);
            if (osaOriginScreen != null) {
                intent.putExtra("ORIGIN", osaOriginScreen.getTrackingName());
            }
            if (str3 != null) {
                intent.putExtra("SELECTION_ID", str3);
            }
            intent.putExtra("REDIRECT_TO_MY_EXPERIENCES_AFTER_LOGIN", z2);
            return intent;
        }

        public static /* synthetic */ Intent c(Companion companion, Context context, OsaRoutesName osaRoutesName, List list, String str, String str2, OsaOriginScreen osaOriginScreen, int i2) {
            if ((i2 & 16) != 0) {
                str2 = null;
            }
            companion.getClass();
            return b(context, osaRoutesName, list, str, str2, false, osaOriginScreen, null, false);
        }
    }

    public OsaActivity() {
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.osa.OsaActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        };
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function1 = null;
        this.q = new ViewModelLazy(reflectionFactory.b(OsaLocationFormViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.osa.OsaActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, function0, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.osa.OsaActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.r = new ViewModelLazy(reflectionFactory.b(OsaContactFormViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.osa.OsaActivity$special$$inlined$viewModels$default$5
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.osa.OsaActivity$special$$inlined$viewModels$default$4
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.osa.OsaActivity$special$$inlined$viewModels$default$6
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.s = new ViewModelLazy(reflectionFactory.b(OsaReasonsFormViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.osa.OsaActivity$special$$inlined$viewModels$default$8
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.osa.OsaActivity$special$$inlined$viewModels$default$7
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.osa.OsaActivity$special$$inlined$viewModels$default$9
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.t = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new fw(this, 29));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    public static Unit H(OsaActivity osaActivity, Composer composer, int i2) {
        NavKey navKey;
        boolean z;
        ManagedActivityResultLauncher managedActivityResultLauncher;
        Object obj;
        ManagedActivityResultLauncher managedActivityResultLauncher2;
        Object serializable;
        OsaActivity osaActivity2 = osaActivity;
        if (composer.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Bundle extras = osaActivity2.getIntent().getExtras();
            if (extras == null) {
                navKey = OsaRoutes.List.INSTANCE;
            } else {
                if (Build.VERSION.SDK_INT >= 33) {
                    serializable = extras.getSerializable("rootScreen", OsaRoutesName.class);
                } else {
                    Object serializable2 = extras.getSerializable("rootScreen");
                    if (!(serializable2 instanceof OsaRoutesName)) {
                        serializable2 = null;
                    }
                    serializable = (OsaRoutesName) serializable2;
                }
                OsaRoutesName osaRoutesName = (OsaRoutesName) serializable;
                if (osaRoutesName == null) {
                    navKey = OsaRoutes.List.INSTANCE;
                } else {
                    int i3 = OsaNavDisplayKt.WhenMappings.f60594a[osaRoutesName.ordinal()];
                    if (i3 == 1) {
                        navKey = OsaRoutes.Login.INSTANCE;
                    } else if (i3 == 2) {
                        navKey = OsaRoutes.List.INSTANCE;
                    } else {
                        if (i3 != 3) {
                            v40.g();
                            return null;
                        }
                        navKey = OsaRoutes.LocationForm.INSTANCE;
                    }
                    if (navKey == null) {
                        navKey = OsaRoutes.List.INSTANCE;
                    }
                }
            }
            NavBackStack navBackStackA = RememberNavBackStackKt.a(new NavKey[]{navKey}, composer);
            boolean booleanExtra = osaActivity2.getIntent().getBooleanExtra("REDIRECT_TO_MY_EXPERIENCES_AFTER_LOGIN", false);
            Object obj2 = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            boolean zY = composer.y(osaActivity2) | composer.y(navBackStackA);
            Object objX = composer.x();
            Object obj3 = Composer.Companion.f7939a;
            if (zY || objX == obj3) {
                objX = new od0(osaActivity2, navBackStackA);
                composer.q(objX);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX, composer, 0);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult2 = new ActivityResultContracts$StartActivityForResult();
            boolean zY2 = composer.y(osaActivity2);
            Object objX2 = composer.x();
            if (zY2 || objX2 == obj3) {
                objX2 = new tb0(osaActivity2, 18);
                composer.q(objX2);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA2 = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult2, (Function1) objX2, composer, 0);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult3 = new ActivityResultContracts$StartActivityForResult();
            boolean zY3 = composer.y(osaActivity2) | composer.y(navBackStackA);
            Object objX3 = composer.x();
            if (zY3 || objX3 == obj3) {
                objX3 = new xg0(osaActivity2, navBackStackA, 7);
                composer.q(objX3);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA3 = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult3, (Function1) objX3, composer, 0);
            OsaLocationFormViewModel osaLocationFormViewModel = (OsaLocationFormViewModel) osaActivity2.q.getF71699b();
            OsaContactFormViewModel osaContactFormViewModelJ = osaActivity2.J();
            OsaReasonsFormViewModel osaReasonsFormViewModel = (OsaReasonsFormViewModel) osaActivity2.s.getF71699b();
            boolean zY4 = composer.y(osaActivity2);
            Object objX4 = composer.x();
            if (zY4 || objX4 == obj3) {
                Object osaActivity$onCreate$2$1$1$1 = new OsaActivity$onCreate$2$1$1$1(0, osaActivity2, OsaActivity.class, "openPlaceSearch", "openPlaceSearch()V", 0);
                composer.q(osaActivity$onCreate$2$1$1$1);
                objX4 = osaActivity$onCreate$2$1$1$1;
            }
            Function0 function0 = (Function0) ((KFunction) objX4);
            boolean zY5 = composer.y(osaActivity2);
            Object objX5 = composer.x();
            if (zY5 || objX5 == obj3) {
                Object osaActivity$onCreate$2$1$2$1 = new OsaActivity$onCreate$2$1$2$1(2, osaActivity2, OsaActivity.class, "onAddToCalendar", "onAddToCalendar(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V", 0);
                composer.q(osaActivity$onCreate$2$1$2$1);
                objX5 = osaActivity$onCreate$2$1$2$1;
            }
            Function2 function2 = (Function2) ((KFunction) objX5);
            boolean zY6 = composer.y(osaActivity2) | composer.y(managedActivityResultLauncherA3) | composer.b(booleanExtra) | composer.y(managedActivityResultLauncherA2) | composer.y(managedActivityResultLauncherA);
            Object objX6 = composer.x();
            if (zY6 || objX6 == obj3) {
                z = booleanExtra;
                managedActivityResultLauncher = managedActivityResultLauncherA2;
                Object wc0Var = new wc0(osaActivity2, managedActivityResultLauncherA3, z, managedActivityResultLauncher, managedActivityResultLauncherA);
                obj = managedActivityResultLauncherA3;
                managedActivityResultLauncher2 = managedActivityResultLauncherA;
                osaActivity2 = osaActivity2;
                composer.q(wc0Var);
                objX6 = wc0Var;
            } else {
                z = booleanExtra;
                managedActivityResultLauncher2 = managedActivityResultLauncherA;
                managedActivityResultLauncher = managedActivityResultLauncherA2;
                obj = managedActivityResultLauncherA3;
            }
            Function1 function1 = (Function1) objX6;
            boolean zY7 = composer.y(osaActivity2) | composer.b(z) | composer.y(managedActivityResultLauncher) | composer.y(managedActivityResultLauncher2);
            Object objX7 = composer.x();
            if (zY7 || objX7 == obj3) {
                objX7 = new nd(osaActivity2, z, managedActivityResultLauncher, managedActivityResultLauncher2);
                composer.q(objX7);
            }
            Function0 function3 = (Function0) objX7;
            boolean zB = composer.b(z) | composer.y(osaActivity2) | composer.y(navBackStackA);
            Object objX8 = composer.x();
            if (zB || objX8 == obj3) {
                objX8 = new defpackage.d(z, osaActivity2, navBackStackA, 5);
                composer.q(objX8);
            }
            Function0 function4 = (Function0) objX8;
            boolean zY8 = composer.y(osaActivity2);
            Object objX9 = composer.x();
            if (zY8 || objX9 == obj3) {
                Object osaActivity$onCreate$2$1$6$1 = new OsaActivity$onCreate$2$1$6$1(0, osaActivity2, OsaActivity.class, "navigateToPrivacyPolicy", "navigateToPrivacyPolicy()V", 0);
                composer.q(osaActivity$onCreate$2$1$6$1);
                objX9 = osaActivity$onCreate$2$1$6$1;
            }
            Function0 function5 = (Function0) ((KFunction) objX9);
            boolean zY9 = composer.y(osaActivity2) | composer.y(obj) | composer.y(managedActivityResultLauncher2);
            Object objX10 = composer.x();
            if (zY9 || objX10 == obj3) {
                objX10 = new of0(osaActivity2, obj, managedActivityResultLauncher2, 8);
                composer.q(objX10);
            }
            Function0 function6 = (Function0) objX10;
            boolean zY10 = composer.y(osaActivity2);
            Object objX11 = composer.x();
            if (zY10 || objX11 == obj3) {
                objX11 = new x60(osaActivity2, 21);
                composer.q(objX11);
            }
            Function0 function7 = (Function0) objX11;
            boolean zY11 = composer.y(osaActivity2) | composer.y(navBackStackA);
            Object objX12 = composer.x();
            if (zY11 || objX12 == obj3) {
                objX12 = new rh0(osaActivity2, navBackStackA, 9);
                composer.q(objX12);
            }
            Function0 function8 = (Function0) objX12;
            boolean zY12 = composer.y(osaActivity2) | composer.y(obj2);
            Object objX13 = composer.x();
            if (zY12 || objX13 == obj3) {
                objX13 = new xg0(osaActivity2, obj2, 6);
                composer.q(objX13);
            }
            Function1 function9 = (Function1) objX13;
            boolean zY13 = composer.y(osaActivity2);
            Object objX14 = composer.x();
            if (zY13 || objX14 == obj3) {
                Object osaActivity$onCreate$2$1$11$1 = new OsaActivity$onCreate$2$1$11$1(0, osaActivity2, OsaActivity.class, "finish", "finish()V", 0);
                composer.q(osaActivity$onCreate$2$1$11$1);
                objX14 = osaActivity$onCreate$2$1$11$1;
            }
            NavBackStack.Companion companion = NavBackStack.INSTANCE;
            OsaNavDisplayKt.a(navBackStackA, osaLocationFormViewModel, osaContactFormViewModelJ, osaReasonsFormViewModel, function0, function2, function1, function3, function4, function5, function6, function7, function8, function9, (Function0) ((KFunction) objX14), composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    public static void I(OsaActivity osaActivity, ActivityResult activityResult) {
        Intent intent;
        Parcelable parcelable;
        activityResult.getClass();
        if (activityResult.f731b != -1 || (intent = activityResult.f732c) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) intent.getParcelableExtra("PLACE", PlaceGeocodingUiModel.class);
        } else {
            Parcelable parcelableExtra = intent.getParcelableExtra("PLACE");
            if (!(parcelableExtra instanceof PlaceGeocodingUiModel)) {
                parcelableExtra = null;
            }
            parcelable = (PlaceGeocodingUiModel) parcelableExtra;
        }
        PlaceGeocodingUiModel placeGeocodingUiModel = (PlaceGeocodingUiModel) parcelable;
        ViewModelLazy viewModelLazy = osaActivity.q;
        if (placeGeocodingUiModel != null) {
            ((OsaLocationFormViewModel) viewModelLazy.getF71699b()).r4(placeGeocodingUiModel);
        } else {
            ((OsaLocationFormViewModel) viewModelLazy.getF71699b()).o8();
        }
    }

    public static void K(NavBackStack navBackStack, OsaRoutes osaRoutes) {
        int i2;
        ListIterator listIterator = navBackStack.listIterator(navBackStack.f18396b.size());
        while (true) {
            StateListIterator stateListIterator = (StateListIterator) listIterator;
            if (!stateListIterator.hasPrevious()) {
                i2 = -1;
                break;
            } else if (Intrinsics.c((NavKey) stateListIterator.previous(), OsaRoutes.Login.INSTANCE)) {
                i2 = stateListIterator.f8522c + 1;
                break;
            }
        }
        if (i2 == 0) {
            Nav3ExtKt.a(navBackStack, osaRoutes);
        } else {
            Nav3ExtKt.c(navBackStack, OsaRoutes.Login.INSTANCE, true);
            navBackStack.a(osaRoutes);
        }
    }

    public final OsaContactFormViewModel J() {
        return (OsaContactFormViewModel) this.r.getF71699b();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String[] stringArray;
        List listW;
        SystemBarStyle.f684e.getClass();
        int i2 = 0;
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null && (stringArray = extras.getStringArray("PREFILLED_STORE_CODES")) != null && (listW = ArraysKt.W(stringArray)) != null) {
            boolean z = extras.getBoolean("IS_PREFILLED_EDITABLE", false);
            ((OsaLocationFormViewModel) this.q.getF71699b()).fc(extras.getString("PREFILLED_STORE_NAME"), listW, z);
            String string = extras.getString("OSA_REASON");
            if (string != null) {
                ((OsaReasonsFormViewModel) this.s.getF71699b()).W3(string, z);
            }
        }
        ComponentActivityKt.a(this, new ComposableLambdaImpl(1596979818, true, new cj0(this, i2)));
    }
}
