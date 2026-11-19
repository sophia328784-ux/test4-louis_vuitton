package org.teleal.cling.support.contentdirectory.ui;

import android.app.Activity;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import defpackage.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Logger;
import k.a;
import org.teleal.cling.model.ContentItem;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.ErrorCode;
import org.teleal.cling.support.contentdirectory.callback.Browse;
import org.teleal.cling.support.model.BrowseFlag;
import org.teleal.cling.support.model.DIDLContent;
import org.teleal.cling.support.model.SortCriterion;
import org.teleal.cling.support.model.container.Container;
import org.teleal.cling.support.model.item.Item;

/* JADX INFO: loaded from: classes5.dex */
public class ContentBrowseActionCallback extends Browse {
    private static Logger log = Logger.getLogger(ContentBrowseActionCallback.class.getName());
    private Activity activity;
    private Container container;
    private ArrayAdapter<ContentItem> listAdapter;
    private Container m_ParentContainer;
    private BaseAdapter m_myAdapter;
    private Service service;

    public ContentBrowseActionCallback(Activity activity, Service service, Container container, ArrayAdapter<ContentItem> arrayAdapter, Container container2, BaseAdapter baseAdapter) {
        super(service, container.f78569a, BrowseFlag.DIRECT_CHILDREN, Browse.CAPS_WILDCARD, 0L, null, new SortCriterion(true, "dc:title"));
        this.activity = activity;
        this.service = service;
        this.container = container;
        this.listAdapter = arrayAdapter;
        this.m_ParentContainer = container2;
        this.m_myAdapter = baseAdapter;
    }

    @Override // org.teleal.cling.controlpoint.ActionCallback
    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
    }

    @Override // org.teleal.cling.support.contentdirectory.callback.Browse
    public void received(final ActionInvocation actionInvocation, final DIDLContent dIDLContent) {
        log.fine("Received browse action DIDL descriptor, creating tree nodes");
        HashMap map = a.f71507a;
        this.activity.runOnUiThread(new Runnable() { // from class: org.teleal.cling.support.contentdirectory.ui.ContentBrowseActionCallback.1
            @Override // java.lang.Runnable
            public void run() {
                ContentBrowseActionCallback contentBrowseActionCallback;
                try {
                    ContentBrowseActionCallback.this.listAdapter.clear();
                    ContentBrowseActionCallback contentBrowseActionCallback2 = ContentBrowseActionCallback.this;
                    Container container = contentBrowseActionCallback2.m_ParentContainer;
                    if (container != null) {
                        contentBrowseActionCallback2.listAdapter.add(new ContentItem(container, contentBrowseActionCallback2.service, Boolean.TRUE));
                    }
                    for (Container container2 : dIDLContent.f78566a) {
                        ContentBrowseActionCallback.log.fine("add child container " + container2.f78571c);
                        HashMap map2 = a.f71507a;
                        ContentBrowseActionCallback contentBrowseActionCallback3 = ContentBrowseActionCallback.this;
                        contentBrowseActionCallback3.listAdapter.add(new ContentItem(container2, contentBrowseActionCallback3.service, Boolean.FALSE));
                    }
                    ArrayList arrayList = dIDLContent.f78567b;
                    arrayList.size();
                    HashMap map3 = a.f71507a;
                    int i2 = 0;
                    while (true) {
                        int size = arrayList.size();
                        contentBrowseActionCallback = ContentBrowseActionCallback.this;
                        if (i2 >= size) {
                            break;
                        }
                        contentBrowseActionCallback.listAdapter.insert(new ContentItem((Item) arrayList.get(i2), ContentBrowseActionCallback.this.service), i2);
                        String str = ((Item) arrayList.get(i2)).f78571c;
                        HashMap map4 = a.f71507a;
                        i2++;
                    }
                    contentBrowseActionCallback.listAdapter.getCount();
                    HashMap map5 = a.f71507a;
                    if (ContentBrowseActionCallback.this.m_myAdapter != null) {
                        ContentBrowseActionCallback.this.m_myAdapter.notifyDataSetChanged();
                    }
                } catch (Exception e2) {
                    ContentBrowseActionCallback.log.fine("Creating DIDL tree nodes failed: " + e2);
                    e2.getMessage();
                    HashMap map6 = a.f71507a;
                    actionInvocation.d = new ActionException(ErrorCode.ACTION_FAILED, cj.j("Can't create list childs: ", e2), e2);
                    ContentBrowseActionCallback.this.failure(actionInvocation, null);
                }
            }
        });
    }

    @Override // org.teleal.cling.support.contentdirectory.callback.Browse
    public void updateStatus(Browse.Status status) {
    }
}
