.class public final synthetic Li91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/batch/android/v0/k;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/v0/k;I)V
    .locals 0

    iput p2, p0, Li91;->b:I

    iput-object p1, p0, Li91;->c:Lcom/batch/android/v0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Li91;->b:I

    iget-object p0, p0, Li91;->c:Lcom/batch/android/v0/k;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/batch/android/v0/k;->n(Lcom/batch/android/v0/k;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/batch/android/v0/k;->j(Lcom/batch/android/v0/k;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
