package com.linkplay.bonjour.manage;

import com.linkplay.bonjour.model.LinkPlayService;
import java.util.List;
import java.util.Timer;

/* JADX INFO: loaded from: classes2.dex */
public class CompareTimer extends Timer {
    private final List<LinkPlayService> services;

    public CompareTimer(List<LinkPlayService> list) {
        this.services = list;
    }

    public synchronized List<LinkPlayService> getUnConfirmedServices() {
        return this.services;
    }

    public synchronized boolean isEmpty() {
        return this.services.size() == 0;
    }

    public synchronized LinkPlayService remove(LinkPlayService linkPlayService) {
        List<LinkPlayService> list = this.services;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                LinkPlayService linkPlayService2 = this.services.get(size);
                if (linkPlayService2 != null && linkPlayService2.getServiceName() != null && linkPlayService2.getServiceName().equals(linkPlayService.getServiceName())) {
                    return this.services.remove(size);
                }
            }
        }
        return null;
    }
}
