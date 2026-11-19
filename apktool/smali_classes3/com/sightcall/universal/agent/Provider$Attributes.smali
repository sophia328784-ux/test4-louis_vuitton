.class Lcom/sightcall/universal/agent/Provider$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field annotationsUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "annotations-url"
    .end annotation
.end field

.field appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "webapp-id"
    .end annotation
.end field

.field chat:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "chat"
    .end annotation
.end field

.field chatTranscript:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "chat-transcript"
    .end annotation
.end field

.field deadpartyTimeout:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "deadparty-timeout"
    .end annotation
.end field

.field hapPath:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hap-path"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field

.field ocrTranscript:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "ocr-transcript"
    .end annotation
.end field

.field rtccEnv:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "rtcc-env"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
