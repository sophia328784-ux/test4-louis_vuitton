.class public final synthetic Lb81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/batch/android/f0/d;

.field public final synthetic d:Lcom/batch/android/c0/b;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/c0/b;Lcom/batch/android/f0/d;I)V
    .locals 0

    iput p3, p0, Lb81;->b:I

    iput-object p1, p0, Lb81;->d:Lcom/batch/android/c0/b;

    iput-object p2, p0, Lb81;->c:Lcom/batch/android/f0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget v0, p0, Lb81;->b:I

    iget-object v1, p0, Lb81;->c:Lcom/batch/android/f0/d;

    iget-object p0, p0, Lb81;->d:Lcom/batch/android/c0/b;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/c0/h;

    invoke-static {p0, v1, p1}, Lcom/batch/android/c0/h;->q(Lcom/batch/android/c0/h;Lcom/batch/android/f0/d;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/batch/android/d0/a;

    invoke-static {p0, v1, p1}, Lcom/batch/android/d0/a;->r(Lcom/batch/android/d0/a;Lcom/batch/android/f0/d;Landroid/content/DialogInterface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
