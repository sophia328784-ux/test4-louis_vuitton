.class public final Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/getmedia/di/DaggerMediaComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mediaModule:Lcom/sightcall/getmedia/di/MediaModule;

.field private sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/getmedia/di/MediaComponent;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;->mediaModule:Lcom/sightcall/getmedia/di/MediaModule;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sightcall/getmedia/di/MediaModule;

    invoke-direct {v0}, Lcom/sightcall/getmedia/di/MediaModule;-><init>()V

    iput-object v0, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;->mediaModule:Lcom/sightcall/getmedia/di/MediaModule;

    :cond_0
    iget-object v0, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    const-class v1, Lcom/sightcall/core/di/SightCallComponent;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;

    iget-object v1, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;->mediaModule:Lcom/sightcall/getmedia/di/MediaModule;

    iget-object p0, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    invoke-direct {v0, v1, p0}, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;-><init>(Lcom/sightcall/getmedia/di/MediaModule;Lcom/sightcall/core/di/SightCallComponent;)V

    return-object v0
.end method

.method public mediaModule(Lcom/sightcall/getmedia/di/MediaModule;)Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;->mediaModule:Lcom/sightcall/getmedia/di/MediaModule;

    return-object p0
.end method

.method public sightCallComponent(Lcom/sightcall/core/di/SightCallComponent;)Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    return-object p0
.end method
