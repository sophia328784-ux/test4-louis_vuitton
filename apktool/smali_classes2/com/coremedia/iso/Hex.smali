.class public Lcom/coremedia/iso/Hex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coremedia/iso/Hex;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[B)Ljava/lang/String;
    .locals 8

    array-length v0, p1

    shl-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-lez p0, :cond_0

    div-int v3, v0, p0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v1, v3

    new-array v1, v1, [C

    move v3, v2

    :goto_1
    if-lt v2, v0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_1
    if-lez p0, :cond_2

    rem-int v4, v2, p0

    if-nez v4, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2d

    aput-char v5, v1, v3

    move v3, v4

    :cond_2
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p1, v2

    and-int/lit16 v6, v5, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    sget-object v7, Lcom/coremedia/iso/Hex;->a:[C

    aget-char v6, v7, v6

    aput-char v6, v1, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
