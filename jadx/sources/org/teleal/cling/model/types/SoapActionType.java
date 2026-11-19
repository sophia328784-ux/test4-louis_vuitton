package org.teleal.cling.model.types;

import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.teleal.cling.model.ModelUtil;

/* JADX INFO: loaded from: classes5.dex */
public class SoapActionType {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f78524e = Pattern.compile("urn:schemas-upnp-org:control-1-0#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pattern f78525f = Pattern.compile("urn:([a-zA-Z0-9\\-\\.]+):service:([a-zA-Z_0-9\\-]{1,64}):([0-9]+)#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78528c;
    public final Integer d;

    public SoapActionType(String str, String str2, Integer num, String str3) {
        this.f78526a = str;
        this.f78527b = str2;
        this.d = num;
        this.f78528c = str3;
        if (str3 != null) {
            if (ModelUtil.f78377a) {
                if (str3.length() != 0) {
                    return;
                }
            } else if (str3.length() != 0 && !str3.toLowerCase().startsWith("xml") && str3.matches("[a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*")) {
                return;
            }
            md.n("Action name contains illegal characters: ".concat(str3));
            throw null;
        }
    }

    public static SoapActionType b(String str) {
        Matcher matcher = f78524e.matcher(str);
        if (matcher.matches()) {
            return new SoapActionType("schemas-upnp-org", "control-1-0", null, matcher.group(1));
        }
        Matcher matcher2 = f78525f.matcher(str);
        if (matcher2.matches()) {
            return new SoapActionType(matcher2.group(1), matcher2.group(2), Integer.valueOf(matcher2.group(3)), matcher2.group(4));
        }
        throw new InvalidValueException(tr.g("Can't parse action type string (namespace/type/version#actionName): ", str));
    }

    public final String a() {
        String str = this.f78527b;
        Integer num = this.d;
        String str2 = this.f78526a;
        if (num == null) {
            return fc.i("urn:", str2, ":", str);
        }
        StringBuilder sbS = fc.s("urn:", str2, ":service:", str, ":");
        sbS.append(num);
        return sbS.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SoapActionType)) {
            return false;
        }
        SoapActionType soapActionType = (SoapActionType) obj;
        if (!this.f78528c.equals(soapActionType.f78528c) || !this.f78526a.equals(soapActionType.f78526a) || !this.f78527b.equals(soapActionType.f78527b)) {
            return false;
        }
        Integer num = soapActionType.d;
        Integer num2 = this.d;
        return num2 == null ? num == null : num2.equals(num);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f78526a.hashCode() * 31, 31, this.f78527b), 31, this.f78528c);
        Integer num = this.d;
        return iB + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        return a() + "#" + this.f78528c;
    }

    public SoapActionType(ServiceType serviceType, String str) {
        this(serviceType.f78521a, serviceType.f78522b, Integer.valueOf(serviceType.f78523c), str);
    }
}
