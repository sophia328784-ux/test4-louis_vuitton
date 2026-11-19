package com.sightcall.universal.di;

import android.content.Context;
import com.sightcall.libraries.network.NetworkConnector;
import com.sightcall.universal.CallComponent;
import com.sightcall.universal.ReferenceComponent;
import com.sightcall.universal.ar.UniversalAr;
import com.sightcall.universal.internal.ui.ScreenCastOverlay;
import com.sightcall.universal.internal.view.MyScreenshareConsumerView;
import com.sightcall.universal.scenario.steps.AgentUsecaseStep;
import com.sightcall.universal.scenario.steps.FetchReferenceStep;
import dagger.Component;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Component
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001J\b\u0010\u0010\u001a\u00020\u0011H&J\b\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001fH&R\u0014\u0010\u0002\u001a\u00020\u00038'X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078'X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078'X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006 À\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/di/SdkComponent;", "", "applicationContext", "Landroid/content/Context;", "getApplicationContext", "()Landroid/content/Context;", "mainScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "getMainScheduler", "()Lio/reactivex/rxjava3/core/Scheduler;", "ioScheduler", "getIoScheduler", "networkConnector", "Lcom/sightcall/libraries/network/NetworkConnector;", "getNetworkConnector", "()Lcom/sightcall/libraries/network/NetworkConnector;", "callComponent", "Lcom/sightcall/universal/CallComponent$Builder;", "referenceComponent", "Lcom/sightcall/universal/ReferenceComponent$Builder;", "inject", "", "universalAr", "Lcom/sightcall/universal/ar/UniversalAr;", "screenCastOverlay", "Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;", "myScreenshareConsumerView", "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;", "fetchReferenceStep", "Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;", "agentUsecaseStep", "Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
@SdkScope
public interface SdkComponent {
    CallComponent.Builder callComponent();

    @ApplicationContext
    Context getApplicationContext();

    @IOScheduler
    Scheduler getIoScheduler();

    @MainScheduler
    Scheduler getMainScheduler();

    NetworkConnector getNetworkConnector();

    void inject(UniversalAr universalAr);

    void inject(ScreenCastOverlay screenCastOverlay);

    void inject(MyScreenshareConsumerView myScreenshareConsumerView);

    void inject(AgentUsecaseStep agentUsecaseStep);

    void inject(FetchReferenceStep fetchReferenceStep);

    ReferenceComponent.Builder referenceComponent();
}
