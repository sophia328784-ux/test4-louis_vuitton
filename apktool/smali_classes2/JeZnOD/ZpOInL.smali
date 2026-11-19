.class public LJeZnOD/ZpOInL;
.super Ljava/lang/Object;


# static fields
.field public static a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ku\u007f"

    invoke-static {v0}, LJeZnOD/ZpOInL;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ku\u007f\u001f\\jO$RJCm\u0014RCGNPVP"

    invoke-static {v0}, LJeZnOD/ZpOInL;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, LJeZnOD/ZpOInL;->a:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x7fff

    new-array v2, v0, [C

    sput-object v2, LJeZnOD/ZpOInL;->a:[C

    const/4 v2, 0x3

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    xor-int v4, v2, v3

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x72

    rem-int/lit8 v2, v2, 0x3f

    sget-object v4, LJeZnOD/ZpOInL;->a:[C

    int-to-char v5, v2

    aput-char v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    aget-char v3, v0, v1

    aget-char v4, v2, v1

    sget-object v5, LJeZnOD/ZpOInL;->a:[C

    aget-char v5, v5, v1

    xor-int/2addr v4, v5

    int-to-char v4, v4

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
