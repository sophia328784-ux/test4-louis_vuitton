package org.teleal.cling.model.types;

import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceType {
    public static final Pattern d = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):device:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78510c;

    public DeviceType(String str, String str2, int i2) {
        this.f78510c = 1;
        if (str != null && !str.matches("[a-zA-Z0-9\\-\\.]+")) {
            md.n("Device type namespace contains illegal characters");
            throw null;
        }
        this.f78508a = str;
        if (str2 != null && !str2.matches("[a-zA-Z_0-9\\-]{1,64}")) {
            md.n("Device type suffix too long (64) or contains illegal characters");
            throw null;
        }
        this.f78509b = str2;
        this.f78510c = i2;
    }

    public static DeviceType a(String str) {
        UDADeviceType uDADeviceTypeB;
        String strReplaceAll = str.replaceAll("\\s", "");
        try {
            uDADeviceTypeB = UDADeviceType.b(strReplaceAll);
        } catch (Exception unused) {
            uDADeviceTypeB = null;
        }
        if (uDADeviceTypeB != null) {
            return uDADeviceTypeB;
        }
        Matcher matcher = d.matcher(strReplaceAll);
        if (matcher.matches()) {
            return new DeviceType(matcher.group(1), matcher.group(2), Integer.valueOf(matcher.group(3)).intValue());
        }
        throw new InvalidValueException(tr.g("Can't parse device type string (namespace/type/version): ", strReplaceAll));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DeviceType)) {
            return false;
        }
        DeviceType deviceType = (DeviceType) obj;
        return this.f78510c == deviceType.f78510c && this.f78508a.equals(deviceType.f78508a) && this.f78509b.equals(deviceType.f78509b);
    }

    public final int hashCode() {
        return fc.b(this.f78508a.hashCode() * 31, 31, this.f78509b) + this.f78510c;
    }

    public final String toString() {
        return "urn:" + this.f78508a + ":device:" + this.f78509b + ":" + this.f78510c;
    }

    public DeviceType(String str, String str2) {
        this(str, str2, 1);
    }
}
