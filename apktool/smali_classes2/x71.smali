.class public final synthetic Lx71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/batch/android/n0/a;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/n0/a;I)V
    .locals 0

    iput p2, p0, Lx71;->b:I

    iput-object p1, p0, Lx71;->c:Lcom/batch/android/n0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lx71;->b:I

    iget-object p0, p0, Lx71;->c:Lcom/batch/android/n0/a;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/batch/android/n0/a;->c(Lcom/batch/android/n0/a;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/batch/android/n0/a;->d(Lcom/batch/android/n0/a;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/n0/a;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
