.class public final synthetic Lhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/c0$f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lhd;->a:I

    iput-object p1, p0, Lhd;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lhd;->a:I

    iget-object p0, p0, Lhd;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/n0/b;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/batch/android/n0/b;->a(Lcom/batch/android/n0/b;Ljava/lang/Void;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->b(Landroid/content/Context;Ljava/lang/Void;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
