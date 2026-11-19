.class public final enum Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch$Messaging$LifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessagingCloseReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Action:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

.field public static final enum Auto:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

.field public static final enum Error:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

.field public static final enum User:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

.field private static final synthetic b:[Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    const-string v1, "Auto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->Auto:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    new-instance v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    const-string v1, "User"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->User:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    new-instance v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    const-string v1, "Action"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->Action:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    new-instance v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    const-string v1, "Error"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->Error:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    invoke-static {}, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->a()[Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    move-result-object v0

    sput-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->b:[Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;
    .locals 4

    sget-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->Auto:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    sget-object v1, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->User:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    sget-object v2, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->Action:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    sget-object v3, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->Error:Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    filled-new-array {v0, v1, v2, v3}, [Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;
    .locals 1

    const-class v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;
    .locals 1

    sget-object v0, Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->b:[Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    invoke-virtual {v0}, [Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;

    return-object v0
.end method
