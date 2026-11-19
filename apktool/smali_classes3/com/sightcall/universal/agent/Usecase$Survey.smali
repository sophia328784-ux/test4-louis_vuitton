.class public Lcom/sightcall/universal/agent/Usecase$Survey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Survey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
    }
.end annotation


# instance fields
.field button:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "button-label"
    .end annotation
.end field

.field mode:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
    .annotation runtime Lcom/sightcall/universal/api/FallbackEnumField;
        value = "NONE"
    .end annotation

    .annotation runtime Lcom/squareup/moshi/Json;
        name = "mode"
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "popup-label"
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backport(Lcom/sightcall/session/Reference$UseCase$Survey;)Lcom/sightcall/universal/agent/Usecase$Survey;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Survey;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Usecase$Survey;-><init>()V

    iget-boolean v1, p0, Lcom/sightcall/session/Reference$UseCase$Survey;->immediate:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->AUTO:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->MANUAL:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    :goto_0
    iput-object v1, v0, Lcom/sightcall/universal/agent/Usecase$Survey;->mode:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase$Survey;->button:Ljava/lang/String;

    iput-object v1, v0, Lcom/sightcall/universal/agent/Usecase$Survey;->button:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/session/Reference$UseCase$Survey;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/sightcall/universal/agent/Usecase$Survey;->title:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$Survey;->raw:Ljava/lang/String;

    iput-object p0, v0, Lcom/sightcall/universal/agent/Usecase$Survey;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static with(Lcom/sightcall/universal/agent/Usecase$Survey;)Lcom/sightcall/universal/internal/model/Survey;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase$Survey;->mode()Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v2, Lcom/sightcall/universal/agent/Usecase$1;->$SwitchMap$com$sightcall$universal$agent$Usecase$Survey$Mode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/sightcall/universal/internal/model/Survey;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase$Survey;->url()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/model/Survey;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/sightcall/universal/internal/model/Survey;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase$Survey;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase$Survey;->button()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase$Survey;->url()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sightcall/universal/internal/model/Survey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public button()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Survey;->button:Ljava/lang/String;

    return-object p0
.end method

.method public mode()Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Survey;->mode:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    return-object p0
.end method

.method public title()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Survey;->title:Ljava/lang/String;

    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$Survey;->url:Ljava/lang/String;

    return-object p0
.end method
