.class public final synthetic Lj81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/l1/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lj81;->a:I

    iput-object p1, p0, Lj81;->b:Ljava/lang/String;

    iput-object p2, p0, Lj81;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/l1/c;)V
    .locals 1

    iget v0, p0, Lj81;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj81;->b:Ljava/lang/String;

    iget-object p0, p0, Lj81;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/batch/android/l1/b;->d(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lj81;->b:Ljava/lang/String;

    iget-object p0, p0, Lj81;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/batch/android/l1/b;->e(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lj81;->b:Ljava/lang/String;

    iget-object p0, p0, Lj81;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/batch/android/l1/b;->f(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
