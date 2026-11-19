.class public final synthetic Lnr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/canhub/cropper/CropImageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/canhub/cropper/CropImageActivity;I)V
    .locals 0

    iput p2, p0, Lnr;->b:I

    iput-object p1, p0, Lnr;->c:Lcom/canhub/cropper/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lnr;->b:I

    iget-object p0, p0, Lnr;->c:Lcom/canhub/cropper/CropImageActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lcom/canhub/cropper/CropImageActivity;->p:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->m:Landroid/net/Uri;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->x()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->i:Landroid/net/Uri;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->x()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    sget v0, Lcom/canhub/cropper/CropImageActivity;->p:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->x()V

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->i:Landroid/net/Uri;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
