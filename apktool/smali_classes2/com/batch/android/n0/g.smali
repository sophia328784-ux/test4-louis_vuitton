.class public final synthetic Lcom/batch/android/n0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/webkit/JsResult;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsResult;I)V
    .locals 0

    iput p2, p0, Lcom/batch/android/n0/g;->b:I

    iput-object p1, p0, Lcom/batch/android/n0/g;->c:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget v0, p0, Lcom/batch/android/n0/g;->b:I

    iget-object p0, p0, Lcom/batch/android/n0/g;->c:Landroid/webkit/JsResult;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/webkit/JsPromptResult;

    invoke-static {p0, p1}, Lcom/batch/android/n0/e$a;->b(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/batch/android/n0/e$a;->d(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/batch/android/n0/e$a;->e(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
