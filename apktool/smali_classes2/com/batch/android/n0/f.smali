.class public final synthetic Lcom/batch/android/n0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/webkit/JsResult;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsResult;I)V
    .locals 0

    iput p2, p0, Lcom/batch/android/n0/f;->b:I

    iput-object p1, p0, Lcom/batch/android/n0/f;->c:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/batch/android/n0/f;->b:I

    iget-object p0, p0, Lcom/batch/android/n0/f;->c:Landroid/webkit/JsResult;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/webkit/JsPromptResult;

    invoke-static {p0, p1, p2}, Lcom/batch/android/n0/e$a;->h(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/batch/android/n0/e$a;->f(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/batch/android/n0/e$a;->g(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
