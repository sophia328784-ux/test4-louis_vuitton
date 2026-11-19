package org.teleal.cling.support.model;

/* JADX INFO: loaded from: classes5.dex */
public enum BrowseFlag {
    METADATA("BrowseMetadata"),
    DIRECT_CHILDREN("BrowseDirectChildren");

    private String protocolString;

    BrowseFlag(String str) {
        this.protocolString = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.protocolString;
    }
}
