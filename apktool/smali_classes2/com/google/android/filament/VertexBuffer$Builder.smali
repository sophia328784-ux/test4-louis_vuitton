.class public Lcom/google/android/filament/VertexBuffer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/VertexBuffer;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->b:J

    new-instance v2, Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/VertexBuffer$Builder;->a:Lcom/google/android/filament/VertexBuffer$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;I)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-wide v4, p0, Lcom/google/android/filament/VertexBuffer$Builder;->b:J

    move v1, p2

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/VertexBuffer;->a(IIIIJ)V

    return-void
.end method

.method public final b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer$Builder;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/VertexBuffer;->c(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/VertexBuffer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide p0, v0, Lcom/google/android/filament/VertexBuffer;->a:J

    return-object v0

    :cond_0
    const-string p0, "Couldn\'t create VertexBuffer"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
