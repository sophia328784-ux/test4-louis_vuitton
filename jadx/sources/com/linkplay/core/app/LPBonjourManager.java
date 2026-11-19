package com.linkplay.core.app;

import android.content.Context;
import com.linkplay.bonjour.model.LinkPlayService;
import com.linkplay.bonjour.presenter.AppLifeCycle;
import com.linkplay.bonjour.presenter.LPServiceCallback;
import com.linkplay.bonjour.presenter.LPServiceManager;
import com.linkplay.bonjour.utils.BonjourLog;
import com.linkplay.core.clingx.LPSearchControlPoint;
import h.a;

/* JADX INFO: loaded from: classes2.dex */
public class LPBonjourManager implements LPServiceCallback, AppLifeCycle.AppLifeCycleCallback {
    LPServiceManager serviceManager;

    public LPBonjourManager(Context context) {
        if (this.serviceManager == null) {
            this.serviceManager = new LPServiceManager(context, this);
        }
        AppLifeCycle.monitorLifeCycle(context, this);
    }

    @Override // com.linkplay.bonjour.presenter.LPServiceCallback
    public void LPServiceAdd(LinkPlayService linkPlayService) {
        a aVarA;
        if (!linkPlayService.getUuid().toLowerCase().startsWith("uuid:") || (aVarA = com.android.wiimu.service.online_service.util.a.a().a(linkPlayService)) == null) {
            return;
        }
        com.android.wiimu.service.online_service.util.a.a().b(aVarA);
    }

    @Override // com.linkplay.bonjour.presenter.LPServiceCallback
    public void LPServiceReady(LinkPlayService linkPlayService) {
    }

    @Override // com.linkplay.bonjour.presenter.LPServiceCallback
    public void LPServiceRemove(LinkPlayService linkPlayService) {
        if (linkPlayService == null) {
            return;
        }
        LPSearchControlPoint.getInstance().getLPBrowseListener().deviceRemove(linkPlayService.getUuid());
    }

    @Override // com.linkplay.bonjour.presenter.LPServiceCallback
    public void LPServiceUpdate(LinkPlayService linkPlayService) {
        a aVarA;
        if (!linkPlayService.getUuid().toLowerCase().startsWith("uuid:") || (aVarA = com.android.wiimu.service.online_service.util.a.a().a(linkPlayService)) == null) {
            return;
        }
        com.android.wiimu.service.online_service.util.a.a().b(aVarA);
    }

    @Override // com.linkplay.bonjour.presenter.AppLifeCycle.AppLifeCycleCallback
    public void runningBackGround() {
        LPServiceManager lPServiceManager = this.serviceManager;
        if (lPServiceManager != null) {
            lPServiceManager.runningBackGround();
        }
    }

    @Override // com.linkplay.bonjour.presenter.AppLifeCycle.AppLifeCycleCallback
    public void runningForeGround() {
        LPServiceManager lPServiceManager = this.serviceManager;
        if (lPServiceManager != null) {
            lPServiceManager.runningForeGround();
        }
    }

    public void setLogCallback(BonjourLog.BonjourLogCallback bonjourLogCallback) {
        LPServiceManager lPServiceManager = this.serviceManager;
        if (lPServiceManager != null) {
            lPServiceManager.setLogCallback(bonjourLogCallback);
        }
    }

    public void start(String str) {
        LPServiceManager lPServiceManager = this.serviceManager;
        if (lPServiceManager != null) {
            lPServiceManager.start(str);
        }
    }

    public void stop() {
        LPServiceManager lPServiceManager = this.serviceManager;
        if (lPServiceManager != null) {
            lPServiceManager.stop();
        }
    }
}
