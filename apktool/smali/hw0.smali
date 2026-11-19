.class public final synthetic Lhw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lcom/batch/android/j1/h;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    .line 11
    iput p3, p0, Lhw0;->b:I

    iput p1, p0, Lhw0;->c:I

    iput-object p2, p0, Lhw0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lhw0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw0;->d:Ljava/lang/Object;

    iput p2, p0, Lhw0;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/j1/g;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lhw0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget p0, p0, Lhw0;->c:I

    invoke-static {p0, v0, p1}, Lcom/batch/android/v0/j;->i(ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lhw0;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lhw0;->c:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lhw0;->b:I

    const/4 v1, 0x3

    const-string v2, "[#"

    const-string v3, "IdSystemDataHelper"

    iget-object v4, p0, Lhw0;->d:Ljava/lang/Object;

    iget p0, p0, Lhw0;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast v4, Ljava/util/HashMap;

    check-cast p1, Ljava/util/List;

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] #getDownloadImageObservable(); done"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_0
    check-cast v4, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "] Factory#GetIdSystemDataBuilder(); idGroup.size()="

    invoke-static {p0, v2, v0}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$d;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$d;-><init>(Ljava/util/List;)V

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    new-instance p1, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v1, Lzw;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lzw;-><init>(Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;I)V

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v1, Ly71;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ly71;-><init>(I)V

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a(Lcom/perfectcorp/common/network/RequestTask$Builder;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Lhw0;->d:Ljava/lang/Object;

    check-cast v0, Lom;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lhw0;->c:I

    invoke-virtual {p2, p0}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Lom;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {p1, p2}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    sget-object p2, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    invoke-virtual {p1, p0, p2}, Landroidx/core/view/WindowInsetsCompat$Builder;->b(ILandroidx/core/graphics/Insets;)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->a()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
