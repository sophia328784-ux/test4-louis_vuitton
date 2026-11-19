.class public Lcom/sightcall/universal/guest/Calls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/guest/Calls$Attributes;,
        Lcom/sightcall/universal/guest/Calls$State;,
        Lcom/sightcall/universal/guest/Calls$Action;
    }
.end annotation


# instance fields
.field final attributes:Lcom/sightcall/universal/guest/Calls$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/guest/Calls$Attributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "calls"

    iput-object v0, p0, Lcom/sightcall/universal/guest/Calls;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/guest/Calls;->attributes:Lcom/sightcall/universal/guest/Calls$Attributes;

    return-void
.end method

.method public static ready(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/guest/Calls;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/guest/Calls$Attributes;

    invoke-direct {v0}, Lcom/sightcall/universal/guest/Calls$Attributes;-><init>()V

    sget-object v1, Lcom/sightcall/universal/guest/Calls$State;->CONNECTED:Lcom/sightcall/universal/guest/Calls$State;

    iput-object v1, v0, Lcom/sightcall/universal/guest/Calls$Attributes;->state:Lcom/sightcall/universal/guest/Calls$State;

    iget-object v1, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->pin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sightcall/universal/guest/Calls$Attributes;->pincode:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->suffix()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sightcall/universal/guest/Calls$Attributes;->suffix:Ljava/lang/String;

    new-instance p0, Lcom/sightcall/universal/guest/Calls;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/guest/Calls;-><init>(Lcom/sightcall/universal/guest/Calls$Attributes;)V

    return-object p0
.end method


# virtual methods
.method public nextAction()Lcom/sightcall/universal/guest/Calls$Action;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/Calls;->attributes:Lcom/sightcall/universal/guest/Calls$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/guest/Calls$Attributes;->nextAction:Lcom/sightcall/universal/guest/Calls$Action;

    return-object p0
.end method
