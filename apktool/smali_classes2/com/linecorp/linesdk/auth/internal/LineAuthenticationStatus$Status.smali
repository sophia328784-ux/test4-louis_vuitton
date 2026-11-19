.class final enum Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

.field public static final enum INIT:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

.field public static final enum INTENT_HANDLED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

.field public static final enum INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

.field public static final enum STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INIT:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    new-instance v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    const-string v2, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    new-instance v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    const-string v3, "INTENT_RECEIVED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    new-instance v3, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    const-string v4, "INTENT_HANDLED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_HANDLED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    filled-new-array {v0, v1, v2, v3}, [Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->$VALUES:[Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->$VALUES:[Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    return-object v0
.end method
