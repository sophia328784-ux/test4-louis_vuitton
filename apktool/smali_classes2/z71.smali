.class public final synthetic Lz71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lz71;->b:I

    iput-object p1, p0, Lz71;->c:Ljava/lang/Object;

    iput-object p2, p0, Lz71;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lz71;->b:I

    iget-object v1, p0, Lz71;->d:Ljava/lang/Object;

    iget-object p0, p0, Lz71;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/widget/EditText;

    check-cast v1, Landroid/webkit/JsPromptResult;

    invoke-static {p0, v1, p1, p2}, Lcom/batch/android/r0/h$a;->e(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/batch/android/c0/a;

    check-cast v1, Lcom/batch/android/h0/a;

    invoke-static {p0, v1, p1, p2}, Lcom/batch/android/c0/a;->q(Lcom/batch/android/c0/a;Lcom/batch/android/h0/a;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
