.class public Lcom/sightcall/universal/agent/Consent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/api/JsonApi$Included;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Consent$Attributes;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "agent-consents"


# instance fields
.field final attributes:Lcom/sightcall/universal/agent/Consent$Attributes;
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
.method public constructor <init>(Ljava/lang/String;Lcom/sightcall/universal/agent/Consent$Attributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "agent-consents"

    iput-object v0, p0, Lcom/sightcall/universal/agent/Consent;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/agent/Consent;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    return-void
.end method


# virtual methods
.method public copyright()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent$Attributes;->copyright:Ljava/lang/String;

    return-object p0
.end method

.method public description()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent$Attributes;->description:Ljava/lang/String;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->id:Ljava/lang/String;

    return-object p0
.end method

.method public language()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent$Attributes;->language:Ljava/lang/String;

    return-object p0
.end method

.method public linkLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent$Attributes;->linkLabel:Ljava/lang/String;

    return-object p0
.end method

.method public linkUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent$Attributes;->eulaLink:Ljava/lang/String;

    return-object p0
.end method

.method public negativeButton()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent$Attributes;->declineLabel:Ljava/lang/String;

    return-object p0
.end method

.method public positiveButton()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent$Attributes;->acceptLabel:Ljava/lang/String;

    return-object p0
.end method

.method public title()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent$Attributes;->title:Ljava/lang/String;

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    const-string p0, "agent-consents"

    return-object p0
.end method

.method public version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent;->attributes:Lcom/sightcall/universal/agent/Consent$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Consent$Attributes;->eulaVersion:Ljava/lang/String;

    return-object p0
.end method
