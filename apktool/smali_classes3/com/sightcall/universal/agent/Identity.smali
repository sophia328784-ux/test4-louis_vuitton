.class public Lcom/sightcall/universal/agent/Identity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Identity$Attributes;,
        Lcom/sightcall/universal/agent/Identity$Builder;,
        Lcom/sightcall/universal/agent/Identity$Relationships;
    }
.end annotation


# instance fields
.field attributes:Lcom/sightcall/universal/agent/Identity$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field relationships:Lcom/sightcall/universal/agent/Identity$Relationships;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "relationships"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "identities"

    iput-object v0, p0, Lcom/sightcall/universal/agent/Identity;->type:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sightcall/universal/agent/Identity$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identities"

    iput-object v0, p0, Lcom/sightcall/universal/agent/Identity;->type:Ljava/lang/String;

    new-instance v0, Lcom/sightcall/universal/agent/Identity$Attributes;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Identity$Attributes;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/agent/Identity;->attributes:Lcom/sightcall/universal/agent/Identity$Attributes;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->sdkVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sightcall/universal/agent/Identity$Attributes;->osVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/sightcall/universal/agent/Identity;->attributes:Lcom/sightcall/universal/agent/Identity$Attributes;

    invoke-static {p1}, Lcom/sightcall/universal/agent/Identity$Builder;->a(Lcom/sightcall/universal/agent/Identity$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sightcall/universal/agent/Identity$Attributes;->fcmToken:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Identity;->attributes:Lcom/sightcall/universal/agent/Identity$Attributes;

    invoke-static {p1}, Lcom/sightcall/universal/agent/Identity$Builder;->b(Lcom/sightcall/universal/agent/Identity$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/agent/Identity$Attributes;->googleAppId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/agent/Identity$Builder;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/Identity;-><init>(Lcom/sightcall/universal/agent/Identity$Builder;)V

    return-void
.end method

.method public static acceptConsent(Lcom/sightcall/universal/agent/Consent;)Lcom/sightcall/universal/agent/Identity;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/agent/Identity;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Identity;-><init>()V

    new-instance v1, Lcom/sightcall/universal/agent/Identity$Attributes;

    invoke-direct {v1}, Lcom/sightcall/universal/agent/Identity$Attributes;-><init>()V

    iput-object v1, v0, Lcom/sightcall/universal/agent/Identity;->attributes:Lcom/sightcall/universal/agent/Identity$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->id:Ljava/lang/String;

    iput-object p0, v1, Lcom/sightcall/universal/agent/Identity$Attributes;->acceptConsent:Ljava/lang/String;

    return-object v0
.end method
