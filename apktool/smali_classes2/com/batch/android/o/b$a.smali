.class public final enum Lcom/batch/android/o/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/o/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/batch/android/o/b$a;

.field public static final enum d:Lcom/batch/android/o/b$a;

.field public static final enum e:Lcom/batch/android/o/b$a;

.field private static final synthetic f:[Lcom/batch/android/o/b$a;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/batch/android/o/b$a;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/o/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/o/b$a;->c:Lcom/batch/android/o/b$a;

    new-instance v0, Lcom/batch/android/o/b$a;

    const-string v1, "SENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/o/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/o/b$a;->d:Lcom/batch/android/o/b$a;

    new-instance v0, Lcom/batch/android/o/b$a;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "OLD"

    invoke-direct {v0, v3, v1, v2}, Lcom/batch/android/o/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/o/b$a;->e:Lcom/batch/android/o/b$a;

    invoke-static {}, Lcom/batch/android/o/b$a;->a()[Lcom/batch/android/o/b$a;

    move-result-object v0

    sput-object v0, Lcom/batch/android/o/b$a;->f:[Lcom/batch/android/o/b$a;

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

    iput p3, p0, Lcom/batch/android/o/b$a;->b:I

    return-void
.end method

.method public static a(I)Lcom/batch/android/o/b$a;
    .locals 5

    invoke-static {}, Lcom/batch/android/o/b$a;->values()[Lcom/batch/android/o/b$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/batch/android/o/b$a;->b()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic a()[Lcom/batch/android/o/b$a;
    .locals 3

    .line 22
    sget-object v0, Lcom/batch/android/o/b$a;->c:Lcom/batch/android/o/b$a;

    sget-object v1, Lcom/batch/android/o/b$a;->d:Lcom/batch/android/o/b$a;

    sget-object v2, Lcom/batch/android/o/b$a;->e:Lcom/batch/android/o/b$a;

    filled-new-array {v0, v1, v2}, [Lcom/batch/android/o/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/o/b$a;
    .locals 1

    const-class v0, Lcom/batch/android/o/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/o/b$a;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/o/b$a;
    .locals 1

    sget-object v0, Lcom/batch/android/o/b$a;->f:[Lcom/batch/android/o/b$a;

    invoke-virtual {v0}, [Lcom/batch/android/o/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/o/b$a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/batch/android/o/b$a;->b:I

    return p0
.end method
