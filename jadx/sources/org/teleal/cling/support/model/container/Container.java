package org.teleal.cling.support.model.container;

import java.util.ArrayList;
import java.util.List;
import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DescMeta;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.WriteStatus;
import org.teleal.cling.support.model.item.Item;

/* JADX INFO: loaded from: classes5.dex */
public class Container extends DIDLObject {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Integer f78601k;
    public final List l;
    public final List m;
    public final ArrayList n;
    public List o;

    public Container(String str, Container container, String str2, String str3, DIDLObject.Class r21, Integer num) {
        this(str, container.f78569a, str2, str3, true, null, r21, new ArrayList(), new ArrayList(), new ArrayList(), num, false, new ArrayList(), new ArrayList(), new ArrayList());
    }

    public Container() {
        this.f78601k = null;
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new ArrayList();
        this.o = new ArrayList();
    }

    public Container(String str, Container container, String str2, String str3, DIDLObject.Class r21, Integer num, boolean z, List<DIDLObject.Class> list, List<DIDLObject.Class> list2, List<Item> list3) {
        this(str, container.f78569a, str2, str3, true, null, r21, new ArrayList(), new ArrayList(), new ArrayList(), num, z, list, list2, list3);
    }

    public Container(Container container) {
        super(container);
        this.f78601k = null;
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new ArrayList();
        this.o = new ArrayList();
        this.f78601k = container.f78601k;
        this.l = container.l;
        this.m = container.m;
        this.o = container.o;
    }

    public Container(String str, String str2, String str3, String str4, boolean z, WriteStatus writeStatus, DIDLObject.Class r7, List<Res> list, List<DIDLObject.Property> list2, List<DescMeta> list3) {
        super(str, str2, str3, str4, z, writeStatus, r7, list, list2, list3);
        this.f78601k = null;
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new ArrayList();
        this.o = new ArrayList();
    }

    public Container(String str, String str2, String str3, String str4, boolean z, WriteStatus writeStatus, DIDLObject.Class r7, List<Res> list, List<DIDLObject.Property> list2, List<DescMeta> list3, Integer num, boolean z2, List<DIDLObject.Class> list4, List<DIDLObject.Class> list5, List<Item> list6) {
        super(str, str2, str3, str4, z, writeStatus, r7, list, list2, list3);
        this.f78601k = null;
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new ArrayList();
        new ArrayList();
        this.f78601k = num;
        this.l = list4;
        this.m = list5;
        this.o = list6;
    }

    public Container(String str, String str2, String str3, String str4, DIDLObject.Class r21, Integer num) {
        this(str, str2, str3, str4, true, null, r21, new ArrayList(), new ArrayList(), new ArrayList(), num, false, new ArrayList(), new ArrayList(), new ArrayList());
    }

    public Container(String str, String str2, String str3, String str4, DIDLObject.Class r21, Integer num, boolean z, List<DIDLObject.Class> list, List<DIDLObject.Class> list2, List<Item> list3) {
        this(str, str2, str3, str4, true, null, r21, new ArrayList(), new ArrayList(), new ArrayList(), num, z, list, list2, list3);
    }
}
