.class public Lcom/google/android/filament/TextureSampler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/TextureSampler$MinFilter;,
        Lcom/google/android/filament/TextureSampler$MagFilter;,
        Lcom/google/android/filament/TextureSampler$WrapMode;,
        Lcom/google/android/filament/TextureSampler$CompareFunction;,
        Lcom/google/android/filament/TextureSampler$CompareMode;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    sget-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    sget-object v1, Lcom/google/android/filament/TextureSampler$MagFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MagFilter;

    sget-object v2, Lcom/google/android/filament/TextureSampler$WrapMode;->REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$CompareMode;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->LESS_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    invoke-direct {p0, p1, v0}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$CompareMode;Lcom/google/android/filament/TextureSampler$CompareFunction;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$CompareMode;Lcom/google/android/filament/TextureSampler$CompareFunction;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    .line 40
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/filament/TextureSampler;->nCreateCompareSampler(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$MagFilter;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-direct {p0, p1, v0}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/google/android/filament/TextureSampler$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 42
    sget-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 44
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V
    .locals 6

    move-object v4, p3

    move-object v5, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;Lcom/google/android/filament/TextureSampler$WrapMode;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;Lcom/google/android/filament/TextureSampler$WrapMode;Lcom/google/android/filament/TextureSampler$WrapMode;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/filament/TextureSampler;->nCreateSampler(IIIII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method private static native nCreateCompareSampler(II)J
.end method

.method private static native nCreateSampler(IIIII)J
.end method

.method private static native nSetAnisotropy(JF)J
.end method

.method private static native nSetMagFilter(JI)J
.end method

.method private static native nSetMinFilter(JI)J
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/high16 v0, 0x41000000    # 8.0f

    iget-wide v1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/TextureSampler;->nSetAnisotropy(JF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public final b(Lcom/google/android/filament/TextureSampler$MagFilter;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetMagFilter(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public final c(Lcom/google/android/filament/TextureSampler$MinFilter;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetMinFilter(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method
