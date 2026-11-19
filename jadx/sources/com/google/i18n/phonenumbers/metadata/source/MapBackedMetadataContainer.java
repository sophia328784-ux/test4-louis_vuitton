package com.google.i18n.phonenumbers.metadata.source;

import com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadata;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
final class MapBackedMetadataContainer<T> implements MetadataContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f35669a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KeyProvider f35670b;

    /* JADX INFO: renamed from: com.google.i18n.phonenumbers.metadata.source.MapBackedMetadataContainer$1, reason: invalid class name */
    class AnonymousClass1 implements KeyProvider<String> {
        @Override // com.google.i18n.phonenumbers.metadata.source.MapBackedMetadataContainer.KeyProvider
        public final Object a(Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
            return phonemetadata$PhoneMetadata.J;
        }
    }

    /* JADX INFO: renamed from: com.google.i18n.phonenumbers.metadata.source.MapBackedMetadataContainer$2, reason: invalid class name */
    class AnonymousClass2 implements KeyProvider<Integer> {
        @Override // com.google.i18n.phonenumbers.metadata.source.MapBackedMetadataContainer.KeyProvider
        public final Object a(Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
            return Integer.valueOf(phonemetadata$PhoneMetadata.K);
        }
    }

    public interface KeyProvider<T> {
        Object a(Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata);
    }

    public MapBackedMetadataContainer(KeyProvider keyProvider) {
        this.f35670b = keyProvider;
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.MetadataContainer
    public final void a(Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
        this.f35669a.put(this.f35670b.a(phonemetadata$PhoneMetadata), phonemetadata$PhoneMetadata);
    }
}
