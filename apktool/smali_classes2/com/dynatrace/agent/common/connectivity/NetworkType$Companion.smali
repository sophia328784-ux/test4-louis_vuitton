.class public final Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/common/connectivity/NetworkType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/dynatrace/agent/common/connectivity/NetworkType$Companion;",
        "",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dynatrace/agent/common/connectivity/NetworkType;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "wired"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->ETHERNET:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    return-object p0

    :sswitch_1
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->WIFI:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    return-object p0

    :sswitch_2
    const-string v0, "cell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->CELLULAR:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    return-object p0

    :sswitch_3
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->OTHER:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    return-object p0

    :sswitch_4
    const-string v0, "unavailable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to resolve network type \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->NONE:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/dynatrace/agent/common/connectivity/NetworkType;->NONE:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x27aa27b0 -> :sswitch_4
        -0x10fa53b6 -> :sswitch_3
        0x2e8962 -> :sswitch_2
        0x37af15 -> :sswitch_1
        0x6be607f -> :sswitch_0
    .end sparse-switch
.end method
