.class public final enum Lcom/batch/android/e/r$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/e/r$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/e/r$d;

.field public static final enum c:Lcom/batch/android/e/r$d;

.field public static final enum d:Lcom/batch/android/e/r$d;

.field private static final synthetic e:[Lcom/batch/android/e/r$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/e/r$d;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/r$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/r$d;->b:Lcom/batch/android/e/r$d;

    new-instance v0, Lcom/batch/android/e/r$d;

    const-string v1, "DISPLAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/r$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/r$d;->c:Lcom/batch/android/e/r$d;

    new-instance v0, Lcom/batch/android/e/r$d;

    const-string v1, "FORCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/r$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/r$d;->d:Lcom/batch/android/e/r$d;

    invoke-static {}, Lcom/batch/android/e/r$d;->a()[Lcom/batch/android/e/r$d;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/r$d;->e:[Lcom/batch/android/e/r$d;

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

.method private static synthetic a()[Lcom/batch/android/e/r$d;
    .locals 3

    sget-object v0, Lcom/batch/android/e/r$d;->b:Lcom/batch/android/e/r$d;

    sget-object v1, Lcom/batch/android/e/r$d;->c:Lcom/batch/android/e/r$d;

    sget-object v2, Lcom/batch/android/e/r$d;->d:Lcom/batch/android/e/r$d;

    filled-new-array {v0, v1, v2}, [Lcom/batch/android/e/r$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/r$d;
    .locals 1

    const-class v0, Lcom/batch/android/e/r$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/e/r$d;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/e/r$d;
    .locals 1

    sget-object v0, Lcom/batch/android/e/r$d;->e:[Lcom/batch/android/e/r$d;

    invoke-virtual {v0}, [Lcom/batch/android/e/r$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/r$d;

    return-object v0
.end method
