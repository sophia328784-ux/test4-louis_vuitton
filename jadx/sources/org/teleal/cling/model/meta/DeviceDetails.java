package org.teleal.cling.model.meta;

import java.net.URI;
import java.net.URL;
import java.util.logging.Logger;
import org.teleal.cling.model.Validatable;
import org.teleal.cling.model.types.DLNACaps;
import org.teleal.cling.model.types.DLNADoc;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceDetails implements Validatable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Logger f78450j = Logger.getLogger(DeviceDetails.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final URL f78451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ManufacturerDetails f78453c;
    public final ModelDetails d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f78454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f78455f;
    public final URI g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DLNADoc[] f78456h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DLNACaps f78457i;

    public DeviceDetails(URL url, String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, String str4, String str5, URI uri, DLNADoc[] dLNADocArr, DLNACaps dLNACaps) {
        this.f78451a = url;
        this.f78452b = str;
        this.f78453c = manufacturerDetails == null ? new ManufacturerDetails() : manufacturerDetails;
        this.d = modelDetails == null ? new ModelDetails() : modelDetails;
        this.f78454e = str4;
        this.f78455f = str5;
        this.g = uri;
        this.f78456h = dLNADocArr == null ? new DLNADoc[0] : dLNADocArr;
        this.f78457i = dLNACaps;
    }

    public DeviceDetails(String str, DLNADoc[] dLNADocArr, DLNACaps dLNACaps) {
        this((String) null, str, (String) null, (ManufacturerDetails) null, (ModelDetails) null, (String) null, (String) null, dLNADocArr, dLNACaps);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails) {
        this((URL) null, str, str2, str3, manufacturerDetails, (ModelDetails) null, (String) null, (String) null, (URI) null);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, DLNADoc[] dLNADocArr, DLNACaps dLNACaps) {
        this(null, str, str2, str3, manufacturerDetails, null, null, null, null, dLNADocArr, dLNACaps);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails) {
        this((URL) null, str, str2, str3, manufacturerDetails, modelDetails, (String) null, (String) null, (URI) null);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, DLNADoc[] dLNADocArr, DLNACaps dLNACaps) {
        this(null, str, str2, str3, manufacturerDetails, modelDetails, null, null, null, dLNADocArr, dLNACaps);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, String str4, String str5) {
        this((URL) null, str, str2, str3, manufacturerDetails, modelDetails, str4, str5, (URI) null);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, String str4, String str5, DLNADoc[] dLNADocArr, DLNACaps dLNACaps) {
        this(null, str, str2, str3, manufacturerDetails, modelDetails, str4, str5, null, dLNADocArr, dLNACaps);
    }

    public DeviceDetails(String str, String str2, String str3, URI uri) {
        this((URL) null, str, str2, str3, (ManufacturerDetails) null, (ModelDetails) null, (String) null, (String) null, uri);
    }

    public DeviceDetails(String str, String str2, String str3, URI uri, DLNADoc[] dLNADocArr, DLNACaps dLNACaps) {
        this(null, str, str2, str3, null, null, null, null, uri, dLNADocArr, dLNACaps);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, URI uri) {
        this((URL) null, str, str2, str3, manufacturerDetails, modelDetails, (String) null, (String) null, uri);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, URI uri, DLNADoc[] dLNADocArr, DLNACaps dLNACaps) {
        this(null, str, str2, str3, manufacturerDetails, modelDetails, null, null, uri, dLNADocArr, dLNACaps);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, String str4, String str5, URI uri) {
        this((URL) null, str, str2, str3, manufacturerDetails, modelDetails, str4, str5, uri);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, String str4, String str5, URI uri, DLNADoc[] dLNADocArr, DLNACaps dLNACaps) {
        this(null, str, str2, str3, manufacturerDetails, modelDetails, str4, str5, uri, dLNADocArr, dLNACaps);
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, String str4, String str5, String str6) throws IllegalArgumentException {
        this((URL) null, str, str2, str3, manufacturerDetails, modelDetails, str4, str5, URI.create(str6));
    }

    public DeviceDetails(String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, String str4, String str5, String str6, DLNADoc[] dLNADocArr, DLNACaps dLNACaps) throws IllegalArgumentException {
        this(null, str, str2, str3, manufacturerDetails, modelDetails, str4, str5, URI.create(str6), dLNADocArr, dLNACaps);
    }

    public DeviceDetails(URL url, String str, String str2, String str3, ManufacturerDetails manufacturerDetails, ModelDetails modelDetails, String str4, String str5, URI uri) {
        this(url, str, str2, str3, manufacturerDetails, modelDetails, str4, str5, uri, null, null);
    }

    public DeviceDetails(String str, String str2, String str3) {
        this((URL) null, str, str2, str3, (ManufacturerDetails) null, (ModelDetails) null, (String) null, (String) null, (URI) null);
    }
}
