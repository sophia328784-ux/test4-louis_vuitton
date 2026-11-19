.class public final synthetic Lcom/batch/android/o/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/j1/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/batch/android/o/e$a;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/o/e$a;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcom/batch/android/o/i;->b:I

    iput-object p1, p0, Lcom/batch/android/o/i;->c:Lcom/batch/android/o/e$a;

    iput-object p2, p0, Lcom/batch/android/o/i;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/j1/g;)V
    .locals 2

    iget v0, p0, Lcom/batch/android/o/i;->b:I

    iget-object v1, p0, Lcom/batch/android/o/i;->d:Ljava/util/List;

    iget-object p0, p0, Lcom/batch/android/o/i;->c:Lcom/batch/android/o/e$a;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, v1, p1}, Lcom/batch/android/o/e$a;->b(Lcom/batch/android/o/e$a;Ljava/util/List;Lcom/batch/android/j1/g;)V

    return-void

    :pswitch_0
    invoke-static {p0, v1, p1}, Lcom/batch/android/o/e$a;->a(Lcom/batch/android/o/e$a;Ljava/util/List;Lcom/batch/android/j1/g;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
