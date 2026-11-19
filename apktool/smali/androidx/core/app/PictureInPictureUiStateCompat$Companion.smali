.class public final Landroidx/core/app/PictureInPictureUiStateCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/PictureInPictureUiStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/core/app/PictureInPictureUiStateCompat$Companion;",
        "",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/PictureInPictureUiState;)Landroidx/core/app/PictureInPictureUiStateCompat;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/PictureInPictureUiStateCompat;

    invoke-virtual {p0}, Landroid/app/PictureInPictureUiState;->isStashed()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/PictureInPictureUiState;->isTransitioningToPip()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/core/app/PictureInPictureUiStateCompat;-><init>(ZZ)V

    return-object v0

    :cond_0
    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/app/PictureInPictureUiStateCompat;

    invoke-virtual {p0}, Landroid/app/PictureInPictureUiState;->isStashed()Z

    move-result p0

    invoke-direct {v0, p0, v2}, Landroidx/core/app/PictureInPictureUiStateCompat;-><init>(ZZ)V

    return-object v0

    :cond_1
    new-instance p0, Landroidx/core/app/PictureInPictureUiStateCompat;

    invoke-direct {p0, v2, v2}, Landroidx/core/app/PictureInPictureUiStateCompat;-><init>(ZZ)V

    return-object p0
.end method
