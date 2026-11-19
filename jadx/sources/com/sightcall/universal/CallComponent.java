package com.sightcall.universal;

import android.content.Context;
import android.view.ViewGroup;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.advancedannotations.DaggerAdvancedAnnotationsComponent;
import com.sightcall.libraries.network.NetworkConnector;
import com.sightcall.universal.di.MainScheduler;
import com.sightcall.universal.internal.ui.CallActivity;
import com.sightcall.universal.internal.ui.ScreenCastOverlay;
import com.sightcall.universal.internal.view.MyScreenshareConsumerView;
import com.sightcall.universal.internal.view.MyScreenshareProducerWebView;
import com.sightcall.universal.internal.view.MyVideoConsumerView;
import com.sightcall.universal.internal.view.MyVideoProducerCameraView;
import com.sightcall.universal.internal.view.MyVideoProducerWrapper;
import com.sightcall.universal.internal.view.ProgressivexImageView;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.scenario.steps.CallStep;
import com.sightcall.universal.util.AdvancedAnnotationsWrapperImpl;
import dagger.BindsInstance;
import dagger.Provides;
import dagger.Subcomponent;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Named;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Subcomponent
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001:\u0002\u001a\u001bJ\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u001cÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/CallComponent;", "", "advancedAnnotationsAPI", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;", "getAdvancedAnnotationsAPI", "()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;", "inject", "", "myVideoProducerCameraView", "Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;", "progressivexImageView", "Lcom/sightcall/universal/internal/view/ProgressivexImageView;", "callActivity", "Lcom/sightcall/universal/internal/ui/CallActivity;", "myVideoConsumerView", "Lcom/sightcall/universal/internal/view/MyVideoConsumerView;", "myVideoProducerWrapper", "Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;", "myScreenshareConsumerView", "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;", "myScreenshareProducerWebView", "Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;", "screenCastOverlay", "Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;", "callStep", "Lcom/sightcall/universal/scenario/steps/CallStep;", "Builder", "Module", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
@CallScope
public interface CallComponent {

    @Subcomponent.Builder
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH'J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH'J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fH'J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eH'J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010H'¨\u0006\u0011À\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/CallComponent$Builder;", "", "build", "Lcom/sightcall/universal/CallComponent;", "senderIdGetter", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;", "initialSenderColor", "senderColor", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;", "newAnnotationSender", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;", "stateHandler", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;", "settingsUrl", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;", "sessionConfig", "Lcom/sightcall/universal/model/Config;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Builder {
        CallComponent build();

        @BindsInstance
        Builder initialSenderColor(AdvancedAnnotationsAPI.InitialSenderColor senderColor);

        @BindsInstance
        Builder newAnnotationSender(AdvancedAnnotationsAPI.MessageSender newAnnotationSender);

        @BindsInstance
        Builder senderIdGetter(AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter);

        @BindsInstance
        Builder sessionConfig(Config sessionConfig);

        @BindsInstance
        Builder settingsUrl(AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl settingsUrl);

        @BindsInstance
        Builder stateHandler(AdvancedAnnotationsAPI.StateHandler stateHandler);
    }

    @Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0001¢\u0006\u0002\b\fJ\u001d\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0001¢\u0006\u0002\b\u0013JJ\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0001\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u0010%\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007¨\u0006'"}, d2 = {"Lcom/sightcall/universal/CallComponent$Module;", "", "<init>", "()V", "provideCallCoordinator", "Lcom/sightcall/universal/CallCoordinatorImpl;", "component", "Lcom/sightcall/universal/CallComponent;", "provideCallCoordinator$sdk_installedRelease", "provideCoordinator", "Lcom/sightcall/universal/CallCoordinator;", "coordinator", "provideCoordinator$sdk_installedRelease", "provideAdvancedAnnotationTouchWrapper", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;", "advancedAnnotationsAPI", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;", "sessionConfig", "Lcom/sightcall/universal/model/Config;", "provideAdvancedAnnotationTouchWrapper$sdk_installedRelease", "advancedAnnotationsApi", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "mainScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "networkConnector", "Lcom/sightcall/libraries/network/NetworkConnector;", "senderColor", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;", "senderIdGetter", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;", "newAnnotationSender", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;", "stateHandler", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;", "settingsUrl", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;", "advancedAnnotationsContainer", "Landroid/view/ViewGroup;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @dagger.Module
    public static final class Module {
        @Provides
        @CallScope
        public final AdvancedAnnotationsAPI advancedAnnotationsApi(Context context, @MainScheduler Scheduler mainScheduler, NetworkConnector networkConnector, AdvancedAnnotationsAPI.InitialSenderColor senderColor, AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter, AdvancedAnnotationsAPI.MessageSender newAnnotationSender, AdvancedAnnotationsAPI.StateHandler stateHandler, AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl settingsUrl) {
            context.getClass();
            mainScheduler.getClass();
            networkConnector.getClass();
            senderColor.getClass();
            senderIdGetter.getClass();
            newAnnotationSender.getClass();
            stateHandler.getClass();
            settingsUrl.getClass();
            return DaggerAdvancedAnnotationsComponent.builder().context(context).senderIdGetter(senderIdGetter).mainScheduler(mainScheduler).messageSender(newAnnotationSender).networkConnector(networkConnector).initialSenderColor(senderColor).stateHandler(stateHandler).url(settingsUrl).build().getApi();
        }

        @Provides
        @CallScope
        @Named
        public final ViewGroup advancedAnnotationsContainer(AdvancedAnnotationsAPI advancedAnnotationsAPI) {
            advancedAnnotationsAPI.getClass();
            return advancedAnnotationsAPI.getContainer();
        }

        @Provides
        @CallScope
        public final AdvancedAnnotationsWrapper provideAdvancedAnnotationTouchWrapper$sdk_installedRelease(AdvancedAnnotationsAPI advancedAnnotationsAPI, Config sessionConfig) {
            advancedAnnotationsAPI.getClass();
            sessionConfig.getClass();
            return new AdvancedAnnotationsWrapperImpl(advancedAnnotationsAPI, sessionConfig);
        }

        @Provides
        @CallScope
        public final CallCoordinatorImpl provideCallCoordinator$sdk_installedRelease(CallComponent component) {
            component.getClass();
            return new CallCoordinatorImpl(component);
        }

        @Provides
        @CallScope
        public final CallCoordinator provideCoordinator$sdk_installedRelease(CallCoordinatorImpl coordinator) {
            coordinator.getClass();
            return coordinator;
        }
    }

    AdvancedAnnotationsAPI getAdvancedAnnotationsAPI();

    void inject(CallActivity callActivity);

    void inject(ScreenCastOverlay screenCastOverlay);

    void inject(MyScreenshareConsumerView myScreenshareConsumerView);

    void inject(MyScreenshareProducerWebView myScreenshareProducerWebView);

    void inject(MyVideoConsumerView myVideoConsumerView);

    void inject(MyVideoProducerCameraView myVideoProducerCameraView);

    void inject(MyVideoProducerWrapper myVideoProducerWrapper);

    void inject(ProgressivexImageView progressivexImageView);

    void inject(CallStep callStep);
}
