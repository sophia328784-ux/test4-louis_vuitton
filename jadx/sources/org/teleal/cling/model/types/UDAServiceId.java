package org.teleal.cling.model.types;

import defpackage.tr;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class UDAServiceId extends ServiceId {
    public static final Pattern d = Pattern.compile("urn:upnp-org:serviceId:([a-zA-Z_0-9\\-:\\.]{1,64})");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f78530e = Pattern.compile("urn:schemas-upnp-org:service:([a-zA-Z_0-9\\-:\\.]{1,64})");

    public UDAServiceId(String str) {
        super("upnp-org", str);
    }

    public static UDAServiceId b(String str) {
        Matcher matcher = d.matcher(str);
        if (matcher.matches()) {
            return new UDAServiceId(matcher.group(1));
        }
        Matcher matcher2 = f78530e.matcher(str);
        if (matcher2.matches()) {
            return new UDAServiceId(matcher2.group(1));
        }
        throw new InvalidValueException(tr.g("Can't parse UDA service ID string (upnp-org/id): ", str));
    }
}
