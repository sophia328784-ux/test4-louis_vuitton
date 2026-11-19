package com.sensorsdata.analytics.android.sdk.advert.model;

import defpackage.n00;

/* JADX INFO: loaded from: classes3.dex */
public class SASlinkResponse {
    public String commonRedirectURI;
    public String message;
    public String slink;
    public String slinkID;
    public int statusCode;

    public String toString() {
        StringBuilder sb = new StringBuilder("SASlinkResponse{statusCode=");
        sb.append(this.statusCode);
        sb.append(", message='");
        sb.append(this.message);
        sb.append("', slink='");
        sb.append(this.slink);
        sb.append("', slinkID='");
        sb.append(this.slinkID);
        sb.append("', commonRedirectURI='");
        return n00.r(this.commonRedirectURI, "'}", sb);
    }
}
