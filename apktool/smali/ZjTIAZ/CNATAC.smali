.class public LZjTIAZ/CNATAC;
.super Ljava/lang/Object;


# static fields
.field public static j:[C


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:I

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:F


# direct methods
.method public constructor <init>(IJIIFFIJJF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LZjTIAZ/CNATAC;->a:I

    iput p5, p0, LZjTIAZ/CNATAC;->b:I

    iput p6, p0, LZjTIAZ/CNATAC;->c:F

    iput p7, p0, LZjTIAZ/CNATAC;->d:F

    iput p8, p0, LZjTIAZ/CNATAC;->e:I

    iput-wide p2, p0, LZjTIAZ/CNATAC;->f:J

    iput-wide p9, p0, LZjTIAZ/CNATAC;->g:J

    iput-wide p11, p0, LZjTIAZ/CNATAC;->h:J

    iput p13, p0, LZjTIAZ/CNATAC;->i:F

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, LZjTIAZ/CNATAC;->j:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x7fff

    new-array v2, v0, [C

    sput-object v2, LZjTIAZ/CNATAC;->j:[C

    const/4 v2, 0x3

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    xor-int v4, v2, v3

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x8

    rem-int/lit8 v2, v2, 0x3f

    sget-object v4, LZjTIAZ/CNATAC;->j:[C

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

    sget-object v5, LZjTIAZ/CNATAC;->j:[C

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
