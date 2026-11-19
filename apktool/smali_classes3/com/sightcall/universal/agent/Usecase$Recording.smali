.class public Lcom/sightcall/universal/agent/Usecase$Recording;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recording"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Usecase$Recording$Media;
    }
.end annotation


# instance fields
.field final autoStart:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "autostart"
    .end annotation
.end field

.field final media:Lcom/sightcall/universal/agent/Usecase$Recording$Media;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "media"
    .end annotation
.end field

.field final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLcom/sightcall/universal/agent/Usecase$Recording$Media;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/Usecase$Recording;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sightcall/universal/agent/Usecase$Recording;->autoStart:Z

    iput-object p3, p0, Lcom/sightcall/universal/agent/Usecase$Recording;->media:Lcom/sightcall/universal/agent/Usecase$Recording$Media;

    return-void
.end method


# virtual methods
.method public autoStart()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$Recording;->autoStart:Z

    return p0
.end method

.method public media()Lcom/sightcall/universal/agent/Usecase$Recording$Media;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Recording;->media:Lcom/sightcall/universal/agent/Usecase$Recording$Media;

    return-object p0
.end method
