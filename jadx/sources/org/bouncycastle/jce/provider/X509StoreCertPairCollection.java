package org.bouncycastle.jce.provider;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import defpackage.n00;
import java.util.Collection;
import org.bouncycastle.util.CollectionStore;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.X509CollectionStoreParameters;
import org.bouncycastle.x509.X509StoreParameters;
import org.bouncycastle.x509.X509StoreSpi;

/* JADX INFO: loaded from: classes5.dex */
public class X509StoreCertPairCollection extends X509StoreSpi {
    private CollectionStore _store;

    @Override // org.bouncycastle.x509.X509StoreSpi
    public Collection engineGetMatches(Selector selector) {
        return this._store.getMatches(selector);
    }

    @Override // org.bouncycastle.x509.X509StoreSpi
    public void engineInit(X509StoreParameters x509StoreParameters) {
        if (x509StoreParameters instanceof X509CollectionStoreParameters) {
            this._store = new CollectionStore(((X509CollectionStoreParameters) x509StoreParameters).getCollection());
        } else {
            md.n(n00.p(X509CollectionStoreParameters.class, new StringBuilder("Initialization parameters must be an instance of "), FileUtils.HIDDEN_PREFIX));
        }
    }
}
