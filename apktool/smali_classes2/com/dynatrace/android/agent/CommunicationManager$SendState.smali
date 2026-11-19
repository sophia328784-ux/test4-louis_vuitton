.class final enum Lcom/dynatrace/android/agent/CommunicationManager$SendState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/android/agent/CommunicationManager$SendState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dynatrace/android/agent/CommunicationManager$SendState;

.field public static final enum DATA_NOT_SENT:Lcom/dynatrace/android/agent/CommunicationManager$SendState;

.field public static final enum FINISHED:Lcom/dynatrace/android/agent/CommunicationManager$SendState;

.field public static final enum MORE_DATA_AVAILABLE:Lcom/dynatrace/android/agent/CommunicationManager$SendState;

.field public static final enum NO_DATA:Lcom/dynatrace/android/agent/CommunicationManager$SendState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    const-string v1, "NO_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->NO_DATA:Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    new-instance v1, Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    const-string v2, "DATA_NOT_SENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->DATA_NOT_SENT:Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    new-instance v2, Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    const-string v3, "MORE_DATA_AVAILABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->MORE_DATA_AVAILABLE:Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    new-instance v3, Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    const-string v4, "FINISHED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->FINISHED:Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->$VALUES:[Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/CommunicationManager$SendState;
    .locals 1

    const-class v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/android/agent/CommunicationManager$SendState;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->$VALUES:[Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    invoke-virtual {v0}, [Lcom/dynatrace/android/agent/CommunicationManager$SendState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    return-object v0
.end method
