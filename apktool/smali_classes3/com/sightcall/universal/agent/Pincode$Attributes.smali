.class public Lcom/sightcall/universal/agent/Pincode$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Pincode;
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

.field final media:Lcom/sightcall/universal/agent/Pincode$Media;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "media"
    .end annotation
.end field

.field final mpi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "mpi"
    .end annotation
.end field

.field final recipient:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "recipient"
    .end annotation
.end field

.field final reference:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference"
    .end annotation
.end field

.field final url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest-url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/Pincode$Media;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->media:Lcom/sightcall/universal/agent/Pincode$Media;

    iput-object p2, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->recipient:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->countryCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->reference:Ljava/lang/String;

    iput-object p6, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->mpi:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->action:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->media:Lcom/sightcall/universal/agent/Pincode$Media;

    .line 21
    iput-object v0, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->recipient:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->countryCode:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->reference:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->url:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->mpi:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/sightcall/universal/agent/Pincode$Attributes;->action:Ljava/lang/String;

    return-void
.end method
