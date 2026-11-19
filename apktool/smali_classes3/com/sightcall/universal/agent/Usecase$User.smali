.class public abstract Lcom/sightcall/universal/agent/Usecase$User;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "User"
.end annotation


# instance fields
.field public camera:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "camera"
    .end annotation
.end field

.field public consent:Lcom/sightcall/session/Reference$UseCase$Consent;
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation
.end field

.field public muted:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "muted"
    .end annotation
.end field

.field pointer:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "pointer"
    .end annotation
.end field

.field survey:Lcom/sightcall/universal/agent/Usecase$Survey;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "survey"
    .end annotation
.end field

.field public videoCapture:Lcom/sightcall/universal/agent/Usecase$VideoCapture;
    .annotation runtime Lcom/sightcall/universal/api/FallbackEnumField;
        value = ""
    .end annotation

    .annotation runtime Lcom/squareup/moshi/Json;
        name = "video-capture"
    .end annotation
.end field

.field public videoProfile:Lcom/sightcall/universal/agent/Usecase$VideoProfile;
    .annotation runtime Lcom/sightcall/universal/api/FallbackEnumField;
        value = ""
    .end annotation

    .annotation runtime Lcom/squareup/moshi/Json;
        name = "video-profile"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract chat()Lcom/sightcall/universal/agent/Usecase$Chat;
.end method

.method public survey()Lcom/sightcall/universal/agent/Usecase$Survey;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$User;->survey:Lcom/sightcall/universal/agent/Usecase$Survey;

    return-object p0
.end method
