.class public final Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/i18n/phonenumbers/metadata/source/MetadataSource;


# instance fields
.field public final a:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

.field public final b:Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;


# direct methods
.method public constructor <init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;)V
    .locals 2

    new-instance v0, Lcom/google/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;

    new-instance v1, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;-><init>()V

    invoke-direct {v0, p2, p3, v1}, Lcom/google/i18n/phonenumbers/metadata/source/BlockingMetadataBootstrappingGuard;-><init>(Lcom/google/i18n/phonenumbers/MetadataLoader;Lcom/google/i18n/phonenumbers/metadata/init/MetadataParser;Lcom/google/i18n/phonenumbers/metadata/source/MetadataContainer;)V

    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;",
            "Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard<",
            "Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;->a:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    .line 16
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;->b:Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 2

    invoke-static {}, Lcom/google/i18n/phonenumbers/CountryCodeToRegionCodeMap;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v1, "001"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, " calling code belongs to a geo entity"

    invoke-static {p1, p0}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;->a:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;->b:Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    invoke-interface {p0, v0}, Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/metadata/source/MetadataContainer;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->a:Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const-string v0, "001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;->a:Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    invoke-interface {v0, p1}, Lcom/google/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/source/MetadataSourceImpl;->b:Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;

    invoke-interface {p0, v0}, Lcom/google/i18n/phonenumbers/metadata/source/MetadataBootstrappingGuard;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/metadata/source/MetadataContainer;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->b:Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object p0

    :cond_0
    const-string p0, " region code is a non-geo entity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
