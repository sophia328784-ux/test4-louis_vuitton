.class final enum Lcom/sightcall/universal/ar/ArUnit$2;
.super Lcom/sightcall/universal/ar/ArUnit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ar/ArUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# static fields
.field private static final EIGHTH:D = 0.125

.field private static final HALF_EIGHTH:D = 0.0625


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "IMPERIAL"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sightcall/universal/ar/ArUnit$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/sightcall/universal/ar/ArUnit;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private fraction(D)Ljava/lang/String;
    .locals 3

    const-wide/high16 v0, 0x3fee000000000000L    # 0.9375

    cmpl-double p0, p1, v0

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    return-object v0

    :cond_0
    const-wide/high16 v1, 0x3fea000000000000L    # 0.8125

    cmpl-double p0, p1, v1

    if-ltz p0, :cond_1

    const-string p0, "\u215e"

    return-object p0

    :cond_1
    const-wide/high16 v1, 0x3fe6000000000000L    # 0.6875

    cmpl-double p0, p1, v1

    if-ltz p0, :cond_2

    const-string p0, "\u00be"

    return-object p0

    :cond_2
    const-wide/high16 v1, 0x3fe2000000000000L    # 0.5625

    cmpl-double p0, p1, v1

    if-ltz p0, :cond_3

    const-string p0, "\u215d"

    return-object p0

    :cond_3
    const-wide/high16 v1, 0x3fdc000000000000L    # 0.4375

    cmpl-double p0, p1, v1

    if-ltz p0, :cond_4

    const-string p0, "\u00bd"

    return-object p0

    :cond_4
    const-wide/high16 v1, 0x3fd4000000000000L    # 0.3125

    cmpl-double p0, p1, v1

    if-ltz p0, :cond_5

    const-string p0, "\u215c"

    return-object p0

    :cond_5
    const-wide/high16 v1, 0x3fc8000000000000L    # 0.1875

    cmpl-double p0, p1, v1

    if-ltz p0, :cond_6

    const-string p0, "\u00bc"

    return-object p0

    :cond_6
    const-wide/high16 v1, 0x3fb0000000000000L    # 0.0625

    cmpl-double p0, p1, v1

    if-ltz p0, :cond_7

    const-string p0, "\u215b"

    return-object p0

    :cond_7
    return-object v0
.end method

.method private shouldRoundUp(D)Z
    .locals 2

    const-wide/high16 v0, 0x3fee000000000000L    # 0.9375

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public format(Ljava/util/Locale;D)Ljava/lang/String;
    .locals 4

    const-wide v0, 0x3fd381d7dbf487fdL    # 0.3048

    div-double/2addr p2, v0

    double-to-int v0, p2

    int-to-double v1, v0

    sub-double/2addr p2, v1

    const-wide v1, 0x3fb5551d68c692f7L    # 0.08333

    div-double/2addr p2, v1

    double-to-int v1, p2

    int-to-double v2, v1

    sub-double/2addr p2, v2

    invoke-direct {p0, p2, p3}, Lcom/sightcall/universal/ar/ArUnit$2;->shouldRoundUp(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xc

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, p2, p3}, Lcom/sightcall/universal/ar/ArUnit$2;->fraction(D)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_5

    const-string p2, "%d\u2033"

    if-nez v1, :cond_3

    if-nez p0, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "\u2033"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%d %s\u2033"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez v1, :cond_7

    if-nez p0, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%d\u2032"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%d\u2032 %s\u2033"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p0, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%d\u2032 %d\u2033"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%d\u2032 %d %s\u2033"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
