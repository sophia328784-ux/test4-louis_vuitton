.class public Lcom/sightcall/universal/agent/Usecase$SavePicture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavePicture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;,
        Lcom/sightcall/universal/agent/Usecase$SavePicture$Media;,
        Lcom/sightcall/universal/agent/Usecase$SavePicture$Mode;
    }
.end annotation


# instance fields
.field public media:Lcom/sightcall/universal/agent/Usecase$SavePicture$Media;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "media"
    .end annotation
.end field

.field public mode:Lcom/sightcall/universal/agent/Usecase$SavePicture$Mode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "mode"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field

.field public type:Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;
    .annotation runtime Lcom/sightcall/universal/api/FallbackEnumField;
        value = ""
    .end annotation

    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public media()Lcom/sightcall/universal/agent/Usecase$SavePicture$Media;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$SavePicture;->media:Lcom/sightcall/universal/agent/Usecase$SavePicture$Media;

    return-object p0
.end method

.method public type()Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$SavePicture;->type:Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    return-object p0
.end method
