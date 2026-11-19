.class public final synthetic Lk81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/l1/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lk81;->a:I

    iput-object p1, p0, Lk81;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/l1/c;)V
    .locals 1

    iget v0, p0, Lk81;->a:I

    iget-object p0, p0, Lk81;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/batch/android/l1/b;->l(Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/batch/android/l1/b;->k(Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
