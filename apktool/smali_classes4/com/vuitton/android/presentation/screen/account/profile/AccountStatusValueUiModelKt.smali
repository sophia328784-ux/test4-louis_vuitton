.class public abstract Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModelKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;)Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;->a:Lcom/vuitton/foundation/model/domain/model/account/AccountStatusValue;

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;->ACTIVATED:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;->UNACTIVATED:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;->UNKNOWN:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;

    :goto_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;-><init>(Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusValueUiModel;Ljava/lang/String;)V

    return-object v0
.end method
