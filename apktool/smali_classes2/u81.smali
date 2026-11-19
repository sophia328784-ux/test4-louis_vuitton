.class public final synthetic Lu81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/batch/android/j1/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lu81;->b:I

    iput-object p1, p0, Lu81;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/j1/g;)V
    .locals 1

    iget v0, p0, Lu81;->b:I

    iget-object p0, p0, Lu81;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/v0/k;

    invoke-static {p0, p1}, Lcom/batch/android/v0/k;->k(Lcom/batch/android/v0/k;Lcom/batch/android/j1/g;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/batch/android/v0/j;

    invoke-static {p0, p1}, Lcom/batch/android/v0/j;->j(Lcom/batch/android/v0/j;Lcom/batch/android/j1/g;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lu81;->c:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Image can\'t be decoded. key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", path="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const-string p0, "No image can be found. key="

    invoke-static {p0, p1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
