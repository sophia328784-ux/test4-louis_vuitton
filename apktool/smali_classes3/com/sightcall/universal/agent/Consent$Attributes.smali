.class Lcom/sightcall/universal/agent/Consent$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Consent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field acceptLabel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "accept-label"
    .end annotation
.end field

.field copyright:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "copyright"
    .end annotation
.end field

.field createdAt:Ljava/util/Date;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "created-at"
    .end annotation
.end field

.field declineLabel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "decline-label"
    .end annotation
.end field

.field description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "description"
    .end annotation
.end field

.field eulaLink:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "eula-link"
    .end annotation
.end field

.field eulaVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "eula-version"
    .end annotation
.end field

.field language:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "language"
    .end annotation
.end field

.field linkLabel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "link-label"
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "title"
    .end annotation
.end field

.field updatedAt:Ljava/util/Date;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "updated-at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
