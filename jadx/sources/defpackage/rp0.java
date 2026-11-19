package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.widget.ImageView;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.collection.MutableScatterSet;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.NestedScrollScope;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.RadioButtonKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.material3.tokens.RadioButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import androidx.lifecycle.viewmodel.b;
import androidx.navigation3.runtime.serialization.NavBackStackSerializer;
import androidx.savedstate.serialization.SavedStateConfiguration;
import androidx.savedstate.serialization.SavedStateDecoder;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.ILPDevicePlayer;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.group.LPMultiroomListener;
import com.linkplay.core.group.LPMultiroomManager;
import com.linkplay.core.listener.LPDevicePlayerListener;
import com.linkplay.lpmdpkit.observer.LPDeviceObserverManager;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.sightcall.livetranslation.settings.SettingsPanelCoordinator;
import com.sightcall.livetranslation.settings.SettingsPanelInteractorImpl;
import com.sightcall.pratik.livedata.SingleLiveEvent;
import com.sightcall.pratik.mappers.PushNotificationPayloadMappersKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.common.editorial.models.SlideShowItemUiModel;
import com.vuitton.android.presentation.databinding.FragmentSneakerScanTutorialStepBinding;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerScanTutorialScreenFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.TrunkSpeakerRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model.WifiTrunkDevice;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinations;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinationsKt;
import com.vuitton.android.presentation.screen.plp.activities.SkusPLPActivity;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl;
import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.models.SearchScreenViewState;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$StoreModeLevel2ScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$StoreModeLevel3ScreenKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL1UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL2UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL3UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.android.presentation.screenshot.observer.ScreenshotObserver;
import defpackage.aa0;
import defpackage.ct0;
import defpackage.hv0;
import defpackage.sm0;
import defpackage.st0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rp0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79593c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rp0(Object obj, Object obj2, int i2) {
        this.f79592b = i2;
        this.f79593c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r7v13 */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = 2;
        int i3 = 0;
        int i4 = 1;
        Object obj2 = 0;
        Throwable th = null;
        switch (this.f79592b) {
            case 0:
                Function2 function2 = (Function2) this.f79593c;
                ConsentUiModel.ChatConsentUiModel chatConsentUiModel = (ConsentUiModel.ChatConsentUiModel) this.d;
                Boolean bool = (Boolean) obj;
                bool.getClass();
                function2.invoke(chatConsentUiModel, bool);
                return Unit.f71739a;
            case 1:
                Function2 function3 = (Function2) this.f79593c;
                ConsentUiModel.LucieLabsConsentUiModel lucieLabsConsentUiModel = (ConsentUiModel.LucieLabsConsentUiModel) this.d;
                Boolean bool2 = (Boolean) obj;
                bool2.getClass();
                function3.invoke(lucieLabsConsentUiModel, bool2);
                return Unit.f71739a;
            case 2:
                ((MutableState) this.d).setValue(((Boolean) obj).booleanValue() ? 0 : ((ProductFiltersCategoryUiModel) this.f79593c).f62970a);
                return Unit.f71739a;
            case 3:
                return PushNotificationPayloadMappersKt.toMap$lambda$0$0((HashMap) this.f79593c, (Bundle) this.d, (String) obj);
            case 4:
                State state = (State) this.f79593c;
                State state2 = (State) this.d;
                DrawScope drawScope = (DrawScope) obj;
                float fU1 = drawScope.u1(RadioButtonKt.f7160c);
                long j2 = ((Color) state.getF10755b()).f8872a;
                float f2 = RadioButtonTokens.f7837c / 2.0f;
                Dp.Companion companion = Dp.f11004c;
                float f3 = fU1 / 2.0f;
                DrawScope.r0(drawScope, j2, drawScope.u1(f2) - f3, 0L, new Stroke(fU1, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null), 108);
                if (Dp.a(((Dp) state2.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM) > 0) {
                    DrawScope.r0(drawScope, ((Color) state.getF10755b()).f8872a, drawScope.u1(((Dp) state2.getF10755b()).f11006b) - f3, 0L, Fill.f9010a, 108);
                }
                return Unit.f71739a;
            case 5:
                Recomposer recomposer = (Recomposer) this.f79593c;
                Throwable th2 = (Throwable) this.d;
                Throwable th3 = (Throwable) obj;
                synchronized (recomposer.f8083c) {
                    if (th2 != null) {
                        if (th3 != null) {
                            try {
                                Throwable th4 = th3 instanceof CancellationException ? null : th3;
                                if (th4 != null) {
                                    ExceptionsKt.a(th2, th4);
                                }
                            } catch (Throwable th5) {
                                throw th5;
                            }
                        }
                        th = th2;
                    }
                    recomposer.f8084e = th;
                    recomposer.u.setValue(Recomposer.State.ShutDown);
                }
                return Unit.f71739a;
            case 6:
                ControlledComposition controlledComposition = (ControlledComposition) this.f79593c;
                MutableScatterSet mutableScatterSet = (MutableScatterSet) this.d;
                Recomposer.Companion companion2 = Recomposer.z;
                controlledComposition.t(obj);
                if (mutableScatterSet != null) {
                    mutableScatterSet.d(obj);
                }
                return Unit.f71739a;
            case 7:
                final b bVarA = ((ViewModelStoreProvider) this.f79593c).a(this.d);
                return new DisposableEffectResult() { // from class: androidx.lifecycle.viewmodel.compose.RememberViewModelStoreOwnerKt$rememberViewModelStoreOwner$lambda$2$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() throws Exception {
                        boolean zIsTerminated;
                        AutoCloseable autoCloseable = bVarA;
                        if (autoCloseable instanceof AutoCloseable) {
                            autoCloseable.close();
                            return;
                        }
                        if (!(autoCloseable instanceof ExecutorService)) {
                            if (autoCloseable instanceof TypedArray) {
                                ((TypedArray) autoCloseable).recycle();
                                return;
                            } else {
                                ct0.c();
                                return;
                            }
                        }
                        ExecutorService executorService = (ExecutorService) autoCloseable;
                        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                            return;
                        }
                        executorService.shutdown();
                        boolean z = false;
                        while (!zIsTerminated) {
                            try {
                                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                            } catch (InterruptedException unused) {
                                if (!z) {
                                    executorService.shutdownNow();
                                    z = true;
                                }
                            }
                        }
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                    }
                };
            case 8:
                final ViewModelStoreProvider viewModelStoreProvider = (ViewModelStoreProvider) this.f79593c;
                final Lifecycle lifecycle = (Lifecycle) this.d;
                final b bVarA2 = viewModelStoreProvider.a(ViewModelStoreProvider.ProviderMarkerKey.f13598a);
                return new DisposableEffectResult() { // from class: androidx.lifecycle.viewmodel.compose.RememberViewModelStoreProviderKt$rememberViewModelStoreProvider$lambda$3$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() throws Exception {
                        boolean zIsTerminated;
                        AutoCloseable autoCloseable = bVarA2;
                        if (autoCloseable instanceof AutoCloseable) {
                            autoCloseable.close();
                        } else if (autoCloseable instanceof ExecutorService) {
                            ExecutorService executorService = (ExecutorService) autoCloseable;
                            if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                                executorService.shutdown();
                                boolean z = false;
                                while (!zIsTerminated) {
                                    try {
                                        zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                                    } catch (InterruptedException unused) {
                                        if (!z) {
                                            executorService.shutdownNow();
                                            z = true;
                                        }
                                    }
                                }
                                if (z) {
                                    Thread.currentThread().interrupt();
                                }
                            }
                        } else {
                            if (!(autoCloseable instanceof TypedArray)) {
                                ct0.c();
                                return;
                            }
                            ((TypedArray) autoCloseable).recycle();
                        }
                        if (lifecycle.getF13454i().a(Lifecycle.State.CREATED)) {
                            viewModelStoreProvider.b();
                        }
                    }
                };
            case 9:
                Function1 function1 = (Function1) this.f79593c;
                AssessmentViewState assessmentViewState = (AssessmentViewState) this.d;
                ((Step) obj).getClass();
                function1.invoke(assessmentViewState.g);
                return Unit.f71739a;
            case 10:
                RoomDetailFragment roomDetailFragment = (RoomDetailFragment) this.f79593c;
                FragmentActivity fragmentActivity = (FragmentActivity) this.d;
                LPDevice lPDevice = (LPDevice) obj;
                RoomDetailFragment.Companion companion3 = RoomDetailFragment.L;
                lPDevice.getClass();
                if (roomDetailFragment.J == null) {
                    Intrinsics.h("trunkSpeakerRouter");
                    throw null;
                }
                String upnpUUID = lPDevice.getUpnpUUID();
                upnpUUID.getClass();
                TrunkSpeakerRouter.a(fragmentActivity, upnpUUID);
                return Unit.f71739a;
            case 11:
                final LPDevice lPDevice2 = (LPDevice) this.f79593c;
                RoomDetailFragment roomDetailFragment2 = (RoomDetailFragment) this.d;
                ((LPDevice) obj).getClass();
                lPDevice2.getClass();
                int size = LPDeviceManager.getInstance().getSlaveDevices(lPDevice2.getDeviceStatus().getUUID()).size();
                final WifiTrunkDevice.RoomSpeaker roomSpeaker = roomDetailFragment2.G;
                if (size > 0) {
                    roomSpeaker.getClass();
                    final st0 st0Var = new st0(roomDetailFragment2, i3);
                    final tt0 tt0Var = new tt0(roomDetailFragment2, lPDevice2, i3);
                    LPMultiroomManager.getInstance().deviceMultiroomWithDeviceList(CollectionsKt.O(lPDevice2), new LPMultiroomListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkRoomHelper$deleteMasterFromRoom$1
                        @Override // com.linkplay.core.group.LPMultiroomListener
                        public final void failed(Exception exc) {
                            exc.getClass();
                            tt0Var.mo47invoke();
                        }

                        @Override // com.linkplay.core.group.LPMultiroomListener
                        public final void success(String str) {
                            str.getClass();
                            LPDevice lPDevice3 = lPDevice2;
                            String ssid = lPDevice3.getDeviceStatus().getSSID();
                            ssid.getClass();
                            TrunkConfigHelper.b(lPDevice3, ssid, null, null);
                            WifiTrunkDevice.RoomSpeaker roomSpeaker2 = roomSpeaker;
                            ArrayList arrayList = roomSpeaker2.f56556c;
                            ArrayList arrayList2 = roomSpeaker2.f56556c;
                            int size2 = arrayList.size();
                            st0 st0Var2 = st0Var;
                            if (size2 < 2) {
                                st0Var2.invoke(null, null);
                                return;
                            }
                            Object obj3 = arrayList2.get(0);
                            obj3.getClass();
                            LPDevice lPDevice4 = (LPDevice) obj3;
                            List listSubList = arrayList2.subList(1, arrayList2.size());
                            listSubList.getClass();
                            TrunkRoomHelper.a(lPDevice4, listSubList, new sm0(st0Var2, lPDevice4, listSubList, 22), new hv0(tt0Var, 21));
                        }
                    });
                } else {
                    roomSpeaker.getClass();
                    final st0 st0Var2 = new st0(roomDetailFragment2, i4);
                    final tt0 tt0Var2 = new tt0(roomDetailFragment2, lPDevice2, i4);
                    LPMultiroomManager.getInstance().deviceMultiroomWithSlaveDeviceList(CollectionsKt.O(lPDevice2), null, new LPMultiroomListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkRoomHelper$deleteDeviceFromRoom$1
                        @Override // com.linkplay.core.group.LPMultiroomListener
                        public final void failed(Exception exc) {
                            exc.getClass();
                            tt0Var2.mo47invoke();
                        }

                        @Override // com.linkplay.core.group.LPMultiroomListener
                        public final void success(String str) {
                            str.getClass();
                            WifiTrunkDevice.RoomSpeaker roomSpeaker2 = roomSpeaker;
                            ArrayList arrayList = roomSpeaker2.f56556c;
                            ArrayList arrayList2 = new ArrayList();
                            for (Object obj3 : arrayList) {
                                if (!Intrinsics.c(((LPDevice) obj3).getUpnpUUID(), lPDevice2.getUpnpUUID())) {
                                    arrayList2.add(obj3);
                                }
                            }
                            st0Var2.invoke(roomSpeaker2.f56555b, arrayList2);
                        }
                    });
                }
                return Unit.f71739a;
            case 12:
                MutableWindowInsets mutableWindowInsets = (MutableWindowInsets) this.f79593c;
                float f4 = ScaffoldKt.f7171a;
                ((SnapshotMutableStateImpl) mutableWindowInsets.f7642a).setValue(WindowInsetsKt.g((WindowInsets) this.d, (WindowInsets) obj));
                return Unit.f71739a;
            case 13:
                final AppCompatActivity appCompatActivity = (AppCompatActivity) this.f79593c;
                final ScreenshotObserver screenshotObserver = (ScreenshotObserver) this.d;
                ((DisposableEffectScope) obj).getClass();
                appCompatActivity.getD().a(screenshotObserver);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screenshot.observer.ScreenshotListenerKt$ScreenshotListener$lambda$3$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        appCompatActivity.getD().d(screenshotObserver);
                    }
                };
            case 14:
                NestedScrollScope nestedScrollScope = (NestedScrollScope) this.f79593c;
                ScrollingLogic scrollingLogic = (ScrollingLogic) this.d;
                DragEvent.DragDelta dragDelta = (DragEvent.DragDelta) obj;
                float f5 = dragDelta.f4483b ? -1.0f : 1.0f;
                long j3 = dragDelta.f4482a;
                long jG = Offset.g(f5, scrollingLogic.d == Orientation.Horizontal ? Offset.a(j3, 1, Call.Parameters.DEFAULT_CAMERA_ZOOM) : Offset.a(j3, 2, Call.Parameters.DEFAULT_CAMERA_ZOOM));
                NestedScrollSource.f9260a.getClass();
                nestedScrollScope.a(NestedScrollSource.f9261b, jG);
                return Unit.f71739a;
            case 15:
                String str = (String) this.f79593c;
                State state3 = (State) this.d;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                if (((SearchScreenViewState) state3.getF10755b()).g.length() > 0) {
                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, str);
                }
                return Unit.f71739a;
            case 16:
                SearchViewModel searchViewModel = (SearchViewModel) this.f79593c;
                State state4 = (State) this.d;
                String str2 = (String) obj;
                str2.getClass();
                if (((SearchScreenViewState) state4.getF10755b()).g.length() > 0 && str2.length() == 0) {
                    searchViewModel.x7(new SearchTrackingUiModel.OnHitClearSearch(((SearchScreenViewState) state4.getF10755b()).g));
                }
                searchViewModel.X1(str2);
                return Unit.f71739a;
            case 17:
                NavBackStackSerializer navBackStackSerializer = (NavBackStackSerializer) this.f79593c;
                SavedStateConfiguration savedStateConfiguration = (SavedStateConfiguration) this.d;
                Bundle bundle = (Bundle) obj;
                bundle.getClass();
                savedStateConfiguration.getClass();
                return new SavedStateDecoder(bundle, savedStateConfiguration).D(navBackStackSerializer);
            case 18:
                return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0((SettingsPanelCoordinator) this.f79593c, (SettingsPanelInteractorImpl) this.d, (NucleusReducerBuilder) obj);
            case 19:
                return SingleLiveEvent.observe$lambda$0((SingleLiveEvent) this.f79593c, (Observer) this.d, obj);
            case 20:
                Function0 function0 = (Function0) this.f79593c;
                MutableState mutableState = (MutableState) this.d;
                String str3 = (String) obj;
                str3.getClass();
                mutableState.setValue(str3);
                function0.mo47invoke();
                return Unit.f71739a;
            case 21:
                PLPSkusViewModelImpl pLPSkusViewModelImpl = (PLPSkusViewModelImpl) this.f79593c;
                SkusPLPActivity skusPLPActivity = (SkusPLPActivity) this.d;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                SkusPLPActivity.Companion companion4 = SkusPLPActivity.p;
                plpProductUiModel.getClass();
                pLPSkusViewModelImpl.zc(((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62943a);
                skusPLPActivity.startActivity(PLPDestinationsKt.a(new PLPDestinations.PageFromPlp(plpProductUiModel, obj2, i2, obj2), skusPLPActivity));
                return Unit.f71739a;
            case 22:
                Function1 function4 = (Function1) this.f79593c;
                SlideShowItemUiModel slideShowItemUiModel = (SlideShowItemUiModel) this.d;
                ((Long) obj).getClass();
                function4.invoke(slideShowItemUiModel.d);
                return Unit.f71739a;
            case 23:
                FragmentSneakerScanTutorialStepBinding fragmentSneakerScanTutorialStepBinding = (FragmentSneakerScanTutorialStepBinding) this.f79593c;
                SneakerScanTutorialScreenFragment sneakerScanTutorialScreenFragment = (SneakerScanTutorialScreenFragment) this.d;
                SneakerScanTutorialScreenFragment.Companion companion5 = SneakerScanTutorialScreenFragment.L;
                ((ImageView) obj).getClass();
                ImageView imageView = fragmentSneakerScanTutorialStepBinding.d;
                Integer num = (Integer) sneakerScanTutorialScreenFragment.J.getF71699b();
                num.getClass();
                imageView.setImageResource(num.intValue());
                return Unit.f71739a;
            case 24:
                SocialLoginViewModel socialLoginViewModel = (SocialLoginViewModel) this.f79593c;
                Context context = (Context) this.d;
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    socialLoginViewModel.g7(ContextExtKt.b(context));
                } else {
                    socialLoginViewModel.z8();
                }
                return Unit.f71739a;
            case 25:
                final Ref$IntRef ref$IntRef = (Ref$IntRef) this.f79593c;
                final SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = (SpeakerTrunkEqualizerFragment) this.d;
                LPDevice lPDevice3 = (LPDevice) obj;
                SpeakerTrunkEqualizerFragment.Companion companion6 = SpeakerTrunkEqualizerFragment.M;
                lPDevice3.getClass();
                ILPDevicePlayer player = lPDevice3.getPlayer();
                if (player != null) {
                    player.setProgress(ref$IntRef.f71919b, new LPDevicePlayerListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1
                        @Override // com.linkplay.core.listener.LPDevicePlayerListener
                        public final void onFailure(Exception exc) {
                            exc.getClass();
                            LPDeviceObserverManager.getInstance().register(speakerTrunkEqualizerFragment);
                        }

                        @Override // com.linkplay.core.listener.LPDevicePlayerListener
                        public final void onSuccess(String str4) {
                            str4.getClass();
                            SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment2 = speakerTrunkEqualizerFragment;
                            FragmentActivity activity = speakerTrunkEqualizerFragment2.getActivity();
                            if (activity != null) {
                                activity.runOnUiThread(new aa0(speakerTrunkEqualizerFragment2, ref$IntRef, 25));
                            }
                        }
                    });
                }
                return Unit.f71739a;
            case 26:
                Function2 function5 = (Function2) this.f79593c;
                PagerState pagerState = (PagerState) this.d;
                Integer num2 = (Integer) obj;
                num2.intValue();
                float f6 = SpotlightScreenKt.f64602a;
                function5.invoke(Integer.valueOf(pagerState.k()), num2);
                return Unit.f71739a;
            case 27:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) this.f79593c;
                PSPStoreModeViewModel pSPStoreModeViewModel = (PSPStoreModeViewModel) this.d;
                ActivityResult activityResult2 = (ActivityResult) obj;
                activityResult2.getClass();
                int i5 = activityResult2.f731b;
                Intent intent = activityResult2.f732c;
                if (i5 == 0) {
                    String stringExtra = intent != null ? intent.getStringExtra("SEARCH_QUERY") : null;
                    if (stringExtra == null) {
                        stringExtra = "";
                    }
                    storeModeViewModel.mb(stringExtra, false);
                }
                if (i5 == -1) {
                    pSPStoreModeViewModel.Z(StoreModeContentUiModel.STORE);
                    String stringExtra2 = intent != null ? intent.getStringExtra("SEARCH_QUERY") : null;
                    if (stringExtra2 == null) {
                        stringExtra2 = "";
                    }
                    pSPStoreModeViewModel.X0(stringExtra2);
                    String stringExtra3 = intent != null ? intent.getStringExtra("SEARCH_QUERY") : null;
                    storeModeViewModel.mb(stringExtra3 != null ? stringExtra3 : "", true);
                }
                return Unit.f71739a;
            case 28:
                StoreModeCategoryL1UiModel storeModeCategoryL1UiModel = (StoreModeCategoryL1UiModel) this.f79593c;
                final Function1 function6 = (Function1) this.d;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                final List list = storeModeCategoryL1UiModel.f65044c;
                ComposableSingletons$StoreModeLevel2ScreenKt.f64867a.getClass();
                final ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$StoreModeLevel2ScreenKt.f64868b;
                lazyListScope.h(list.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel2ScreenKt$StoreModeLevel2Screen$lambda$4$0$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        list.get(((Number) obj3).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel2ScreenKt$StoreModeLevel2Screen$lambda$4$0$0$$inlined$itemsIndexed$default$3
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj3, Object obj4, Object obj5, Object obj6) {
                        int i6;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj3;
                        int iIntValue = ((Number) obj4).intValue();
                        Composer composer = (Composer) obj5;
                        int iIntValue2 = ((Number) obj6).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i6 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i6 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i6 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i6 & 1, (i6 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final StoreModeCategoryL2UiModel storeModeCategoryL2UiModel = (StoreModeCategoryL2UiModel) list.get(iIntValue);
                            composer.L(1176530927);
                            long j4 = LVAppDesignKitTheme.c(composer).f48361b.f48374a;
                            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                            Modifier.Companion companion7 = Modifier.Companion.f8607b;
                            Modifier modifierB = BackgroundKt.b(companion7, j4, rectangleShapeKt$RectangleShape$1);
                            final Function1 function7 = function6;
                            boolean zK = composer.K(function7) | composer.y(storeModeCategoryL2UiModel);
                            Object objX = composer.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel2ScreenKt$StoreModeLevel2Screen$3$1$1$1$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        function7.invoke(storeModeCategoryL2UiModel);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            CatalogRowKt.a(0, composer, ClickableKt.d(modifierB, false, null, null, (Function0) objX, 15), storeModeCategoryL2UiModel.f65046b);
                            if (iIntValue < CollectionsKt.F(list)) {
                                composer.L(1176870841);
                                composableLambdaImpl.invoke(composer, 6);
                                composer.F();
                            } else {
                                composer.L(1176943195);
                                SpacerKt.a(composer, SizeKt.o(companion7, LVAppDesignKitTheme.l(composer).f48415c));
                                composer.F();
                            }
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            default:
                StoreModeCategoryL2UiModel storeModeCategoryL2UiModel = (StoreModeCategoryL2UiModel) this.f79593c;
                final Function1 function7 = (Function1) this.d;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                final List list2 = storeModeCategoryL2UiModel.f65047c;
                ComposableSingletons$StoreModeLevel3ScreenKt.f64869a.getClass();
                final ComposableLambdaImpl composableLambdaImpl2 = ComposableSingletons$StoreModeLevel3ScreenKt.f64870b;
                lazyListScope2.h(list2.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        list2.get(((Number) obj3).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel3ScreenKt$StoreModeLevel3Screen$lambda$5$0$0$$inlined$itemsIndexed$default$3
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj3, Object obj4, Object obj5, Object obj6) {
                        int i6;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj3;
                        int iIntValue = ((Number) obj4).intValue();
                        Composer composer = (Composer) obj5;
                        int iIntValue2 = ((Number) obj6).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i6 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i6 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i6 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i6 & 1, (i6 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final StoreModeCategoryL3UiModel storeModeCategoryL3UiModel = (StoreModeCategoryL3UiModel) list2.get(iIntValue);
                            composer.L(147066473);
                            long j4 = LVAppDesignKitTheme.c(composer).f48361b.f48374a;
                            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                            Modifier.Companion companion7 = Modifier.Companion.f8607b;
                            Modifier modifierB = BackgroundKt.b(companion7, j4, rectangleShapeKt$RectangleShape$1);
                            final Function1 function8 = function7;
                            boolean zK = composer.K(function8) | composer.K(storeModeCategoryL3UiModel);
                            Object objX = composer.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel3ScreenKt$StoreModeLevel3Screen$3$1$1$1$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        function8.invoke(storeModeCategoryL3UiModel);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            CatalogRowKt.a(0, composer, ClickableKt.d(modifierB, false, null, null, (Function0) objX, 15), storeModeCategoryL3UiModel.f65049b);
                            if (iIntValue < CollectionsKt.F(list2)) {
                                composer.L(147406387);
                                composableLambdaImpl2.invoke(composer, 6);
                                composer.F();
                            } else {
                                composer.L(147478741);
                                SpacerKt.a(composer, SizeKt.o(companion7, LVAppDesignKitTheme.l(composer).f48415c));
                                composer.F();
                            }
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
        }
    }
}
