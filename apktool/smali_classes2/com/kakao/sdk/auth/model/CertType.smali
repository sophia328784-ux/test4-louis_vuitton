.class public final enum Lcom/kakao/sdk/auth/model/CertType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/auth/model/CertType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/model/CertType;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "K2100",
        "K2220",
        "K3220",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/auth/model/CertType;

.field public static final enum K2100:Lcom/kakao/sdk/auth/model/CertType;

.field public static final enum K2220:Lcom/kakao/sdk/auth/model/CertType;

.field public static final enum K3220:Lcom/kakao/sdk/auth/model/CertType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/kakao/sdk/auth/model/CertType;

    const/4 v1, 0x0

    const-string v2, "k2100"

    const-string v3, "K2100"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/auth/model/CertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/auth/model/CertType;->K2100:Lcom/kakao/sdk/auth/model/CertType;

    new-instance v1, Lcom/kakao/sdk/auth/model/CertType;

    const/4 v2, 0x1

    const-string v3, "k2220"

    const-string v4, "K2220"

    invoke-direct {v1, v4, v2, v3}, Lcom/kakao/sdk/auth/model/CertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/kakao/sdk/auth/model/CertType;->K2220:Lcom/kakao/sdk/auth/model/CertType;

    new-instance v2, Lcom/kakao/sdk/auth/model/CertType;

    const/4 v3, 0x2

    const-string v4, "k3220"

    const-string v5, "K3220"

    invoke-direct {v2, v5, v3, v4}, Lcom/kakao/sdk/auth/model/CertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/kakao/sdk/auth/model/CertType;->K3220:Lcom/kakao/sdk/auth/model/CertType;

    filled-new-array {v0, v1, v2}, [Lcom/kakao/sdk/auth/model/CertType;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/model/CertType;->$VALUES:[Lcom/kakao/sdk/auth/model/CertType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakao/sdk/auth/model/CertType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/auth/model/CertType;
    .locals 1

    const-class v0, Lcom/kakao/sdk/auth/model/CertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/auth/model/CertType;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/auth/model/CertType;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/auth/model/CertType;->$VALUES:[Lcom/kakao/sdk/auth/model/CertType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/auth/model/CertType;

    return-object v0
.end method
