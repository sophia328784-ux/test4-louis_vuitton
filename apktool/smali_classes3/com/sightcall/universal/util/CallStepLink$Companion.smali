.class public final Lcom/sightcall/universal/util/CallStepLink$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/util/CallStepLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sightcall/universal/util/CallStepLink$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/sightcall/universal/util/StepLink;",
        "config",
        "Lcom/sightcall/universal/model/Config;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/util/CallStepLink$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/util/StepLink;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/util/CallStepLink;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sightcall/universal/util/CallStepLink;-><init>(Lcom/sightcall/universal/model/Config;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
