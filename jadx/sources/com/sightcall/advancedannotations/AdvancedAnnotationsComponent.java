package com.sightcall.advancedannotations;

import android.content.Context;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.libraries.network.NetworkConnector;
import dagger.BindsInstance;
import dagger.Component;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Component
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001:\u0001\u0006R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent;", "", "api", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;", "getApi", "()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;", "Builder", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AdvancedAnnotationsScope
public interface AdvancedAnnotationsComponent {

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0010\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tH'J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH'J\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rH'J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH'J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H'J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014H'¨\u0006\u0015À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;", "", "build", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "mainScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;", "networkConnector", "Lcom/sightcall/libraries/network/NetworkConnector;", "messageSender", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;", "stateHandler", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;", "senderIdGetter", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;", "initialSenderColor", "color", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Component.Builder
    public interface Builder {
        AdvancedAnnotationsComponent build();

        @BindsInstance
        Builder context(Context context);

        @BindsInstance
        Builder initialSenderColor(AdvancedAnnotationsAPI.InitialSenderColor color);

        @BindsInstance
        Builder mainScheduler(Scheduler mainScheduler);

        @BindsInstance
        Builder messageSender(AdvancedAnnotationsAPI.MessageSender messageSender);

        @BindsInstance
        Builder networkConnector(NetworkConnector networkConnector);

        @BindsInstance
        Builder senderIdGetter(AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter);

        @BindsInstance
        Builder stateHandler(AdvancedAnnotationsAPI.StateHandler stateHandler);

        @BindsInstance
        Builder url(AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl url);
    }

    AdvancedAnnotationsAPI getApi();
}
