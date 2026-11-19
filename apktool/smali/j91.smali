.class public final synthetic Lj91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lj91;->b:I

    iput-object p1, p0, Lj91;->c:Ljava/lang/Object;

    iput-object p2, p0, Lj91;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lj91;->b:I

    iget-object v1, p0, Lj91;->d:Ljava/lang/Object;

    iget-object p0, p0, Lj91;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/content/Context;

    check-cast v1, Lcom/batch/android/j1/e;

    invoke-static {p0, v1}, Lcom/batch/android/e/w;->b(Landroid/content/Context;Lcom/batch/android/j1/e;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/batch/android/BatchTagCollectionsFetchListener;

    check-cast v1, Ljava/util/Map;

    invoke-static {p0, v1}, Lcom/batch/android/l;->d(Lcom/batch/android/BatchTagCollectionsFetchListener;Ljava/util/Map;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/batch/android/BatchAttributesFetchListener;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p0, v1}, Lcom/batch/android/l;->b(Lcom/batch/android/BatchAttributesFetchListener;Ljava/util/HashMap;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/batch/android/v0/k;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/batch/android/v0/k;->p(Lcom/batch/android/v0/k;Landroid/content/Context;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/batch/android/v0/k;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/batch/android/v0/k;->m(Lcom/batch/android/v0/k;Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
