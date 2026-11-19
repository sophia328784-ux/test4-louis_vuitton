.class public Lcom/sightcall/universal/agent/Usecase$Agent;
.super Lcom/sightcall/universal/agent/Usecase$User;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Agent"
.end annotation


# instance fields
.field private chat:Lcom/sightcall/universal/agent/Usecase$Chat;
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation

    .annotation runtime Lcom/squareup/moshi/Json;
        name = "_chat"
    .end annotation
.end field

.field chatAsBoolean:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "chat"
    .end annotation
.end field

.field guestTakePictureMenu:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest-take-picture-menu"
    .end annotation
.end field

.field pickupMode:Lcom/sightcall/universal/agent/Usecase$PickupMode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "pickup-mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/agent/Usecase$User;-><init>()V

    return-void
.end method


# virtual methods
.method public chat()Lcom/sightcall/universal/agent/Usecase$Chat;
    .locals 2

    iget-boolean v0, p0, Lcom/sightcall/universal/agent/Usecase$Agent;->chatAsBoolean:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/agent/Usecase$Agent;->chat:Lcom/sightcall/universal/agent/Usecase$Chat;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Chat;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Usecase$Chat;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/agent/Usecase$Agent;->chat:Lcom/sightcall/universal/agent/Usecase$Chat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sightcall/universal/agent/Usecase$Chat;->quickbar:Z

    const/16 v1, 0xa

    iput v1, v0, Lcom/sightcall/universal/agent/Usecase$Chat;->messageOverlayTimeout:I

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Agent;->chat:Lcom/sightcall/universal/agent/Usecase$Chat;

    return-object p0
.end method
