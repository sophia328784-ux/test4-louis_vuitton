.class final enum Lcom/dynatrace/android/callback/CbConstants$WrStates;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/callback/CbConstants$WrStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/callback/CbConstants$WrStates;

.field public static final enum POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

.field public static final enum POST_EXEC_FINALIZE:Lcom/dynatrace/android/callback/CbConstants$WrStates;

.field public static final enum POST_EXEC_OK:Lcom/dynatrace/android/callback/CbConstants$WrStates;

.field public static final enum PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dynatrace/android/callback/CbConstants$WrStates;

    const-string v1, "PRE_EXEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    new-instance v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;

    const-string v2, "POST_EXEC_OK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_OK:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    new-instance v2, Lcom/dynatrace/android/callback/CbConstants$WrStates;

    const-string v3, "POST_EXEC_ERR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_ERR:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    new-instance v3, Lcom/dynatrace/android/callback/CbConstants$WrStates;

    const-string v4, "POST_EXEC_FINALIZE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dynatrace/android/callback/CbConstants$WrStates;->POST_EXEC_FINALIZE:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dynatrace/android/callback/CbConstants$WrStates;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/callback/CbConstants$WrStates;->$VALUES:[Lcom/dynatrace/android/callback/CbConstants$WrStates;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/callback/CbConstants$WrStates;
    .locals 1

    const-class v0, Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/callback/CbConstants$WrStates;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/callback/CbConstants$WrStates;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CbConstants$WrStates;->$VALUES:[Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-virtual {v0}, [Lcom/dynatrace/android/callback/CbConstants$WrStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/callback/CbConstants$WrStates;

    return-object v0
.end method
