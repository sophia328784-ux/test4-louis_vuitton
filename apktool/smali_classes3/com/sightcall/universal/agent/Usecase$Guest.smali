.class public Lcom/sightcall/universal/agent/Usecase$Guest;
.super Lcom/sightcall/universal/agent/Usecase$User;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Guest"
.end annotation


# instance fields
.field allowUsbCamera:Z
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation
.end field

.field public alwaysVisible:Z

.field chat:Lcom/sightcall/universal/agent/Usecase$Chat;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "chat"
    .end annotation
.end field

.field guestVideoWhileTakePicture:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/agent/Usecase$User;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->allowUsbCamera:Z

    return-void
.end method


# virtual methods
.method public chat()Lcom/sightcall/universal/agent/Usecase$Chat;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Guest;->chat:Lcom/sightcall/universal/agent/Usecase$Chat;

    return-object p0
.end method
