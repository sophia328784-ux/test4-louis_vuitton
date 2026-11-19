.class public final enum Lcom/batch/android/e/e0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/e/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/batch/android/e/e0;

.field public static final enum d:Lcom/batch/android/e/e0;

.field public static final enum e:Lcom/batch/android/e/e0;

.field public static final enum f:Lcom/batch/android/e/e0;

.field public static final enum g:Lcom/batch/android/e/e0;

.field private static final synthetic h:[Lcom/batch/android/e/e0;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/batch/android/e/e0;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/e/e0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/e0;->c:Lcom/batch/android/e/e0;

    new-instance v0, Lcom/batch/android/e/e0;

    const-string v1, "SOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/e/e0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/e0;->d:Lcom/batch/android/e/e0;

    new-instance v0, Lcom/batch/android/e/e0;

    const-string v1, "VIBRATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/e/e0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/e0;->e:Lcom/batch/android/e/e0;

    new-instance v0, Lcom/batch/android/e/e0;

    const-string v1, "LIGHTS"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/batch/android/e/e0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/e0;->f:Lcom/batch/android/e/e0;

    new-instance v0, Lcom/batch/android/e/e0;

    const-string v1, "ALERT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/batch/android/e/e0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/e/e0;->g:Lcom/batch/android/e/e0;

    invoke-static {}, Lcom/batch/android/e/e0;->a()[Lcom/batch/android/e/e0;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/e0;->h:[Lcom/batch/android/e/e0;

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

    iput p3, p0, Lcom/batch/android/e/e0;->b:I

    return-void
.end method

.method public static a(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/batch/android/e/e0;",
            ">;)I"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/e/e0;

    .line 46
    iget v1, v1, Lcom/batch/android/e/e0;->b:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(I)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lcom/batch/android/e/e0;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/batch/android/e/e0;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/e/e0;->values()[Lcom/batch/android/e/e0;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    sget-object v5, Lcom/batch/android/e/e0;->c:Lcom/batch/android/e/e0;

    if-eq v4, v5, :cond_0

    iget v5, v4, Lcom/batch/android/e/e0;->b:I

    and-int v6, p0, v5

    if-ne v6, v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/batch/android/e/e0;->c:Lcom/batch/android/e/e0;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private static synthetic a()[Lcom/batch/android/e/e0;
    .locals 5

    .line 44
    sget-object v0, Lcom/batch/android/e/e0;->c:Lcom/batch/android/e/e0;

    sget-object v1, Lcom/batch/android/e/e0;->d:Lcom/batch/android/e/e0;

    sget-object v2, Lcom/batch/android/e/e0;->e:Lcom/batch/android/e/e0;

    sget-object v3, Lcom/batch/android/e/e0;->f:Lcom/batch/android/e/e0;

    sget-object v4, Lcom/batch/android/e/e0;->g:Lcom/batch/android/e/e0;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/batch/android/e/e0;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/e0;
    .locals 1

    const-class v0, Lcom/batch/android/e/e0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/e/e0;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/e/e0;
    .locals 1

    sget-object v0, Lcom/batch/android/e/e0;->h:[Lcom/batch/android/e/e0;

    invoke-virtual {v0}, [Lcom/batch/android/e/e0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/e0;

    return-object v0
.end method
