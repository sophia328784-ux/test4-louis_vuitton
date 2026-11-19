.class Lcom/sightcall/universal/agent/Identity$Relationships;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Identity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relationships"
.end annotation


# instance fields
.field consent:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "consent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field

.field guestLanguage:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest-language"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field

.field guestLocation:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest-location"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field

.field guestProduct:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest-product"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field

.field offlineMediaUsecases:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "offline-media-usecases"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "[",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field

.field pincode:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "pincode"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field

.field providerCustomizations:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "provider-customizations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "[",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field

.field usecases:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecases"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "[",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
