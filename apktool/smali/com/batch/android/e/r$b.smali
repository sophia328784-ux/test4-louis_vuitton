.class public final enum Lcom/batch/android/e/r$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/e/r$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/e/r$b;

.field public static final enum c:Lcom/batch/android/e/r$b;

.field private static final synthetic d:[Lcom/batch/android/e/r$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/e/r$b;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/r$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/r$b;->b:Lcom/batch/android/e/r$b;

    new-instance v0, Lcom/batch/android/e/r$b;

    const-string v1, "APEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/r$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/r$b;->c:Lcom/batch/android/e/r$b;

    invoke-static {}, Lcom/batch/android/e/r$b;->a()[Lcom/batch/android/e/r$b;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/r$b;->d:[Lcom/batch/android/e/r$b;

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

.method public static a(Ljava/lang/String;)Lcom/batch/android/e/r$b;
    .locals 1

    const-string v0, "apen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/batch/android/e/r$b;->c:Lcom/batch/android/e/r$b;

    return-object p0

    :cond_0
    sget-object p0, Lcom/batch/android/e/r$b;->b:Lcom/batch/android/e/r$b;

    return-object p0
.end method

.method private static synthetic a()[Lcom/batch/android/e/r$b;
    .locals 2

    .line 14
    sget-object v0, Lcom/batch/android/e/r$b;->b:Lcom/batch/android/e/r$b;

    sget-object v1, Lcom/batch/android/e/r$b;->c:Lcom/batch/android/e/r$b;

    filled-new-array {v0, v1}, [Lcom/batch/android/e/r$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/r$b;
    .locals 1

    const-class v0, Lcom/batch/android/e/r$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/e/r$b;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/e/r$b;
    .locals 1

    sget-object v0, Lcom/batch/android/e/r$b;->d:[Lcom/batch/android/e/r$b;

    invoke-virtual {v0}, [Lcom/batch/android/e/r$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/r$b;

    return-object v0
.end method
