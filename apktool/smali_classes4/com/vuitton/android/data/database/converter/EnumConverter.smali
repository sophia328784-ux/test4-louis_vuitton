.class public final Lcom/vuitton/android/data/database/converter/EnumConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/data/database/converter/EnumConverter;",
        "",
        "<init>",
        "()V",
        "data"
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->Companion:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->values()[Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "Array contains no element matching the predicate."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
