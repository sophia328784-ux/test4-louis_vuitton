package com.google.i18n.phonenumbers.metadata.source;

import com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadata;

/* JADX INFO: loaded from: classes2.dex */
final class CompositeMetadataContainer implements MetadataContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MapBackedMetadataContainer f35665a = new MapBackedMetadataContainer(new MapBackedMetadataContainer.AnonymousClass2());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MapBackedMetadataContainer f35666b = new MapBackedMetadataContainer(new MapBackedMetadataContainer.AnonymousClass1());

    @Override // com.google.i18n.phonenumbers.metadata.source.MetadataContainer
    public final void a(Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
        MapBackedMetadataContainer mapBackedMetadataContainer = this.f35666b;
        if (((String) mapBackedMetadataContainer.f35670b.a(phonemetadata$PhoneMetadata)).equals("001")) {
            this.f35665a.a(phonemetadata$PhoneMetadata);
        } else {
            mapBackedMetadataContainer.a(phonemetadata$PhoneMetadata);
        }
    }
}
