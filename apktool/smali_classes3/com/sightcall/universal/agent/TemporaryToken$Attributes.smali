.class Lcom/sightcall/universal/agent/TemporaryToken$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/TemporaryToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field final action:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "action"
    .end annotation
.end field

.field final countryCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "country-code"
    .end annotation
.end field

.field final media:Lcom/sightcall/universal/agent/TemporaryToken$Media;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "media"
    .end annotation
.end field

.field final recipient:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "recipient"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/TemporaryToken$Media;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->media:Lcom/sightcall/universal/agent/TemporaryToken$Media;

    iput-object p2, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->recipient:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->countryCode:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->action:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->media:Lcom/sightcall/universal/agent/TemporaryToken$Media;

    .line 15
    iput-object v0, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->recipient:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->countryCode:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/sightcall/universal/agent/TemporaryToken$Attributes;->action:Ljava/lang/String;

    return-void
.end method
