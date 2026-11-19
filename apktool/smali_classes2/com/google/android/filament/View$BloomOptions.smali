.class public Lcom/google/android/filament/View$BloomOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BloomOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$BloomOptions$BlendMode;
    }
.end annotation


# instance fields
.field public a:F

.field public final b:Lcom/google/android/filament/View$BloomOptions$BlendMode;

.field public c:Z

.field public d:Z

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/filament/View$BloomOptions;->a:F

    sget-object v0, Lcom/google/android/filament/View$BloomOptions$BlendMode;->ADD:Lcom/google/android/filament/View$BloomOptions$BlendMode;

    iput-object v0, p0, Lcom/google/android/filament/View$BloomOptions;->b:Lcom/google/android/filament/View$BloomOptions$BlendMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/filament/View$BloomOptions;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/View$BloomOptions;->d:Z

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/google/android/filament/View$BloomOptions;->e:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/google/android/filament/View$BloomOptions;->f:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/filament/View$BloomOptions;->g:F

    return-void
.end method
