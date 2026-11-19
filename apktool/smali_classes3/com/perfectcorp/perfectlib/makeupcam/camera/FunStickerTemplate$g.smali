.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;
    }
.end annotation


# instance fields
.field align_mode:Ljava/lang/String;

.field public transient c:I

.field capInsetBottom:I

.field capInsetLeft:I

.field capInsetRight:I

.field capInsetTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;->c:I

    return-void
.end method
