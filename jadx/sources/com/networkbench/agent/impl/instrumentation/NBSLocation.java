package com.networkbench.agent.impl.instrumentation;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class NBSLocation {
    private final String countryCode;
    private final String region;

    public NBSLocation(String str, String str2) {
        if (str == null || str2 == null) {
            md.n("Country code and region must not be null.");
            throw null;
        }
        this.countryCode = str;
        this.region = str2;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public String getRegion() {
        return this.region;
    }
}
