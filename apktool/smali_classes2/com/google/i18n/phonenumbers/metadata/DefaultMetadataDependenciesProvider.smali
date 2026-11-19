.class public final Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;


# instance fields
.field public final a:Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;

.field public final b:Lcom/google/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

.field public final c:Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;-><init>()V

    sput-object v0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->d:Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->a:Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;

    new-instance v1, Lcom/google/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->b:Lcom/google/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

    new-instance v2, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v3, "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-direct {v2, v3}, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->c:Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    new-instance p0, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;

    invoke-direct {p0, v2, v1, v0}, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;)V

    new-instance p0, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v2, "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto"

    invoke-direct {p0, v2}, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/i18n/phonenumbers/metadata/source/RegionMetadataSourceImpl;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;)V

    new-instance p0, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;

    const-string v2, "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

    invoke-direct {p0, v2}, Lcom/google/i18n/phonenumbers/metadata/source/MultiFileModeFileNameProvider;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/i18n/phonenumbers/metadata/source/FormattingMetadataSourceImpl;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;)V

    return-void
.end method
