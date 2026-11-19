package com.google.i18n.phonenumbers.metadata;

import com.google.i18n.phonenumbers.metadata.init.ClassPathResourceMetadataLoader;
import com.google.i18n.phonenumbers.metadata.init.MetadataParser;
import com.google.i18n.phonenumbers.metadata.source.FormattingMetadataSourceImpl;
import com.google.i18n.phonenumbers.metadata.source.MetadataSourceImpl;
import com.google.i18n.phonenumbers.metadata.source.MultiFileModeFileNameProvider;
import com.google.i18n.phonenumbers.metadata.source.RegionMetadataSourceImpl;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultMetadataDependenciesProvider {
    public static final DefaultMetadataDependenciesProvider d = new DefaultMetadataDependenciesProvider();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MetadataParser f35657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClassPathResourceMetadataLoader f35658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MultiFileModeFileNameProvider f35659c;

    public DefaultMetadataDependenciesProvider() {
        MetadataParser metadataParser = new MetadataParser();
        this.f35657a = metadataParser;
        ClassPathResourceMetadataLoader classPathResourceMetadataLoader = new ClassPathResourceMetadataLoader();
        this.f35658b = classPathResourceMetadataLoader;
        MultiFileModeFileNameProvider multiFileModeFileNameProvider = new MultiFileModeFileNameProvider("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto");
        this.f35659c = multiFileModeFileNameProvider;
        new MetadataSourceImpl(multiFileModeFileNameProvider, classPathResourceMetadataLoader, metadataParser);
        new RegionMetadataSourceImpl(new MultiFileModeFileNameProvider("/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto"), classPathResourceMetadataLoader, metadataParser);
        new FormattingMetadataSourceImpl(new MultiFileModeFileNameProvider("/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"), classPathResourceMetadataLoader, metadataParser);
    }
}
