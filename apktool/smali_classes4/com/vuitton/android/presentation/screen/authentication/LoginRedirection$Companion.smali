.class public final Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;
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
        "Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection$Companion;",
        "",
        "presentation"
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
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->PROFILE:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->ORDERS:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->REPAIR_SECTION:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->MY_EXCLUSIVE:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->EXCLUSIVE_SECTION:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    return-object p0

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->CERTIFICATE_LIST:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->CERTIFICATE_DETAIL:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->MY_CERTIFICATES:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->CERTIFICATE_DIAMONDS_ACTIVATION:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->PRIVACY_SETTINGS:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-object v0

    :cond_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    return-object p0
.end method
