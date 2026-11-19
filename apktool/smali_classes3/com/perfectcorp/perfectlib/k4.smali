.class public final synthetic Lcom/perfectcorp/perfectlib/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/TagHandler$Type;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/TagHandler$Type;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/k4;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/k4;->c:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/k4;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/k4;->c:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Type;->a:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    if-ne p0, v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagHandler$Type;->d:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->a(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_0
    return-object p0

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    sget-object v1, Lcom/perfectcorp/perfectlib/TagHandler$Type;->a:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    if-ne p0, v1, :cond_1

    const-string v1, "SKU_MESSAGE_DIGEST"

    goto :goto_1

    :cond_1
    const-string v1, "LOOK_MESSAGE_DIGEST"

    :goto_1
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagHandler$Type;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$c;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
