.class public final synthetic Lcom/perfectcorp/perfectlib/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

.field public final synthetic d:I

.field public final synthetic e:Lcom/perfectcorp/perfectlib/EffectConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;ILcom/perfectcorp/perfectlib/EffectConfig;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/w3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/w3;->c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iput p2, p0, Lcom/perfectcorp/perfectlib/w3;->d:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/w3;->e:Lcom/perfectcorp/perfectlib/EffectConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/w3;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/w3;->e:Lcom/perfectcorp/perfectlib/EffectConfig;

    iget v2, p0, Lcom/perfectcorp/perfectlib/w3;->d:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/w3;->c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast p1, Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, v2, p1, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->a(ILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, v2, p1, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->a(ILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
