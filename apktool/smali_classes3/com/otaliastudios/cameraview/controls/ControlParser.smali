.class public Lcom/otaliastudios/cameraview/controls/ControlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Preview;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/Preview;->b()I

    move-result v0

    const/16 v1, 0x26

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->a:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/otaliastudios/cameraview/controls/Facing;->BACK:Lcom/otaliastudios/cameraview/controls/Facing;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/otaliastudios/cameraview/controls/Facing;->BACK:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/CameraUtils;->a(Lcom/otaliastudios/cameraview/controls/Facing;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraUtils;->a(Lcom/otaliastudios/cameraview/controls/Facing;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/Facing;->b()I

    move-result p1

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->b:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/Flash;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/Flash;->b()I

    move-result p1

    const/16 v0, 0xa

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->c:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/Grid;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/Grid;->b()I

    move-result p1

    const/16 v0, 0x15

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->d:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->DEFAULT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->b()I

    move-result p1

    const/16 v0, 0x3a

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->e:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/Mode;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Mode;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/Mode;->b()I

    move-result p1

    const/16 v0, 0x18

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->f:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/Hdr;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/Hdr;->b()I

    move-result p1

    const/16 v0, 0x17

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->g:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/Audio;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Audio;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/Audio;->b()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->h:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/VideoCodec;->DEFAULT:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->b()I

    move-result p1

    const/16 v0, 0x2e

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->i:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/AudioCodec;->DEFAULT:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->b()I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->j:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/Engine;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Engine;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/Engine;->b()I

    move-result p1

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->k:I

    sget-object p1, Lcom/otaliastudios/cameraview/controls/PictureFormat;->DEFAULT:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/PictureFormat;->b()I

    move-result p1

    const/16 v0, 0x19

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->l:I

    return-void
.end method
