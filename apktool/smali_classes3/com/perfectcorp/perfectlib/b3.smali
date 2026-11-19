.class public final synthetic Lcom/perfectcorp/perfectlib/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/EffectId;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/EffectId;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/b3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/b3;->c:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/b3;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/b3;->c:Lcom/perfectcorp/perfectlib/EffectId;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->a(Lcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/EffectId$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->a(Lcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/EffectId$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->a(Lcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/EffectId$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
