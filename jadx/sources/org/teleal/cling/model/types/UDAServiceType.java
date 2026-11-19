package org.teleal.cling.model.types;

import defpackage.tr;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class UDAServiceType extends ServiceType {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f78531e = Pattern.compile("urn:schemas-upnp-org:service:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*");

    public UDAServiceType(String str, int i2) {
        super("schemas-upnp-org", str, i2);
    }

    public static UDAServiceType c(String str) {
        Matcher matcher = f78531e.matcher(str);
        if (matcher.matches()) {
            return new UDAServiceType(matcher.group(1), Integer.valueOf(matcher.group(2)).intValue());
        }
        throw new InvalidValueException(tr.g("Can't parse UDA service type string (namespace/type/version): ", str));
    }

    public UDAServiceType(String str) {
        this(str, 1);
    }
}
