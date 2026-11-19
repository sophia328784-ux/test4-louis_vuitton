.class public final synthetic Lcom/batch/android/l/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/batch/android/l/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/l/c$a;I)V
    .locals 0

    iput p2, p0, Lcom/batch/android/l/f;->b:I

    iput-object p1, p0, Lcom/batch/android/l/f;->c:Lcom/batch/android/l/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/batch/android/l/f;->b:I

    iget-object p0, p0, Lcom/batch/android/l/f;->c:Lcom/batch/android/l/c$a;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/batch/android/l/c$a;->a(Lcom/batch/android/l/c$a;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/batch/android/l/c$a;->b(Lcom/batch/android/l/c$a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
