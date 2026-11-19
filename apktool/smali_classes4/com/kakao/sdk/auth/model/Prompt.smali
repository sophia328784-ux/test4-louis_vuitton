.class public final enum Lcom/kakao/sdk/auth/model/Prompt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/auth/model/Prompt;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/model/Prompt;",
        "",
        "LOGIN",
        "CREATE",
        "SELECT_ACCOUNT",
        "CERT",
        "UNIFY_DAUM",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/auth/model/Prompt;

.field public static final enum CERT:Lcom/kakao/sdk/auth/model/Prompt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cert"
    .end annotation
.end field

.field public static final enum CREATE:Lcom/kakao/sdk/auth/model/Prompt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create"
    .end annotation
.end field

.field public static final enum LOGIN:Lcom/kakao/sdk/auth/model/Prompt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login"
    .end annotation
.end field

.field public static final enum SELECT_ACCOUNT:Lcom/kakao/sdk/auth/model/Prompt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "select_account"
    .end annotation
.end field

.field public static final enum UNIFY_DAUM:Lcom/kakao/sdk/auth/model/Prompt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unify_daum"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/kakao/sdk/auth/model/Prompt;

    const-string v1, "LOGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/auth/model/Prompt;->LOGIN:Lcom/kakao/sdk/auth/model/Prompt;

    new-instance v1, Lcom/kakao/sdk/auth/model/Prompt;

    const-string v2, "CREATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/auth/model/Prompt;->CREATE:Lcom/kakao/sdk/auth/model/Prompt;

    new-instance v2, Lcom/kakao/sdk/auth/model/Prompt;

    const-string v3, "SELECT_ACCOUNT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kakao/sdk/auth/model/Prompt;->SELECT_ACCOUNT:Lcom/kakao/sdk/auth/model/Prompt;

    new-instance v3, Lcom/kakao/sdk/auth/model/Prompt;

    const-string v4, "CERT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kakao/sdk/auth/model/Prompt;->CERT:Lcom/kakao/sdk/auth/model/Prompt;

    new-instance v4, Lcom/kakao/sdk/auth/model/Prompt;

    const-string v5, "UNIFY_DAUM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/kakao/sdk/auth/model/Prompt;->UNIFY_DAUM:Lcom/kakao/sdk/auth/model/Prompt;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/kakao/sdk/auth/model/Prompt;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/model/Prompt;->$VALUES:[Lcom/kakao/sdk/auth/model/Prompt;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/auth/model/Prompt;
    .locals 1

    const-class v0, Lcom/kakao/sdk/auth/model/Prompt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/auth/model/Prompt;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/auth/model/Prompt;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/auth/model/Prompt;->$VALUES:[Lcom/kakao/sdk/auth/model/Prompt;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/auth/model/Prompt;

    return-object v0
.end method
