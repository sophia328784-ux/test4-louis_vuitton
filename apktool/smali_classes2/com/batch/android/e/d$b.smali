.class public final enum Lcom/batch/android/e/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/e/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/batch/android/e/d$b;

.field public static final enum d:Lcom/batch/android/e/d$b;

.field public static final enum e:Lcom/batch/android/e/d$b;

.field public static final enum f:Lcom/batch/android/e/d$b;

.field private static final synthetic g:[Lcom/batch/android/e/d$b;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/batch/android/e/d$b;

    const-string v1, "EAS"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/batch/android/e/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/d$b;->c:Lcom/batch/android/e/d$b;

    new-instance v0, Lcom/batch/android/e/d$b;

    const-string v1, "EAS_HEX"

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/batch/android/e/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/d$b;->d:Lcom/batch/android/e/d$b;

    new-instance v0, Lcom/batch/android/e/d$b;

    const-string v1, "EAS_BASE64"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/batch/android/e/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/d$b;->e:Lcom/batch/android/e/d$b;

    new-instance v0, Lcom/batch/android/e/d$b;

    const-string v1, "EAS_BASE64_GZIP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/batch/android/e/d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/d$b;->f:Lcom/batch/android/e/d$b;

    invoke-static {}, Lcom/batch/android/e/d$b;->a()[Lcom/batch/android/e/d$b;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/d$b;->g:[Lcom/batch/android/e/d$b;

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

    iput p3, p0, Lcom/batch/android/e/d$b;->b:I

    return-void
.end method

.method public static a(I)Lcom/batch/android/e/d$b;
    .locals 5

    invoke-static {}, Lcom/batch/android/e/d$b;->values()[Lcom/batch/android/e/d$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/batch/android/e/d$b;->b:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/batch/android/e/d$b;
    .locals 1

    .line 20
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/d$b;->valueOf(Ljava/lang/String;)Lcom/batch/android/e/d$b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic a()[Lcom/batch/android/e/d$b;
    .locals 4

    .line 21
    sget-object v0, Lcom/batch/android/e/d$b;->c:Lcom/batch/android/e/d$b;

    sget-object v1, Lcom/batch/android/e/d$b;->d:Lcom/batch/android/e/d$b;

    sget-object v2, Lcom/batch/android/e/d$b;->e:Lcom/batch/android/e/d$b;

    sget-object v3, Lcom/batch/android/e/d$b;->f:Lcom/batch/android/e/d$b;

    filled-new-array {v0, v1, v2, v3}, [Lcom/batch/android/e/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/d$b;
    .locals 1

    const-class v0, Lcom/batch/android/e/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/e/d$b;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/e/d$b;
    .locals 1

    sget-object v0, Lcom/batch/android/e/d$b;->g:[Lcom/batch/android/e/d$b;

    invoke-virtual {v0}, [Lcom/batch/android/e/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/d$b;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/batch/android/e/d$b;->b:I

    return p0
.end method
