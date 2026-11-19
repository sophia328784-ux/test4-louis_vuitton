package com.google.i18n.phonenumbers.metadata.source;

import com.google.i18n.phonenumbers.MetadataLoader;
import com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadata;
import com.google.i18n.phonenumbers.metadata.init.MetadataParser;
import com.google.i18n.phonenumbers.metadata.source.MetadataContainer;
import java.io.InputStream;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
final class BlockingMetadataBootstrappingGuard<T extends MetadataContainer> implements MetadataBootstrappingGuard<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MetadataLoader f35662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MetadataParser f35663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MetadataContainer f35664c;
    public final ConcurrentHashMap d = new ConcurrentHashMap();

    public BlockingMetadataBootstrappingGuard(MetadataLoader metadataLoader, MetadataParser metadataParser, MetadataContainer metadataContainer) {
        this.f35662a = metadataLoader;
        this.f35663b = metadataParser;
        this.f35664c = metadataContainer;
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.MetadataBootstrappingGuard
    public final MetadataContainer a(String str) {
        if (!this.d.containsKey(str)) {
            synchronized (this) {
                try {
                    if (!this.d.containsKey(str)) {
                        try {
                            InputStream inputStreamA = this.f35662a.a(str);
                            this.f35663b.getClass();
                            Iterator it = MetadataParser.a(inputStreamA).iterator();
                            while (it.hasNext()) {
                                this.f35664c.a((Phonemetadata$PhoneMetadata) it.next());
                            }
                            this.d.put(str, str);
                        } catch (IllegalArgumentException | IllegalStateException e2) {
                            throw new IllegalStateException("Failed to read file " + str, e2);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f35664c;
    }
}
