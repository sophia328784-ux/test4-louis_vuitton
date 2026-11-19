.class final enum Lcom/dynatrace/android/callback/CbConstants$WrMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/callback/CbConstants$WrMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/callback/CbConstants$WrMethod;

.field public static final enum enqueue:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

.field public static final enum execute:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

.field public static final enum getInputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

.field public static final enum getOutputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

.field public static final enum getResponseCode:Lcom/dynatrace/android/callback/CbConstants$WrMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    const-string v1, "getInputStream"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getInputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    new-instance v1, Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    const-string v2, "getOutputStream"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getOutputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    new-instance v2, Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    const-string v3, "getResponseCode"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getResponseCode:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    new-instance v3, Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    const-string v4, "execute"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->execute:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    new-instance v4, Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    const-string v5, "enqueue"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->enqueue:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->$VALUES:[Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/callback/CbConstants$WrMethod;
    .locals 1

    const-class v0, Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/callback/CbConstants$WrMethod;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->$VALUES:[Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    invoke-virtual {v0}, [Lcom/dynatrace/android/callback/CbConstants$WrMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    return-object v0
.end method
