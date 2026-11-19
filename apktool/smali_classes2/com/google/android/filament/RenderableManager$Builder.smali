.class public Lcom/google/android/filament/RenderableManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/RenderableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;

.field public final b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/filament/RenderableManager;->i(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    new-instance p1, Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/filament/RenderableManager$Builder;->a:Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/filament/Engine;I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p0

    invoke-static {p2, v0, v1, p0, p1}, Lcom/google/android/filament/RenderableManager;->b(IJJ)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Couldn\'t create Renderable component for entity "

    const-string p1, ", see log."

    invoke-static {p2, p0, p1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
