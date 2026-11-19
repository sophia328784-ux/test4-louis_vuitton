.class public final enum Lcom/batch/android/BatchMigration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/BatchMigration;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM_DATA:Lcom/batch/android/BatchMigration;

.field public static final enum CUSTOM_ID:Lcom/batch/android/BatchMigration;

.field public static final enum NONE:Lcom/batch/android/BatchMigration;

.field private static final synthetic c:[Lcom/batch/android/BatchMigration;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/BatchMigration;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/BatchMigration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/BatchMigration;->NONE:Lcom/batch/android/BatchMigration;

    new-instance v0, Lcom/batch/android/BatchMigration;

    const-string v1, "CUSTOM_ID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/BatchMigration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/BatchMigration;->CUSTOM_ID:Lcom/batch/android/BatchMigration;

    new-instance v0, Lcom/batch/android/BatchMigration;

    const-string v1, "CUSTOM_DATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/BatchMigration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/BatchMigration;->CUSTOM_DATA:Lcom/batch/android/BatchMigration;

    invoke-static {}, Lcom/batch/android/BatchMigration;->a()[Lcom/batch/android/BatchMigration;

    move-result-object v0

    sput-object v0, Lcom/batch/android/BatchMigration;->c:[Lcom/batch/android/BatchMigration;

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

    iput p3, p0, Lcom/batch/android/BatchMigration;->b:I

    return-void
.end method

.method private static synthetic a()[Lcom/batch/android/BatchMigration;
    .locals 3

    sget-object v0, Lcom/batch/android/BatchMigration;->NONE:Lcom/batch/android/BatchMigration;

    sget-object v1, Lcom/batch/android/BatchMigration;->CUSTOM_ID:Lcom/batch/android/BatchMigration;

    sget-object v2, Lcom/batch/android/BatchMigration;->CUSTOM_DATA:Lcom/batch/android/BatchMigration;

    filled-new-array {v0, v1, v2}, [Lcom/batch/android/BatchMigration;

    move-result-object v0

    return-object v0
.end method

.method public static fromValue(I)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lcom/batch/android/BatchMigration;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/batch/android/BatchMigration;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/BatchMigration;->values()[Lcom/batch/android/BatchMigration;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    sget-object v5, Lcom/batch/android/BatchMigration;->NONE:Lcom/batch/android/BatchMigration;

    if-eq v4, v5, :cond_0

    iget v5, v4, Lcom/batch/android/BatchMigration;->b:I

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

    sget-object p0, Lcom/batch/android/BatchMigration;->NONE:Lcom/batch/android/BatchMigration;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static isCustomDataMigrationDisabled(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/batch/android/BatchMigration;->fromValue(I)Ljava/util/EnumSet;

    move-result-object p0

    sget-object v0, Lcom/batch/android/BatchMigration;->CUSTOM_DATA:Lcom/batch/android/BatchMigration;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCustomIDMigrationDisabled(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/batch/android/BatchMigration;->fromValue(I)Ljava/util/EnumSet;

    move-result-object p0

    sget-object v0, Lcom/batch/android/BatchMigration;->CUSTOM_ID:Lcom/batch/android/BatchMigration;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toValue(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/batch/android/BatchMigration;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/BatchMigration;

    iget v1, v1, Lcom/batch/android/BatchMigration;->b:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/BatchMigration;
    .locals 1

    const-class v0, Lcom/batch/android/BatchMigration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/BatchMigration;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/BatchMigration;
    .locals 1

    sget-object v0, Lcom/batch/android/BatchMigration;->c:[Lcom/batch/android/BatchMigration;

    invoke-virtual {v0}, [Lcom/batch/android/BatchMigration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/BatchMigration;

    return-object v0
.end method
