.class public Lcom/sightcall/universal/agent/Pincode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/api/JsonApi$Included;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Pincode$Attributes;,
        Lcom/sightcall/universal/agent/Pincode$Relationships;,
        Lcom/sightcall/universal/agent/Pincode$Media;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "pincodes"


# instance fields
.field final attributes:Lcom/sightcall/universal/agent/Pincode$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field relationships:Lcom/sightcall/universal/agent/Pincode$Relationships;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "relationships"
    .end annotation
.end field

.field final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/sightcall/universal/agent/Pincode$Attributes;Lcom/sightcall/universal/agent/Pincode$Relationships;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pincodes"

    iput-object v0, p0, Lcom/sightcall/universal/agent/Pincode;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/agent/Pincode;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/agent/Pincode;->attributes:Lcom/sightcall/universal/agent/Pincode$Attributes;

    iput-object p3, p0, Lcom/sightcall/universal/agent/Pincode;->relationships:Lcom/sightcall/universal/agent/Pincode$Relationships;

    return-void
.end method

.method private static create(Lcom/sightcall/universal/agent/Pincode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;
    .locals 7

    new-instance v0, Lcom/sightcall/universal/agent/Pincode$Attributes;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/agent/Pincode$Attributes;-><init>(Lcom/sightcall/universal/agent/Pincode$Media;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/sightcall/universal/agent/Pincode$Relationships;

    new-instance p2, Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase;->id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sightcall/universal/agent/Usecase;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sightcall/universal/agent/Pincode$Relationships;-><init>(Lcom/sightcall/universal/agent/Usecase;)V

    new-instance p1, Lcom/sightcall/universal/agent/Pincode;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p0}, Lcom/sightcall/universal/agent/Pincode;-><init>(Ljava/lang/String;Lcom/sightcall/universal/agent/Pincode$Attributes;Lcom/sightcall/universal/agent/Pincode$Relationships;)V

    return-object p1
.end method

.method public static email(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/agent/Pincode$Media;->EMAIL:Lcom/sightcall/universal/agent/Pincode$Media;

    const/4 v1, 0x0

    invoke-static {v0, p0, p2, v1, p1}, Lcom/sightcall/universal/agent/Pincode;->create(Lcom/sightcall/universal/agent/Pincode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;

    move-result-object p0

    return-object p0
.end method

.method public static resend(Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Pincode;

    new-instance v1, Lcom/sightcall/universal/agent/Pincode$Attributes;

    const-string v2, "resend"

    invoke-direct {v1, v2}, Lcom/sightcall/universal/agent/Pincode$Attributes;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sightcall/universal/agent/Pincode;-><init>(Ljava/lang/String;Lcom/sightcall/universal/agent/Pincode$Attributes;Lcom/sightcall/universal/agent/Pincode$Relationships;)V

    return-object v0
.end method

.method public static sms(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Pincode$Media;->SMS:Lcom/sightcall/universal/agent/Pincode$Media;

    invoke-static {v0, p0, p2, p3, p1}, Lcom/sightcall/universal/agent/Pincode;->create(Lcom/sightcall/universal/agent/Pincode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;

    move-result-object p0

    return-object p0
.end method

.method public static url(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/agent/Pincode$Media;->URL:Lcom/sightcall/universal/agent/Pincode$Media;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1, p1}, Lcom/sightcall/universal/agent/Pincode;->create(Lcom/sightcall/universal/agent/Pincode$Media;Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Pincode;->id:Ljava/lang/String;

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    const-string p0, "pincodes"

    return-object p0
.end method
