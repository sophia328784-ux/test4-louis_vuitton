package org.teleal.cling.model.types;

import defpackage.tr;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class UDADeviceType extends DeviceType {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f78529e = Pattern.compile("urn:schemas-upnp-org:device:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*");

    public UDADeviceType(String str) {
        super("schemas-upnp-org", str, 1);
    }

    public static UDADeviceType b(String str) {
        Matcher matcher = f78529e.matcher(str);
        if (matcher.matches()) {
            return new UDADeviceType(matcher.group(1), Integer.valueOf(matcher.group(2)).intValue());
        }
        throw new InvalidValueException(tr.g("Can't parse UDA device type string (namespace/type/version): ", str));
    }

    public UDADeviceType(String str, int i2) {
        super("schemas-upnp-org", str, i2);
    }
}
