package org.teleal.cling.support.contentdirectory.ui;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Logger;
import k.a;
import org.teleal.cling.model.ContentItem;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.support.contentdirectory.callback.Browse;
import org.teleal.cling.support.model.BrowseFlag;
import org.teleal.cling.support.model.DIDLContent;
import org.teleal.cling.support.model.SortCriterion;
import org.teleal.cling.support.model.container.Container;
import org.teleal.cling.support.model.item.Item;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ContentBrowseActionCallbackImpl extends Browse {
    private static Logger log = Logger.getLogger(ContentBrowseActionCallback.class.getName());
    private Service service;

    public ContentBrowseActionCallbackImpl(Service service, int i2, int i3, Container container) {
        super(service, container.f78569a, BrowseFlag.DIRECT_CHILDREN, Browse.CAPS_WILDCARD, i2, Long.valueOf(Long.parseLong(i3 + "")), new SortCriterion(true, "dc:title"));
        this.service = service;
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
    }

    public abstract void onReceiveCallback(ArrayList<ContentItem> arrayList);

    @Override // org.teleal.cling.support.contentdirectory.callback.Browse
    public void received(ActionInvocation actionInvocation, DIDLContent dIDLContent) {
        log.fine("Received browse action DIDL descriptor, creating tree nodes");
        ArrayList<ContentItem> arrayList = new ArrayList<>();
        try {
            for (Container container : dIDLContent.f78566a) {
                log.fine("add child container " + container.f78571c);
                arrayList.add(new ContentItem(container, this.service, Boolean.FALSE));
            }
            dIDLContent.f78566a.size();
            dIDLContent.f78567b.size();
            HashMap map = a.f71507a;
            ArrayList arrayList2 = new ArrayList();
            for (Item item : dIDLContent.f78567b) {
                log.fine("add child item" + item.f78571c);
                arrayList2.add(new ContentItem(item, this.service));
            }
            arrayList.addAll(arrayList2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        onReceiveCallback(arrayList);
    }

    @Override // org.teleal.cling.support.contentdirectory.callback.Browse
    public void updateStatus(Browse.Status status) {
    }

    public ContentBrowseActionCallbackImpl(Service service, Container container) {
        super(service, container.f78569a, BrowseFlag.DIRECT_CHILDREN, Browse.CAPS_WILDCARD, 0L, null, new SortCriterion(true, "dc:title"));
        this.service = service;
    }
}
