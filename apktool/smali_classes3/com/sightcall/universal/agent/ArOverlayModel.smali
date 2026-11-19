.class public Lcom/sightcall/universal/agent/ArOverlayModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/api/JsonApi$Included;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "ar-overlay-models"


# instance fields
.field private attributes:Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ar-overlay-models"

    iput-object v0, p0, Lcom/sightcall/universal/agent/ArOverlayModel;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/agent/ArOverlayModel;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public configuration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/ArOverlayModel;->attributes:Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;->configuration:Ljava/lang/String;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/ArOverlayModel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/ArOverlayModel;->attributes:Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;->name:Ljava/lang/String;

    return-object p0
.end method

.method public sessionTimeout()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/ArOverlayModel;->attributes:Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;->sessionTimeout:Ljava/lang/String;

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    const-string p0, "ar-overlay-models"

    return-object p0
.end method

.method public value()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/MicroServiceObject;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/agent/ArOverlayModel;->attributes:Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/ArOverlayModel$Attributes;->objects:Ljava/util/List;

    return-object p0
.end method
