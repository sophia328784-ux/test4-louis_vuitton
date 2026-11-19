.class final Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/i18n/phonenumbers/metadata/source/MetadataContainer;


# instance fields
.field public final a:Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

.field public final b:Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    new-instance v1, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->a:Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    new-instance v0, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    new-instance v1, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;-><init>(Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->b:Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V
    .locals 3

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->b:Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    iget-object v1, v0, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->b:Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;

    invoke-interface {v1, p1}, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer$KeyProvider;->a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/i18n/phonenumbers/metadata/source/CompositeMetadataContainer;->a:Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/metadata/source/MapBackedMetadataContainer;->a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V

    return-void
.end method
