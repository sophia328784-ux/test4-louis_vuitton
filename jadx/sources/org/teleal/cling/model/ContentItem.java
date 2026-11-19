package org.teleal.cling.model;

import org.teleal.cling.model.meta.Service;
import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.container.Container;
import org.teleal.cling.support.model.item.Item;

/* JADX INFO: loaded from: classes5.dex */
public class ContentItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DIDLObject f78371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f78373c;
    public final Boolean d;

    public ContentItem(Container container, Service service, Boolean bool) {
        this.d = Boolean.FALSE;
        this.f78371a = container;
        this.f78372b = container.f78569a;
        this.f78373c = Boolean.TRUE;
        this.d = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f78372b.equals(((ContentItem) obj).f78372b);
    }

    public final int hashCode() {
        return this.f78371a.f78569a.hashCode();
    }

    public final String toString() {
        if (this.d.booleanValue()) {
            return "Super Level";
        }
        boolean zBooleanValue = this.f78373c.booleanValue();
        DIDLObject dIDLObject = this.f78371a;
        if (!zBooleanValue) {
            return dIDLObject.f78571c;
        }
        return " " + dIDLObject.f78571c;
    }

    public ContentItem(String str, String str2) {
        this.d = Boolean.FALSE;
    }

    public ContentItem(Item item, Service service) {
        Boolean bool = Boolean.FALSE;
        this.d = bool;
        this.f78371a = item;
        this.f78372b = item.f78569a;
        this.f78373c = bool;
    }
}
