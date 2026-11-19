.class public Lcom/google/android/filament/Material;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Material$CullingMode;,
        Lcom/google/android/filament/Material$Builder;,
        Lcom/google/android/filament/Material$Parameter;,
        Lcom/google/android/filament/Material$UboBatchingMode;
    }
.end annotation


# instance fields
.field public a:J

.field public final b:Lcom/google/android/filament/MaterialInstance;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Material;->a:J

    invoke-static {p1, p2}, Lcom/google/android/filament/Material;->nGetDefaultInstance(J)J

    move-result-wide p1

    new-instance v0, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->c()J

    iput-wide p1, v0, Lcom/google/android/filament/MaterialInstance;->a:J

    iput-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    return-void
.end method

.method public static bridge synthetic a(JLjava/nio/ByteBuffer;III)J
    .locals 7

    const/4 v4, 0x0

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/Material;->nBuilderBuild(JLjava/nio/Buffer;IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native nBuilderBuild(JLjava/nio/Buffer;IIII)J
.end method

.method private static native nCreateInstance(J)J
.end method

.method private static native nGetDefaultInstance(J)J
.end method


# virtual methods
.method public final b()Lcom/google/android/filament/MaterialInstance;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nCreateInstance(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->c()J

    iput-wide v0, v2, Lcom/google/android/filament/MaterialInstance;->a:J

    return-object v2

    :cond_0
    const-string p0, "Couldn\'t create MaterialInstance"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Material;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed Material"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
