package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.constraintlayout.compose.State;
import androidx.constraintlayout.core.state.CorePixelDp;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.exoplayer.source.BundledExtractorsAdapter;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.extractor.CeaUtil;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.ts.SeiReader;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.dynatrace.android.callback.Callback;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.internal.StaticLayoutBuilderConfigurer;
import com.google.common.collect.ImmutableList;
import com.google.firebase.crashlytics.internal.common.Utils;
import com.kakao.sdk.auth.TalkAuthCodeActivity;
import com.kakao.sdk.common.model.AuthError;
import com.kakao.sdk.common.model.AuthErrorCause;
import com.kakao.sdk.common.model.AuthErrorResponse;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.kakao.sdk.common.util.KakaoJson;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.JsExecutor;
import com.perfectcorp.perfectlib.PhotoMakeup;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.perfectcorp.perfectlib.ShadeFinderData;
import com.perfectcorp.perfectlib.ShadeFinderQualityCheck;
import com.perfectcorp.perfectlib.core.FrameProcessingThread;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.template.idc.e;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.perfectlib.z;
import com.perfectcorp.thirdparty.com.google.common.collect.HashMultimap;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper;
import com.sightcall.videoplayer.view.VideoPlayerBar;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.story.StoryActivity;
import com.vuitton.android.presentation.utils.PriceHelper;
import java.io.File;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.regex.Pattern;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ln0 implements OnSuccessListener, OnFailureListener, Function, ActivityResultCallback, ProgressiveMediaExtractor.Factory, ReorderingBufferQueue.OutputConsumer, ShadeFinder.ShadeFinderCallback, CorePixelDp, Consumer, StaticLayoutBuilderConfigurer, SynchronizationGuard.CriticalSection, Continuation, VideoPlayerBar.VisibilityCallback, OnApplyWindowInsetsListener, SwipeRefreshLayout.OnRefreshListener, OnCompleteListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76063c;

    public /* synthetic */ ln0(Object obj, int i2) {
        this.f76062b = i2;
        this.f76063c = obj;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor.Factory
    public BundledExtractorsAdapter a() {
        ExtractorsFactory extractorsFactory = (ExtractorsFactory) this.f76063c;
        int i2 = ProgressiveMediaSource.Factory.f15570i;
        return new BundledExtractorsAdapter(extractorsFactory);
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((ImmutableList.Builder) this.f76063c).e((CuesWithTiming) obj);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f76062b;
        Object obj2 = this.f76063c;
        switch (i2) {
            case 2:
                return new p(new z((PhotoMakeup) obj2, (FrameProcessingThread.Frame) obj, 8));
            case 11:
                return new b(new p3((JsExecutor) obj2, (String) obj, 26));
            case 12:
                return (h) obj2;
            case 13:
                Sku sku = (Sku) obj2;
                boolean zEquals = sku.f41263b.equals(SkuBeautyMode$FeatureType.BACKGROUND.toString());
                String str = sku.f41266f;
                if (zEquals) {
                    ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                    Single singleCollectInto = ApplyEffectUtility.g(Collections.singleton(str)).collectInto(new ConcurrentHashMap(), new v7(6));
                    t7 t7Var = new t7(str, 2);
                    singleCollectInto.getClass();
                    return new t(singleCollectInto, t7Var);
                }
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                SingleSource singleSourceCollectInto = ApplyEffectUtility.B(0, Collections.singleton(str)).collectInto(new ConcurrentHashMap(), new v7(5));
                t7 t7Var2 = new t7(str, 3);
                singleSourceCollectInto.getClass();
                return new t(singleSourceCollectInto, t7Var2);
            case 17:
                DownloadImageInfo.Builder builder = (DownloadImageInfo.Builder) obj2;
                File file = (File) obj;
                builder.f40311b = file.getAbsolutePath();
                builder.f40313e = file.length();
                return builder;
            default:
                HashSet hashSet = (HashSet) obj2;
                h hVar = (h) obj;
                Pattern pattern = a.f41721a;
                BeautyMode beautyModeValueOfSkuFeatureType = BeautyMode.valueOfSkuFeatureType(hVar.type);
                HashMultimap hashMultimap = new HashMultimap();
                Iterator<h.d> it = hVar.items.iterator();
                while (it.hasNext()) {
                    try {
                        for (e eVar : it.next().info.itemContent.patterns) {
                            if (hashSet.contains(eVar.attr_guid)) {
                                hashMultimap.put(beautyModeValueOfSkuFeatureType, eVar.attr_patternGuid);
                            }
                        }
                    } catch (Throwable th) {
                        Log.e("SkuSetUnit", "requestSkuMetadata no pattern. ", th);
                    }
                }
                return Pair.create(hVar.skuGUID, hashMultimap);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9, types: [java.lang.String] */
    @Override // androidx.activity.result.ActivityResultCallback
    public void b(Object obj) {
        CareServiceDetailUiModel.Assessment assessment;
        PriceUiModel priceUiModel;
        String str;
        ?? A;
        CareServiceDetailUiModel.Assessment assessment2;
        PriceUiModel priceUiModel2;
        ?? A2;
        Intent intentA;
        int i2;
        int i3 = this.f76062b;
        ?? r9 = "";
        ?? r10 = 0;
        String str2 = null;
        str = null;
        str = null;
        String str3 = null;
        String str4 = null;
        r10 = 0;
        r10 = 0;
        Object obj2 = this.f76063c;
        switch (i3) {
            case 3:
                ((Boolean) obj).getClass();
                PrivacyActivity.Companion companion = PrivacyActivity.s;
                ((PrivacyActivity) obj2).I();
                return;
            case 5:
                RepairConfirmAddressBffFragment repairConfirmAddressBffFragment = (RepairConfirmAddressBffFragment) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                RepairConfirmAddressBffFragment.Companion companion2 = RepairConfirmAddressBffFragment.M;
                activityResult.getClass();
                Intent intent = activityResult.f732c;
                if (intent != null && intent.getBooleanExtra("CARE_SERVICE_PAYMENT_SUCCESS", false)) {
                    repairConfirmAddressBffFragment.R();
                    FragmentActivity activity = repairConfirmAddressBffFragment.getActivity();
                    CareServiceIdUiModel.Companion companion3 = CareServiceIdUiModel.f64059c;
                    String strQ = repairConfirmAddressBffFragment.Q();
                    companion3.getClass();
                    if (strQ == null) {
                        strQ = CareServiceIdUiModel.d;
                    }
                    RepairRouter.j(activity, strQ);
                    return;
                }
                if (intent == null || !intent.getBooleanExtra("CARE_SERVICE_PAYMENT_FAILED", false)) {
                    if (intent == null || !intent.getBooleanExtra("CARE_SERVICE_PAYMENT_CANCEL", false)) {
                        return;
                    }
                    repairConfirmAddressBffFragment.R().i(repairConfirmAddressBffFragment.getActivity());
                    return;
                }
                repairConfirmAddressBffFragment.R();
                FragmentActivity activity2 = repairConfirmAddressBffFragment.getActivity();
                CareServiceDetailUiModel careServiceDetailUiModel = ((AssessmentBffViewState) repairConfirmAddressBffFragment.S().getI().getValue()).d;
                if (careServiceDetailUiModel != null && (assessment = careServiceDetailUiModel.l) != null && (priceUiModel = assessment.d) != null) {
                    str = priceUiModel.f61722b;
                }
                if (r10 != 0) {
                    r10 = str;
                    r9 = r10;
                }
                r10 = str;
                RepairRouter.f(activity2, r9);
                return;
            case 6:
                RepairConfirmAddressFragment repairConfirmAddressFragment = (RepairConfirmAddressFragment) obj2;
                ActivityResult activityResult2 = (ActivityResult) obj;
                RepairConfirmAddressFragment.Companion companion4 = RepairConfirmAddressFragment.M;
                activityResult2.getClass();
                Intent intent2 = activityResult2.f732c;
                if (intent2 != null && intent2.getBooleanExtra("CARE_SERVICE_PAYMENT_SUCCESS", false)) {
                    repairConfirmAddressFragment.Q();
                    FragmentActivity activity3 = repairConfirmAddressFragment.getActivity();
                    CareServiceIdUiModel.Companion companion5 = CareServiceIdUiModel.f64059c;
                    CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) repairConfirmAddressFragment.K.getF71699b();
                    String str5 = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
                    companion5.getClass();
                    if (str5 == null) {
                        str5 = CareServiceIdUiModel.d;
                    }
                    RepairRouter.j(activity3, str5);
                    return;
                }
                if (intent2 == null || !intent2.getBooleanExtra("CARE_SERVICE_PAYMENT_FAILED", false)) {
                    if (intent2 == null || !intent2.getBooleanExtra("CARE_SERVICE_PAYMENT_CANCEL", false)) {
                        return;
                    }
                    repairConfirmAddressFragment.Q().i(repairConfirmAddressFragment.getActivity());
                    return;
                }
                if (repairConfirmAddressFragment.getContext() != null) {
                    com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel careServiceDetailUiModel2 = ((AssessmentViewState) repairConfirmAddressFragment.R().getH().getValue()).d;
                    if (careServiceDetailUiModel2 != null) {
                        A = r9;
                        str4 = careServiceDetailUiModel2.f63982f;
                    }
                    r9 = str4 != null ? str4 : "";
                    com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel careServiceDetailUiModel3 = ((AssessmentViewState) repairConfirmAddressFragment.R().getH().getValue()).d;
                    A = PriceHelper.a(((AssessmentViewState) repairConfirmAddressFragment.R().getH().getValue()).f57356a, r9, careServiceDetailUiModel3 != null ? careServiceDetailUiModel3.f63983h : 0.0d);
                }
                A = r9;
                repairConfirmAddressFragment.Q();
                RepairRouter.f(repairConfirmAddressFragment.getActivity(), A);
                return;
            case 7:
                RepairDetailBffFragment repairDetailBffFragment = (RepairDetailBffFragment) obj2;
                ActivityResult activityResult3 = (ActivityResult) obj;
                RepairDetailBffFragment.Companion companion6 = RepairDetailBffFragment.P;
                activityResult3.getClass();
                Intent intent3 = activityResult3.f732c;
                if (intent3 != null && intent3.getBooleanExtra("CARE_SERVICE_PAYMENT_SUCCESS", false)) {
                    repairDetailBffFragment.Q();
                    FragmentActivity activity4 = repairDetailBffFragment.getActivity();
                    CareServiceIdUiModel.Companion companion7 = CareServiceIdUiModel.f64059c;
                    CareServiceShortUiModel careServiceShortUiModel = (CareServiceShortUiModel) repairDetailBffFragment.M.getF71699b();
                    String str6 = careServiceShortUiModel != null ? careServiceShortUiModel.f64063b : null;
                    companion7.getClass();
                    if (str6 == null) {
                        str6 = CareServiceIdUiModel.d;
                    }
                    RepairRouter.j(activity4, str6);
                    return;
                }
                if (intent3 == null || !intent3.getBooleanExtra("CARE_SERVICE_PAYMENT_FAILED", false)) {
                    if (intent3 != null && intent3.getBooleanExtra("CARE_SERVICE_PAYMENT_CANCEL", false)) {
                        repairDetailBffFragment.Q().i(repairDetailBffFragment.getActivity());
                        return;
                    }
                    if ((intent3 != null ? intent3.getStringExtra("SELECTED_CANCELLATION_REASON_ID") : null) != null) {
                        repairDetailBffFragment.R().D0(intent3 != null ? intent3.getStringExtra("SELECTED_CANCELLATION_REASON_ID") : null);
                        return;
                    }
                    return;
                }
                repairDetailBffFragment.Q();
                FragmentActivity activity5 = repairDetailBffFragment.getActivity();
                CareServiceDetailUiModel careServiceDetailUiModel4 = ((AssessmentBffViewState) repairDetailBffFragment.S().getI().getValue()).d;
                if (careServiceDetailUiModel4 != null && (assessment2 = careServiceDetailUiModel4.l) != null && (priceUiModel2 = assessment2.d) != null) {
                    str3 = priceUiModel2.f61722b;
                }
                RepairRouter.f(activity5, str3 != null ? str3 : "");
                return;
            case 8:
                RepairDetailsFragment repairDetailsFragment = (RepairDetailsFragment) obj2;
                ActivityResult activityResult4 = (ActivityResult) obj;
                RepairDetailsFragment.Companion companion8 = RepairDetailsFragment.P;
                activityResult4.getClass();
                Intent intent4 = activityResult4.f732c;
                if (intent4 != null && intent4.getBooleanExtra("CARE_SERVICE_PAYMENT_SUCCESS", false)) {
                    repairDetailsFragment.Q();
                    FragmentActivity activity6 = repairDetailsFragment.getActivity();
                    CareServiceIdUiModel.Companion companion9 = CareServiceIdUiModel.f64059c;
                    CareServiceUiModel careServiceUiModel = (CareServiceUiModel) repairDetailsFragment.M.getF71699b();
                    String str7 = careServiceUiModel != null ? careServiceUiModel.f63994b : null;
                    companion9.getClass();
                    if (str7 == null) {
                        str7 = CareServiceIdUiModel.d;
                    }
                    RepairRouter.j(activity6, str7);
                    return;
                }
                if (intent4 == null || !intent4.getBooleanExtra("CARE_SERVICE_PAYMENT_FAILED", false)) {
                    if (intent4 != null && intent4.getBooleanExtra("CARE_SERVICE_PAYMENT_CANCEL", false)) {
                        repairDetailsFragment.Q().i(repairDetailsFragment.getActivity());
                        return;
                    }
                    if ((intent4 != null ? intent4.getStringExtra("SELECTED_CANCELLATION_REASON_ID") : null) != null) {
                        repairDetailsFragment.R().D0(intent4 != null ? intent4.getStringExtra("SELECTED_CANCELLATION_REASON_ID") : null);
                        return;
                    }
                    return;
                }
                if (repairDetailsFragment.getContext() != null) {
                    com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel careServiceDetailUiModel5 = ((AssessmentViewState) repairDetailsFragment.S().getH().getValue()).d;
                    if (careServiceDetailUiModel5 != null) {
                        A2 = r9;
                        str2 = careServiceDetailUiModel5.f63982f;
                    }
                    r9 = str2 != null ? str2 : "";
                    com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel careServiceDetailUiModel6 = ((AssessmentViewState) repairDetailsFragment.S().getH().getValue()).d;
                    A2 = PriceHelper.a(((AssessmentViewState) repairDetailsFragment.S().getH().getValue()).f57356a, r9, careServiceDetailUiModel6 != null ? careServiceDetailUiModel6.f63983h : 0.0d);
                }
                A2 = r9;
                repairDetailsFragment.Q();
                RepairRouter.f(repairDetailsFragment.getActivity(), A2);
                return;
            case 15:
                StoryActivity storyActivity = (StoryActivity) obj2;
                ActivityResult activityResult5 = (ActivityResult) obj;
                StoryActivity.Companion companion10 = StoryActivity.t;
                activityResult5.getClass();
                if (activityResult5.f731b != -1 || (intentA = ServicesDestinationsKt.a(ServicesDestinations.ToCareServicesCreatePage.f64291a, storyActivity)) == null) {
                    return;
                }
                storyActivity.startActivity(intentA);
                return;
            default:
                TalkAuthCodeActivity talkAuthCodeActivity = (TalkAuthCodeActivity) obj2;
                ActivityResult activityResult6 = (ActivityResult) obj;
                int i4 = TalkAuthCodeActivity.m;
                Bundle bundle = new Bundle();
                Intent intent5 = activityResult6.f732c;
                int i5 = 2;
                if (intent5 == null || (i2 = activityResult6.f731b) == 0) {
                    talkAuthCodeActivity.v(new ClientError(ClientErrorCause.Cancelled, r10, i5, r10));
                    return;
                }
                if (i2 != -1) {
                    ct0.c();
                    return;
                }
                Bundle extras = intent5.getExtras();
                if (extras == null) {
                    talkAuthCodeActivity.v(new ClientError(ClientErrorCause.Unknown, "No result from KakaoTalk."));
                    return;
                }
                String string = extras.getString(talkAuthCodeActivity.f35836k);
                String string2 = extras.getString(talkAuthCodeActivity.l);
                if (Intrinsics.c(string, "access_denied")) {
                    talkAuthCodeActivity.v(new ClientError(ClientErrorCause.Cancelled, r10, i5, r10));
                    return;
                }
                if (string != null) {
                    AuthErrorCause authErrorCause = (AuthErrorCause) KakaoJson.f35885a.fromJson(string, (Type) AuthErrorCause.class);
                    if (authErrorCause == null) {
                        authErrorCause = AuthErrorCause.Unknown;
                    }
                    if (string2 == null) {
                        string2 = "no error description";
                    }
                    talkAuthCodeActivity.v(new AuthError(302, authErrorCause, new AuthErrorResponse(string, string2)));
                    return;
                }
                bundle.putParcelable("key.url", Uri.parse(extras.getString("com.kakao.sdk.talk.redirectUrl")));
                ResultReceiver resultReceiver = talkAuthCodeActivity.f35834i;
                if (resultReceiver == null) {
                    Intrinsics.h("resultReceiver");
                    throw null;
                }
                resultReceiver.send(-1, bundle);
                talkAuthCodeActivity.finish();
                talkAuthCodeActivity.overridePendingTransition(0, 0);
                return;
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void c() {
        WifiDeviceListFragment wifiDeviceListFragment = (WifiDeviceListFragment) this.f76063c;
        WifiDeviceListFragment.Companion companion = WifiDeviceListFragment.L;
        Callback.A();
        try {
            wifiDeviceListFragment.Q();
        } finally {
            Callback.B();
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object d(Task task) {
        CountDownLatch countDownLatch = (CountDownLatch) this.f76063c;
        ExecutorService executorService = Utils.f34575a;
        countDownLatch.countDown();
        return null;
    }

    public float e(float f2) {
        return ((State) this.f76063c).f11276k.getF11002b() * f2;
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        int i2 = this.f76062b;
        Object obj = this.f76063c;
        switch (i2) {
            case 20:
                return ((ClientHealthMetricsStore) obj).j();
            case 21:
                return Integer.valueOf(((EventStore) obj).M());
            case 22:
                ((Uploader) obj).f28075i.h();
                return null;
            default:
                WorkInitializer workInitializer = (WorkInitializer) obj;
                Iterator it = workInitializer.f28084b.U().iterator();
                while (it.hasNext()) {
                    workInitializer.f28085c.a((TransportContext) it.next(), 1);
                }
                return null;
        }
    }

    @Override // androidx.media3.container.ReorderingBufferQueue.OutputConsumer
    public void f(long j2, ParsableByteArray parsableByteArray) {
        CeaUtil.a(j2, parsableByteArray, ((SeiReader) this.f76063c).f17150c);
    }

    @Override // com.perfectcorp.perfectlib.ShadeFinder.ShadeFinderCallback
    public void onAnalyze(ShadeFinderData shadeFinderData, ShadeFinderQualityCheck shadeFinderQualityCheck) {
        try {
            ((ShadeFinder.ShadeFinderCallback) this.f76063c).onAnalyze(shadeFinderData, shadeFinderQualityCheck);
        } catch (Throwable th) {
            Log.e("ShadeFinder", "UncaughtException", th);
            Thread threadCurrentThread = Thread.currentThread();
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = threadCurrentThread.getUncaughtExceptionHandler();
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(threadCurrentThread, th);
            }
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WebView webView = (WebView) this.f76063c;
        view.getClass();
        if (windowInsetsCompat.o(8)) {
            webView.evaluateJavascript("\n                setTimeout(function() {\n                    if (document.activeElement) {\n                        document.activeElement.scrollIntoView(\n                            {behavior: \"smooth\", block: \"end\"}\n                        );\n                    }\n                }, 500);\n            ", null);
        }
        return windowInsetsCompat;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        ((ScheduledFuture) this.f76063c).cancel(false);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) throws IntentSender.SendIntentException {
        BaseActivity baseActivity = (BaseActivity) this.f76063c;
        if (exc instanceof ResolvableApiException) {
            ((ResolvableApiException) exc).f28974b.X1(baseActivity);
        } else {
            baseActivity.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
        }
    }

    @Override // com.sightcall.videoplayer.view.VideoPlayerBar.VisibilityCallback
    public void onPlayerBarShown() {
        ((VideoPlayerWrapper.VisibilityCallback) this.f76063c).onPlayerBarShown();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((tb0) this.f76063c).invoke(obj);
    }
}
