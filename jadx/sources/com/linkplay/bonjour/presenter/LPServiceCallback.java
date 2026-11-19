package com.linkplay.bonjour.presenter;

import com.linkplay.bonjour.model.LinkPlayService;

/* JADX INFO: loaded from: classes2.dex */
public interface LPServiceCallback {
    void LPServiceAdd(LinkPlayService linkPlayService);

    void LPServiceReady(LinkPlayService linkPlayService);

    void LPServiceRemove(LinkPlayService linkPlayService);

    void LPServiceUpdate(LinkPlayService linkPlayService);
}
