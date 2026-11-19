package org.teleal.cling.support.model;

import java.net.URI;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DIDLObject$Property$UPNP$ALBUM_ART_URI extends DIDLObject.Property<URI> implements DIDLObject$Property$UPNP$NAMESPACE {
    public DIDLObject$Property$UPNP$ALBUM_ART_URI(URI uri) {
        super(uri, "albumArtURI");
    }

    public DIDLObject$Property$UPNP$ALBUM_ART_URI() {
        this(null);
    }

    public DIDLObject$Property$UPNP$ALBUM_ART_URI(URI uri, List<DIDLObject.Property<DIDLAttribute>> list) {
        super(uri, list);
    }
}
