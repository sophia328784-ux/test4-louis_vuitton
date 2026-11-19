.class public abstract Lcom/google/android/filament/Colors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Colors$LinearColor;
    }
.end annotation


# direct methods
.method public static a()[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const v1, 0x45cb2000    # 6500.0f

    invoke-static {v1, v0}, Lcom/google/android/filament/Colors;->nCct(F[F)V

    return-object v0
.end method

.method private static native nCct(F[F)V
.end method
