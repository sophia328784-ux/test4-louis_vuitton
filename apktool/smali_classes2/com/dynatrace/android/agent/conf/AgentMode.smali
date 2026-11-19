.class public final enum Lcom/dynatrace/android/agent/conf/AgentMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/agent/conf/AgentMode;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/agent/conf/AgentMode;

.field public static final enum APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SAAS:Lcom/dynatrace/android/agent/conf/AgentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynatrace/android/agent/conf/AgentMode;

    const-string v1, "APP_MON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/android/agent/conf/AgentMode;->APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;

    new-instance v1, Lcom/dynatrace/android/agent/conf/AgentMode;

    const-string v2, "SAAS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/AgentMode;->SAAS:Lcom/dynatrace/android/agent/conf/AgentMode;

    filled-new-array {v0, v1}, [Lcom/dynatrace/android/agent/conf/AgentMode;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/conf/AgentMode;->$VALUES:[Lcom/dynatrace/android/agent/conf/AgentMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/AgentMode;
    .locals 1

    const-class v0, Lcom/dynatrace/android/agent/conf/AgentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/conf/AgentMode;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/agent/conf/AgentMode;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/conf/AgentMode;->$VALUES:[Lcom/dynatrace/android/agent/conf/AgentMode;

    invoke-virtual {v0}, [Lcom/dynatrace/android/agent/conf/AgentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/agent/conf/AgentMode;

    return-object v0
.end method
