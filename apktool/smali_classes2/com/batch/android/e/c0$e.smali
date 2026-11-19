.class public final enum Lcom/batch/android/e/c0$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/e/c0$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/e/c0$e;

.field public static final enum c:Lcom/batch/android/e/c0$e;

.field public static final enum d:Lcom/batch/android/e/c0$e;

.field private static final synthetic e:[Lcom/batch/android/e/c0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/e/c0$e;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/c0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/c0$e;->b:Lcom/batch/android/e/c0$e;

    new-instance v0, Lcom/batch/android/e/c0$e;

    const-string v1, "RESOLVED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/c0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/c0$e;->c:Lcom/batch/android/e/c0$e;

    new-instance v0, Lcom/batch/android/e/c0$e;

    const-string v1, "REJECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/c0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/c0$e;->d:Lcom/batch/android/e/c0$e;

    invoke-static {}, Lcom/batch/android/e/c0$e;->a()[Lcom/batch/android/e/c0$e;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/c0$e;->e:[Lcom/batch/android/e/c0$e;

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

.method private static synthetic a()[Lcom/batch/android/e/c0$e;
    .locals 3

    sget-object v0, Lcom/batch/android/e/c0$e;->b:Lcom/batch/android/e/c0$e;

    sget-object v1, Lcom/batch/android/e/c0$e;->c:Lcom/batch/android/e/c0$e;

    sget-object v2, Lcom/batch/android/e/c0$e;->d:Lcom/batch/android/e/c0$e;

    filled-new-array {v0, v1, v2}, [Lcom/batch/android/e/c0$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/c0$e;
    .locals 1

    const-class v0, Lcom/batch/android/e/c0$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/e/c0$e;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/e/c0$e;
    .locals 1

    sget-object v0, Lcom/batch/android/e/c0$e;->e:[Lcom/batch/android/e/c0$e;

    invoke-virtual {v0}, [Lcom/batch/android/e/c0$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/c0$e;

    return-object v0
.end method
