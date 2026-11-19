.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;->b:I

    const-string v1, "] #getDownloadComponents(); component count="

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "[#"

    const-string v5, "IdSystemDataHelper"

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j0;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    check-cast p1, Landroid/util/Pair;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] #downloadShapeImages(); begin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v9, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_thumbnail:Ljava/lang/String;

    sget-object v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-static {v8, v9, v10, v2, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v9, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_mask:Ljava/lang/String;

    sget-object v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->h:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-static {v8, v9, v11, v2, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v9, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_shadow:Ljava/lang/String;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-static {v8, v9, v11, v2, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v9, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_highlight:Ljava/lang/String;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-static {v8, v9, v11, v2, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v9, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_lip_shape_ombre:Ljava/lang/String;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-static {v8, v9, v10, v2, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0, v4, v1}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v5, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    invoke-static {p1, v8, p0, v6, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->b(Ljava/lang/String;Ljava/util/HashMap;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] #downloadPaletteImages(); begin"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v5, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->attr_thumbnail:Ljava/lang/String;

    sget-object v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->f:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-static {v7, v8, v9, v2, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "] #downloadPaletteImages(); component count="

    invoke-static {v0, v4, v1}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v5, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->attr_guid:Ljava/lang/String;

    invoke-static {p1, v7, p0, v6, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->b(Ljava/lang/String;Ljava/util/HashMap;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] #downloadTextureImages(); begin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v9, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_thumbnail:Ljava/lang/String;

    sget-object v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->e:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-static {v8, v9, v10, v2, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0, v4, v1}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v5, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    invoke-static {p1, v8, p0, v6, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->b(Ljava/lang/String;Ljava/util/HashMap;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
