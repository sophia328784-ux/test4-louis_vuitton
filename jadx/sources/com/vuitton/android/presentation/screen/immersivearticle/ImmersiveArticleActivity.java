package com.vuitton.android.presentation.screen.immersivearticle;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.webkit.MimeTypeMap;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$RequestPermission;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.universal.media.offline.FileUtils;
import com.vuitton.android.R;
import com.vuitton.android.data.audioplayer.AudioPlayerService;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModel;
import com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModelImpl;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleNavigationType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleVideoUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperDownloadStateUiModel;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.dt;
import defpackage.u20;
import defpackage.v;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.BuildersKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;", "viewState", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ImmersiveArticleActivity extends Hilt_ImmersiveArticleActivity {
    public static final Companion H = new Companion(null);
    public final Lazy A;
    public List B;
    public WallpaperArticleSectionUiModel C;
    public final ActivityResultLauncher D;
    public final ActivityResultLauncher E;
    public final ActivityResultLauncher F;
    public final ImmersiveArticleActivity$downloadBroadcastReceiver$1 G;
    public ContributionLinkNavigator p;
    public Function0 q;
    public final ActivityResultLauncher r;
    public final ViewModelLazy s;
    public final ViewModelLazy t;
    public final ViewModelLazy u;
    public final Lazy v;
    public final Lazy w;
    public final Lazy x;
    public final Lazy y;
    public final Lazy z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;", "", "", "EXTRA_ARTICLE_KEY", "Ljava/lang/String;", "EXTRA_ARTICLE_TYPE", "EXTRA_REDIRECTION", "EXTRA_REDIRECTION_KEY", "EXTRA_REDIRECTION_LOOK_KEY", "EXTRA_IS_DEEP_IN_HIERARCHY", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Companion companion, Context context, String str, String str2, String str3, String str4, String str5, int i2) {
            if ((i2 & 4) != 0) {
                str2 = ImmersiveArticleType.IMMERSIVE_ARTICLE.getType();
            }
            if ((i2 & 8) != 0) {
                str3 = null;
            }
            if ((i2 & 16) != 0) {
                str4 = null;
            }
            if ((i2 & 32) != 0) {
                str5 = null;
            }
            companion.getClass();
            context.getClass();
            str.getClass();
            str2.getClass();
            Intent intent = new Intent(context, (Class<?>) ImmersiveArticleActivity.class);
            intent.putExtra("ARTICLE_KEY", str);
            intent.putExtra("ARTICLE_TYPE", str2);
            intent.putExtra("REDIRECTION_KEY", str3);
            intent.putExtra("REDIRECTION_ARTICLE_KEY", str4);
            intent.putExtra("REDIRECTION_LOOK_KEY", str5);
            intent.putExtra("IS_DEEP_IN_HIERARCHY", false);
            return intent;
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$downloadBroadcastReceiver$1] */
    public ImmersiveArticleActivity() {
        super(R.layout.activity_fragment_container);
        final int i2 = 1;
        this.r = ActivityExtKt.a(this, new v(17), new c(this, i2));
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        };
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function1 = null;
        this.s = new ViewModelLazy(reflectionFactory.b(ImmersiveArticleViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, function0, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.t = new ViewModelLazy(reflectionFactory.b(AudioPlayerViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$special$$inlined$viewModels$default$5
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$special$$inlined$viewModels$default$4
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$special$$inlined$viewModels$default$6
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.u = new ViewModelLazy(reflectionFactory.b(PermissionsViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$special$$inlined$viewModels$default$8
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$special$$inlined$viewModels$default$7
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$special$$inlined$viewModels$default$9
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.v = LazyKt.b(new u20(this, 3));
        this.w = LazyKt.b(new u20(this, 4));
        this.x = LazyKt.b(new u20(this, 5));
        this.y = LazyKt.b(new u20(this, 6));
        this.z = LazyKt.b(new u20(this, 7));
        this.A = LazyKt.b(new u20(this, 8));
        this.B = EmptyList.f71768b;
        this.D = registerForActivityResult(new ActivityResultContracts$RequestPermission(), new ActivityResultCallback(this) { // from class: t20

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ImmersiveArticleActivity f79950c;

            {
                this.f79950c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                Intent intentA;
                int i3 = i2;
                ImmersiveArticleActivity immersiveArticleActivity = this.f79950c;
                switch (i3) {
                    case 0:
                        ImmersiveArticleActivity.H(immersiveArticleActivity, (ActivityResult) obj);
                        return;
                    case 1:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel = immersiveArticleActivity.C;
                        if (zBooleanValue) {
                            if (wallpaperArticleSectionUiModel != null) {
                                immersiveArticleActivity.I(wallpaperArticleSectionUiModel.g);
                                return;
                            } else {
                                Intrinsics.h("currentWallpapersSection");
                                throw null;
                            }
                        }
                        if (wallpaperArticleSectionUiModel == null) {
                            Intrinsics.h("currentWallpapersSection");
                            throw null;
                        }
                        MutableState mutableState = wallpaperArticleSectionUiModel.f58855h;
                        mutableState.setValue(WallpaperDownloadStateUiModel.a((WallpaperDownloadStateUiModel) mutableState.getF10755b(), false, 1));
                        return;
                    default:
                        ActivityResult activityResult = (ActivityResult) obj;
                        ImmersiveArticleActivity.Companion companion = ImmersiveArticleActivity.H;
                        activityResult.getClass();
                        if (activityResult.f731b != -1 || (intentA = ServicesDestinationsKt.a(ServicesDestinations.ToCareServicesCreatePage.f64291a, immersiveArticleActivity)) == null) {
                            return;
                        }
                        immersiveArticleActivity.startActivity(intentA);
                        return;
                }
            }
        });
        final int i3 = 2;
        this.E = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: t20

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ImmersiveArticleActivity f79950c;

            {
                this.f79950c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                Intent intentA;
                int i4 = i3;
                ImmersiveArticleActivity immersiveArticleActivity = this.f79950c;
                switch (i4) {
                    case 0:
                        ImmersiveArticleActivity.H(immersiveArticleActivity, (ActivityResult) obj);
                        return;
                    case 1:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel = immersiveArticleActivity.C;
                        if (zBooleanValue) {
                            if (wallpaperArticleSectionUiModel != null) {
                                immersiveArticleActivity.I(wallpaperArticleSectionUiModel.g);
                                return;
                            } else {
                                Intrinsics.h("currentWallpapersSection");
                                throw null;
                            }
                        }
                        if (wallpaperArticleSectionUiModel == null) {
                            Intrinsics.h("currentWallpapersSection");
                            throw null;
                        }
                        MutableState mutableState = wallpaperArticleSectionUiModel.f58855h;
                        mutableState.setValue(WallpaperDownloadStateUiModel.a((WallpaperDownloadStateUiModel) mutableState.getF10755b(), false, 1));
                        return;
                    default:
                        ActivityResult activityResult = (ActivityResult) obj;
                        ImmersiveArticleActivity.Companion companion = ImmersiveArticleActivity.H;
                        activityResult.getClass();
                        if (activityResult.f731b != -1 || (intentA = ServicesDestinationsKt.a(ServicesDestinations.ToCareServicesCreatePage.f64291a, immersiveArticleActivity)) == null) {
                            return;
                        }
                        immersiveArticleActivity.startActivity(intentA);
                        return;
                }
            }
        });
        final int i4 = 0;
        this.F = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: t20

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ImmersiveArticleActivity f79950c;

            {
                this.f79950c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                Intent intentA;
                int i5 = i4;
                ImmersiveArticleActivity immersiveArticleActivity = this.f79950c;
                switch (i5) {
                    case 0:
                        ImmersiveArticleActivity.H(immersiveArticleActivity, (ActivityResult) obj);
                        return;
                    case 1:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel = immersiveArticleActivity.C;
                        if (zBooleanValue) {
                            if (wallpaperArticleSectionUiModel != null) {
                                immersiveArticleActivity.I(wallpaperArticleSectionUiModel.g);
                                return;
                            } else {
                                Intrinsics.h("currentWallpapersSection");
                                throw null;
                            }
                        }
                        if (wallpaperArticleSectionUiModel == null) {
                            Intrinsics.h("currentWallpapersSection");
                            throw null;
                        }
                        MutableState mutableState = wallpaperArticleSectionUiModel.f58855h;
                        mutableState.setValue(WallpaperDownloadStateUiModel.a((WallpaperDownloadStateUiModel) mutableState.getF10755b(), false, 1));
                        return;
                    default:
                        ActivityResult activityResult = (ActivityResult) obj;
                        ImmersiveArticleActivity.Companion companion = ImmersiveArticleActivity.H;
                        activityResult.getClass();
                        if (activityResult.f731b != -1 || (intentA = ServicesDestinationsKt.a(ServicesDestinations.ToCareServicesCreatePage.f64291a, immersiveArticleActivity)) == null) {
                            return;
                        }
                        immersiveArticleActivity.startActivity(intentA);
                        return;
                }
            }
        });
        this.G = new BroadcastReceiver() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$downloadBroadcastReceiver$1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel;
                SnapshotStateList snapshotStateList;
                PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
                intent.getClass();
                long longExtra = intent.getLongExtra("extra_download_id", -1L);
                ImmersiveArticleActivity immersiveArticleActivity = this.f58236a;
                if (immersiveArticleActivity.B.contains(Long.valueOf(longExtra))) {
                    ImmersiveArticleUiModel immersiveArticleUiModel = ((ImmersiveArticleViewState) immersiveArticleActivity.M().J.getValue()).f58801c;
                    if (immersiveArticleUiModel == null || (snapshotStateList = immersiveArticleUiModel.f58793c) == null) {
                        wallpaperArticleSectionUiModel = null;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        ListIterator listIterator = snapshotStateList.listIterator();
                        while (true) {
                            StateListIterator stateListIterator = (StateListIterator) listIterator;
                            if (!stateListIterator.hasNext()) {
                                break;
                            }
                            Object next = stateListIterator.next();
                            if (next instanceof WallpaperArticleSectionUiModel) {
                                arrayList.add(next);
                            }
                        }
                        wallpaperArticleSectionUiModel = (WallpaperArticleSectionUiModel) CollectionsKt.firstOrNull(arrayList);
                    }
                    DownloadManager.Query query = new DownloadManager.Query();
                    query.setFilterById(longExtra);
                    Object systemService = context != null ? context.getSystemService("download") : null;
                    systemService.getClass();
                    Cursor cursorQuery = ((DownloadManager) systemService).query(query);
                    cursorQuery.moveToFirst();
                    if (cursorQuery.getInt(cursorQuery.getColumnIndex("status")) == 8) {
                        if (wallpaperArticleSectionUiModel != null) {
                            MutableState mutableState = wallpaperArticleSectionUiModel.f58855h;
                            mutableState.setValue(WallpaperDownloadStateUiModel.a((WallpaperDownloadStateUiModel) mutableState.getF10755b(), false, 4));
                            return;
                        }
                        return;
                    }
                    if (wallpaperArticleSectionUiModel != null) {
                        MutableState mutableState2 = wallpaperArticleSectionUiModel.f58855h;
                        mutableState2.setValue(WallpaperDownloadStateUiModel.a((WallpaperDownloadStateUiModel) mutableState2.getF10755b(), false, 1));
                    }
                }
            }
        };
    }

    public static void H(ImmersiveArticleActivity immersiveArticleActivity, ActivityResult activityResult) {
        Intent intent;
        Parcelable parcelable;
        activityResult.getClass();
        if (activityResult.f731b != -1 || (intent = activityResult.f732c) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) intent.getParcelableExtra("CUSTOMIZATION_ID", CustomizationIdUiModel.class);
        } else {
            Parcelable parcelableExtra = intent.getParcelableExtra("CUSTOMIZATION_ID");
            if (!(parcelableExtra instanceof CustomizationIdUiModel)) {
                parcelableExtra = null;
            }
            parcelable = (CustomizationIdUiModel) parcelableExtra;
        }
        String stringExtra = intent.getStringExtra("SKU");
        if (parcelable == null || stringExtra == null) {
            return;
        }
        PdpActivity.Companion companion = PdpActivity.D;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        companion.getClass();
        immersiveArticleActivity.startActivity(PdpActivity.Companion.c(immersiveArticleActivity, stringExtra, (CustomizationIdUiModel) parcelable));
    }

    public static final void N(ImmersiveArticleActivity immersiveArticleActivity, ContributionLinkUiModel contributionLinkUiModel) {
        ContributionLinkNavigator contributionLinkNavigator = immersiveArticleActivity.p;
        ActivityResultLauncher activityResultLauncher = null;
        if (contributionLinkNavigator == null) {
            Intrinsics.h("contributionLinkNavigator");
            throw null;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("EXPLORE_IS_DEEP_IN_HIERARCHY", true);
        if (contributionLinkUiModel instanceof ContributionLinkUiModel.Monogram) {
            activityResultLauncher = immersiveArticleActivity.F;
        } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.RepairCreate) {
            activityResultLauncher = immersiveArticleActivity.E;
        }
        ContributionLinkNavigator.a(contributionLinkNavigator, immersiveArticleActivity, contributionLinkUiModel, bundle, null, activityResultLauncher, 8);
    }

    public static final void P(ProductsArticleSectionUiModel.ImmersiveProductUiModel immersiveProductUiModel, ImmersiveArticleActivity immersiveArticleActivity) {
        ProductsArticleSectionUiModel.ProductInfoUiModel productInfoUiModel = immersiveProductUiModel.f58819c;
        String str = immersiveProductUiModel.f58817a;
        if ((productInfoUiModel != null ? productInfoUiModel.f58820a : null) != null) {
            if (productInfoUiModel.d) {
                ImmersiveArticleViewModelImpl immersiveArticleViewModelImplM = immersiveArticleActivity.M();
                str.getClass();
                BuildersKt.c(ViewModelKt.a(immersiveArticleViewModelImplM), null, null, new ImmersiveArticleViewModelImpl$deleteProductFromWishlist$1(immersiveArticleViewModelImplM, str, null), 3);
                ImmersiveArticleViewModelImpl immersiveArticleViewModelImplM2 = immersiveArticleActivity.M();
                String strK = immersiveArticleActivity.K();
                String str2 = strK == null ? "" : strK;
                ImmersiveArticleType immersiveArticleTypeL = immersiveArticleActivity.L();
                String str3 = productInfoUiModel.f58822c;
                SkuIdUiModel.f61763c.getClass();
                SkuId.Companion companion = SkuId.INSTANCE;
                immersiveArticleViewModelImplM2.U8(new ImmersiveArticleTrackingUiModel.ProductDeleteWishlistClickEvent(str2, immersiveArticleTypeL, str, str3, null));
                return;
            }
            ImmersiveArticleViewModelImpl immersiveArticleViewModelImplM3 = immersiveArticleActivity.M();
            str.getClass();
            BuildersKt.c(ViewModelKt.a(immersiveArticleViewModelImplM3), null, null, new ImmersiveArticleViewModelImpl$addProductToWishlist$1(immersiveArticleViewModelImplM3, str, null), 3);
            ImmersiveArticleViewModelImpl immersiveArticleViewModelImplM4 = immersiveArticleActivity.M();
            String strK2 = immersiveArticleActivity.K();
            String str4 = strK2 == null ? "" : strK2;
            ImmersiveArticleType immersiveArticleTypeL2 = immersiveArticleActivity.L();
            String str5 = productInfoUiModel.f58822c;
            SkuIdUiModel.f61763c.getClass();
            SkuId.Companion companion2 = SkuId.INSTANCE;
            immersiveArticleViewModelImplM4.U8(new ImmersiveArticleTrackingUiModel.ProductAddWishlistClickEvent(str4, immersiveArticleTypeL2, str, str5, null));
        }
    }

    public final void I(List list) {
        M().U8(new ImmersiveArticleTrackingUiModel.ModuleWallpaperClickEvent(K(), L()));
        ImmersiveArticleUiModel immersiveArticleUiModel = ((ImmersiveArticleViewState) M().J.getValue()).f58801c;
        String str = "LV-" + (immersiveArticleUiModel != null ? immersiveArticleUiModel.f58791a : null);
        list.getClass();
        Object systemService = getSystemService("download");
        systemService.getClass();
        DownloadManager downloadManager = (DownloadManager) systemService;
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (StringExtKt.a((String) obj)) {
                arrayList2.add(obj);
            }
        }
        for (String str2 : arrayList2) {
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str2));
            request.setTitle("Louis Vuitton Wallpapers");
            request.setDescription("Downloading");
            request.setNotificationVisibility(1);
            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str2);
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, str + FileUtils.HIDDEN_PREFIX + fileExtensionFromUrl);
            arrayList.add(Long.valueOf(downloadManager.enqueue(request)));
        }
        this.B = arrayList;
    }

    public final void J(final Function0 function0) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(getWindow().getDecorView(), "alpha", 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$fadeToBlack$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                animator.getClass();
                function0.mo47invoke();
            }
        });
        objectAnimatorOfFloat.start();
    }

    public final String K() {
        return (String) this.v.getF71699b();
    }

    public final ImmersiveArticleType L() {
        return (ImmersiveArticleType) this.w.getF71699b();
    }

    public final ImmersiveArticleViewModelImpl M() {
        return (ImmersiveArticleViewModelImpl) this.s.getF71699b();
    }

    public final void O(ImmersiveArticleNavigationType immersiveArticleNavigationType) {
        ((AudioPlayerViewModel) this.t.getF71699b()).Jb(AudioPlayerEvent.Pause.f53250a);
        if (immersiveArticleNavigationType instanceof ImmersiveArticleNavigationType.OpenVideoInFullScreen) {
            ImmersiveArticleVideoUiModel immersiveArticleVideoUiModel = ((ImmersiveArticleNavigationType.OpenVideoInFullScreen) immersiveArticleNavigationType).f58695a;
            if (immersiveArticleVideoUiModel != null) {
                LiveVideoActivity.Companion companion = LiveVideoActivity.q;
                String str = immersiveArticleVideoUiModel.f58796a;
                VideoIdUiModel.Companion companion2 = VideoIdUiModel.f51798c;
                str.getClass();
                companion.getClass();
                startActivity(LiveVideoActivity.Companion.a(this, str, false));
                return;
            }
            return;
        }
        if (immersiveArticleNavigationType instanceof ImmersiveArticleNavigationType.OnLookModuleCtaClick) {
            VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel = ((ImmersiveArticleNavigationType.OnLookModuleCtaClick) immersiveArticleNavigationType).f58693a;
            M().U8(new ImmersiveArticleTrackingUiModel.ModuleLookClickEvent(K(), videoCtaArticleSectionUiModel.f58841a, L()));
            String strK = K();
            String str2 = videoCtaArticleSectionUiModel.f58841a;
            if (strK == null || str2 == null) {
                return;
            }
            TheLookImmersiveArticleActivity.Companion companion3 = TheLookImmersiveArticleActivity.q;
            ImmersiveArticleUiModel immersiveArticleUiModel = ((ImmersiveArticleViewState) M().J.getValue()).f58801c;
            String str3 = immersiveArticleUiModel != null ? immersiveArticleUiModel.f58792b : null;
            if (str3 == null) {
                str3 = "";
            }
            companion3.getClass();
            startActivity(TheLookImmersiveArticleActivity.Companion.a(this, strK, str2, null, str3));
            return;
        }
        if (immersiveArticleNavigationType instanceof ImmersiveArticleNavigationType.OnContributionLinkClick) {
            ContributionLinkUiModel contributionLinkUiModel = ((ImmersiveArticleNavigationType.OnContributionLinkClick) immersiveArticleNavigationType).f58691a;
            M().U8(new ImmersiveArticleTrackingUiModel.ModuleDeeplinkClickEvent(K(), L()));
            if (contributionLinkUiModel instanceof ContributionLinkUiModel.ImmersiveArticle) {
                J(new dt(this, (ContributionLinkUiModel.ImmersiveArticle) contributionLinkUiModel, 27));
                return;
            } else {
                N(this, contributionLinkUiModel);
                return;
            }
        }
        if (immersiveArticleNavigationType instanceof ImmersiveArticleNavigationType.OnProductModuleClick) {
            String str4 = ((ImmersiveArticleNavigationType.OnProductModuleClick) immersiveArticleNavigationType).f58694a;
            PdpActivity.D.getClass();
            startActivity(PdpActivity.Companion.b(this, str4));
        } else {
            if (Intrinsics.c(immersiveArticleNavigationType, ImmersiveArticleNavigationType.RedirectToWishlist.f58696a)) {
                startActivity(WishlistActivity.Companion.a(WishlistActivity.t, this, false, null, null, 14));
                return;
            }
            if (!(immersiveArticleNavigationType instanceof ImmersiveArticleNavigationType.OnLaunchAuthentication)) {
                v40.g();
                return;
            }
            AuthenticationActivity.Companion companion4 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT;
            LoginContext loginContext = ((ImmersiveArticleNavigationType.OnLaunchAuthentication) immersiveArticleNavigationType).f58692a;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.ONBOARDING;
            companion4.getClass();
            this.r.a(AuthenticationActivity.Companion.a(this, routes, loginContext, trackingAuthOrigin));
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.b(this, SystemBarStyle.Companion.b(0, 0), 1);
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-327531832, true, new defpackage.c(this, 29)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        ((AudioPlayerViewModel) this.t.getF71699b()).L3();
        stopService(new Intent(this, (Class<?>) AudioPlayerService.class));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        unregisterReceiver(this.G);
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        getWindow().getDecorView().setAlpha(1.0f);
        ((AudioPlayerViewModel) this.t.getF71699b()).Jb(AudioPlayerEvent.PlayerUiChange.f53252a);
        ContextCompat.registerReceiver(this, this.G, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), 2);
    }
}
