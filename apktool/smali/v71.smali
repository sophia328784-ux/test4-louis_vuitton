.class public final synthetic Lv71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/core/view/WindowInsetsControllerCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/WindowInsetsControllerCompat;I)V
    .locals 0

    iput p2, p0, Lv71;->b:I

    iput-object p1, p0, Lv71;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget v0, p0, Lv71;->b:I

    iget-object p0, p0, Lv71;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/batch/android/m0/b;->o(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/batch/android/d0/a;->q(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
