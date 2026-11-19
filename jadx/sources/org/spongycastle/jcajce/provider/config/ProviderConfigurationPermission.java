package org.spongycastle.jcajce.provider.config;

import defpackage.md;
import java.security.BasicPermission;
import java.security.Permission;
import java.util.StringTokenizer;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class ProviderConfigurationPermission extends BasicPermission {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f77896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77897c;

    public ProviderConfigurationPermission(String str, String str2) {
        super(str, str2);
        this.f77896b = str2;
        StringTokenizer stringTokenizer = new StringTokenizer(Strings.c(str2), " ,");
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.equals("threadlocalecimplicitlyca")) {
                i2 |= 1;
            } else if (strNextToken.equals("ecimplicitlyca")) {
                i2 |= 2;
            } else if (strNextToken.equals("threadlocaldhdefaultparams")) {
                i2 |= 4;
            } else if (strNextToken.equals("dhdefaultparams")) {
                i2 |= 8;
            } else if (strNextToken.equals("acceptableeccurves")) {
                i2 |= 16;
            } else if (strNextToken.equals("additionalecparameters")) {
                i2 |= 32;
            } else if (strNextToken.equals("all")) {
                i2 = 63;
            }
        }
        if (i2 != 0) {
            this.f77897c = i2;
        } else {
            md.n("unknown permissions passed to mask");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ProviderConfigurationPermission) {
            ProviderConfigurationPermission providerConfigurationPermission = (ProviderConfigurationPermission) obj;
            if (this.f77897c == providerConfigurationPermission.f77897c && getName().equals(providerConfigurationPermission.getName())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.BasicPermission, java.security.Permission
    public final String getActions() {
        return this.f77896b;
    }

    public final int hashCode() {
        return getName().hashCode() + this.f77897c;
    }

    @Override // java.security.BasicPermission, java.security.Permission
    public final boolean implies(Permission permission) {
        if (!(permission instanceof ProviderConfigurationPermission) || !getName().equals(permission.getName())) {
            return false;
        }
        int i2 = ((ProviderConfigurationPermission) permission).f77897c;
        return (this.f77897c & i2) == i2;
    }

    public ProviderConfigurationPermission(String str) {
        super(str);
        this.f77896b = "all";
        this.f77897c = 63;
    }
}
