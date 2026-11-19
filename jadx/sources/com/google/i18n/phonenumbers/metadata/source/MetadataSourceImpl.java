package com.google.i18n.phonenumbers.metadata.source;

import com.google.i18n.phonenumbers.CountryCodeToRegionCodeMap;
import com.google.i18n.phonenumbers.MetadataLoader;
import com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadata;
import com.google.i18n.phonenumbers.metadata.init.MetadataParser;
import defpackage.cj;
import defpackage.md;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MetadataSourceImpl implements MetadataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PhoneMetadataFileNameProvider f35671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MetadataBootstrappingGuard f35672b;

    public MetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataLoader metadataLoader, MetadataParser metadataParser) {
        this(phoneMetadataFileNameProvider, new BlockingMetadataBootstrappingGuard(metadataLoader, metadataParser, new CompositeMetadataContainer()));
    }

    public final Phonemetadata$PhoneMetadata a(int i2) {
        List list = (List) CountryCodeToRegionCodeMap.a().get(Integer.valueOf(i2));
        if (list != null && !list.contains("001")) {
            md.n(cj.d(i2, " calling code belongs to a geo entity"));
            return null;
        }
        MapBackedMetadataContainer mapBackedMetadataContainer = ((CompositeMetadataContainer) this.f35672b.a(this.f35671a.a(Integer.valueOf(i2)))).f35665a;
        return (Phonemetadata$PhoneMetadata) mapBackedMetadataContainer.f35669a.get(Integer.valueOf(i2));
    }

    public final Phonemetadata$PhoneMetadata b(String str) {
        if (str.equals("001")) {
            md.n(str.concat(" region code is a non-geo entity"));
            return null;
        }
        return (Phonemetadata$PhoneMetadata) ((CompositeMetadataContainer) this.f35672b.a(this.f35671a.a(str))).f35666b.f35669a.get(str);
    }

    public MetadataSourceImpl(PhoneMetadataFileNameProvider phoneMetadataFileNameProvider, MetadataBootstrappingGuard<CompositeMetadataContainer> metadataBootstrappingGuard) {
        this.f35671a = phoneMetadataFileNameProvider;
        this.f35672b = metadataBootstrappingGuard;
    }
}
