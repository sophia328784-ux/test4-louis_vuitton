.class public Lcom/google/android/filament/Texture$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/Texture;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->b:J

    new-instance v2, Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/Texture$Builder;->a:Lcom/google/android/filament/Texture$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/Texture;->a(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Texture;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/Texture;-><init>(J)V

    return-object v0

    :cond_0
    const-string p0, "Couldn\'t create Texture"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lcom/google/android/filament/Texture$InternalFormat;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0, v0, v1}, Lcom/google/android/filament/Texture;->b(IJ)V

    return-void
.end method

.method public final c(Lcom/google/android/filament/Texture$Sampler;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/Texture$Builder;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0, v0, v1}, Lcom/google/android/filament/Texture;->f(IJ)V

    return-void
.end method
