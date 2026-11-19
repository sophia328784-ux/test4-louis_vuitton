.class public final Lcom/sightcall/universal/util/CallStepLink;
.super Lcom/sightcall/universal/util/StepLink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/util/CallStepLink$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sightcall/universal/util/CallStepLink;",
        "Lcom/sightcall/universal/util/StepLink;",
        "config",
        "Lcom/sightcall/universal/model/Config;",
        "<init>",
        "(Lcom/sightcall/universal/model/Config;)V",
        "createStep",
        "Lcom/sightcall/universal/scenario/Step;",
        "Companion",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/universal/util/CallStepLink$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/util/CallStepLink$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/util/CallStepLink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/universal/util/CallStepLink;->Companion:Lcom/sightcall/universal/util/CallStepLink$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/sightcall/universal/model/Config;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sightcall/universal/util/StepLink;-><init>(Lcom/sightcall/universal/model/Config;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/model/Config;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/util/CallStepLink;-><init>(Lcom/sightcall/universal/model/Config;)V

    return-void
.end method


# virtual methods
.method public createStep()Lcom/sightcall/universal/scenario/Step;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/StepLink;->getConfig()Lcom/sightcall/universal/model/Config;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/PermissionsStep;->nextStep(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
