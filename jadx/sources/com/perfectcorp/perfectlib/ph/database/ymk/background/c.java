package com.perfectcorp.perfectlib.ph.database.ymk.background;

/* JADX INFO: loaded from: classes3.dex */
public enum c {
    FREE("free"),
    PURCHASE("purchase"),
    NFT("nft");


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41164b;

    c(String str) {
        this.f41164b = str;
    }

    public static c a(String str) {
        for (c cVar : (c[]) values().clone()) {
            if (cVar.f41164b.equalsIgnoreCase(str)) {
                return cVar;
            }
        }
        return FREE;
    }
}
