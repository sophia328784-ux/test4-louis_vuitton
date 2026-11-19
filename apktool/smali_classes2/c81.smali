.class public final synthetic Lc81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/batch/android/f0/b;

.field public final synthetic e:Landroid/widget/RelativeLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RelativeLayout;ILcom/batch/android/f0/b;I)V
    .locals 0

    iput p4, p0, Lc81;->b:I

    iput-object p1, p0, Lc81;->e:Landroid/widget/RelativeLayout;

    iput p2, p0, Lc81;->c:I

    iput-object p3, p0, Lc81;->d:Lcom/batch/android/f0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lc81;->b:I

    iget-object v1, p0, Lc81;->d:Lcom/batch/android/f0/b;

    iget v2, p0, Lc81;->c:I

    iget-object p0, p0, Lc81;->e:Landroid/widget/RelativeLayout;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/n0/d;

    invoke-static {p0, v2, v1, p1}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/n0/d;ILcom/batch/android/f0/b;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/batch/android/n0/a;

    invoke-static {p0, v2, v1, p1}, Lcom/batch/android/n0/a;->b(Lcom/batch/android/n0/a;ILcom/batch/android/f0/b;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
