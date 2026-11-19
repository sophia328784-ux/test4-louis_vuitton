.class final enum Lcom/batch/android/Batch$Messaging$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch$Messaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/Batch$Messaging$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/Batch$Messaging$a;

.field public static final enum c:Lcom/batch/android/Batch$Messaging$a;

.field private static final synthetic d:[Lcom/batch/android/Batch$Messaging$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/Batch$Messaging$a;

    const-string v1, "TRANSVERSE_HIERARCHY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$Messaging$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$Messaging$a;->b:Lcom/batch/android/Batch$Messaging$a;

    new-instance v0, Lcom/batch/android/Batch$Messaging$a;

    const-string v1, "EMBED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/Batch$Messaging$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/Batch$Messaging$a;->c:Lcom/batch/android/Batch$Messaging$a;

    invoke-static {}, Lcom/batch/android/Batch$Messaging$a;->a()[Lcom/batch/android/Batch$Messaging$a;

    move-result-object v0

    sput-object v0, Lcom/batch/android/Batch$Messaging$a;->d:[Lcom/batch/android/Batch$Messaging$a;

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

.method private static synthetic a()[Lcom/batch/android/Batch$Messaging$a;
    .locals 2

    sget-object v0, Lcom/batch/android/Batch$Messaging$a;->b:Lcom/batch/android/Batch$Messaging$a;

    sget-object v1, Lcom/batch/android/Batch$Messaging$a;->c:Lcom/batch/android/Batch$Messaging$a;

    filled-new-array {v0, v1}, [Lcom/batch/android/Batch$Messaging$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/Batch$Messaging$a;
    .locals 1

    const-class v0, Lcom/batch/android/Batch$Messaging$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/Batch$Messaging$a;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/Batch$Messaging$a;
    .locals 1

    sget-object v0, Lcom/batch/android/Batch$Messaging$a;->d:[Lcom/batch/android/Batch$Messaging$a;

    invoke-virtual {v0}, [Lcom/batch/android/Batch$Messaging$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/Batch$Messaging$a;

    return-object v0
.end method
