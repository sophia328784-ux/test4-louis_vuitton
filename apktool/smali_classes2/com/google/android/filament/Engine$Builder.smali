.class public Lcom/google/android/filament/Engine$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Engine$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/Engine$Builder$BuilderFinalizer;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/Engine;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/Engine$Builder;->b:J

    new-instance v2, Lcom/google/android/filament/Engine$Builder$BuilderFinalizer;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/Engine$Builder$BuilderFinalizer;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/filament/Engine$Builder;->a:Lcom/google/android/filament/Engine$Builder$BuilderFinalizer;

    return-void
.end method
