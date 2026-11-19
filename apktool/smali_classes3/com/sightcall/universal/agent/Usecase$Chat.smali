.class public Lcom/sightcall/universal/agent/Usecase$Chat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chat"
.end annotation


# instance fields
.field messageOverlayTimeout:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "message-overlay-timeout"
    .end annotation
.end field

.field quickbar:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "quickbar"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageOverlayTimeout()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/agent/Usecase$Chat;->messageOverlayTimeout:I

    return p0
.end method

.method public quickbar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Chat;->quickbar:Z

    return p0
.end method
