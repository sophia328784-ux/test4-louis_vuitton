package defpackage;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.status.LPPlayChannel;
import com.linkplay.ota2.model.LPOTAConfiguration;
import com.linkplay.ota2.model.OTAStatus;
import com.linkplay.ota2.presenter.LPDeviceOTA;
import com.linkplay.ota2.presenter.LPOTAListener;
import com.networkbench.agent.impl.performance.coulometry.b.j;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerDetailPageBinding;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthUtilsKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkUpdateLoadingDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkConfigHelper;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.ComposableSingletons$TableSizeKt;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import defpackage.w21;
import defpackage.w61;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class iq0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71189c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f71191f;

    public /* synthetic */ iq0(AuthenticationViewModel authenticationViewModel, LinkHandler linkHandler, AppCompatActivity appCompatActivity, String str) {
        this.f71188b = 3;
        this.d = authenticationViewModel;
        this.f71190e = linkHandler;
        this.f71191f = appCompatActivity;
        this.f71189c = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FragmentActivity activity;
        FragmentManager supportFragmentManager;
        int i2 = this.f71188b;
        boolean z = false;
        Object obj2 = this.f71191f;
        Object obj3 = this.f71190e;
        Object obj4 = this.d;
        Object obj5 = this.f71189c;
        switch (i2) {
            case 0:
                String str = (String) obj5;
                String str2 = (String) obj4;
                String str3 = (String) obj3;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                if (!Intrinsics.c((Boolean) obj2, Boolean.TRUE)) {
                    str2 = str3;
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str + ", " + str2);
                return Unit.f71739a;
            case 1:
                final List list = (List) obj5;
                final MutableState mutableState = (MutableState) obj3;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                lazyListScope.a(new ComposableLambdaImpl(1767653477, true, new s8((List) obj4, mutableState, (State) obj2, 12)));
                lazyListScope.h(list.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.components.sizeguide.TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj6) {
                        list.get(((Number) obj6).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.sizeguide.TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj6;
                        final int iIntValue = ((Number) obj7).intValue();
                        Composer composer = (Composer) obj8;
                        int iIntValue2 = ((Number) obj9).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i3 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i3 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        boolean z2 = true;
                        if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            List list2 = (List) list.get(iIntValue);
                            composer.L(1746306442);
                            Dp.Companion companion = Dp.f11004c;
                            Modifier modifierS = SizeKt.s(Modifier.Companion.f8607b, 110.0f);
                            boolean z3 = false;
                            FillElement fillElement = SizeKt.f5052c;
                            final MutableState mutableState2 = mutableState;
                            Pair pair = (Pair) mutableState2.getF10755b();
                            Integer num = pair != null ? (Integer) pair.f71705b : null;
                            Pair pair2 = (Pair) mutableState2.getF10755b();
                            if (pair2 == null || ((Number) pair2.f71706c).intValue() != iIntValue) {
                                z2 = false;
                            }
                            if ((((i3 & 112) ^ 48) > 32 && composer.d(iIntValue)) || (i3 & 48) == 32) {
                                z3 = true;
                            }
                            Object objX = composer.x();
                            if (z3 || objX == Composer.Companion.f7939a) {
                                objX = new Function1<Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.sizeguide.TableSizeKt$TableSizes$1$1$1$2$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj10) {
                                        mutableState2.setValue(new Pair(Integer.valueOf(((Number) obj10).intValue()), Integer.valueOf(iIntValue)));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            TableSizeColumnKt.a(modifierS, fillElement, z2, num, list2, (Function1) objX, composer, 54);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                ComposableSingletons$TableSizeKt.f61428a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$TableSizeKt.f61429b, 3);
                return Unit.f71739a;
            case 2:
                Context context = (Context) obj;
                context.getClass();
                WebView webView = new WebView(context);
                ((MutableState) obj5).setValue(webView);
                WebSettings settings = webView.getSettings();
                settings.getClass();
                settings.setAllowFileAccess(false);
                settings.setAllowFileAccessFromFileURLs(false);
                settings.setAllowUniversalAccessFromFileURLs(false);
                settings.setJavaScriptEnabled(true);
                settings.setDomStorageEnabled(true);
                webView.setWebViewClient((WebViewClient) ((Function0) obj4).mo47invoke());
                webView.setWebChromeClient((WebChromeClient) ((Function0) obj3).mo47invoke());
                webView.resumeTimers();
                webView.addJavascriptInterface((AnalyticsWebInterface) obj2, "AnalyticsWebInterface");
                return webView;
            case 3:
                AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) obj4;
                String str4 = (String) obj5;
                String str5 = (String) obj;
                str5.getClass();
                if (WebViewAuthUtilsKt.a(str5, authenticationViewModel, (LinkHandler) obj3, (AppCompatActivity) obj2)) {
                    z = true;
                } else if (StringsKt.P(str5, str4, false)) {
                    WebViewAuthUtilsKt.b(authenticationViewModel, str5);
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                final WifiDeviceDetailFragment wifiDeviceDetailFragment = (WifiDeviceDetailFragment) obj5;
                FragmentTrunkSpeakerDetailPageBinding fragmentTrunkSpeakerDetailPageBinding = (FragmentTrunkSpeakerDetailPageBinding) obj4;
                LPDevice lPDevice = (LPDevice) obj3;
                final LPDevice lPDevice2 = (LPDevice) obj2;
                WifiDeviceDetailFragment.Companion companion = WifiDeviceDetailFragment.N;
                ((LPDevice) obj).getClass();
                Context context2 = wifiDeviceDetailFragment.getContext();
                if (context2 != null) {
                    TextView textView = fragmentTrunkSpeakerDetailPageBinding.m;
                    LPPlayChannel playChannel = lPDevice.getDeviceInfo().getPlayChannel();
                    playChannel.getClass();
                    textView.setText(TrunkConfigHelper.a(context2, playChannel));
                    if (new LPDeviceOTA(lPDevice2).checkUpdate() && (activity = wifiDeviceDetailFragment.getActivity()) != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
                        GenericBottomSheet.Companion companion2 = GenericBottomSheet.R;
                        String string = wifiDeviceDetailFragment.getString(R.string.speaker_trunk_detail_update_device_subtitle);
                        string.getClass();
                        GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(companion2, string, wifiDeviceDetailFragment.getString(R.string.btn_close), wifiDeviceDetailFragment.getString(R.string.speaker_trunk_detail_update_device_btn_label), 16);
                        genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$showUpdateBottomSheet$1$1
                            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                            public final void a() {
                                FragmentManager supportFragmentManager2;
                                WifiDeviceDetailFragment.Companion companion3 = WifiDeviceDetailFragment.N;
                                LPDeviceOTA lPDeviceOTA = new LPDeviceOTA(lPDevice2);
                                boolean zCheckUpdate = lPDeviceOTA.checkUpdate();
                                final WifiDeviceDetailFragment wifiDeviceDetailFragment2 = wifiDeviceDetailFragment;
                                if (!zCheckUpdate) {
                                    wifiDeviceDetailFragment2.P();
                                    return;
                                }
                                FragmentActivity activity2 = wifiDeviceDetailFragment2.getActivity();
                                if (activity2 != null && (supportFragmentManager2 = activity2.getSupportFragmentManager()) != null) {
                                    if (wifiDeviceDetailFragment2.G == null) {
                                        TrunkUpdateLoadingDialogFragment.H.getClass();
                                        wifiDeviceDetailFragment2.G = new TrunkUpdateLoadingDialogFragment();
                                    }
                                    TrunkUpdateLoadingDialogFragment trunkUpdateLoadingDialogFragment = wifiDeviceDetailFragment2.G;
                                    if (trunkUpdateLoadingDialogFragment != null && !trunkUpdateLoadingDialogFragment.isVisible()) {
                                        TrunkUpdateLoadingDialogFragment trunkUpdateLoadingDialogFragment2 = wifiDeviceDetailFragment2.G;
                                        trunkUpdateLoadingDialogFragment2.getClass();
                                        TrunkUpdateLoadingDialogFragment.H.getClass();
                                        trunkUpdateLoadingDialogFragment2.show(supportFragmentManager2, TrunkUpdateLoadingDialogFragment.I);
                                    }
                                }
                                LPOTAConfiguration configuraion = LPOTAConfiguration.parseConfiguraion(wifiDeviceDetailFragment2.getContext());
                                configuraion.firmWareDownloadTime = j.f37873a;
                                configuraion.mcuDownloadTime = j.f37873a;
                                configuraion.firmWareWriteTime = j.f37873a;
                                configuraion.mcuWriteTime = j.f37873a;
                                lPDeviceOTA.firmwareStartUpdate(configuraion, new LPOTAListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment$updateIfNeeded$1
                                    @Override // com.linkplay.ota2.presenter.LPOTAListener
                                    public final void otaFailed(OTAStatus oTAStatus) {
                                        oTAStatus.getClass();
                                        WifiDeviceDetailFragment wifiDeviceDetailFragment3 = wifiDeviceDetailFragment2;
                                        FragmentActivity activity3 = wifiDeviceDetailFragment3.getActivity();
                                        if (activity3 != null) {
                                            activity3.runOnUiThread(new w61(wifiDeviceDetailFragment3, 6));
                                        }
                                    }

                                    @Override // com.linkplay.ota2.presenter.LPOTAListener
                                    public final void otaStatusUpdated(OTAStatus oTAStatus) {
                                        oTAStatus.getClass();
                                        WifiDeviceDetailFragment wifiDeviceDetailFragment3 = wifiDeviceDetailFragment2;
                                        FragmentActivity activity3 = wifiDeviceDetailFragment3.getActivity();
                                        if (activity3 != null) {
                                            activity3.runOnUiThread(new w21(oTAStatus, wifiDeviceDetailFragment3, 19));
                                        }
                                    }

                                    @Override // com.linkplay.ota2.presenter.LPOTAListener
                                    public final void otaSuccess(LPDevice lPDevice3) {
                                        lPDevice3.getClass();
                                        WifiDeviceDetailFragment wifiDeviceDetailFragment3 = wifiDeviceDetailFragment2;
                                        FragmentActivity activity3 = wifiDeviceDetailFragment3.getActivity();
                                        if (activity3 != null) {
                                            activity3.runOnUiThread(new w61(wifiDeviceDetailFragment3, 5));
                                        }
                                    }
                                });
                            }
                        };
                        genericBottomSheetB.show(supportFragmentManager, GenericBottomSheet.S);
                    }
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ iq0(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f71188b = i2;
        this.f71189c = obj;
        this.d = obj2;
        this.f71190e = obj3;
        this.f71191f = obj4;
    }

    public /* synthetic */ iq0(String str, String str2, String str3, Boolean bool) {
        this.f71188b = 0;
        this.f71189c = str;
        this.f71191f = bool;
        this.d = str2;
        this.f71190e = str3;
    }
}
