.class public final synthetic Lh81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/batch/android/n0/b;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/n0/b;I)V
    .locals 0

    iput p2, p0, Lh81;->b:I

    iput-object p1, p0, Lh81;->c:Lcom/batch/android/n0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lh81;->b:I

    iget-object p0, p0, Lh81;->c:Lcom/batch/android/n0/b;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/batch/android/n0/b;->b(Lcom/batch/android/n0/b;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/batch/android/n0/b;->c(Lcom/batch/android/n0/b;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
