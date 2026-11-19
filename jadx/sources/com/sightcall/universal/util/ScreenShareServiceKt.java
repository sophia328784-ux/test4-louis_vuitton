package com.sightcall.universal.util;

import android.content.Context;
import android.text.TextUtils;
import com.sightcall.common.DataChannelAction;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.internal.ui.ScreenCastOverlay;
import com.sightcall.universal.internal.ui.ScreenshareProducerMode;
import com.sightcall.universal.internal.util.DelayedStopShareRestartVideo;
import com.sightcall.universal.model.CallParameters;
import com.sightcall.universal.model.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.DataChannelModule;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.ScreenshareModule;
import net.rtccloud.sdk.ScreenshareProducer;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a8\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b\u001a(\u0010\f\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b¨\u0006\r"}, d2 = {"stopScreenCast", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "call", "Lnet/rtccloud/sdk/Call;", "session", "Lcom/sightcall/universal/model/Session;", "dc", "Lnet/rtccloud/sdk/DataChannelModule;", "listener", "Lkotlin/Function0;", "resumePendingScreenShareOrStop", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ScreenShareServiceKt {
    public static final void resumePendingScreenShareOrStop(Call call, Session session, Function0<Unit> function0) {
        call.getClass();
        session.getClass();
        ScreenshareModule screenshareModuleScreenshare = call.screenshare();
        screenshareModuleScreenshare.getClass();
        boolean zIsEmpty = TextUtils.isEmpty(session.parameters.screenshareWebUrl);
        CallParameters callParameters = session.parameters;
        if (zIsEmpty) {
            callParameters.screenshareProducerMode = null;
            if (callParameters.restartVideoAfterPicture) {
                callParameters.restartVideoAfterPicture = false;
                if (!call.video().isSending()) {
                    Rtcc.instance().bus().register(new DelayedStopShareRestartVideo(call));
                }
            }
            screenshareModuleScreenshare.releaseProducer();
            screenshareModuleScreenshare.stop();
            CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onScreencastStopped(session);
        } else {
            callParameters.screenshareProducerMode = ScreenshareProducerMode.WEB;
        }
        if (function0 != null) {
            function0.mo47invoke();
        }
    }

    public static /* synthetic */ void resumePendingScreenShareOrStop$default(Call call, Session session, Function0 function0, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            function0 = null;
        }
        resumePendingScreenShareOrStop(call, session, function0);
    }

    public static final void stopScreenCast(Context context, Call call, Session session, DataChannelModule dataChannelModule, Function0<Unit> function0) {
        context.getClass();
        call.getClass();
        session.getClass();
        dataChannelModule.getClass();
        ScreenshareModule screenshareModuleScreenshare = call.screenshare();
        screenshareModuleScreenshare.getClass();
        ScreenshareProducer screenshareProducerProducer = screenshareModuleScreenshare.producer();
        boolean zIsSending = screenshareModuleScreenshare.isSending();
        ScreenshareProducerMode screenshareProducerMode = session.parameters.screenshareProducerMode;
        if (!zIsSending || !(screenshareProducerProducer instanceof ScreenCastOverlay) || screenshareProducerMode != ScreenshareProducerMode.SCREEN) {
            DataChannelAction.STOPPED_SCREENCAST.send(dataChannelModule);
            return;
        }
        ScreenCastOverlay.unload(context);
        session.parameters.screenshareProducerMode = null;
        resumePendingScreenShareOrStop(call, session, function0);
    }

    public static /* synthetic */ void stopScreenCast$default(Context context, Call call, Session session, DataChannelModule dataChannelModule, Function0 function0, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            function0 = null;
        }
        stopScreenCast(context, call, session, dataChannelModule, function0);
    }
}
