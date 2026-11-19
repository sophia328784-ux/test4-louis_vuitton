.class public final synthetic Loq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLjava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Loq0;->b:I

    iput-object p1, p0, Loq0;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Loq0;->c:Z

    iput-object p3, p0, Loq0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/view/ProgressivexImageView;Landroid/net/Uri;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Loq0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loq0;->d:Ljava/lang/Object;

    iput-object p2, p0, Loq0;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Loq0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Loq0;->b:I

    iget-object v1, p0, Loq0;->e:Ljava/lang/Object;

    iget-boolean v2, p0, Loq0;->c:Z

    iget-object p0, p0, Loq0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/content/Context;

    check-cast v1, Lcom/batch/android/BatchTagCollectionsFetchListener;

    invoke-static {p0, v2, v1}, Lcom/batch/android/l;->c(Landroid/content/Context;ZLcom/batch/android/BatchTagCollectionsFetchListener;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    check-cast v1, Lcom/batch/android/BatchAttributesFetchListener;

    invoke-static {p0, v2, v1}, Lcom/batch/android/l;->e(Landroid/content/Context;ZLcom/batch/android/BatchAttributesFetchListener;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    check-cast v1, Landroid/net/Uri;

    invoke-static {p0, v1, v2}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->c(Lcom/sightcall/universal/internal/view/ProgressivexImageView;Landroid/net/Uri;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
