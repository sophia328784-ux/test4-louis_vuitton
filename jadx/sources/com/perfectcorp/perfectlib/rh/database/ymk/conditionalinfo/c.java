package com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;

/* JADX INFO: loaded from: classes3.dex */
public final class c {
    public final String warmer = null;
    public final String cooler = null;
    public final String lighter = null;
    public final String darker = null;

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("WcldTable");
        toStringHelper.b("warmer", this.warmer);
        toStringHelper.b("cooler", this.cooler);
        toStringHelper.b("lighter", this.lighter);
        toStringHelper.b("darker", this.darker);
        return toStringHelper.toString();
    }
}
