.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;


# instance fields
.field public transient a:Z

.field reference_sticker_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;-><init>(I)V

    return-void
.end method
