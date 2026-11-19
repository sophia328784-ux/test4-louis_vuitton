.class public final synthetic Lk91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/batch/android/v0/l;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/v0/l;I)V
    .locals 0

    iput p2, p0, Lk91;->b:I

    iput-object p1, p0, Lk91;->c:Lcom/batch/android/v0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lk91;->b:I

    iget-object p0, p0, Lk91;->c:Lcom/batch/android/v0/l;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/batch/android/v0/l;->z(Lcom/batch/android/v0/l;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/batch/android/v0/l;->i(Lcom/batch/android/v0/l;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
