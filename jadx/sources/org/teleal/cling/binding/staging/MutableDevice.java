package org.teleal.cling.binding.staging;

import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceDetails;
import org.teleal.cling.model.meta.Icon;
import org.teleal.cling.model.meta.ManufacturerDetails;
import org.teleal.cling.model.meta.ModelDetails;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.meta.UDAVersion;
import org.teleal.cling.model.types.DLNACaps;
import org.teleal.cling.model.types.DLNADoc;
import org.teleal.cling.model.types.DeviceType;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public class MutableDevice {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public UDN f78321a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public URL f78323c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f78324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f78325f;
    public URI g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f78326h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f78327i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f78328j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public URI f78329k;
    public String l;
    public String m;
    public URI n;
    public DLNACaps p;
    public String t;
    public String u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableUDAVersion f78322b = new MutableUDAVersion();
    public final ArrayList o = new ArrayList();
    public ArrayList q = new ArrayList();
    public ArrayList r = new ArrayList();
    public ArrayList s = new ArrayList();

    public final Device a(Device device, UDAVersion uDAVersion, URL url) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.s.iterator();
        while (it.hasNext()) {
            arrayList.add(((MutableDevice) it.next()).a(device, uDAVersion, url));
        }
        UDN udn = this.f78321a;
        DeviceType deviceTypeA = DeviceType.a(this.d);
        String str = this.f78324e;
        String str2 = this.t;
        String str3 = this.u;
        ManufacturerDetails manufacturerDetails = new ManufacturerDetails(this.f78325f, this.g);
        ModelDetails modelDetails = new ModelDetails(this.f78326h, this.f78327i, this.f78328j, this.f78329k);
        String str4 = this.l;
        String str5 = this.m;
        URI uri = this.n;
        ArrayList arrayList2 = this.o;
        DeviceDetails deviceDetails = new DeviceDetails(url, str, str2, str3, manufacturerDetails, modelDetails, str4, str5, uri, (DLNADoc[]) arrayList2.toArray(new DLNADoc[arrayList2.size()]), this.p);
        Icon[] iconArr = new Icon[this.q.size()];
        int i2 = 0;
        for (MutableIcon mutableIcon : this.q) {
            mutableIcon.getClass();
            iconArr[i2] = new Icon(mutableIcon.f78330a, mutableIcon.f78331b, mutableIcon.f78332c, mutableIcon.d, mutableIcon.f78333e);
            i2++;
        }
        Service[] serviceArrQ = device.q(this.r.size());
        Iterator it2 = this.r.iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            serviceArrQ[i3] = ((MutableService) it2.next()).a(device);
            i3++;
        }
        return device.o(udn, uDAVersion, deviceTypeA, deviceDetails, iconArr, serviceArrQ, arrayList);
    }
}
