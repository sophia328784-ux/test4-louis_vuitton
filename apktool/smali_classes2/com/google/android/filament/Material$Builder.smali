.class public Lcom/google/android/filament/Material$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Material$Builder$ShadowSamplingQuality;
    }
.end annotation


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public b:I

.field public final c:Lcom/google/android/filament/Material$Builder$ShadowSamplingQuality;

.field public final d:Lcom/google/android/filament/Material$UboBatchingMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/filament/Material$Builder$ShadowSamplingQuality;->LOW:Lcom/google/android/filament/Material$Builder$ShadowSamplingQuality;

    iput-object v0, p0, Lcom/google/android/filament/Material$Builder;->c:Lcom/google/android/filament/Material$Builder$ShadowSamplingQuality;

    sget-object v0, Lcom/google/android/filament/Material$UboBatchingMode;->DEFAULT:Lcom/google/android/filament/Material$UboBatchingMode;

    iput-object v0, p0, Lcom/google/android/filament/Material$Builder;->d:Lcom/google/android/filament/Material$UboBatchingMode;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/filament/Material$Builder;->a:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/filament/Material$Builder;->b:I

    iget-object p1, p0, Lcom/google/android/filament/Material$Builder;->c:Lcom/google/android/filament/Material$Builder$ShadowSamplingQuality;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iget-object p0, p0, Lcom/google/android/filament/Material$Builder;->d:Lcom/google/android/filament/Material$UboBatchingMode;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Material;->a(JLjava/nio/ByteBuffer;III)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Material;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/Material;-><init>(J)V

    return-object v0

    :cond_0
    const-string p0, "Couldn\'t create Material"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
