.class public final Lcom/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/DYSdk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    iget-boolean p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->j:Z

    return p0

    :cond_0
    const-string p0, "configManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->k:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const-string p0, "configManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
