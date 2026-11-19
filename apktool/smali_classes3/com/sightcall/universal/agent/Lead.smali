.class public Lcom/sightcall/universal/agent/Lead;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Lead$Attributes;,
        Lcom/sightcall/universal/agent/Lead$Builder;,
        Lcom/sightcall/universal/agent/Lead$Region;
    }
.end annotation


# instance fields
.field final attributes:Lcom/sightcall/universal/agent/Lead$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field final id:Ljava/lang/String;
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
.method private constructor <init>(Lcom/sightcall/universal/agent/Lead$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "prospects"

    iput-object v0, p0, Lcom/sightcall/universal/agent/Lead;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/agent/Lead;->id:Ljava/lang/String;

    new-instance v0, Lcom/sightcall/universal/agent/Lead$Attributes;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/Lead$Attributes;-><init>(Lcom/sightcall/universal/agent/Lead$Builder;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/Lead;->attributes:Lcom/sightcall/universal/agent/Lead$Attributes;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/agent/Lead$Builder;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/Lead;-><init>(Lcom/sightcall/universal/agent/Lead$Builder;)V

    return-void
.end method


# virtual methods
.method public companyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead;->attributes:Lcom/sightcall/universal/agent/Lead$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->companyName:Ljava/lang/String;

    return-object p0
.end method

.method public companyRegion()Lcom/sightcall/universal/agent/Lead$Region;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead;->attributes:Lcom/sightcall/universal/agent/Lead$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->companyRegion:Lcom/sightcall/universal/agent/Lead$Region;

    return-object p0
.end method

.method public emailAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead;->attributes:Lcom/sightcall/universal/agent/Lead$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->emailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public firstName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead;->attributes:Lcom/sightcall/universal/agent/Lead$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->firstName:Ljava/lang/String;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead;->id:Ljava/lang/String;

    return-object p0
.end method

.method public lastName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead;->attributes:Lcom/sightcall/universal/agent/Lead$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Lead$Attributes;->lastName:Ljava/lang/String;

    return-object p0
.end method
