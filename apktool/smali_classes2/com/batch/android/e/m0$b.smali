.class public final enum Lcom/batch/android/e/m0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/e/m0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/batch/android/e/m0$b;

.field public static final enum d:Lcom/batch/android/e/m0$b;

.field public static final enum e:Lcom/batch/android/e/m0$b;

.field private static final synthetic f:[Lcom/batch/android/e/m0$b;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/batch/android/e/m0$b;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/batch/android/e/m0$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/m0$b;->c:Lcom/batch/android/e/m0$b;

    new-instance v0, Lcom/batch/android/e/m0$b;

    const-string v1, "VALUE"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/batch/android/e/m0$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/m0$b;->d:Lcom/batch/android/e/m0$b;

    new-instance v0, Lcom/batch/android/e/m0$b;

    const-string v1, "EACH"

    invoke-direct {v0, v1, v3, v4}, Lcom/batch/android/e/m0$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/m0$b;->e:Lcom/batch/android/e/m0$b;

    invoke-static {}, Lcom/batch/android/e/m0$b;->a()[Lcom/batch/android/e/m0$b;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/m0$b;->f:[Lcom/batch/android/e/m0$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/batch/android/e/m0$b;->b:I

    return-void
.end method

.method public static a(I)Lcom/batch/android/e/m0$b;
    .locals 5

    invoke-static {}, Lcom/batch/android/e/m0$b;->values()[Lcom/batch/android/e/m0$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/batch/android/e/m0$b;->b()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic a()[Lcom/batch/android/e/m0$b;
    .locals 3

    .line 22
    sget-object v0, Lcom/batch/android/e/m0$b;->c:Lcom/batch/android/e/m0$b;

    sget-object v1, Lcom/batch/android/e/m0$b;->d:Lcom/batch/android/e/m0$b;

    sget-object v2, Lcom/batch/android/e/m0$b;->e:Lcom/batch/android/e/m0$b;

    filled-new-array {v0, v1, v2}, [Lcom/batch/android/e/m0$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/m0$b;
    .locals 1

    const-class v0, Lcom/batch/android/e/m0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/e/m0$b;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/e/m0$b;
    .locals 1

    sget-object v0, Lcom/batch/android/e/m0$b;->f:[Lcom/batch/android/e/m0$b;

    invoke-virtual {v0}, [Lcom/batch/android/e/m0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/m0$b;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/batch/android/e/m0$b;->b:I

    return p0
.end method
