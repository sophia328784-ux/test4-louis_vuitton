package com.google.i18n.phonenumbers.metadata.source;

import com.google.i18n.phonenumbers.MetadataLoader;
import com.google.i18n.phonenumbers.metadata.init.MetadataParser;

/* JADX INFO: loaded from: classes2.dex */
public final class RegionMetadataSourceImpl implements RegionMetadataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PhoneMetadataFileNameProvider f35674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MetadataBootstrappingGuard f35675b;

    public RegionMetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataLoader metadataLoader, MetadataParser metadataParser) {
        this(phoneMetadataFileNameProvider, new BlockingMetadataBootstrappingGuard(metadataLoader, metadataParser, new MapBackedMetadataContainer(new MapBackedMetadataContainer.AnonymousClass1())));
    }

    public RegionMetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataBootstrappingGuard<MapBackedMetadataContainer<String>> metadataBootstrappingGuard) {
        this.f35674a = phoneMetadataFileNameProvider;
        this.f35675b = metadataBootstrappingGuard;
    }
}
